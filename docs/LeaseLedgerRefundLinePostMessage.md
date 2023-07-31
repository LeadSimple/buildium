# Buildium::LeaseLedgerRefundLinePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount of the line item. |  |
| **gl_account_id** | **Integer** | Unique identifier of the general ledger account associated with the refund. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseLedgerRefundLinePostMessage.new(
  amount: null,
  gl_account_id: null
)
```

