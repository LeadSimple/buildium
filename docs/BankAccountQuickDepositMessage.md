# Buildium::BankAccountQuickDepositMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Quick deposit unique identifier. | [optional] |
| **entry_date** | **Date** | Date the quick deposit was recorded. | [optional] |
| **memo** | **String** | Memo associated with the quick deposit, if applicable. | [optional] |
| **total_amount** | **Float** | Amount included in the quick deposit. | [optional] |
| **accounting_entity** | [**AccountingEntityMessage**](AccountingEntityMessage.md) |  | [optional] |
| **offset_gl_account_id** | **Integer** | Offsetting general ledger account identifier. The offsetting general ledger account acts as a label for this deposit. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::BankAccountQuickDepositMessage.new(
  id: null,
  entry_date: null,
  memo: null,
  total_amount: null,
  accounting_entity: null,
  offset_gl_account_id: null
)
```

