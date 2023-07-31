# Buildium::AccountInfoMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Account unique identifier. | [optional] |
| **company_name** | **String** | Account company name. | [optional] |
| **url** | **String** | Url for this account. | [optional] |
| **contact** | [**ContactInfoMessage**](ContactInfoMessage.md) |  | [optional] |
| **accounting_settings** | [**AccountingSettingsMessage**](AccountingSettingsMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AccountInfoMessage.new(
  id: null,
  company_name: null,
  url: null,
  contact: null,
  accounting_settings: null
)
```

