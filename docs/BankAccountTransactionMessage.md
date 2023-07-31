# Buildium::BankAccountTransactionMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Transaction unique identifier. | [optional] |
| **entry_date** | **Date** | Date of the transaction. | [optional] |
| **transaction_type** | **String** | Type of transaction. | [optional] |
| **check_number** | **String** | Check number associated with the transaction, if applicable. | [optional] |
| **memo** | **String** | Memo associated with the transaction, if applicable. | [optional] |
| **amount** | **Float** | The total amount of the transaction. | [optional] |
| **reconciliation_status** | **String** | Indicates the reconciliation status of the transaction. | [optional] |
| **paid_by** | [**Array&lt;PaidByMessage&gt;**](PaidByMessage.md) | The entity that made the payment. | [optional] |
| **paid_to** | [**Array&lt;PayeeMessage&gt;**](PayeeMessage.md) | The entity that received the payment. | [optional] |
| **balance** | **Float** | The bank account balance after this transaction was applied. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountTransactionMessage.new(
  id: null,
  entry_date: null,
  transaction_type: null,
  check_number: null,
  memo: null,
  amount: null,
  reconciliation_status: null,
  paid_by: null,
  paid_to: null,
  balance: null
)
```

