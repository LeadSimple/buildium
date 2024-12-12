# Buildium::PaymentTransactionsMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Payment transaction unique identifier. | [optional] |
| **accounting_entity** | [**PaymentTransactionsMessageAccountingEntity**](PaymentTransactionsMessageAccountingEntity.md) |  | [optional] |
| **amount** | **Float** | Payment amount. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::PaymentTransactionsMessage.new(
  id: null,
  accounting_entity: null,
  amount: null
)
```

