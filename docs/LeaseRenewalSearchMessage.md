# Buildium::LeaseRenewalSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_ids** | **Array&lt;Integer&gt;** | Filters results to only include leases whose unit belongs to the specified set of property ids. | [optional] |
| **rental_owner_ids** | **Array&lt;Integer&gt;** | Filters results to any lease whose unit belongs to a property with rental owner in the specified set of rental owner ids. | [optional] |
| **e_signature_statuses** | **Array&lt;String&gt;** | Filters result to any lease renewal with an esignature status that matches the given statuses. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseRenewalSearchMessage.new(
  property_ids: null,
  rental_owner_ids: null,
  e_signature_statuses: null
)
```

