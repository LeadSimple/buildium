# Buildium::BankAccountTransferSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_date** | **Date** | The date the transfer was recorded. |  |
| **transfer_to_bank_account_id** | **Integer** | Bank account identifier the money will be transferred to. |  |
| **total_amount** | **Float** | Total amount to transfer. |  |
| **memo** | **String** | Memo associated with the transfer, if applicable. | [optional] |
| **accounting_entity** | [**BankAccountTransferAccountingEntitySaveMessage**](BankAccountTransferAccountingEntitySaveMessage.md) |  |  |

## Example

```ruby
require 'buildium'

instance = Buildium::BankAccountTransferSaveMessage.new(
  entry_date: null,
  transfer_to_bank_account_id: null,
  total_amount: null,
  memo: null,
  accounting_entity: null
)
```

