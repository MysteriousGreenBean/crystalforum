$pathToStylesheets = $PWD.Path + "\stylesheets"
$pathToTemplates = $PWD.Path + "\templates"

# Create a FileSystemWatcher object
$stylesheetWatcher = New-Object System.IO.FileSystemWatcher
$templateWatcher = New-Object System.IO.FileSystemWatcher

# Set the path to the directory to monitor
$stylesheetWatcher.Path = $pathToStylesheets
$templateWatcher.Path = $pathToTemplates

# Watch for changes in LastAccess and LastWrite times, and the renaming of files or directories
$stylesheetWatcher.NotifyFilter = [System.IO.NotifyFilters]'FileName, LastWrite, LastAccess, DirectoryName, Size'
$templateWatcher.NotifyFilter = [System.IO.NotifyFilters]'FileName, LastWrite, LastAccess, DirectoryName, Size'

# Watch all files and directories
$stylesheetWatcher.Filter = '*'
$templateWatcher.Filter = '*'

#Include subdirectories
$stylesheetWatcher.IncludeSubdirectories = $true
$templateWatcher.IncludeSubdirectories = $true

$handleEvent = {
    try {
        $baseUrl = "http://localhost/handlestylesheetsandtemplates.php?"
       
        $changeType = $eventArgs.ChangeType
        $fullPath = $eventArgs.FullPath
        $oldFullPath = $eventArgs.OldFullPath
        
        $encodedFilePath = [uri]::EscapeDataString($fullPath)
        $encodedOldFilePath = [uri]::EscapeDataString($oldFullPath)

        $fullUrl = $baseUrl + "action=" + $changeType + "&updatedfilepath=" + $encodedFilePath + "&oldfilepath=" + $encodedOldFilePath;
        $response = Invoke-WebRequest -Uri $fullUrl
        # Write-Host $response
      }
    catch {
        Write-Host $_.Exception.Message
    }
}

# Attach event handlers
$handlers = . {
    Register-ObjectEvent -InputObject $stylesheetWatcher -EventName Changed -Action $handleEvent
    Register-ObjectEvent -InputObject $stylesheetWatcher -EventName Created -Action $handleEvent
    Register-ObjectEvent -InputObject $stylesheetWatcher -EventName Deleted -Action $handleEvent
    Register-ObjectEvent -InputObject $stylesheetWatcher -EventName Renamed -Action $handleEvent

    Register-ObjectEvent -InputObject $templateWatcher -EventName Changed -Action $handleEvent
    Register-ObjectEvent -InputObject $templateWatcher -EventName Created -Action $handleEvent
    Register-ObjectEvent -InputObject $templateWatcher -EventName Deleted -Action $handleEvent
    Register-ObjectEvent -InputObject $templateWatcher -EventName Renamed -Action $handleEvent
}

# Enable the FileSystemWatcher
$stylesheetWatcher.EnableRaisingEvents = $true
$templateWatcher.EnableRaisingEvents = $true

# Keep the script running to monitor the directory
Write-Host "Monitoring stylesheets and templates in $pathToStylesheets and $pathToTemplates for changes..."
Write-Host "Click [Ctrl] + [C] to stop..."


try {
    while ($true) {
        Wait-Event -Timeout 1
    }
}
finally {
    $stylesheetWatcher.EnableRaisingEvents = $false
    $templateWatcher.EnableRaisingEvents = $false

    $handlers | ForEach-Object {
        Unregister-Event -SourceIdentifier $_.Name
    }

    $handlers | Remove-Job

    $stylesheetWatcher.Dispose()
    $templateWatcher.Dispose()
}