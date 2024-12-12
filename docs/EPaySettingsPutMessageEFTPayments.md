# Buildium::EPaySettingsPutMessageEFTPayments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payments_enabled** | **Boolean** | Indicates whether EFT payments are enabled in the Buildium Resident Center for all residents of this property. Note, to enable EFT payments the operating bank account for the property must have EFT payments provisioned. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::EPaySettingsPutMessageEFTPayments.new(
  payments_enabled: null
)
```

