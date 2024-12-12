# Buildium::BankReconciliationPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statement_ending_date** | **Date** | Date the reconciliation statement ended. The value must be formatted as YYYY-MM-DD. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankReconciliationPutMessage.new(
  statement_ending_date: null
)
```

