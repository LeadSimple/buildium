# Buildium::RentalApplianceSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_ids** | **Array&lt;Integer&gt;** | Filters results to appliances associated to any of the specified rental property identifiers. | [optional] |
| **unit_ids** | **Array&lt;Integer&gt;** | Filters results to appliances associated to any of the specified rental unit identifiers. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::RentalApplianceSearchMessage.new(
  property_ids: null,
  unit_ids: null
)
```

