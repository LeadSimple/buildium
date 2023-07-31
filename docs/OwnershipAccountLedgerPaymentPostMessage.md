# Buildium::OwnershipAccountLedgerPaymentPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | The date of the transaction. The date must be formatted as YYYY-MM-DD. |  |
| **payment_method** | **String** | The payment method used for the transaction. |  |
| **payee_user_id** | **Integer** | The payee&#39;s user unique identifier. | [optional] |
| **memo** | **String** | A brief note describing the reason for the payment. The value cannot exceed 65 characters. | [optional] |
| **reference_number** | **String** | The reference Number of the transaction. The value cannot exceed 30 characters. | [optional] |
| **send_email_receipt** | **Boolean** | An indicator for whether or not to send an email receipt to the payee. If the payee does not have an email address set, no email will be sent. |  |
| **lines** | [**Array&lt;OwnershipAccountLedgerPaymentLineSaveMessage&gt;**](OwnershipAccountLedgerPaymentLineSaveMessage.md) | A collection of line items included in the payment. At least one line item is required. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountLedgerPaymentPostMessage.new(
  date: null,
  payment_method: null,
  payee_user_id: null,
  memo: null,
  reference_number: null,
  send_email_receipt: null,
  lines: null
)
```

