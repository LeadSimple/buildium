# Buildium::RecurringTransactionMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier for the recurring transaction schedule. | [optional] |
| **transaction_type** | **String** | Indicates the type of transaction to be applied to the ledger. | [optional] |
| **is_expired** | **Boolean** | Indicates if the recurring transaction schedule has expired. | [optional] |
| **rent_id** | **Integer** | The unique identifier of the scheduled Rent entity. This field is only applicable for &#x60;Charge&#x60; transaction types. | [optional] |
| **offsetting_gl_account_id** | **Integer** | Offsetting general ledger account identifier. The offsetting general ledger account acts as the expense account. Note, this field is only applicable for &#x60;Credit&#x60; transaction types. | [optional] |
| **lines** | [**Array&lt;RecurringTransactionLineMessage&gt;**](RecurringTransactionLineMessage.md) | Line items describing how the transaction is to be allocated when it is processed. | [optional] |
| **amount** | **Float** | Total amount of the recurring transaction. | [optional] |
| **memo** | **String** | Memo associated with the recurring transaction. | [optional] |
| **next_occurrence_date** | **Date** | The next date the scheduled transaction will be processed. | [optional] |
| **post_days_in_advance** | **Integer** | The number of days ahead of the transaction date the transaction will post on the lease ledger. This setting is used to add the transaction to the ledger ahead of it&#39;s due date for visibility. For example, if the &#x60;FirstOccurrenceDate&#x60; is set to 8/10/2022 and this value is set to 5 then the charge will added to the ledger on 8/5/2022, but will have transaction date of 8/10/2022. | [optional] |
| **frequency** | **String** | Indicates the frequency at which the recurring transaction is processed. | [optional] |
| **duration** | **String** | Specifies the period of time/occurrences the recurring transaction will be processed. Note, if the &#x60;Frequency&#x60; field is set to &#x60;OneTime&#x60; this field should be set to &#x60;NULL&#x60; as any submitted value will be ignored. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RecurringTransactionMessage.new(
  id: null,
  transaction_type: null,
  is_expired: null,
  rent_id: null,
  offsetting_gl_account_id: null,
  lines: null,
  amount: null,
  memo: null,
  next_occurrence_date: null,
  post_days_in_advance: null,
  frequency: null,
  duration: null
)
```

