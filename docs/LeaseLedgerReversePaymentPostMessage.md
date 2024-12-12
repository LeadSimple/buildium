# Buildium::LeaseLedgerReversePaymentPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_date** | **Date** | Date of the transaction. |  |
| **payment_transaction_id** | **Integer** | Transaction identifier of the payment to reverse. Note, this payment transaction must be deposited. |  |
| **nsf_charge** | [**LeaseLedgerReversePaymentPostMessageNSFCharge**](LeaseLedgerReversePaymentPostMessageNSFCharge.md) |  | [optional] |
| **bank_fee** | [**LeaseLedgerReversePaymentPostMessageBankFee**](LeaseLedgerReversePaymentPostMessageBankFee.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseLedgerReversePaymentPostMessage.new(
  entry_date: null,
  payment_transaction_id: null,
  nsf_charge: null,
  bank_fee: null
)
```

