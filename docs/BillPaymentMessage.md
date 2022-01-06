# Buildium::BillPaymentMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Bill payment unique identifier. | [optional] |
| **bank_account_id** | **Integer** | Unique identifier of the bank account that the payment was made from. | [optional] |
| **entry_date** | **Date** | Date the payment was made. | [optional] |
| **memo** | **String** | A high-level description of the payment. | [optional] |
| **check_number** | **String** | Number of the check used to make the payment. | [optional] |
| **lines** | [**Array&lt;BillPaymentLineMessage&gt;**](BillPaymentLineMessage.md) | A collection of payment line items. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::BillPaymentMessage.new(
  id: null,
  bank_account_id: null,
  entry_date: null,
  memo: null,
  check_number: null,
  lines: null
)
```

