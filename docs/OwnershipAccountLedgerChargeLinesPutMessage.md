# Buildium::OwnershipAccountLedgerChargeLinesPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Line item amount. |  |
| **gl_account_id** | **Integer** | The general ledger account identifier under which the line item amount will be recorded. The account must be a liability or income type. |  |
| **reference_number** | **String** | Reference number associated with the charge. The value cannot exceed 30 characters. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountLedgerChargeLinesPutMessage.new(
  amount: null,
  gl_account_id: null,
  reference_number: null
)
```

