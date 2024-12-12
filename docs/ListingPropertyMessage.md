# Buildium::ListingPropertyMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Rental property unique identifier. | [optional] |
| **name** | **String** | Name of the rental property. | [optional] |
| **address** | [**ListingPropertyMessageAddress**](ListingPropertyMessageAddress.md) |  | [optional] |
| **number_units** | **Integer** | Number of units in the rental property. | [optional] |
| **structure_description** | **String** | Description of the rental property structure. | [optional] |
| **year_built** | **Integer** | Year the rental property was built. | [optional] |
| **features** | **Array&lt;String&gt;** | List of features for the property. | [optional] |
| **included_in_rent** | **Array&lt;String&gt;** | The list of amenities included in rent the property has. | [optional] |
| **files** | [**Array&lt;ListingFileMessage&gt;**](ListingFileMessage.md) | List of media files associated with the property. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ListingPropertyMessage.new(
  id: null,
  name: null,
  address: null,
  number_units: null,
  structure_description: null,
  year_built: null,
  features: null,
  included_in_rent: null,
  files: null
)
```

