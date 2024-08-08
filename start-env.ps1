# Define paths for your scripts
$dockerComposeScript = "docker-compose up -d"
$dockerComposeScript2 = "docker-compose stop"
$backgroundScript = "./docker/monitor/monitor.ps1"

# Run docker-compose up -d
Invoke-Expression $dockerComposeScript

Write-Host "Waiting for database to start..."
$checkUrl = "http://localhost/handlestylesheetsandtemplates.php?rebuild=stylesheets"
$response = Invoke-WebRequest -Uri $checkUrl
while ($response.StatusCode -ne 200 -or ($response.Content -like "*Fatal error*")) {
    Start-Sleep -Seconds 1
    $response = Invoke-WebRequest -Uri $checkUrl
}

# Start the background PowerShell script
Invoke-Expression $backgroundScript