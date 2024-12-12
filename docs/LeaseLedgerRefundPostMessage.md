# Buildium::LeaseLedgerRefundPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | The date of the refund. The date must be formatted as YYYY-MM-DD. |  |
| **payee_user_ids** | **Array&lt;Integer&gt;** | Unique identifiers of the users receiving the refund. |  |
| **memo** | **String** | A brief note describing the reason for the refund. The value cannot exceed 65 characters. | [optional] |
| **check_number** | **String** | Check number associated with the refund, if applicable. The value cannot exceed 30 characters. | [optional] |
| **bank_account_id** | **Integer** | Unique identifier of the bank account the refund is issued from. |  |
| **address** | [**LeaseLedgerRefundPostMessageAddress**](LeaseLedgerRefundPostMessageAddress.md) |  |  |
| **lines** | [**Array&lt;LeaseLedgerRefundLinePostMessage&gt;**](LeaseLedgerRefundLinePostMessage.md) | A collection of line items included in the refund. At least one line item is required. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseLedgerRefundPostMessage.new(
  date: null,
  payee_user_ids: null,
  memo: null,
  check_number: null,
  bank_account_id: null,
  address: null,
  lines: null
)
```

