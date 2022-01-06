# Buildium::WorkOrderSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is populated. | [optional] |
| **entity_id** | **Integer** | Filters results to any work order associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field. | [optional] |
| **statuses** | **Array&lt;String&gt;** | Filters results by the status of the task associated with the work order. If no status is specified, work orders with any status will be returned. | [optional] |
| **type** | **String** | Filters results to any work order with an associated task with the task type specified. | [optional] |
| **unit_id** | **Integer** | Filters results to any work order associated with the unit identifier. | [optional] |
| **unit_agreement_id** | **Integer** | Filters results to any work order associated with the unit agreement identifier specified. | [optional] |
| **last_updated_from** | **Date** | Filters results to any work orders were updated on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **last_updated_to** | **Date** | Filters results to any work orders were updated on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **due_date_from** | **Date** | Filters results to any work orders with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **due_date_to** | **Date** | Filters results to any work orders with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **task_category_id** | **Integer** | Filters results to any work orders whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned. | [optional] |
| **priorities** | **Array&lt;String&gt;** | Filters results to any work orders that have been assigned to the specified staff user identifier. | [optional] |
| **assigned_to_id** | **Integer** | Filters results to any work orders that have been assigned to the specified staff user identifier. | [optional] |
| **vendor_ids** | **Array&lt;Integer&gt;** | Filters results to any work orders that have been assigned to the specified vendor identifier. | [optional] |
| **amount_from** | **Float** | Filters results to any work orders whose total amounts are equal or greater than the specified amount. | [optional] |
| **amount_to** | **Float** | Filters results to any work orders whose total amounts are equal or less than the specified amount. | [optional] |
| **is_billed** | **Boolean** | Filters results to work orders that have an associated bill. | [optional] |
| **title** | **String** | Filters results to any work orders whose title *contains* the specified value. | [optional] |
| **task_ids** | **Array&lt;Integer&gt;** | Filters results to work orders that have an associated to a task in the specified list. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::WorkOrderSearchMessage.new(
  entity_type: null,
  entity_id: null,
  statuses: null,
  type: null,
  unit_id: null,
  unit_agreement_id: null,
  last_updated_from: null,
  last_updated_to: null,
  due_date_from: null,
  due_date_to: null,
  task_category_id: null,
  priorities: null,
  assigned_to_id: null,
  vendor_ids: null,
  amount_from: null,
  amount_to: null,
  is_billed: null,
  title: null,
  task_ids: null
)
```

