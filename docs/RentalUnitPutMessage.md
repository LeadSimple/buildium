# Buildium::RentalUnitPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_number** | **String** | Unit number. Must be unique within the rental property and cannot exceed 30 characters. |  |
| **unit_size** | **Integer** | Size of the unit. | [optional] |
| **market_rent** | **Float** | Market rent of the unit. This value is separate from the lease rent and is typically used for rental listings. | [optional] |
| **address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  |  |
| **unit_bedrooms** | **String** | Number of bedrooms in the unit. | [optional] |
| **unit_bathrooms** | **String** | Number of bathrooms in the unit. | [optional] |
| **description** | **String** | Description of the unit. The description cannot exceed 65,535 characters. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::RentalUnitPutMessage.new(
  unit_number: null,
  unit_size: null,
  market_rent: null,
  address: null,
  unit_bedrooms: null,
  unit_bathrooms: null,
  description: null
)
```

