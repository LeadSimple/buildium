# Buildium::MeterReadingDetailMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier of the reading detail. | [optional] |
| **unit_id** | **Integer** | Unique identifier of the unit. | [optional] |
| **unit_number** | **String** | Number of the unit. | [optional] |
| **prior_value** | **Integer** | Previous meter reading value. | [optional] |
| **value** | **Integer** | Most recent meter reading value. | [optional] |
| **reading_date** | **Date** | Date the meter was read. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::MeterReadingDetailMessage.new(
  id: null,
  unit_id: null,
  unit_number: null,
  prior_value: null,
  value: null,
  reading_date: null
)
```

