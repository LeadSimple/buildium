# Buildium::EPaySettingsPutMessageCreditCardPayments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payments_enabled** | **Boolean** | Indicates whether credit card payments are enabled in the Buildium Resident Center for all residents of this property. Note, to enable credit card payments the operating bank account for the property must have credit card payments provisioned. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::EPaySettingsPutMessageCreditCardPayments.new(
  payments_enabled: null
)
```

