# Buildium::MeterReadingDetailsDeleteSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reading_date** | **Date** | Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD. |  |
| **meter_type** | **String** | Filters results to the specified meter type. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::MeterReadingDetailsDeleteSearchMessage.new(
  reading_date: null,
  meter_type: null
)
```

