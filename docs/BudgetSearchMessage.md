# Buildium::BudgetSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_ids** | **Array&lt;Integer&gt;** | Filters results to any budget associated to any of the specified set of property ids. | [optional] |
| **fiscal_year** | **Integer** | Filters results to any budgets that end in the given fiscal year. FiscalYear must be a positive number. | [optional] |
| **name** | **String** | Filters results to any budgets whose name *contains* the specified value. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BudgetSearchMessage.new(
  property_ids: null,
  fiscal_year: null,
  name: null
)
```

