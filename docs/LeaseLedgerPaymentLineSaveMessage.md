# Buildium::LeaseLedgerPaymentLineSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount of the line item. |  |
| **gl_account_id** | **Integer** | The general ledger account identifier under which the line item amount will be recorded. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseLedgerPaymentLineSaveMessage.new(
  amount: null,
  gl_account_id: null
)
```

