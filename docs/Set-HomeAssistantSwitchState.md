---
external help file: PoshHomeAssistant-help.xml
Module Name: PoshHomeAssistant
online version:
schema: 2.0.0
---

# Set-HomeAssistantSwitchState

## SYNOPSIS
Sets configuration for accessing Home Assistant

## SYNTAX

```
Set-HomeAssistantSwitchState [[-Entity] <String>] [[-State] <String>] [<CommonParameters>]
```

## DESCRIPTION
Sets configuration for accessing Home Assistant

## EXAMPLES

### Example 1
```
PS C:\> Set-HomeAssistantSwitchState -AccessKey "mysecretkey" -BaseUrl "http://192.168.0.1:8321"
```

## PARAMETERS

### -Entity
{{Fill Entity Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -State
{{Fill State Description}}

```yaml
Type: String
Parameter Sets: (All)
Aliases:
Accepted values: On, Off

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS
