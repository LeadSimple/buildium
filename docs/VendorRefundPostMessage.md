# Buildium::VendorRefundPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_date** | **Date** | Date the vendor refund was made. |  |
| **bank_account_id** | **Integer** | Unique identifier of the bank account that the refund was deposited into. |  |
| **payment_method** | **String** | The payment method used for the refund. |  |
| **reference_number** | **String** | The invoice or reference number that the vendor assigned to the refund. Reference number cannot exceed 45 characters. | [optional] |
| **memo** | **String** | Memo associated with the vendor refund, if applicable. Memo cannot exceed 65 characters | [optional] |
| **lines** | [**Array&lt;VendorRefundLinePostMessage&gt;**](VendorRefundLinePostMessage.md) | A collection of line items associated with the vendor refund. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::VendorRefundPostMessage.new(
  entry_date: null,
  bank_account_id: null,
  payment_method: null,
  reference_number: null,
  memo: null,
  lines: null
)
```

