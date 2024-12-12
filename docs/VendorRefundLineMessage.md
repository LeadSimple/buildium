# Buildium::VendorRefundLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Vendor refund line item unique identifier. | [optional] |
| **accounting_entity** | [**VendorRefundLineMessageAccountingEntity**](VendorRefundLineMessageAccountingEntity.md) |  | [optional] |
| **gl_account_id** | **Integer** | Unique identifier of the general ledger account associated with the vendor refund. | [optional] |
| **amount** | **Float** | Amount of the vendor refund line item. | [optional] |
| **memo** | **String** | Memo for the vendor refund line item. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VendorRefundLineMessage.new(
  id: null,
  accounting_entity: null,
  gl_account_id: null,
  amount: null,
  memo: null
)
```

