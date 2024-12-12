# Buildium::BankAccountWithdrawalSaveMessageAccountingEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the accounting entity |  |
| **accounting_entity_type** | **String** | The type of the accounting entity |  |
| **unit_id** | **Integer** | The unit unique identifier for the accounting entity. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountWithdrawalSaveMessageAccountingEntity.new(
  id: null,
  accounting_entity_type: null,
  unit_id: null
)
```

