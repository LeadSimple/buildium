# Buildium::OwnershipAccountTransactionMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Transaction unique identifier. | [optional] |
| **date** | **Date** | Date of the transaction. | [optional] |
| **transaction_type** | **String** | Type of transaction that occurred. | [optional] |
| **total_amount** | **Float** | Sum of all &#x60;Journal.Lines.Amount&#x60; entries in the transaction. | [optional] |
| **check_number** | **String** | Check number associated with the transaction, if applicable. | [optional] |
| **ownership_account_id** | **Integer** | Ownership account unique identifier associated with the transaction, if applicable. Null if value is not set. | [optional] |
| **payee_association_owner_id** | **Integer** | The payee&#39;s association owner unique identifier associated with the transaction, where applicable. | [optional] |
| **payment_method** | **String** | The payment method used for the transaction. | [optional] |
| **journal** | [**JournalMessage**](JournalMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountTransactionMessage.new(
  id: null,
  date: null,
  transaction_type: null,
  total_amount: null,
  check_number: null,
  ownership_account_id: null,
  payee_association_owner_id: null,
  payment_method: null,
  journal: null
)
```

