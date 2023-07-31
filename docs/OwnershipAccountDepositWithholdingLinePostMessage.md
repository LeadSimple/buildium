# Buildium::OwnershipAccountDepositWithholdingLinePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Line item amount. |  |
| **gl_account_id** | **Integer** | General Ledger Account identifier under which the line item amount will be recorded. Must be an Income account. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountDepositWithholdingLinePostMessage.new(
  amount: null,
  gl_account_id: null
)
```

