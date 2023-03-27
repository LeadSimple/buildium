# Buildium::BillPaymentAccountingEntityMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The accounting entity unique identifier. | [optional] |
| **accounting_entity_type** | **String** | Indicates the type of the accounting entity. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::BillPaymentAccountingEntityMessage.new(
  id: null,
  accounting_entity_type: null
)
```

