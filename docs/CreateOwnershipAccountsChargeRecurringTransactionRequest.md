# Buildium::CreateOwnershipAccountsChargeRecurringTransactionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | The general ledger account unique identifier under which the charge amount will be recorded. The general ledger account can only be an income or liability account. |  |
| **amount** | **Float** | The amount to record when applying the charge to the lease ledger. |  |
| **memo** | **String** | Memo associated with the recurring charge. This value cannot exceed 65 characters. | [optional] |
| **first_occurrence_date** | **Date** | The date the charge will first be processed. This value along with the &#x60;Frequency&#x60; is also used as the basis for the date set on the transactions in future occurrences. |  |
| **post_days_in_advance** | **Integer** | Specifies the number of days ahead of the transaction date the charge will post on the lease ledger. This setting can be used to add the charge to the ledger ahead of the due date for visibility. For example, if the &#x60;FirstOccurrenceDate&#x60; is set to 8/10/2022 and this value is set to 5 then the charge will added to the ledger on 8/5/2022, but will have transaction date of 8/10/2022. Note, the value must be between 0 to 45 or set to 60, 75 or 90. |  |
| **frequency** | **String** | Specifies the frequency at which the recurring charge will be processed. |  |
| **duration** | **String** | Specifies the period of time/occurrences the recurring payment will be processed. Note, if the &#x60;Frequency&#x60; field is set to &#x60;OneTime&#x60; this field should be set to &#x60;NULL&#x60; as any submitted value will be ignored. | [optional] |
| **number_of_occurrences** | **Integer** | Indicates the number of times the recurring transaction should be processed. This value is required if the &#x60;Duration&#x60; field is set to &#x60;SpecificNumber&#x60;. This value can not exceed 100. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateOwnershipAccountsChargeRecurringTransactionRequest.new(
  gl_account_id: null,
  amount: null,
  memo: null,
  first_occurrence_date: null,
  post_days_in_advance: null,
  frequency: null,
  duration: null,
  number_of_occurrences: null
)
```

