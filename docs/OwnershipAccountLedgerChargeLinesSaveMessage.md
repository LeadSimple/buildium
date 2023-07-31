# Buildium::OwnershipAccountLedgerChargeLinesSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Line item amount. |  |
| **gl_account_id** | **Integer** | The general ledger account identifier under which the line item amount will be recorded. The account must be a liability or income type. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountLedgerChargeLinesSaveMessage.new(
  amount: null,
  gl_account_id: null
)
```

