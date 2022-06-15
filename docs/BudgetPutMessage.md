# Buildium::BudgetPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the budget. |  |
| **details** | [**Array&lt;BudgetDetailsSaveMessage&gt;**](BudgetDetailsSaveMessage.md) | The financial details associated with the budget. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::BudgetPutMessage.new(
  name: null,
  details: null
)
```

