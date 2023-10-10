# Buildium::RetailCashUsersSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **Integer** | Filters results to any users associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field. | [optional] |
| **entity_type** | **String** | Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is provided. | [optional] |
| **statuses** | **Array&lt;String&gt;** | Filters results to any users whose lease is in one of the provided statuses. | [optional] |
| **name** | **String** | Filters results to any users whose name *contains* the specified value. | [optional] |
| **unit_address** | **String** | Filters results to any users whose unit address *contains* the specified value. | [optional] |
| **is_account_created** | **Boolean** | Filters results to any users whose retail cash account is created. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RetailCashUsersSearchMessage.new(
  entity_id: null,
  entity_type: null,
  statuses: null,
  name: null,
  unit_address: null,
  is_account_created: null
)
```

