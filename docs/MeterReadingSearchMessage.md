# Buildium::MeterReadingSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reading_date_from** | **Date** | Filters results to any meter readings whose entry date that is greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD. The maximum date range is 365 days. |  |
| **reading_date_to** | **Date** | Filters results to any meter readings whose entry date is less than or equal to the specified value. The value must be formatted as YYYY-MM-DD. The maximum date range is 365 days. |  |
| **meter_types** | **Array&lt;String&gt;** | Filters results to the specified meter types. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::MeterReadingSearchMessage.new(
  reading_date_from: null,
  reading_date_to: null,
  meter_types: null
)
```

