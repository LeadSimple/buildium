# Buildium::RentalOwnerRequestTaskPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Request title. The title can not exceed 127 characters. |  |
| **message** | **String** | Description of the request update. The message can not exceed 65500 characters. | [optional] |
| **category_id** | **Integer** | The category identifier to assign the request. | [optional] |
| **sub_category_id** | **Integer** | The subcategory identifier to assign the request. | [optional] |
| **property_id** | **Integer** | The unique identifier of property associated with the request. The assigned property must be active. | [optional] |
| **unit_id** | **Integer** | The unique identifier of the unit associated with the request. The unit must be associated with the &#x60;PropertyId&#x60; specified. | [optional] |
| **assigned_to_user_id** | **Integer** | The unique identifier of the staff user assigned to the request. The user must be a &#x60;Staff&#x60; user type. | [optional] |
| **task_status** | **String** | Request status. |  |
| **priority** | **String** | Request priority. |  |
| **due_date** | **Date** | Request due date. The date must be formatted as YYYY-MM-DD. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::RentalOwnerRequestTaskPutMessage.new(
  title: null,
  message: null,
  category_id: null,
  sub_category_id: null,
  property_id: null,
  unit_id: null,
  assigned_to_user_id: null,
  task_status: null,
  priority: null,
  due_date: null
)
```

