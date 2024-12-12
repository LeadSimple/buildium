# Buildium::WorkOrderMessageTask

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Task unique identifier. | [optional] |
| **type** | **String** | The task type. | [optional] |
| **unit_id** | **Integer** | The unit unique identifier associated with the task. | [optional] |
| **unit_agreement** | [**AllTasksMessageUnitAgreement**](AllTasksMessageUnitAgreement.md) |  | [optional] |
| **title** | **String** | Task title. | [optional] |
| **due_date** | **Date** | Task due date. | [optional] |
| **priority** | **String** | Task priority. | [optional] |
| **status** | **String** | Task status. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::WorkOrderMessageTask.new(
  id: null,
  type: null,
  unit_id: null,
  unit_agreement: null,
  title: null,
  due_date: null,
  priority: null,
  status: null
)
```

