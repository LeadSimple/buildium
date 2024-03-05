# Buildium::MeterReadingDetailPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier of the detail being updated. | [optional] |
| **unit_id** | **Integer** | Unique identifier of the unit associated with the meter reading. |  |
| **prior_value** | **Integer** | Previous meter reading value. |  |
| **value** | **Integer** | Current meter reading value. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::MeterReadingDetailPutMessage.new(
  id: null,
  unit_id: null,
  prior_value: null,
  value: null
)
```

