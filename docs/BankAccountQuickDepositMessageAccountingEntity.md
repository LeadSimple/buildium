# Buildium::BankAccountQuickDepositMessageAccountingEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The accounting entity unique identifier. | [optional] |
| **accounting_entity_type** | **String** | The type of accounting entity. | [optional] |
| **href** | **String** | A link to the accounting entity resource. | [optional] |
| **unit** | [**AccountingEntityMessageUnit**](AccountingEntityMessageUnit.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountQuickDepositMessageAccountingEntity.new(
  id: null,
  accounting_entity_type: null,
  href: null,
  unit: null
)
```

