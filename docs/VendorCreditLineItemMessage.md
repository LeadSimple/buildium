# Buildium::VendorCreditLineItemMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Vendor credit line item unique identifier. | [optional] |
| **gl_account_id** | **Integer** | Unique identifier of the general ledger account associated with the vendor credit. | [optional] |
| **amount** | **Float** | Amount of the vendor credit line item. | [optional] |
| **memo** | **String** | Memo for the vendor credit line item. | [optional] |
| **accounting_entity** | [**AccountingEntityMessage**](AccountingEntityMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::VendorCreditLineItemMessage.new(
  id: null,
  gl_account_id: null,
  amount: null,
  memo: null,
  accounting_entity: null
)
```

