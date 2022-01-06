# Buildium::BankAccountCheckSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Date** | Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **end_date** | **Date** | Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::BankAccountCheckSearchMessage.new(
  start_date: null,
  end_date: null
)
```

