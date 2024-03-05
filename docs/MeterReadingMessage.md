# Buildium::MeterReadingMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reading_date** | **Date** | Date the meter reading was recorded. | [optional] |
| **response_meter_type** | **String** | Meter type for the meter reading. | [optional] |
| **value** | **Integer** | Total value across all units for the meter reading. | [optional] |
| **usage** | **Integer** | The amount used between the prior reading and this reading, calculated by subtracting prior value from value. Usage will be the basis used when charging tenants for a reading. | [optional] |
| **charges_created** | **Boolean** | Indicates if charges were created for the meter reading. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::MeterReadingMessage.new(
  reading_date: null,
  response_meter_type: null,
  value: null,
  usage: null,
  charges_created: null
)
```

