# Buildium::CreateOwnershipAccountCreditRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date of the transaction. The date must be formatted as YYYY-MM-DD. |  |
| **memo** | **String** | Description of the transaction. The value cannot exceed 65 characters. | [optional] |
| **credit_type** | **String** | Indicates how the credit should be applied.  &lt;ul&gt;&lt;li&gt;WaiveUnpaid - This credit type allows for reversing one or more charges without losing record of what has changed.&lt;/li&gt;&lt;li&gt;Exchange - This credit type allows for one of the following: 1) Reimburse a resident for a out-of-pocket expense, 2) Compensate for a service, 3) Write-off a resident balance considered uncollectable.&lt;/li&gt;&lt;li&gt;PreviouslyDeposited - This credit type allows for issuing a credit against payments that have already been deposited.&lt;/li&gt;&lt;/ul&gt; |  |
| **offsetting_gl_account_id** | **Integer** | Sets the offsetting general ledger account identifier for the credit.  &lt;br /&gt;This value must be provided when the &#x60;CreditType&#x60; field is set to &#x60;Exchange&#x60; or &#x60;PreviouslyDeposited&#x60;.  &lt;br /&gt;When the &#x60;CreditType&#x60; is &#x60;Exchange&#x60; this must be an *expense* general ledger account type.  &lt;br /&gt;When the &#x60;CreditType&#x60; is &#x60;PreviouslyDeposited&#x60; this must be an *equity* general ledger account type. | [optional] |
| **lines** | [**Array&lt;OwnershipAccountCreditLinePostMessage&gt;**](OwnershipAccountCreditLinePostMessage.md) | A collection of line items included in the credit. At least one line item is required. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateOwnershipAccountCreditRequest.new(
  date: null,
  memo: null,
  credit_type: null,
  offsetting_gl_account_id: null,
  lines: null
)
```

