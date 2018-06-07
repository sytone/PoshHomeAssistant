---
external help file: PoshHomeAssistant-help.xml
Module Name: PoshHomeAssistant
online version: 
schema: 2.0.0
---

# Set-HomeAssistantConfiguration

## SYNOPSIS
Sets configuration for accessing Home Assistant

## SYNTAX

```
Set-HomeAssistantConfiguration [[-AccessKey] <String>] [[-BaseUrl] <String>] [<CommonParameters>]
```

## DESCRIPTION
Sets configuration for accessing Home Assistant

## EXAMPLES

### Example 1
```
PS C:\> Set-HomeAssistantConfiguration -AccessKey "mysecretkey" -BaseUrl "http://192.168.0.1:8321"
```

## PARAMETERS

### -AccessKey
{{Fill AccessKey Description}}

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

### -BaseUrl
The BaseUrl Home Assistant listens on

```yaml
Type: String
Parameter Sets: (All)
Aliases: 

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

