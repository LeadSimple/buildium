# Buildium::PaymentDetailMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_method** | **String** | The payment method used for the transaction. | [optional] |
| **payee** | [**PaymentDetailMessagePayee**](PaymentDetailMessagePayee.md) |  | [optional] |
| **is_internal_transaction** | **Boolean** | Whether the transaction is processed internally. | [optional] |
| **internal_transaction_status** | [**PaymentDetailMessageInternalTransactionStatus**](PaymentDetailMessageInternalTransactionStatus.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::PaymentDetailMessage.new(
  payment_method: null,
  payee: null,
  is_internal_transaction: null,
  internal_transaction_status: null
)
```

