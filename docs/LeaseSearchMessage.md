# Buildium::LeaseSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_ids** | **Array&lt;Integer&gt;** | Filters results to any lease whose unit belongs to the specified set of property ids. | [optional] |
| **rental_owner_ids** | **Array&lt;Integer&gt;** | Filters results to any lease whose unit belongs to a property with a rental owner in the specified set of rental owner ids. | [optional] |
| **unit_number** | **String** | Filters results to any lease whose unit number *contains* the specified value. | [optional] |
| **tenant_name** | **String** | Filters results to any lease whose current tenants&#39; names *contain* the specified value. | [optional] |
| **lease_date_from** | **Date** | Filters results to any lease whose start date is greater than or equal to the specified value. | [optional] |
| **lease_date_to** | **Date** | Filters results to any lease whose end date is less than or equal to the specified value. | [optional] |
| **lease_types** | **Array&lt;String&gt;** | Filters results to any lease whose lease type matches the specified status. If no type is specified, leases with any type will be returned. | [optional] |
| **lease_statuses** | **Array&lt;String&gt;** | Filters results to any lease whose lease term matches the specified status. If no status is specified, leases with any lease term status will be returned. | [optional] |
| **created_date_time_from** | **Time** | Filters results to any lease whose created date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS. | [optional] |
| **created_date_time_to** | **Time** | Filters results to any lease whose created date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS. | [optional] |
| **last_updated_from** | **Time** | Filters results to any leases that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **last_updated_to** | **Time** | Filters results to any leases that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseSearchMessage.new(
  property_ids: null,
  rental_owner_ids: null,
  unit_number: null,
  tenant_name: null,
  lease_date_from: null,
  lease_date_to: null,
  lease_types: null,
  lease_statuses: null,
  created_date_time_from: null,
  created_date_time_to: null,
  last_updated_from: null,
  last_updated_to: null
)
```

