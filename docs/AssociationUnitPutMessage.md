# Buildium::AssociationUnitPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_number** | **String** | Unit Number. Must be unique within the association and cannot exceed 30 characters. |  |
| **unit_size** | **Integer** | Size of the unit. | [optional] |
| **address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  |  |
| **unit_bedrooms** | **String** | Number of bedrooms in the unit. | [optional] |
| **unit_bathrooms** | **String** | Number of bathrooms in the unit. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationUnitPutMessage.new(
  unit_number: null,
  unit_size: null,
  address: null,
  unit_bedrooms: null,
  unit_bathrooms: null
)
```

