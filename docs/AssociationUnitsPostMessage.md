# Buildium::AssociationUnitsPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_number** | **String** | Unit number. Must be unique within the association and cannot exceed 30 characters. |  |
| **association_id** | **Integer** | Association unique identifier that the unit belongs to. |  |
| **unit_size** | **Integer** | Size of the unit. | [optional] |
| **address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  |  |
| **unit_bedrooms** | **String** | Number of bedrooms in the unit. | [optional] |
| **unit_bathrooms** | **String** | Number of bathrooms in the unit. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationUnitsPostMessage.new(
  unit_number: null,
  association_id: null,
  unit_size: null,
  address: null,
  unit_bedrooms: null,
  unit_bathrooms: null
)
```

