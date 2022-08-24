# Buildium::OwnershipAccountChargeRecurringTransactionMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the recurring charge schedule. | [optional] |
| **ownership_account_id** | **Integer** | The unique identifier of the ownership account that the recurring charge will be applied to. | [optional] |
| **gl_account_id** | **Integer** | The general ledger account unique identifier the recurring charge is applied to. | [optional] |
| **rent_id** | **Integer** | The unique identifier of the scheduled Rent entity. If the charge is not associated with a Rent entity then the value will be &#x60;NULL&#x60;. | [optional] |
| **amount** | **Float** | The amount of the recurring charge. | [optional] |
| **memo** | **String** | Memo associated with the recurring charge. | [optional] |
| **first_occurrence_date** | **Date** | The date the first occurence this charge was processed. | [optional] |
| **next_occurrence_date** | **Date** | The next date the scheduled charge will be processed. | [optional] |
| **post_days_in_advance** | **Integer** | Specifies the number of days ahead of the transaction date the charge will post on the lease ledger. This setting can be used to add the charge to the ledger ahead of the due date for visibility. For example, if the &#x60;FirstOccurrenceDate&#x60; is set to 8/10/2022 and this value is set to 5 then the charge will added to the ledger on 8/5/2022, but will have transaction date of 8/10/2022. | [optional] |
| **occurrences_remaining** | **Integer** | The number of remaining times this recurring charge will be processed. | [optional] |
| **frequency** | **String** | Indicates the frequency at which the recurring charge is processed. | [optional] |
| **duration** | **String** | Specifies the period of time/occurrences the recurring charge will be processed. Note, if the &#x60;Frequency&#x60; field is set to &#x60;OneTime&#x60; this field should be set to &#x60;NULL&#x60; as any submitted value will be ignored. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::OwnershipAccountChargeRecurringTransactionMessage.new(
  id: null,
  ownership_account_id: null,
  gl_account_id: null,
  rent_id: null,
  amount: null,
  memo: null,
  first_occurrence_date: null,
  next_occurrence_date: null,
  post_days_in_advance: null,
  occurrences_remaining: null,
  frequency: null,
  duration: null
)
```

