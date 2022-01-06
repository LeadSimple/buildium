# Buildium::WorkOrderTaskPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Task title. The title can not exceed 127 characters. |  |
| **due_date** | **Date** | Task due date. The date must be formatted as YYYY-MM-DD. | [optional] |
| **priority** | **String** | Task priority. |  |
| **status** | **String** | Task status. |  |
| **property_id** | **Integer** | The unique identifier of property associated with the request. The assigned property must be active. | [optional] |
| **unit_id** | **Integer** | The unique identifier of the unit associated with the request. The unit must be associated with the &#x60;PropertyId&#x60; specified. | [optional] |
| **assigned_to_user_id** | **Integer** | The unique identifier of the staff user assigned to the request. The user must be a &#x60;Staff&#x60; user type. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::WorkOrderTaskPostMessage.new(
  title: null,
  due_date: null,
  priority: null,
  status: null,
  property_id: null,
  unit_id: null,
  assigned_to_user_id: null
)
```

