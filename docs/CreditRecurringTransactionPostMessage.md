# Buildium::CreditRecurringTransactionPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_type** | **String** | Indicates how the credit will be applied.  &lt;ul&gt;&lt;li&gt;WaiveUnpaid - This credit type allows for reversing one or more charges without losing record of what has changed.&lt;/li&gt;&lt;li&gt;Exchange - This credit type allows for one of the following: 1) Reimburse a resident for a out-of-pocket expense, 2) Compensate for a service, 3) Write-off a resident balance considered uncollectable.&lt;/li&gt;&lt;li&gt;PreviouslyDeposited - This credit type allows for issuing a credit against payments that have already been deposited.&lt;/li&gt;&lt;/ul&gt; |  |
| **offsetting_gl_account_id** | **Integer** | Sets the offsetting general ledger account identifier for the credit.  &lt;br /&gt;This value must be provided when the &#x60;CreditType&#x60; field is set to &#x60;Exchange&#x60; or &#x60;PreviouslyDeposited&#x60;.  &lt;br /&gt;When the &#x60;CreditType&#x60; is &#x60;Exchange&#x60; this must be an *expense* general ledger account type.  &lt;br /&gt;When the &#x60;CreditType&#x60; is &#x60;PreviouslyDeposited&#x60; this must be an *equity* general ledger account type. | [optional] |
| **posting_rule_gl_account_id** | **Integer** | Indicates whether to apply a posting rule when processing the transaction that would only record the credit if a prior payment has been made.  &lt;br /&gt;&lt;br /&gt;  Set the field value to the &lt;b&gt;Rent Income&lt;/b&gt; general ledger account identifier if the credit should only be recorded when a payment was made and applied to the &lt;b&gt;Rent Income&lt;/b&gt; general ledger account.  &lt;br /&gt;&lt;br /&gt;  Set the field value to the &lt;b&gt;Accounts Receivable&lt;/b&gt; general ledger account identifier if the credit should only be recorded when a payment was made and applied to *any* general ledger account.  &lt;br /&gt;&lt;br /&gt;  Set the field value to &lt;b&gt;null&lt;/b&gt; to always record the credit. | [optional] |
| **lines** | [**Array&lt;RecurringTransactionLinePostMessage&gt;**](RecurringTransactionLinePostMessage.md) | Line items describing how the credit is to be allocated when the recurring credit is processed. | [optional] |
| **post_days_in_advance** | **Integer** | Specifies the number of days ahead of the transaction date the credit will post on the lease ledger. This setting can be used to add the credit to the ledger ahead of the due date for visibility. For example, if the &#x60;FirstOccurrenceDate&#x60; is set to 8/10/2022 and this value is set to 5 then the charge will added to the ledger on 8/5/2022, but will have transaction date of 8/10/2022. Note, the value must be between 0 to 45 or set to 60, 75 or 90. |  |
| **frequency** | **String** | Specifies the frequency at which the recurring credit will be processed. |  |
| **duration** | **String** | Specifies the period of time/occurrences the recurring credit will be processed. Note, if the &#x60;Frequency&#x60; field is set to &#x60;OneTime&#x60; this field should be set to &#x60;NULL&#x60; as any submitted value will be ignored. | [optional] |
| **number_of_occurrences** | **Integer** | Indicates the number of times the recurring credit should be processed. This value is required if the &#x60;Duration&#x60; field is set to &#x60;SpecificNumber&#x60;. This value can not exceed 100. | [optional] |
| **first_occurrence_date** | **Date** | The date the credit will first be processed. This value along with the &#x60;Frequency&#x60; is also used as the basis for the date set on the transactions in future occurrences. |  |
| **memo** | **String** | Memo associated with the recurring credit. This value cannot exceed 65 characters. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::CreditRecurringTransactionPostMessage.new(
  credit_type: null,
  offsetting_gl_account_id: null,
  posting_rule_gl_account_id: null,
  lines: null,
  post_days_in_advance: null,
  frequency: null,
  duration: null,
  number_of_occurrences: null,
  first_occurrence_date: null,
  memo: null
)
```

