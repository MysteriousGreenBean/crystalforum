$settingsPath = Join-Path $PSScriptRoot '..\website\inc\settings.php'
(Get-Content $settingsPath) -replace 'http:', 'https:' | Set-Content $settingsPath
(Get-Content $settingsPath) -replace 'localhost', "$($ENV:CODESPACE_NAME)-80.github.dev" | Set-Content $settingsPath
Write-Host "Starging the website..."
& (Join-Path $PSScriptRoot '..\scripts.ps1') start
Write-Host "Website started you can access it at https://$($ENV:CODESPACE_NAME)-80.github.dev"