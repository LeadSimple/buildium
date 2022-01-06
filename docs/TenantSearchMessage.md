# Buildium::TenantSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **building_statuses** | **Array&lt;String&gt;** | Filters results by the status of the rental property the tenants are associated with. If no status is specified tenants in either &#x60;active&#x60; and &#x60;inactive&#x60; rental properties will be returned. | [optional] |
| **lease_term_statuses** | **Array&lt;String&gt;** | Filters results to any tenant whose lease term matches the specified status.  If no status is specified tenants with any lease terms status will be returned. | [optional] |
| **unit_number** | **String** | Filters results to any tenant whose unit number *contains* the specified value. | [optional] |
| **name** | **String** | Filters results to any tenant whose name *contains* the specified value. | [optional] |
| **phone** | **String** | Filters results to any tenant whose phone number *contains* the specified value. | [optional] |
| **email** | **String** | Filters results to any tenant whose email *contains* the specified value. | [optional] |
| **property_ids** | **Array&lt;Integer&gt;** | Filters results to tenants whose rental unit belongs to the specified set of property ids. | [optional] |
| **rental_owner_ids** | **Array&lt;Integer&gt;** | Filters results to tenants whose rental unit belongs to a property with a rental owner in the specified set of rental owner ids. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::TenantSearchMessage.new(
  building_statuses: null,
  lease_term_statuses: null,
  unit_number: null,
  name: null,
  phone: null,
  email: null,
  property_ids: null,
  rental_owner_ids: null
)
```

