function Test-HomeAssistantApi {
    [CmdletBinding()]
    param (
    )

    Get-HAConfiguration

    $response = Invoke-HACommand -Method GET -Path "/api/" -Body @{entity_id = $Entity }

    if($response.message -eq "API running.") {
        return $true
    }

    return $false
}