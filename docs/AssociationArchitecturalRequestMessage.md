# Buildium::AssociationArchitecturalRequestMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Architectural request unique identifier. | [optional] |
| **association_id** | **Integer** | Association unique identifier. | [optional] |
| **ownership_account_id** | **Integer** | Ownership account unique identifier. | [optional] |
| **name** | **String** | Architectural request name. | [optional] |
| **submitted_date_time** | **Time** | Date and time the architectural request was submitted. | [optional] |
| **status** | **String** | Status of the architectural request. | [optional] |
| **decision** | **String** | Decision of the architectural request. | [optional] |
| **created_date_time** | **Time** | Date and time the architectural request was created. | [optional] |
| **created_by_user** | [**AssociationArchitecturalRequestMessageCreatedByUser**](AssociationArchitecturalRequestMessageCreatedByUser.md) |  | [optional] |
| **last_updated_date_time** | **Time** | Date and time the architectural request was last updated. | [optional] |
| **last_updated_by_user** | [**AssociationArchitecturalRequestMessageLastUpdatedByUser**](AssociationArchitecturalRequestMessageLastUpdatedByUser.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationArchitecturalRequestMessage.new(
  id: null,
  association_id: null,
  ownership_account_id: null,
  name: null,
  submitted_date_time: null,
  status: null,
  decision: null,
  created_date_time: null,
  created_by_user: null,
  last_updated_date_time: null,
  last_updated_by_user: null
)
```

