# Buildium::AccountInfoMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **company_name** | **String** | Account company name. | [optional] |
| **contact** | [**ContactInfoMessage**](ContactInfoMessage.md) |  | [optional] |
| **accounting_settings** | [**AccountingSettingsMessage**](AccountingSettingsMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AccountInfoMessage.new(
  company_name: null,
  contact: null,
  accounting_settings: null
)
```

