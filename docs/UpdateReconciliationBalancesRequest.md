# Buildium::UpdateReconciliationBalancesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_checks_and_withdrawals** | **Float** | Total amount of checks and withdrawals of the reconciliation statement balance. |  |
| **total_deposits_and_additions** | **Float** | Total amount of deposits and additions of the reconciliation statement balance. |  |
| **ending_balance** | **Float** | Ending balance of the reconciliation statement balance. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateReconciliationBalancesRequest.new(
  total_checks_and_withdrawals: null,
  total_deposits_and_additions: null,
  ending_balance: null
)
```

