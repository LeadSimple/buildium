# Buildium::OwnershipAccountLedgerChargeLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Amount of the line item. | [optional] |
| **gl_account_id** | **Integer** | Unique ientifier of the general ledger account associated with the charge. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountLedgerChargeLineMessage.new(
  amount: null,
  gl_account_id: null
)
```

