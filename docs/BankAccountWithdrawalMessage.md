# Buildium::BankAccountWithdrawalMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Withdrawal unique identifier. | [optional] |
| **entry_date** | **Date** | Date the withdrawal was recorded. | [optional] |
| **memo** | **String** | Memo associated with the withdrawal, if applicable. | [optional] |
| **total_amount** | **Float** | Total amount of the withdrawal. | [optional] |
| **accounting_entity** | [**AccountingEntityMessage**](AccountingEntityMessage.md) |  | [optional] |
| **offset_gl_account_id** | **Integer** | Offsetting general ledger account identifier. The offsetting GL account acts as a label for this withdrawal. For instance, if you&#39;re withdrawing money due to a bank fee, you might select the \&quot;Bank fees\&quot; expense account. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountWithdrawalMessage.new(
  id: null,
  entry_date: null,
  memo: null,
  total_amount: null,
  accounting_entity: null,
  offset_gl_account_id: null
)
```

