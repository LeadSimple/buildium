# Buildium::UpdateBudgetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the budget. |  |
| **details** | [**Array&lt;BudgetDetailsSaveMessage&gt;**](BudgetDetailsSaveMessage.md) | The financial details associated with the budget. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateBudgetRequest.new(
  name: null,
  details: null
)
```

