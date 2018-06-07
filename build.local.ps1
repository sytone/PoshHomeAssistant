$loadedModule = Get-Module -Name PoshHomeAssistant
if($loadedModule) {
    Write-Host "Cleaning up loaded module" -ForegroundColor Yellow
    Remove-Module -Name PoshHomeAssistant -Force
}

Import-Module Pester -force
Invoke-Pester -Path "$PSScriptRoot\Tests"

# Create new markdown and XML help files
Write-Host "Building new function documentation" -ForegroundColor Yellow
Import-Module -Name "$PSScriptRoot\PoshHomeAssistant" -Force
Get-Module PoshHomeAssistant
Write-Host "Updating markdown based help" -ForegroundColor Yellow
Update-MarkdownHelp "$PSScriptRoot\docs"
Write-Host "Building new xml file for help" -ForegroundColor Yellow
New-ExternalHelp -Path "$PSScriptRoot\docs" -OutputPath "$PSScriptRoot\PoshHomeAssistant\en-US\" -Force
#. .\tests\docs.ps1
Write-Host -Object ''




