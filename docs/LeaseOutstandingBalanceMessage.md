# Buildium::LeaseOutstandingBalanceMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | Lease unique identifier. | [optional] |
| **property_id** | **Integer** | Property unique identifier. | [optional] |
| **unit_id** | **Integer** | Property unit unique identifier. | [optional] |
| **balance0_to30_days** | **Float** | Outstanding balance due from within the last 30 days. | [optional] |
| **balance31_to60_days** | **Float** | Outstanding balance due from within 31 to 60 days ago. | [optional] |
| **balance61_to90_days** | **Float** | Outstanding balance due from within 61 to 90 days ago. | [optional] |
| **balance_over90_days** | **Float** | Outstanding balance due from over 90 days ago. | [optional] |
| **total_balance** | **Float** | Total outstanding balance due. | [optional] |
| **balances** | [**Array&lt;OutstandingBalancesLineMessage&gt;**](OutstandingBalancesLineMessage.md) | Breakdown of outstanding balance due by general ledger account. | [optional] |
| **past_due_email_sent_date** | **Time** | Date of notification for outstanding balance. | [optional] |
| **eviction_pending_date** | **Date** | Date of notification for pending eviction. | [optional] |
| **is_notice_given** | **Boolean** | Indicates if notice was sent. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseOutstandingBalanceMessage.new(
  lease_id: null,
  property_id: null,
  unit_id: null,
  balance0_to30_days: null,
  balance31_to60_days: null,
  balance61_to90_days: null,
  balance_over90_days: null,
  total_balance: null,
  balances: null,
  past_due_email_sent_date: null,
  eviction_pending_date: null,
  is_notice_given: null
)
```

