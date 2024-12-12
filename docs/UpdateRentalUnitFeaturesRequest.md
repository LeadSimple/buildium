# Buildium::UpdateRentalUnitFeaturesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **features** | **Array&lt;String&gt;** | A list of unit amenities. Any existing amenities associated with the unit that are not submitted in the request will be removed from the unit. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateRentalUnitFeaturesRequest.new(
  features: null
)
```

