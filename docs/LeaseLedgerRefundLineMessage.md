# Buildium::LeaseLedgerRefundLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount of the line item. | [optional] |
| **gl_account_id** | **Integer** | Unique identifier of the general ledger account associated with the refund. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseLedgerRefundLineMessage.new(
  amount: null,
  gl_account_id: null
)
```

