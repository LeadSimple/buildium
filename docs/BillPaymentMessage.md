# Buildium::BillPaymentMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Bill payment unique identifier. | [optional] |
| **bank_account_id** | **Integer** | Unique identifier of the bank account that the payment was made from. | [optional] |
| **entry_date** | **Date** | Date the payment was made. | [optional] |
| **memo** | **String** | A high-level description of the payment. | [optional] |
| **check_number** | **String** | Number of the check used to make the payment. | [optional] |
| **paid_bill_ids** | **Array&lt;Integer&gt;** | A collection of bill identifiers that the payment was applied to. | [optional] |
| **applied_vendor_credits** | [**Array&lt;AppliedVendorCreditMessage&gt;**](AppliedVendorCreditMessage.md) | A collection of vendor credits that was applied in the bill payment. | [optional] |
| **lines** | [**Array&lt;BillPaymentLineMessage&gt;**](BillPaymentLineMessage.md) | A collection of payment line items. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BillPaymentMessage.new(
  id: null,
  bank_account_id: null,
  entry_date: null,
  memo: null,
  check_number: null,
  paid_bill_ids: null,
  applied_vendor_credits: null,
  lines: null
)
```

