# Buildium::CreateBillPaymentRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** | Unique identifier of the bank account that the payment was made from. |  |
| **entry_date** | **Date** | Date the payment was made. |  |
| **memo** | **String** | A high-level description of the payment. The value cannot exceed 240 characters. | [optional] |
| **check_number** | **String** | Number of the check used to make the payment. The value cannot exceed 30 characters. | [optional] |
| **lines** | [**Array&lt;BillPaymentLinePostMessage&gt;**](BillPaymentLinePostMessage.md) | A collection of payment line items. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateBillPaymentRequest.new(
  bank_account_id: null,
  entry_date: null,
  memo: null,
  check_number: null,
  lines: null
)
```

