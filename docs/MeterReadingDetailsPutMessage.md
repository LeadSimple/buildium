# Buildium::MeterReadingDetailsPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reading_date** | **Date** | Date the meter reading occurred on. Date must be formatted as YYYY-MM-DD. |  |
| **meter_type** | **String** | Type of meter being read. |  |
| **details** | [**Array&lt;MeterReadingDetailPutMessage&gt;**](MeterReadingDetailPutMessage.md) | Collection of detailed meter readings. At least one item is required. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::MeterReadingDetailsPutMessage.new(
  reading_date: null,
  meter_type: null,
  details: null
)
```

