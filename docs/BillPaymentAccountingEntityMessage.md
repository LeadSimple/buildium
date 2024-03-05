# Buildium::BillPaymentAccountingEntityMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The accounting entity unique identifier. | [optional] |
| **accounting_entity_type** | **String** | Indicates the type of the accounting entity. | [optional] |
| **unit_id** | **Integer** | The unit unique identifier for the accounting entity | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BillPaymentAccountingEntityMessage.new(
  id: null,
  accounting_entity_type: null,
  unit_id: null
)
```

