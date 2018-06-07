function Set-HomeAssistantConfiguration {
    [CmdletBinding()]
    param (
        [string] $AccessKey,
        [string] $BaseUrl
    )

    Write-Verbose "Setting Home Assistant Powershell Module configuration"

    $Global:HomeAssistantConfig = @{AccessKey = $AccessKey; BaseUrl = $BaseUrl; Header = ""}
    $configurationFile = Join-Path -Path $env:USERPROFILE -ChildPath ".PoshHomeAssistantConfig"
    $Global:HomeAssistantConfig | ConvertTo-Json | Set-Content $configurationFile
    $Global:HomeAssistantConfig.Header = @{ "x-ha-access" = $Global:HomeAssistantConfig.AccessKey; "Content-Type" = "application/json"}
}

