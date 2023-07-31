# Buildium::VendorRefundMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Transaction unique identifier. | [optional] |
| **entry_date** | **Date** | Date the refund was recorded. | [optional] |
| **bank_account_id** | **Integer** | Unique identifier of the bank account that the refund was deposited into. | [optional] |
| **payment_method** | **String** | The payment method used for the vendor refund. | [optional] |
| **reference_number** | **String** | Reference number for the vendor refund. | [optional] |
| **memo** | **String** | Memo for the vendor refund. | [optional] |
| **lines** | [**Array&lt;VendorRefundLineMessage&gt;**](VendorRefundLineMessage.md) | A collection of line items associated with the vendor refund. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VendorRefundMessage.new(
  id: null,
  entry_date: null,
  bank_account_id: null,
  payment_method: null,
  reference_number: null,
  memo: null,
  lines: null
)
```

