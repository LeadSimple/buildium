# Buildium::GLAccountBalanceItemMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **balance** | **Float** | The sum of transactions associated with the general ledger account for the given accounting entity. | [optional] |
| **accounting_entity** | [**GLAccountBalanceItemMessageAccountingEntity**](GLAccountBalanceItemMessageAccountingEntity.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::GLAccountBalanceItemMessage.new(
  balance: null,
  accounting_entity: null
)
```

