# Buildium::BillPaymentLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounting_entity** | [**BillPaymentLineMessageAccountingEntity**](BillPaymentLineMessageAccountingEntity.md) |  | [optional] |
| **gl_account_id** | **Integer** | The general ledger account the line item is allocated to. | [optional] |
| **amount** | **Float** | Line item amount. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BillPaymentLineMessage.new(
  accounting_entity: null,
  gl_account_id: null,
  amount: null
)
```

