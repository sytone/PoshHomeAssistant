function Get-HAConfiguration {
    [CmdletBinding()]
    param (

    )

    begin {
        Write-Verbose "Loading Home Assistant Powershell Module configuration"
        $Global:HomeAssistantConfig = @{AccessKey="";BaseUrl="";Header=""}
    }

    process {

        $configurationFile = Join-Path -Path $env:USERPROFILE -ChildPath ".PoshHomeAssistantConfig"

        if ((Test-Path -Path $configurationFile)) {
                Write-Verbose "loading configuration from $configurationFile"
            $Global:HomeAssistantConfig = Get-Content $configurationFile | ConvertFrom-Json
        } else {
            if($env:HomeAssistantAccessKey) {
                $Global:HomeAssistantConfig.AccessKey = $env:HomeAssistantAccessKey
            }

            if ($Global:HomeAssistantAccessKey) {
                $Global:HomeAssistantConfig.AccessKey = $Global:HomeAssistantAccessKey
            }

            if($env:HomeAssistantBaseUrl) {
                $Global:HomeAssistantConfig.BaseUrl = $env:HomeAssistantBaseUrl
            }

            if ($Global:HomeAssistantBaseUrl) {
                $Global:HomeAssistantConfig.BaseUrl = $Global:HomeAssistantBaseUrl
            }
        }

        if($Global:HomeAssistantConfig.AccessKey -eq "" -or $Global:HomeAssistantConfig.BaseUrl -eq "") {
            Write-Warning "Configuration has not been set, please run Set-HAConfiguration."
        }

        $Global:HomeAssistantConfig.Header = @{ "x-ha-access" = $Global:HomeAssistantConfig.AccessKey; "Content-Type" = "application/json"}
    }

    end {
    }
}

