# Buildium::EPaySettingsMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eft_payments** | [**EFTPaymentsMessage**](EFTPaymentsMessage.md) |  | [optional] |
| **credit_card_payments** | [**CCPaymentsMessage**](CCPaymentsMessage.md) |  | [optional] |
| **offline_payments** | [**OfflinePaymentsMessage**](OfflinePaymentsMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::EPaySettingsMessage.new(
  eft_payments: null,
  credit_card_payments: null,
  offline_payments: null
)
```

