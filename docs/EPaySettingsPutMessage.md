# Buildium::EPaySettingsPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eft_payments** | [**EPaySettingsPutMessageEFTPayments**](EPaySettingsPutMessageEFTPayments.md) |  |  |
| **credit_card_payments** | [**EPaySettingsPutMessageCreditCardPayments**](EPaySettingsPutMessageCreditCardPayments.md) |  |  |
| **offline_payments** | [**EPaySettingsPutMessageOfflinePayments**](EPaySettingsPutMessageOfflinePayments.md) |  |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::EPaySettingsPutMessage.new(
  eft_payments: null,
  credit_card_payments: null,
  offline_payments: null
)
```

