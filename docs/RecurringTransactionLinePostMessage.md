# Buildium::RecurringTransactionLinePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | The general ledger account identifier under which the line item amount will be recorded. The account must be a liability or income type. |  |
| **amount** | **Float** | Line item amount. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::RecurringTransactionLinePostMessage.new(
  gl_account_id: null,
  amount: null
)
```

