# Buildium::BudgetDetailsMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | The general ledger account unique identifier the budget is related to. | [optional] |
| **gl_account_sub_type** | **String** | Describes the subtype of the general ledger account. | [optional] |
| **total_amount** | **Float** | Sum of all monthly amounts in the budget. | [optional] |
| **monthly_amounts** | [**BudgetMonthlyAmountsMessage**](BudgetMonthlyAmountsMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::BudgetDetailsMessage.new(
  gl_account_id: null,
  gl_account_sub_type: null,
  total_amount: null,
  monthly_amounts: null
)
```

