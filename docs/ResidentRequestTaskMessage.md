# Buildium::ResidentRequestTaskMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Request unique identifier. | [optional] |
| **category** | [**ContactRequestTaskMessageCategory**](ContactRequestTaskMessageCategory.md) |  | [optional] |
| **title** | **String** | Request title. | [optional] |
| **description** | **String** | Request description. | [optional] |
| **property** | [**ContactRequestTaskMessageProperty**](ContactRequestTaskMessageProperty.md) |  | [optional] |
| **unit_id** | **Integer** | The unit unique identifier associated with the request. | [optional] |
| **unit_agreement** | [**ResidentRequestTaskMessageUnitAgreement**](ResidentRequestTaskMessageUnitAgreement.md) |  | [optional] |
| **requested_by_user_entity** | [**ResidentRequestTaskMessageRequestedByUserEntity**](ResidentRequestTaskMessageRequestedByUserEntity.md) |  | [optional] |
| **assigned_to_user_id** | **Integer** | The unique identifier of the staff user assigned to the request. | [optional] |
| **task_status** | **String** | Request status. | [optional] |
| **priority** | **String** | Request priority. | [optional] |
| **due_date** | **Date** | Request due date. | [optional] |
| **created_date_time** | **Time** | The date and time the request was created. | [optional] |
| **last_updated_date_time** | **Time** | The date and time the request was last updated. | [optional] |
| **appliance** | [**ResidentRequestTaskMessageAppliance**](ResidentRequestTaskMessageAppliance.md) |  | [optional] |
| **is_entry_permitted_by_resident** | **Boolean** | Indicates whether the resident has permitted entry. A null value represents no response was provided from the resident. | [optional] |
| **does_resident_have_pets** | **Boolean** | Indicates whether the resident has pets. A null value represents no response was provided from the resident. | [optional] |
| **resident_entry_notes** | **String** | Notes provided by the resident specific to entering the premises. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ResidentRequestTaskMessage.new(
  id: null,
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
  last_updated_date_time: null,
  appliance: null,
  is_entry_permitted_by_resident: null,
  does_resident_have_pets: null,
  resident_entry_notes: null
)
```

