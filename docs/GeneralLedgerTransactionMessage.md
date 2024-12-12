# Buildium::GeneralLedgerTransactionMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Transaction unique identifier. | [optional] |
| **date** | **Date** | Date of the transaction. | [optional] |
| **transaction_type** | **String** | Type of transaction that occurred | [optional] |
| **total_amount** | **Float** | Sum of all &#x60;Journal.Lines.Amount&#x60; entries in the transaction. | [optional] |
| **check_number** | **String** | Check number associated with the transaction, if applicable. | [optional] |
| **unit_agreement** | [**GeneralLedgerTransactionMessageUnitAgreement**](GeneralLedgerTransactionMessageUnitAgreement.md) |  | [optional] |
| **unit_id** | **Integer** | Unit unique identifier associated with the transaction, if applicable. Null if value is not set. | [optional] |
| **unit_number** | **String** | Unit number associated with the transaction, if applicable. Null if value is not set. | [optional] |
| **payment_detail** | [**GeneralLedgerTransactionMessagePaymentDetail**](GeneralLedgerTransactionMessagePaymentDetail.md) |  | [optional] |
| **deposit_details** | [**GeneralLedgerTransactionMessageDepositDetails**](GeneralLedgerTransactionMessageDepositDetails.md) |  | [optional] |
| **journal** | [**GeneralLedgerTransactionMessageJournal**](GeneralLedgerTransactionMessageJournal.md) |  | [optional] |
| **last_updated_date_time** | **Time** | The date and time the transaction was last updated. | [optional] |

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
  journal: null,
  last_updated_date_time: null
)
```

