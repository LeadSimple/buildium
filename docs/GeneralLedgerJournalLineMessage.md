# Buildium::GeneralLedgerJournalLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account** | [**GLAccountMessage**](GLAccountMessage.md) |  | [optional] |
| **amount** | **Float** | Amount of the line item. | [optional] |
| **is_cash_posting** | **Boolean** | Indicates whether the line item is a cash posting. | [optional] |
| **reference_number** | **String** | Reference number for the line item. | [optional] |
| **memo** | **String** | Memo for the line item. | [optional] |
| **accounting_entity** | [**AccountingEntityMessage**](AccountingEntityMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::GeneralLedgerJournalLineMessage.new(
  gl_account: null,
  amount: null,
  is_cash_posting: null,
  reference_number: null,
  memo: null,
  accounting_entity: null
)
```

