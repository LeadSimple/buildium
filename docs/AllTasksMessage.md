# Buildium::AllTasksMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Task unique identifier. | [optional] |
| **task_type** | **String** | The task type. | [optional] |
| **category** | [**TaskCategoryResponseMessage**](TaskCategoryResponseMessage.md) |  | [optional] |
| **title** | **String** | Task title. | [optional] |
| **description** | **String** | Task description. | [optional] |
| **property** | [**PropertyMessage**](PropertyMessage.md) |  | [optional] |
| **unit_id** | **Integer** | The unit unique identifier associated with the task. | [optional] |
| **unit_agreement** | [**UnitAgreementMessage**](UnitAgreementMessage.md) |  | [optional] |
| **requested_by_user_entity** | [**RequestedByUserEntityMessage**](RequestedByUserEntityMessage.md) |  | [optional] |
| **assigned_to_user_id** | **Integer** | The unique identifier of the staff user assigned to the task. | [optional] |
| **task_status** | **String** | Task status. | [optional] |
| **priority** | **String** | Task priority. | [optional] |
| **due_date** | **Date** | Task due date. | [optional] |
| **created_date_time** | **Time** | The date and time the task was created. | [optional] |
| **last_updated_date_time** | **Time** | The date and time the task was last updated. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AllTasksMessage.new(
  id: null,
  task_type: null,
  category: null,
  title: null,
  description: null,
  property: null,
  unit_id: null,
  unit_agreement: null,
  requested_by_user_entity: null,
  assigned_to_user_id: null,
  task_status: null,
  priority: null,
  due_date: null,
  created_date_time: null,
  last_updated_date_time: null
)
```

