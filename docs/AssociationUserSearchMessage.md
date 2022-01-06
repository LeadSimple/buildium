# Buildium::AssociationUserSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Filters results to only records whose name *contains* the specified value. | [optional] |
| **phone** | **String** | Filters results to only records whose phone number *contains* the specified value. | [optional] |
| **email** | **String** | Filters results to only records whose email *contains* the specified value. | [optional] |
| **association_ids** | **Array&lt;Integer&gt;** | Filters results to only records that belong to the specified set of association ids. | [optional] |
| **statuses** | **Array&lt;String&gt;** | Filters results to only records whose status is equal to the specified value. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationUserSearchMessage.new(
  name: null,
  phone: null,
  email: null,
  association_ids: null,
  statuses: null
)
```

