# Buildium::RentalApplianceServiceHistoryMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Appliance service history unique identifier. | [optional] |
| **service_type** | **String** | Type of service performed. | [optional] |
| **date** | **Date** | Date of the service. | [optional] |
| **details** | **String** | Details of the service. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalApplianceServiceHistoryMessage.new(
  id: null,
  service_type: null,
  date: null,
  details: null
)
```

