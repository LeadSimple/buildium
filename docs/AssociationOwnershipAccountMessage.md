# Buildium::AssociationOwnershipAccountMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Association ownership account unique identifier. | [optional] |
| **association_id** | **Integer** | Association unique identifier that the ownership account belongs to. | [optional] |
| **unit_id** | **Integer** | Association unit unique identifier that the ownership account is related to. | [optional] |
| **status** | **String** | Indicates the status of the ownership account. | [optional] |
| **date_of_purchase** | **Date** | Date the unit(s) where purchased by the owner. | [optional] |
| **date_of_sale** | **Date** | Date the unit(s) where sold by the owner. | [optional] |
| **comments** | **String** | Comments about the ownership account. | [optional] |
| **association_owner_ids** | **Array&lt;Integer&gt;** | Association owners associated with the ownership account | [optional] |
| **delinquency_status** | **String** | Indicates the delinquency status of the ownership account | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationOwnershipAccountMessage.new(
  id: null,
  association_id: null,
  unit_id: null,
  status: null,
  date_of_purchase: null,
  date_of_sale: null,
  comments: null,
  association_owner_ids: null,
  delinquency_status: null
)
```

