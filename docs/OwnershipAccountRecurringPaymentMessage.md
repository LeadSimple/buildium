# Buildium::OwnershipAccountRecurringPaymentMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the recurring payment schedule. | [optional] |
| **ownership_account_id** | **Integer** | The unique identifier of the ownership account that the recurring payment will be applied to. | [optional] |
| **payer** | [**PayeeMessage**](PayeeMessage.md) |  | [optional] |
| **payment_method** | **String** | The method of payment for the transaction. | [optional] |
| **lines** | [**Array&lt;RecurringTransactionLineMessage&gt;**](RecurringTransactionLineMessage.md) | Line items describing how the payment is to be allocated when the recurring transaction is processed. | [optional] |
| **amount** | **Float** | The total amount of the recurring payment based on sum of the &#x60;Lines.Amount&#x60;. | [optional] |
| **first_occurrence_date** | **Date** | The date the first occurence this payment was processed. | [optional] |
| **next_occurrence_date** | **Date** | The next date the scheduled payment will be processed. | [optional] |
| **post_days_in_advance** | **Integer** | Specifies the number of days ahead of the transaction date the payment will post on the lease ledger. This setting can be used to add the payment to the ledger ahead of the due date for visibility. For example, if the &#x60;FirstOccurrenceDate&#x60; is set to 8/10/2022 and this value is set to 5 then the charge will added to the ledger on 8/5/2022, but will have transaction date of 8/10/2022. | [optional] |
| **frequency** | **String** | Specifies the frequency at which the recurring payment will be processed. | [optional] |
| **duration** | **String** | Specifies the period of time/occurrences the recurring payment will be processed. Note, if the &#x60;Frequency&#x60; field is set to &#x60;OneTime&#x60; this field should be set to &#x60;NULL&#x60; as any submitted value will be ignored. | [optional] |
| **occurrences_remaining** | **Integer** | The number of remaining times this recurring payment will be processed. | [optional] |
| **memo** | **String** | Memo associated with the recurring payment. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountRecurringPaymentMessage.new(
  id: null,
  ownership_account_id: null,
  payer: null,
  payment_method: null,
  lines: null,
  amount: null,
  first_occurrence_date: null,
  next_occurrence_date: null,
  post_days_in_advance: null,
  frequency: null,
  duration: null,
  occurrences_remaining: null,
  memo: null
)
```

