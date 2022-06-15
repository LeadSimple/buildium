# Buildium::BudgetPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the budget. |  |
| **property_id** | **Integer** | Property unique identifier that the budget belongs to. |  |
| **start_month** | **String** | The month the fiscal year starts for the budget. |  |
| **fiscal_year** | **Integer** | The fiscal year for the budget. The value must be formatted as YYYY. |  |
| **details** | [**Array&lt;BudgetDetailsSaveMessage&gt;**](BudgetDetailsSaveMessage.md) | The financial details associated with the budget. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::BudgetPostMessage.new(
  name: null,
  property_id: null,
  start_month: null,
  fiscal_year: null,
  details: null
)
```

