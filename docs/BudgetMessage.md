# Buildium::BudgetMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Budget unique identifier. | [optional] |
| **name** | **String** | Name of the budget. | [optional] |
| **start_date** | **Date** | Start date of the budget. | [optional] |
| **end_date** | **Date** | End date of the budget. | [optional] |
| **property** | [**PropertyMessage**](PropertyMessage.md) |  | [optional] |
| **details** | [**Array&lt;BudgetDetailsMessage&gt;**](BudgetDetailsMessage.md) | The details of the budget. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::BudgetMessage.new(
  id: null,
  name: null,
  start_date: null,
  end_date: null,
  property: null,
  details: null
)
```

