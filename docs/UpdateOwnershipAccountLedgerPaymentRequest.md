# Buildium::UpdateOwnershipAccountLedgerPaymentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | The date of the transaction. The date must be formatted as YYYY-MM-DD. |  |
| **payment_method** | **String** | The payment method used for the transaction. |  |
| **payee_user_id** | **Integer** | The payee&#39;s user unique identifier. | [optional] |
| **memo** | **String** | A brief note describing the reason for the payment. The value cannot exceed 65 characters. | [optional] |
| **reference_number** | **String** | The reference Number of the transaction. The value cannot exceed 30 characters. | [optional] |
| **lines** | [**Array&lt;OwnershipAccountLedgerPaymentLineSaveMessage&gt;**](OwnershipAccountLedgerPaymentLineSaveMessage.md) | A collection of line items included in the payment. At least one line item is required. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateOwnershipAccountLedgerPaymentRequest.new(
  date: null,
  payment_method: null,
  payee_user_id: null,
  memo: null,
  reference_number: null,
  lines: null
)
```

