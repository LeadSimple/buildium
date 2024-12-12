# Buildium::EPaySettingsMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eft_payments** | [**EPaySettingsMessageEFTPayments**](EPaySettingsMessageEFTPayments.md) |  | [optional] |
| **credit_card_payments** | [**EPaySettingsMessageCreditCardPayments**](EPaySettingsMessageCreditCardPayments.md) |  | [optional] |
| **offline_payments** | [**EPaySettingsMessageOfflinePayments**](EPaySettingsMessageOfflinePayments.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::EPaySettingsMessage.new(
  eft_payments: null,
  credit_card_payments: null,
  offline_payments: null
)
```

