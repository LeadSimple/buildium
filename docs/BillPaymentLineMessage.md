# Buildium::BillPaymentLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounting_entity** | [**BillPaymentAccountingEntityMessage**](BillPaymentAccountingEntityMessage.md) |  | [optional] |
| **gl_account_id** | **Integer** | The general ledger account the line item is allocated to. | [optional] |
| **amount** | **Float** | Line item amount. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::BillPaymentLineMessage.new(
  accounting_entity: null,
  gl_account_id: null,
  amount: null
)
```

