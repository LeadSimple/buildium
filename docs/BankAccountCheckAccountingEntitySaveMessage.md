# Buildium::BankAccountCheckAccountingEntitySaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The accounting entity unique identifier. |  |
| **accounting_entity_type** | **String** | The type of accounting entity. |  |
| **unit_id** | **Integer** | The unit unique identifier for the accounting entity. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountCheckAccountingEntitySaveMessage.new(
  id: null,
  accounting_entity_type: null,
  unit_id: null
)
```

