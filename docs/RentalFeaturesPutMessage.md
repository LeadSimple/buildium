# Buildium::RentalFeaturesPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **features** | **Array&lt;String&gt;** | A list of overall property amenities. Any previously saved values that are not submitted in the update request will be deleted. | [optional] |
| **included_in_rent** | **Array&lt;String&gt;** | A list of amenities that are included in rent. Any previously saved values that are not submitted in the update request will be deleted. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::RentalFeaturesPutMessage.new(
  features: null,
  included_in_rent: null
)
```

