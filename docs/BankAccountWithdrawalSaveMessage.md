# Buildium::BankAccountWithdrawalSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_date** | **Date** | Date the withdrawal was recorded. |  |
| **offset_gl_account_id** | **Integer** | Offsetting general ledger account identifier. The offsetting general ledger account acts as a label for this withdrawal. For instance, if you&#39;re withdrawing money due to a bank fee, you might select the \&quot;Bank fees\&quot; expense account. |  |
| **amount** | **Float** | Withdrawal amount. |  |
| **memo** | **String** | Memo associated with the withdrawal, if applicable. | [optional] |
| **accounting_entity** | [**AccountingEntitySaveMessage**](AccountingEntitySaveMessage.md) |  |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountWithdrawalSaveMessage.new(
  entry_date: null,
  offset_gl_account_id: null,
  amount: null,
  memo: null,
  accounting_entity: null
)
```

