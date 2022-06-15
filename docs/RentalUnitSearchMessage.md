# Buildium::RentalUnitSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_ids** | **Array&lt;Integer&gt;** | Filters results to rental units that belong to the specified set of property ids. | [optional] |
| **last_updated_from** | **Time** | Filters results to any rental units that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **last_updated_to** | **Time** | Filters results to any rental units that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::RentalUnitSearchMessage.new(
  property_ids: null,
  last_updated_from: null,
  last_updated_to: null
)
```

