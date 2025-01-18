Param(
    [switch]$rebuildTemplates
)

# Define paths for your scripts
$dockerComposeScript = "docker-compose up -d"
$dockerComposeScript2 = "docker-compose stop"
$backgroundScript = "./docker/monitor/monitor.ps1"

# Run docker-compose up -d
Invoke-Expression $dockerComposeScript

Write-Host "Building stylesheets..."
$rebuildStylesheetsUrl = "http://localhost/handlestylesheetsandtemplates.php?rebuild=stylesheets"
$response = Invoke-WebRequest -Uri $rebuildStylesheetsUrl
Write-Host "Building templates..."
$templateRebuildUrl = "http://localhost/handlestylesheetsandtemplates.php?rebuild=templates&force=$rebuildTemplates"
$response = Invoke-WebRequest -Uri $templateRebuildUrl

if ($response.StatusCode -ne 200) {
    Write-Host "Error building templates: " + $response.Content
} 
else
{ 
    Write-Host $response.Content
    Write-Host "Templates are ready!"
}
# Start the background PowerShell script
Invoke-Expression $backgroundScript