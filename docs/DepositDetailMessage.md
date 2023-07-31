# Buildium::DepositDetailMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_gl_account_id** | **Integer** | Bank account general ledger identifier. | [optional] |
| **payment_transactions** | [**Array&lt;PaymentTransactionsMessage&gt;**](PaymentTransactionsMessage.md) | Collection of payments that were included in the bank deposit transaction. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::DepositDetailMessage.new(
  bank_gl_account_id: null,
  payment_transactions: null
)
```

