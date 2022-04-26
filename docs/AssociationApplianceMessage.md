# Buildium::AssociationApplianceMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Appliance unique identifier. | [optional] |
| **association_id** | **Integer** | Association unique identifier that the appliance belongs to. | [optional] |
| **unit_id** | **Integer** | Association unit unique identifier that the appliance belongs to. | [optional] |
| **name** | **String** | Name of the appliance. | [optional] |
| **make** | **String** | Make of the appliance. | [optional] |
| **model** | **String** | Model of the appliance. | [optional] |
| **description** | **String** | Description of the appliance. | [optional] |
| **warranty_end_date** | **Date** | Warranty end date of the appliance. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationApplianceMessage.new(
  id: null,
  association_id: null,
  unit_id: null,
  name: null,
  make: null,
  model: null,
  description: null,
  warranty_end_date: null
)
```

