$Verbose = @{}
if($env:APPVEYOR_REPO_BRANCH -and $env:APPVEYOR_REPO_BRANCH -notlike "master") {
    $Verbose.add("Verbose",$True)
}

$ModuleManifestName = 'PoshHomeAssistant.psd1'
$ModuleManifestPath = "$PSScriptRoot\..\PoshHomeAssistant\$ModuleManifestName"


$currentConfiguration = Join-Path -Path $env:USERPROFILE -ChildPath ".PoshHomeAssistantConfig"
$backupConfiguration = Join-Path -Path $env:USERPROFILE -ChildPath ".PoshHomeAssistantConfig.backup"

if((Test-Path $currentConfiguration)) {
    Copy-Item -Path $currentConfiguration -Destination $backupConfiguration -Force
}

Describe 'Module Manifest Tests' {
    It 'Passes Test-ModuleManifest' {
        Test-ModuleManifest -Path $ModuleManifestPath | Should Not BeNullOrEmpty
        $? | Should Be $true
    }
}


Describe 'Set-Configuration' {
    It "Given params makes configuration" {
        Mock -CommandName Set-Content -MockWith {}

        Set-HomeAssistantConfiguration -AccessKey "key" -BaseUrl "http://127.0.0.1:8321"

        $Global:HomeAssistantConfig.AccessKey | Should -Be "key"
        $Global:HomeAssistantConfig.BaseUrl | Should -Be "http://127.0.0.1:8321"
        $Global:HomeAssistantConfig.Header."x-ha-access" | Should -Be "key"
    }
}

if((Test-Path $backupConfiguration)) {
    Copy-Item -Path $backupConfiguration -Destination $currentConfiguration -Force
}