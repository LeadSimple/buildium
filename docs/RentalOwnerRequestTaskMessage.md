# Buildium::RentalOwnerRequestTaskMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Request unique identifier. | [optional] |
| **category** | [**ContactRequestTaskMessageCategory**](ContactRequestTaskMessageCategory.md) |  | [optional] |
| **title** | **String** | Request title. | [optional] |
| **description** | **String** | Request description. | [optional] |
| **property** | [**ContactRequestTaskMessageProperty**](ContactRequestTaskMessageProperty.md) |  | [optional] |
| **unit_id** | **Integer** | The unit unique identifier associated with the request. | [optional] |
| **requested_by_user_entity** | [**RentalOwnerRequestTaskMessageRequestedByUserEntity**](RentalOwnerRequestTaskMessageRequestedByUserEntity.md) |  | [optional] |
| **assigned_to_user_id** | **Integer** | The unique identifier of the staff user assigned to the request. | [optional] |
| **task_status** | **String** | Request status. | [optional] |
| **priority** | **String** | Request priority. | [optional] |
| **due_date** | **Date** | Request due date. | [optional] |
| **created_date_time** | **Time** | Date and time the request was created. | [optional] |
| **last_updated_date_time** | **Time** | Date and time the request was last updated. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalOwnerRequestTaskMessage.new(
  id: null,
  category: null,
  title: null,
  description: null,
  property: null,
  unit_id: null,
  requested_by_user_entity: null,
  assigned_to_user_id: null,
  task_status: null,
  priority: null,
  due_date: null,
  created_date_time: null,
  last_updated_date_time: null
)
```

