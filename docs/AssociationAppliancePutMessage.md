# Buildium::AssociationAppliancePutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | The unit identifier the association appliance belongs to. Must be within the association property the appliance is in. | [optional] |
| **name** | **String** | The name of the association appliance. The name cannot exceed 100 characters. |  |
| **make** | **String** | The make of the association appliance. The make cannot exceed 30 characters. | [optional] |
| **model** | **String** | The model of the association appliance. The model cannot exceed 30 characters. | [optional] |
| **description** | **String** | The description of the association appliance. The description cannot exceed 500 characters. | [optional] |
| **warranty_end_date** | **Date** | The end date for the association appliance&#39;s warranty. The warranty&#39;s end date cannot be before the installed date, if it exists. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationAppliancePutMessage.new(
  unit_id: null,
  name: null,
  make: null,
  model: null,
  description: null,
  warranty_end_date: null
)
```

