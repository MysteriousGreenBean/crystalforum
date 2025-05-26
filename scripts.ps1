function Start-Containers {
    docker-compose --profile devEnvironment up -d
    docker-compose run --rm npm npm install 
    Wait-For-Containers
    Database-Snapshot
    Initialize-Environment
}

function Initialize-Environment {
    if (Test-Path "website/cache/theme_stylesheet_map.php") {
        Remove-Item "website/cache/theme_stylesheet_map.php" -Force
    }
    Get-ChildItem -Path "stylesheets" -Recurse -Filter "_stylesheets.json" | ForEach-Object {
        $devPath = Join-Path $_.Directory.FullName "_stylesheets.dev.json"
        Copy-Item -Path $_.FullName -Destination $devPath -Force
        (Get-Content -Path $devPath -Raw) -replace 'cache/themes/theme\d+', "stylesheets/$($_.Directory.Name)" | Set-Content -Path $devPath
    }

    $response = Invoke-WebRequest -Uri 'http://localhost/handlestylesheetsandtemplates.php?rebuild=stylesheets&force=true&dev=true&fromconsole=true' -UseBasicParsing
    Write-Host $response.Content
    $response = Invoke-WebRequest -Uri 'http://localhost/handlestylesheetsandtemplates.php?rebuild=templates&force=true&dev=true&fromconsole=true' -UseBasicParsing | Out-Null
    Write-Host $response.Content
    Refresh-Cache
}

function Refresh-Cache {
    $response = Invoke-WebRequest -Uri 'http://localhost/handlestylesheetsandtemplates.php?rebuild=cache&fromconsole=true' -UseBasicParsing
    Write-Host $response.Content
}

function Wait-For-Containers {
    do {
        Start-Sleep -Seconds 1 
        $unhealthy = docker ps --format "{{.Names}}: {{.Status}}" | Where-Object { $_ -match "unhealthy|starting" }
    } while ($unhealthy)
}

function Stop-Containers {
    docker-compose down
}

function Restart-Containers {
    docker-compose down
    docker-compose up -d
}

function Purge-Containers {
    docker-compose --profile devEnvironment down
    docker container prune -f
    docker volume prune -f
    docker-compose down --rmi all --volumes --remove-orphans
}

function View-Logs {
    docker-compose logs -f
}

function Database-Update {
    docker-compose run --rm liquibase update --changelog-file "./docker/liquibase/changelog/db.changelog.xml"
}

function Database-Snapshot {
    docker-compose run liquibase snapshot --snapshot-format=JSON --output-file=database_before.json --url=jdbc:mariadb://172.28.1.2:3306/crystalforum_ --username root --password root
    $masterStatus = docker exec mybb_mariadb mariadb -uroot -proot -e "SHOW MASTER STATUS;"
    $masterStatusArray = $masterStatus -split "`n" | Select-Object -Skip 1 | ForEach-Object {
        $columns = $_ -split "`t"
        [PSCustomObject]@{
            File     = $columns[0]
            Position = [int]$columns[1]
        }
    }
    $masterStatusArray | ConvertTo-Json | Out-File -FilePath ./docker/liquibase/database_snapshot.json -Encoding utf8
}

function Process-BinlogChanges {
    param (
        [string]$snapshotPosition,
        [string]$snapshotFile,
        [string]$monitoredTablesPattern,
        [string]$inputPath,
        [bool]$append
    )

    $binlogCommand = "mariadb-binlog --skip-gtid-strict-mode --start-position=$snapshotPosition --verbose --base64-output=DECODE-ROWS /var/lib/mysql/$snapshotFile > binlogDump.sql"
    $binlogOutput = docker exec mybb_mariadb bash -c $binlogCommand

    docker cp mybb_mariadb:binlogDump.sql ./docker/liquibase/binlogDump.sql

    $content = Get-Content "./docker/liquibase/binlogDump.sql" -Raw -Encoding UTF8

    $delimiter = "/*!*/;"
    $statements = $content -split [regex]::Escape($delimiter)

    
    $filtered = foreach ($stmt in $statements) {
        if ($stmt -match $monitoredTablesPattern) {
            # Trim whitespace and remove /*!*/; sequences
            $cleaned = $stmt.Trim() -replace "`r?`n?", '' -replace '\s+', ' '
            if ($cleaned -notmatch ";$") {
                $cleaned += ";"
            }
            $cleaned
        }
    }
    # Re-append the delimiter to each filtered statement
    $finalContent = $filtered -join "`r`n"  -replace '/\*!.*?\*/', ''

    # Append the final content to the file without overriding
    if ($append) {
        Add-Content -Path $inputPath -Value $finalContent -Encoding UTF8
    } else {
        Set-Content -Path $inputPath -Value $finalContent -Encoding UTF8
    }

    Remove-Item -Path "./docker/liquibase/binlogDump.sql"
}

