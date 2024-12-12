# Buildium::BankAccountReconciliationTransactionMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Reconciliation transaction unique identifier. | [optional] |
| **entry_date** | **Date** | Date the reconciliation transaction entered. | [optional] |
| **total_amount** | **Float** | Total amount of the reconciliation transaction. | [optional] |
| **reconciliation_status** | **String** | Status of the reconciliation transaction. | [optional] |
| **transaction_type** | **String** | Type of transaction. | [optional] |
| **memo** | **String** | Memo associated with the transaction, if applicable. | [optional] |
| **payment_method** | **String** | The payment method used for the transaction. | [optional] |
| **check_number** | **String** | Check number associated with the transaction, if applicable. | [optional] |
| **payee_user_id** | **Integer** | The payee&#39;s user unique identifier. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountReconciliationTransactionMessage.new(
  id: null,
  entry_date: null,
  total_amount: null,
  reconciliation_status: null,
  transaction_type: null,
  memo: null,
  payment_method: null,
  check_number: null,
  payee_user_id: null
)
```

