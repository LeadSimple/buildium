# Buildium::ListingMessageUnit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Rental unit unique identifier. | [optional] |
| **unit_number** | **String** | Unit number. | [optional] |
| **address** | [**ListingUnitMessageAddress**](ListingUnitMessageAddress.md) |  | [optional] |
| **unit_bedrooms** | **String** | Number of bedrooms in the unit. Null if no value is set. | [optional] |
| **unit_bathrooms** | **String** | Number of bathrooms in the unit. Null if no value is set. | [optional] |
| **unit_size** | **Integer** | Size of the unit. Null if no value is set. | [optional] |
| **description** | **String** | Description of the unit. | [optional] |
| **market_rent** | **Float** | Market rent of the unit. This value is separate from the lease rent and is typically used for rental listings. Null if no value is set. | [optional] |
| **features** | **Array&lt;String&gt;** | List of features for the unit. | [optional] |
| **files** | [**Array&lt;ListingFileMessage&gt;**](ListingFileMessage.md) | List of media files associated with the unit. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ListingMessageUnit.new(
  id: null,
  unit_number: null,
  address: null,
  unit_bedrooms: null,
  unit_bathrooms: null,
  unit_size: null,
  description: null,
  market_rent: null,
  features: null,
  files: null
)
```

