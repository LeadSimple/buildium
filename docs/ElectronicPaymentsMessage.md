# Buildium::ElectronicPaymentsMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **debit_transaction_limit** | **Float** | Debit transaction limit | [optional] |
| **credit_transaction_limit** | **Float** | Credit transaction limit | [optional] |
| **debit_monthly_limit** | **Float** | Monthly debt limit | [optional] |
| **credit_monthly_limit** | **Float** | Monthly credit limit | [optional] |
| **resident_eft_convience_fee_amount** | **Float** | Fee charged per transaction by EFT | [optional] |
| **resident_credit_card_convenience_fee_amount** | **Float** | Fee charged per transaction by Credit Card | [optional] |
| **credit_card_service_fee_percentage** | **Float** | Fee charged for using a Credit Card in transactions | [optional] |
| **is_credit_card_service_fee_paid_by_resident** | **Boolean** | Whether the credit card service fee is paid by residents | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ElectronicPaymentsMessage.new(
  debit_transaction_limit: null,
  credit_transaction_limit: null,
  debit_monthly_limit: null,
  credit_monthly_limit: null,
  resident_eft_convience_fee_amount: null,
  resident_credit_card_convenience_fee_amount: null,
  credit_card_service_fee_percentage: null,
  is_credit_card_service_fee_paid_by_resident: null
)
```

