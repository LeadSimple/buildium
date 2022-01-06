# Buildium::BankAccountQuickDepositSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_date** | **Date** | Date the quick deposit was recorded. |  |
| **offset_gl_account_id** | **Integer** | Offsetting general ledger account identifier. The offsetting general ledger account acts as a label for this deposit. For instance, if you&#39;re depositing money collected from a washing machine, you might select the \&quot;Laundry income\&quot; account. |  |
| **amount** | **Float** | Amount to be deposited. |  |
| **memo** | **String** | Memo associated with the quick deposit. | [optional] |
| **accounting_entity** | [**AccountingEntitySaveMessage**](AccountingEntitySaveMessage.md) |  |  |

## Example

```ruby
require 'buildium'

instance = Buildium::BankAccountQuickDepositSaveMessage.new(
  entry_date: null,
  offset_gl_account_id: null,
  amount: null,
  memo: null,
  accounting_entity: null
)
```

