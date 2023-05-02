# Buildium::LeaseLedgerDepositWithholdingLinePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Line item amount. |  |
| **gl_account_id** | **Integer** | General ledger account identifier under which the line item amount will be recorded. Must be an Income account. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseLedgerDepositWithholdingLinePostMessage.new(
  amount: null,
  gl_account_id: null
)
```

