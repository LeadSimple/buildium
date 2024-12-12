# Buildium::BankPendingReconciliationPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statement_ending_date** | **Date** | End date for the reconciliation statement period. The date must be formatted as YYYY-MM-DD. |  |
| **total_checks_and_withdrawals** | **Float** | Sum of all checks and withdrawals for the reconciliation. | [optional] |
| **total_deposits_and_additions** | **Float** | Sum of all deposits and additions for the reconciliation. | [optional] |
| **ending_balance** | **Float** | Ending balance of the pending reconciliation. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankPendingReconciliationPostMessage.new(
  statement_ending_date: null,
  total_checks_and_withdrawals: null,
  total_deposits_and_additions: null,
  ending_balance: null
)
```

