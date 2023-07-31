# Buildium::BudgetDetailsSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | The general ledger account identifier to record the budget details under. |  |
| **monthly_amounts** | [**BudgetMonthlyAmountsSaveMessage**](BudgetMonthlyAmountsSaveMessage.md) |  |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BudgetDetailsSaveMessage.new(
  gl_account_id: null,
  monthly_amounts: null
)
```

