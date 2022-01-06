# Buildium::AssociationUnitMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Association unit unique identifier. | [optional] |
| **association_id** | **Integer** | Association unique identifier that the unit belongs to. | [optional] |
| **association_name** | **String** | Association name that the unit belongs to. | [optional] |
| **unit_number** | **String** | Unit number. | [optional] |
| **address** | [**AddressMessage**](AddressMessage.md) |  | [optional] |
| **unit_bedrooms** | **String** | Number of bedrooms in the unit. | [optional] |
| **unit_bathrooms** | **String** | Number of bathrooms in the unit. | [optional] |
| **unit_size** | **Integer** | Size of the unit. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationUnitMessage.new(
  id: null,
  association_id: null,
  association_name: null,
  unit_number: null,
  address: null,
  unit_bedrooms: null,
  unit_bathrooms: null,
  unit_size: null
)
```

