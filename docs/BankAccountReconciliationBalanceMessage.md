# Buildium::BankAccountReconciliationBalanceMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **difference** | **Float** | Difference between beginning balance and ending balance of the reconciliation. | [optional] |
| **statement_balance** | [**BankAccountReconciliationBalanceMessageStatementBalance**](BankAccountReconciliationBalanceMessageStatementBalance.md) |  | [optional] |
| **cleared_balance** | [**BankAccountReconciliationBalanceMessageClearedBalance**](BankAccountReconciliationBalanceMessageClearedBalance.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountReconciliationBalanceMessage.new(
  difference: null,
  statement_balance: null,
  cleared_balance: null
)
```

