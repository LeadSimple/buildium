# Buildium::RentalAppliancePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** | Rental property unique identifier that the appliance belongs to. |  |
| **unit_id** | **Integer** | Rental unit unique identifier that the appliance belongs to. | [optional] |
| **name** | **String** | The name of the appliance. The name cannot exceed 100 characters. |  |
| **make** | **String** | The make of the appliance. The make cannot exceed 30 characters. | [optional] |
| **model** | **String** | The model of the appliance. The model cannot exceed 30 characters. | [optional] |
| **description** | **String** | The description of the appliance. The description cannot exceed 500 characters. | [optional] |
| **install_date** | **Date** | The install date for the appliance&#39;s warranty. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **warranty_end_date** | **Date** | The end date for the appliance&#39;s warranty. The warranty&#39;s end date cannot be before the installed date, if it exists. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::RentalAppliancePostMessage.new(
  property_id: null,
  unit_id: null,
  name: null,
  make: null,
  model: null,
  description: null,
  install_date: null,
  warranty_end_date: null
)
```

