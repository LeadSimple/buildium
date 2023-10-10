# Buildium::GeneralLedgerEntryMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the transaction associated with the entry. | [optional] |
| **date** | **Date** | Date of the transaction. | [optional] |
| **description** | **String** | Transaction description. | [optional] |
| **amount** | **Float** | Entry amount. | [optional] |
| **balance** | **Float** | The general ledger account balance after this entry was recorded. | [optional] |
| **transaction_type** | **String** | Indicates the type of transaction that occurred. | [optional] |
| **accounting_entity** | [**AccountingEntityMessage**](AccountingEntityMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::GeneralLedgerEntryMessage.new(
  id: null,
  date: null,
  description: null,
  amount: null,
  balance: null,
  transaction_type: null,
  accounting_entity: null
)
```

