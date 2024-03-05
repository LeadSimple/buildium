# Buildium::BankAccountDepositPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_date** | **Date** | Date the deposit was recorded. |  |
| **memo** | **String** | Memo associated with the deposit, if applicable. | [optional] |
| **lines** | [**Array&lt;BankAccountDepositLineSaveMessage&gt;**](BankAccountDepositLineSaveMessage.md) | A collection of line items to associate with the deposit. | [optional] |
| **payment_transaction_ids** | **Array&lt;Integer&gt;** | A collection of payment transaction identifiers that were included in this deposit transaction. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountDepositPostMessage.new(
  entry_date: null,
  memo: null,
  lines: null,
  payment_transaction_ids: null
)
```

