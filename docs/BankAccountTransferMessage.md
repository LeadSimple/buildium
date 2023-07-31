# Buildium::BankAccountTransferMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Transfer unique identifier. | [optional] |
| **entry_date** | **Date** | Date the transfer was recorded. | [optional] |
| **memo** | **String** | Memo associated with the transfer, if applicable. | [optional] |
| **accounting_entity** | [**AccountingEntityMessage**](AccountingEntityMessage.md) |  | [optional] |
| **total_amount** | **Float** | Total amount of the transfer. | [optional] |
| **transfer_to_bank_account_id** | **Integer** | Bank account identifier the money was transferred to. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountTransferMessage.new(
  id: null,
  entry_date: null,
  memo: null,
  accounting_entity: null,
  total_amount: null,
  transfer_to_bank_account_id: null
)
```