function Create-Changeset {
    param (
        [string]$inputPath
    )

    $changelogFile = "./docker/liquibase/changelog/db.changelog.xml"
    [xml]$xml = Get-Content -Path $changelogFile
    $nsUri = $xml.DocumentElement.NamespaceURI

    $generatedSQL = Get-Content -Path $inputPath -Raw
    $generatedSQL = $generatedSQL.TrimEnd();

    $changeSets = $xml.databaseChangeLog.changeSet
    $lastChangeSet = $changeSets[-1]

    if ([string]::IsNullOrWhiteSpace($generatedSQL)) {
        Write-Host -ForegroundColor Yellow  "Generated SQL is empty. No new changeSet created."
        return
    }

    if ($lastChangeSet.InnerText -eq $generatedSQL) {
        Write-Host -ForegroundColor Yellow "Last changeSet is identical to the generated SQL. No new changeSet created."
        return
    }

    $lastId = $lastChangeSet.id

    $lastIdParts = $lastId -split '-'
    $lastIdParts[0] = [int64]$lastIdParts[0] + 1
    $lastIdParts[1] = "1"
    $newId = $lastIdParts -join '-'

    $changeSet = $xml.CreateElement("changeSet", $nsUri)
    $changeSet.SetAttribute("id", $newId)
    $author = git config user.name
    $changeSet.SetAttribute("author", $author)
    
    $sqlNode = $xml.CreateElement("sql", $nsUri)
    $sqlNode.InnerText = $generatedSQL.TrimEnd()
    $changeSet.AppendChild($sqlNode) | Out-Null
    $xml.databaseChangeLog.AppendChild($changeSet) | Out-Null

    $xml.Save($changelogFile)
}

function Database-diffChangeLog {
    docker-compose run --rm liquibase liquibase diffChangeLog --url=offline:mariadb?snapshot=resources/database_before.json --referenceUrl=jdbc:mariadb://172.28.1.2:3306/crystalforum_ --referenceUsername root --referencePassword root --referenceDriver=org.mariadb.jdbc.Driver 

    $masterStatus = docker exec mybb_mariadb mariadb -uroot -proot -e "SHOW MASTER STATUS;"
    $masterStatusArray = $masterStatus -split "`n" | Select-Object -Skip 1 | ForEach-Object {
        $columns = $_ -split "`t"
        [PSCustomObject]@{
            File     = $columns[0]
            Position = [int]$columns[1]
        }
    }
    $snapshot = Get-Content -Raw -Path ./docker/liquibase/database_snapshot.json | ConvertFrom-Json

    $currentFile = $masterStatusArray[0].File
    $currentPosition = $masterStatusArray[0].Position
    $snapshotFile = $snapshot[0].File
    $snapshotPosition = $snapshot[0].Position

    $config = Get-Content -Raw -Path ./docker/liquibase/database_monitoring.config.json | ConvertFrom-Json

    $monitoredTablesPattern = $config.monitoredTables -join "|"
    $inputPath = "./docker/liquibase/changes.sql"

    Process-BinlogChanges -snapshotPosition $snapshotPosition -snapshotFile $snapshotFile -monitoredTablesPattern $monitoredTablesPattern -inputPath $inputPath -append $false

    if ($currentFile -ne $snapshotFile) {
        $binaryLogs = docker exec mybb_mariadb mariadb -uroot -proot -e "SHOW BINARY LOGS;"
        $binaryLogsArray = $binaryLogs -split "`n" | Select-Object -Skip 1 | ForEach-Object {
            $columns = $_ -split "`t"
            [PSCustomObject]@{
                LogName = $columns[0]
                FileSize = [int]$columns[1]
            }
        }

        $logsToProcess = $binaryLogsArray | Where-Object { $_.LogName -gt $snapshotFile }

        $logsToProcess | ForEach-Object { Write-Host $_.LogName }
        foreach ($log in $logsToProcess) {
            Process-BinlogChanges -snapshotPosition "0" -snapshotFile $log.LogName -monitoredTablesPattern $monitoredTablesPattern -inputPath $inputPath -append $true
        }
    } 
    Create-Changeset -inputPath $inputPath
}


switch ($args[0]) {
    "start" { Start-Containers }
    "stop" { Stop-Containers }
    "restart" { Restart-Containers }
    "purge" { Purge-Containers }
    "logs" { View-Logs }
    "database-update" { Database-Update }
    "database-snapshot" { Database-Snapshot }
    "database-dumpChanges" { Database-diffChangeLog }
    "refresh-cache" { Refresh-Cache }
    default { Write-Host "Usage: scripts {start|stop|restart|logs|database-update|database-snapshot|database-dumpChanges}" }
}