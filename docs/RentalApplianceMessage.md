# Buildium::RentalApplianceMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Appliance unique identifier. | [optional] |
| **property_id** | **Integer** | Rental property unique identifier that the appliance belongs to. | [optional] |
| **unit_id** | **Integer** | Rental unit unique identifier that the appliance belongs to. | [optional] |
| **name** | **String** | Name of the appliance. | [optional] |
| **make** | **String** | Make of the appliance. | [optional] |
| **model** | **String** | Model of the appliance. | [optional] |
| **description** | **String** | Description of the appliance. | [optional] |
| **warranty_end_date** | **Date** | Warranty end date of the appliance. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalApplianceMessage.new(
  id: null,
  property_id: null,
  unit_id: null,
  name: null,
  make: null,
  model: null,
  description: null,
  warranty_end_date: null
)
```

