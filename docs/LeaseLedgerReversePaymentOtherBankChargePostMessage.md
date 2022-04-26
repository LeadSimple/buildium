# Buildium::LeaseLedgerReversePaymentOtherBankChargePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | Expense general ledger account to associate the bank fee. |  |
| **total_amount** | **Float** | Total amount of the bank fee. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseLedgerReversePaymentOtherBankChargePostMessage.new(
  gl_account_id: null,
  total_amount: null
)
```

