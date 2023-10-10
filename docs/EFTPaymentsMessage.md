# Buildium::EFTPaymentsMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payments_enabled** | **Boolean** | Indicates whether EFT payments are enabled in the Buildium Resident Center for all residents of this property. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::EFTPaymentsMessage.new(
  payments_enabled: null
)
```

