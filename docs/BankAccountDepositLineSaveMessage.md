# Buildium::BankAccountDepositLineSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | The general ledger account identifier under which the line item amount will be recorded. | [optional] |
| **accounting_entity** | [**AccountingEntitySaveMessage**](AccountingEntitySaveMessage.md) |  | [optional] |
| **memo** | **String** | Memo for the line item. | [optional] |
| **reference_number** | **String** | Reference number for the line item. | [optional] |
| **amount** | **Float** | Amount of the line item. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::BankAccountDepositLineSaveMessage.new(
  gl_account_id: null,
  accounting_entity: null,
  memo: null,
  reference_number: null,
  amount: null
)
```

