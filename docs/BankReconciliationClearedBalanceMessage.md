# Buildium::BankReconciliationClearedBalanceMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_checks_and_withdrawals** | **Float** | Total amount of checks and withdrawals of the reconciliation cleared balance. | [optional] |
| **total_deposits_and_additions** | **Float** | Total amount of deposits and additions of the reconciliation cleared balance. | [optional] |
| **ending_balance** | **Float** | Ending balance of the reconciliation cleared balance. | [optional] |
| **beginning_balance** | **Float** | Beginning balance of the reconciliation cleared balance. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankReconciliationClearedBalanceMessage.new(
  total_checks_and_withdrawals: null,
  total_deposits_and_additions: null,
  ending_balance: null,
  beginning_balance: null
)
```

