function Set-HomeAssistantSwitchState {
    [CmdletBinding()]
    param (
        [String] $Entity,

        [ValidateSet('On', 'Off')]
        [String] $State
    )

    Get-HAConfiguration

    switch ($State) {
        "On" { Invoke-HACommand -Method POST -Path "/api/services/switch/turn_on" -Body @{entity_id = $Entity }
        }
        "Off" { Invoke-HACommand -Method POST -Path "/api/services/switch/turn_off" -Body @{entity_id = $Entity }
        }
        Default {}
    }
}