# Buildium::EPaySettingsPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eft_payments** | [**EFTPaymentsPutMessage**](EFTPaymentsPutMessage.md) |  |  |
| **credit_card_payments** | [**CCPaymentsPutMessage**](CCPaymentsPutMessage.md) |  |  |
| **offline_payments** | [**OfflinePaymentsPutMessage**](OfflinePaymentsPutMessage.md) |  |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::EPaySettingsPutMessage.new(
  eft_payments: null,
  credit_card_payments: null,
  offline_payments: null
)
```

