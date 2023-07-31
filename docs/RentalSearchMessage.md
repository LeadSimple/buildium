# Buildium::RentalSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | Filters results to only rental properties whose city or state *contains* the specified value. | [optional] |
| **types** | **Array&lt;String&gt;** | Filters results by the rental type. If no type is provided all types will be returned. | [optional] |
| **sub_types** | **Array&lt;String&gt;** | Filters results by the sub type of the rental property. If no sub type is specified all sub types will be returned. | [optional] |
| **status** | **String** | Filters results by the status of the rental property. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; rental properties will be returned. | [optional] |
| **rental_owner_ids** | **Array&lt;Integer&gt;** | Filters results to only rental properties whose RentalOwnerId matches the specified Id. | [optional] |
| **property_ids** | **Array&lt;Integer&gt;** | Filters results to only rental properties units whose Rental matches the specified Id. | [optional] |
| **last_updated_from** | **Time** | Filters results to any rental properties that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **last_updated_to** | **Time** | Filters results to any rental properties that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalSearchMessage.new(
  location: null,
  types: null,
  sub_types: null,
  status: null,
  rental_owner_ids: null,
  property_ids: null,
  last_updated_from: null,
  last_updated_to: null
)
```

