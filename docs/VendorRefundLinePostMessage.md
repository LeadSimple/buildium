# Buildium::VendorRefundLinePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | Unique identifier of the general ledger account associated with the vendor refund. |  |
| **amount** | **Float** | Amount of the vendor refund line item. |  |
| **memo** | **String** | Memo for the vendor refund line item. Memo cannot exceed 215 characters. | [optional] |
| **accounting_entity** | [**AccountingEntitySaveMessage**](AccountingEntitySaveMessage.md) |  |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VendorRefundLinePostMessage.new(
  gl_account_id: null,
  amount: null,
  memo: null,
  accounting_entity: null
)
```

