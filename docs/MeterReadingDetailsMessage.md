# Buildium::MeterReadingDetailsMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reading_date** | **Date** | Requested date for meter reading details. Details will be the most recent readings on or before this date. | [optional] |
| **meter_type** | **String** | Type of meter the reading is for. | [optional] |
| **details** | [**Array&lt;MeterReadingDetailMessage&gt;**](MeterReadingDetailMessage.md) | List of reading details for all units. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::MeterReadingDetailsMessage.new(
  reading_date: null,
  meter_type: null,
  details: null
)
```

