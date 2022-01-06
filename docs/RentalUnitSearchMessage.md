# Buildium::RentalUnitSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_ids** | **Array&lt;Integer&gt;** | Filters results to rental units that belong to the specified set of property ids. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::RentalUnitSearchMessage.new(
  property_ids: null
)
```

