# Buildium::TaskHistoryMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Task history unique identifier. | [optional] |
| **priority** | **String** | Task priority. | [optional] |
| **task_status** | **String** | Task status. | [optional] |
| **assigned_to_user_id** | **Integer** | The unique identifier of the staff user assigned to the task. | [optional] |
| **due_date** | **Date** | Task due date. | [optional] |
| **message** | **String** | Description of the task update. | [optional] |
| **shared_with** | **Array&lt;String&gt;** | Indicates the who the task update was shared with. | [optional] |
| **file_ids** | **Array&lt;Integer&gt;** | List of file unique identifiers associated with the task history. These identifiers can be used to retrieve the file metadata and/or download the files. | [optional] |
| **created_date_t_ime** | **Time** | The date and time the task history was created. | [optional] |
| **created_by_user** | [**TaskHistoryUserMessage**](TaskHistoryUserMessage.md) |  | [optional] |
| **last_updated_date_time** | **Time** | The date and time the task was last updated. | [optional] |
| **last_updated_by_user** | [**TaskHistoryUserMessage**](TaskHistoryUserMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::TaskHistoryMessage.new(
  id: null,
  priority: null,
  task_status: null,
  assigned_to_user_id: null,
  due_date: null,
  message: null,
  shared_with: null,
  file_ids: null,
  created_date_t_ime: null,
  created_by_user: null,
  last_updated_date_time: null,
  last_updated_by_user: null
)
```

