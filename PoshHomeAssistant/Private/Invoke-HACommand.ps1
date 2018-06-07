function Invoke-HACommand {
    [CmdletBinding()]
    param (
        [Microsoft.PowerShell.Commands.WebRequestMethod]
        $Method,

        [string]
        $Path,

        [System.Collections.Hashtable]
        $Body
    )

    $restBody = $Body | ConvertTo-Json
    $uri = "$($Global:HomeAssistantConfig.BaseUrl)$Path"

    if($Method -eq [Microsoft.PowerShell.Commands.WebRequestMethod]::Post) {
        Invoke-RestMethod -Method $Method -Uri $uri -Headers $Global:HomeAssistantConfig.Header -Body $restBody
    } else {
        Invoke-RestMethod -Method $Method -Uri $uri -Headers $Global:HomeAssistantConfig.Header
    }
}