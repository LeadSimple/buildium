# Buildium::GeneralLedgerTransactionMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Transaction unique identifier. | [optional] |
| **date** | **Date** | Date of the transaction. | [optional] |
| **transaction_type** | **String** | Type of transaction that occurred | [optional] |
| **total_amount** | **Float** | Sum of all &#x60;Journal.Lines.Amount&#x60; entries in the transaction. | [optional] |
| **check_number** | **String** | Check number associated with the transaction, if applicable. | [optional] |
| **unit_agreement** | [**UnitAgreementMessage**](UnitAgreementMessage.md) |  | [optional] |
| **unit_id** | **Integer** | Unit unique identifier associated with the transaction, if applicable. Null if value is not set. | [optional] |
| **unit_number** | **String** | Unit number associated with the transaction, if applicable. Null if value is not set. | [optional] |
| **payment_detail** | [**PaymentDetailMessage**](PaymentDetailMessage.md) |  | [optional] |
| **deposit_details** | [**DepositDetailMessage**](DepositDetailMessage.md) |  | [optional] |
| **journal** | [**GeneralLedgerJournalMessage**](GeneralLedgerJournalMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::GeneralLedgerTransactionMessage.new(
  id: null,
  date: null,
  transaction_type: null,
  total_amount: null,
  check_number: null,
  unit_agreement: null,
  unit_id: null,
  unit_number: null,
  payment_detail: null,
  deposit_details: null,
  journal: null
)
```

