# Buildium::OwnershipAccountRefundMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Refund unique identifier. | [optional] |
| **date** | **Date** | Date of the refund. | [optional] |
| **payees** | [**Array&lt;PayeeMessage&gt;**](PayeeMessage.md) | List of payees being refunded. | [optional] |
| **memo** | **String** | Memo associated with the refund, if applicable. | [optional] |
| **check_number** | **String** | Check number associated with the refund, if applicable. | [optional] |
| **bank_account_id** | **Integer** | Unique identifier of the bank account that the refund was made from. | [optional] |
| **address** | [**AddressMessage**](AddressMessage.md) |  | [optional] |
| **total_amount** | **Float** | Total amount of the refund. | [optional] |
| **lines** | [**Array&lt;OwnershipAccountRefundLineMessage&gt;**](OwnershipAccountRefundLineMessage.md) | A collection of line items included in the refund. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::OwnershipAccountRefundMessage.new(
  id: null,
  date: null,
  payees: null,
  memo: null,
  check_number: null,
  bank_account_id: null,
  address: null,
  total_amount: null,
  lines: null
)
```

