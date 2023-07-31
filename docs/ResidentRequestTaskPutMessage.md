# Buildium::ResidentRequestTaskPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Request title. The title can not exceed 127 characters. |  |
| **message** | **String** | Description of the request update. The message can not exceed 65500 characters. | [optional] |
| **category_id** | **Integer** | The category identifier to assign the request. | [optional] |
| **sub_category_id** | **Integer** | The subcategory identifier to assign the request. | [optional] |
| **assigned_to_user_id** | **Integer** | The unique identifier of the staff user assigned to the request. The user must be a &#x60;Staff&#x60; user type. | [optional] |
| **task_status** | **String** | Request status. |  |
| **priority** | **String** | Request priority. |  |
| **due_date** | **Date** | Request due date. The date must be formatted as YYYY-MM-DD. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ResidentRequestTaskPutMessage.new(
  title: null,
  message: null,
  category_id: null,
  sub_category_id: null,
  assigned_to_user_id: null,
  task_status: null,
  priority: null,
  due_date: null
)
```

