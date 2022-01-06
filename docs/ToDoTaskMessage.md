# Buildium::ToDoTaskMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Request unique identifier. | [optional] |
| **category** | [**TaskCategoryResponseMessage**](TaskCategoryResponseMessage.md) |  | [optional] |
| **title** | **String** | Request title. | [optional] |
| **description** | **String** | Request description. | [optional] |
| **property** | [**PropertyMessage**](PropertyMessage.md) |  | [optional] |
| **unit_id** | **Integer** | The unit unique identifier associated with the request. | [optional] |
| **assigned_to_user_id** | **Integer** | The unique identifier of the staff user assigned to the request. | [optional] |
| **task_status** | **String** | Request status. | [optional] |
| **priority** | **String** | Request priority. | [optional] |
| **due_date** | **Date** | Request due date. | [optional] |
| **created_date_time** | **Time** | The date and time the request was created. | [optional] |
| **last_updated_date_time** | **Time** | The date and time the request was last updated. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ToDoTaskMessage.new(
  id: null,
  category: null,
  title: null,
  description: null,
  property: null,
  unit_id: null,
  assigned_to_user_id: null,
  task_status: null,
  priority: null,
  due_date: null,
  created_date_time: null,
  last_updated_date_time: null
)
```

