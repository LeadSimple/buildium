# Buildium::CreateMultipleBillPaymentsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** | Unique identifier of the bank account that the payment was made from. |  |
| **entry_date** | **Date** | Date the payment was made. |  |
| **queue_checks_for_printing** | **Boolean** | Indicates whether to queue local check printing. Bank account associated with the bill must have check printing enabled to be true. | [optional] |
| **bill_ids** | **Array&lt;Integer&gt;** | Unique identifiers of bills. |  |
| **vendor_credit_ids** | **Array&lt;Integer&gt;** | Unique identifiers of the vendor credits to apply to the payment. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateMultipleBillPaymentsRequest.new(
  bank_account_id: null,
  entry_date: null,
  queue_checks_for_printing: null,
  bill_ids: null,
  vendor_credit_ids: null
)
```

