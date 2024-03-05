# Buildium::MeterReadingDetailsPutSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reading_date** | **Date** | Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD. | [optional] |
| **meter_type** | **String** | Filters results to the specified meter type. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::MeterReadingDetailsPutSearchMessage.new(
  reading_date: null,
  meter_type: null
)
```

