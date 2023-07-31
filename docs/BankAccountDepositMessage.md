# Buildium::BankAccountDepositMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Deposit unique identifier. | [optional] |
| **entry_date** | **Date** | Date the deposit was recorded. | [optional] |
| **memo** | **String** | Memo associated with the deposit, if applicable. | [optional] |
| **total_amount** | **Float** | Sum of all &#x60;Journal.Lines.Amount&#x60; entries in the deposit. | [optional] |
| **lines** | [**Array&lt;BankAccountDepositLineMessage&gt;**](BankAccountDepositLineMessage.md) | A collection of line items associated with the deposit. | [optional] |
| **payment_transaction_ids** | **Array&lt;Integer&gt;** | A collection of payment transaction identifiers that were included in this deposit transaction. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountDepositMessage.new(
  id: null,
  entry_date: null,
  memo: null,
  total_amount: null,
  lines: null,
  payment_transaction_ids: null
)
```

