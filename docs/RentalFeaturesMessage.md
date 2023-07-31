# Buildium::RentalFeaturesMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **features** | **Array&lt;String&gt;** | A list of overall property amenities. | [optional] |
| **included_in_rent** | **Array&lt;String&gt;** | A list of amenities that are included in rent. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalFeaturesMessage.new(
  features: null,
  included_in_rent: null
)
```

