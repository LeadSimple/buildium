# Buildium::OwnershipAccountOutstandingBalanceMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** | Ownership account unique identifier. | [optional] |
| **association_id** | **Integer** | Association unique identifier . | [optional] |
| **unit_id** | **Integer** | Association unit unique identifier. | [optional] |
| **balance0_to30_days** | **Float** | Outstanding balance due from within the last 30 days. | [optional] |
| **balance31_to60_days** | **Float** | Outstanding balance due from within 31 to 60 days ago. | [optional] |
| **balance61_to90_days** | **Float** | Outstanding balance due from within 61 to 90 days ago. | [optional] |
| **balance_over90_days** | **Float** | Outstanding balance due from over 90 days ago. | [optional] |
| **total_balance** | **Float** | Total outstanding balance due. | [optional] |
| **balances** | [**Array&lt;OutstandingBalancesLineMessage&gt;**](OutstandingBalancesLineMessage.md) | Breakdown of outstanding balance due by general ledger account. | [optional] |
| **past_due_email_sent_date** | **Time** | Date of notification for outstanding balance. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountOutstandingBalanceMessage.new(
  ownership_account_id: null,
  association_id: null,
  unit_id: null,
  balance0_to30_days: null,
  balance31_to60_days: null,
  balance61_to90_days: null,
  balance_over90_days: null,
  total_balance: null,
  balances: null,
  past_due_email_sent_date: null
)
```

