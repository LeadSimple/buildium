# Buildium::ContactRequestTaskSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is populated. | [optional] |
| **entity_id** | **Integer** | Filters results to any task associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field. | [optional] |
| **statuses** | **Array&lt;String&gt;** | Filters results by the status of the task. If no status is specified, tasks with any status will be returned. | [optional] |
| **unit_id** | **Integer** | Filters results to any task associated with the unit identifier. | [optional] |
| **last_updated_from** | **Date** | Filters results to any tasks were updated on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **last_updated_to** | **Date** | Filters results to any tasks were updated on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **due_date_from** | **Date** | Filters results to any tasks with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **due_date_to** | **Date** | Filters results to any tasks with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **task_category_id** | **Integer** | Filters results to any tasks with the specified category identifier. | [optional] |
| **priorities** | **Array&lt;String&gt;** | Filters results to any tasks whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned. | [optional] |
| **assigned_to_id** | **Integer** | Filters results to any tasks that have been assigned to the specified staff user identifier. | [optional] |
| **task_title** | **String** | Filters results to any task whose title *contains* the specified value. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ContactRequestTaskSearchMessage.new(
  entity_type: null,
  entity_id: null,
  statuses: null,
  unit_id: null,
  last_updated_from: null,
  last_updated_to: null,
  due_date_from: null,
  due_date_to: null,
  task_category_id: null,
  priorities: null,
  assigned_to_id: null,
  task_title: null
)
```

