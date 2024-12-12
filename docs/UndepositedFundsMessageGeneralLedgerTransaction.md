# Buildium::UndepositedFundsMessageGeneralLedgerTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | General ledger transaction unique identifier. | [optional] |
| **amount** | **Float** | General ledger transaction amount. | [optional] |
| **check_number** | **String** | General ledger transaction check number. | [optional] |
| **entry_date** | **Date** | Date the transaction was made. | [optional] |
| **memo** | **String** | General ledger transaction memo. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UndepositedFundsMessageGeneralLedgerTransaction.new(
  id: null,
  amount: null,
  check_number: null,
  entry_date: null,
  memo: null
)
```

