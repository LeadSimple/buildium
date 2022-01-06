# Buildium::RentalUnitMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Rental unit unique identifier. | [optional] |
| **property_id** | **Integer** | Rental property unique identifier that the unit belongs to. | [optional] |
| **building_name** | **String** | Building name that the unit belongs to. | [optional] |
| **unit_number** | **String** | Unit number. | [optional] |
| **description** | **String** | Description of the unit. | [optional] |
| **market_rent** | **Float** | Market rent of the unit. This value is separate from the lease rent and is typically used for rental listings. Null if no value is set. | [optional] |
| **address** | [**AddressMessage**](AddressMessage.md) |  | [optional] |
| **unit_bedrooms** | **String** | Number of bedrooms in the unit. Null if no value is set. | [optional] |
| **unit_bathrooms** | **String** | Number of bathrooms in the unit. Null if no value is set. | [optional] |
| **unit_size** | **Integer** | Size of the unit. Null if no value is set. | [optional] |
| **is_unit_listed** | **Boolean** | Whether the unit is currently listed for rent. | [optional] |
| **is_unit_occupied** | **Boolean** | Whether the unit is currently being rented by a tenent. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::RentalUnitMessage.new(
  id: null,
  property_id: null,
  building_name: null,
  unit_number: null,
  description: null,
  market_rent: null,
  address: null,
  unit_bedrooms: null,
  unit_bathrooms: null,
  unit_size: null,
  is_unit_listed: null,
  is_unit_occupied: null
)
```

