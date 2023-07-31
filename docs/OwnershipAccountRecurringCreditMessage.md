# Buildium::OwnershipAccountRecurringCreditMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the recurring credit schedule. | [optional] |
| **ownership_account_id** | **Integer** | The unique identifier of the ownership account that the recurring credit will be applied to. | [optional] |
| **credit_type** | **String** | Indicates how the credit will be applied.  &lt;ul&gt;&lt;li&gt;WaiveUnpaid - This credit type allows for reversing one or more charges without losing record of what has changed.&lt;/li&gt;&lt;li&gt;Exchange - This credit type allows for one of the following: 1) Reimburse a resident for a out-of-pocket expense, 2) Compensate for a service, 3) Write-off a resident balance considered uncollectable.&lt;/li&gt;&lt;li&gt;PreviouslyDeposited - This credit type allows for issuing a credit against payments that have already been deposited.&lt;/li&gt;&lt;/ul&gt; | [optional] |
| **offsetting_gl_account_id** | **Integer** | Offsetting general ledger account identifier. The offsetting general ledger account acts as the expense account. | [optional] |
| **posting_rule_gl_account_id** | **Integer** | Indicates whether to apply a posting rule when processing the transaction that would only record the credit if a prior payment has been made.  &lt;br /&gt;&lt;br /&gt;  Set the field value to the &lt;b&gt;Rent Income&lt;/b&gt; general ledger account identifier if the credit should only be recorded when a payment was made and applied to the &lt;b&gt;Rent Income&lt;/b&gt; general ledger account.  &lt;br /&gt;&lt;br /&gt;  Set the field value to the &lt;b&gt;Accounts Receivable&lt;/b&gt; general ledger account identifier if the credit should only be recorded when a payment was made and applied to *any* general ledger account.  &lt;br /&gt;&lt;br /&gt;  Set the field value to &lt;b&gt;null&lt;/b&gt; to always record the credit. | [optional] |
| **lines** | [**Array&lt;RecurringTransactionLineMessage&gt;**](RecurringTransactionLineMessage.md) | Line items describing how the credit is to be allocated when the recurring transaction is processed. | [optional] |
| **amount** | **Float** | The total amount of the recurring credit based on sum of the &#x60;Lines.Amount&#x60;. | [optional] |
| **occurrences_remaining** | **Integer** | The number of remaining times this recurring credit will be processed. | [optional] |
| **first_occurrence_date** | **Date** | The date the first occurrence this credit was processed. | [optional] |
| **next_occurrence_date** | **Date** | The next date the scheduled credit will be processed. | [optional] |
| **post_days_in_advance** | **Integer** | Specifies the number of days ahead of the transaction date the credit will post on the lease ledger. This setting can be used to add the credit to the ledger ahead of the due date for visibility. For example, if the &#x60;FirstOccurrenceDate&#x60; is set to 8/10/2022 and this value is set to 5 then the charge will added to the ledger on 8/5/2022, but will have transaction date of 8/10/2022. | [optional] |
| **memo** | **String** | Memo associated with the recurring credit. | [optional] |
| **frequency** | **String** | Indicates the frequency at which the recurring credit is processed. | [optional] |
| **duration** | **String** | Specifies the period of time/occurrences the recurring credit will be processed. Note, if the &#x60;Frequency&#x60; field is set to &#x60;OneTime&#x60; this field should be set to &#x60;NULL&#x60; as any submitted value will be ignored. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountRecurringCreditMessage.new(
  id: null,
  ownership_account_id: null,
  credit_type: null,
  offsetting_gl_account_id: null,
  posting_rule_gl_account_id: null,
  lines: null,
  amount: null,
  occurrences_remaining: null,
  first_occurrence_date: null,
  next_occurrence_date: null,
  post_days_in_advance: null,
  memo: null,
  frequency: null,
  duration: null
)
```

