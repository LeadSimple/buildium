# Buildium::VendorCreditLineItemPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | Unique identifier of the general ledger account associated with the vendor credit. The account cannot be a bank account. |  |
| **amount** | **Float** | Amount of the vendor credit line item. Must be between 0.01 and 9999999.99. |  |
| **memo** | **String** | Memo for the vendor credit line item. Cannot exceed 240 characters. | [optional] |
| **accounting_entity** | [**AccountingEntitySaveMessage**](AccountingEntitySaveMessage.md) |  |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VendorCreditLineItemPostMessage.new(
  gl_account_id: null,
  amount: null,
  memo: null,
  accounting_entity: null
)
```

