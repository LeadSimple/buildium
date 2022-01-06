# Buildium::BillPaymentAccountingEntityMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounting_entity_type** | **String** | Indicates the type of the accounting entity. | [optional] |
| **id** | **Integer** | The accounting entity unique identifier. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::BillPaymentAccountingEntityMessage.new(
  accounting_entity_type: null,
  id: null
)
```

