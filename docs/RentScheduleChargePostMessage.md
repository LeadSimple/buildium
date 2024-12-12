# Buildium::RentScheduleChargePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | The general ledger account identifier under which to record the rent charge. |  |
| **amount** | **Float** | The amount of the rent charge. |  |
| **memo** | **String** | Memo for the rent charge. | [optional] |
| **post_days_in_advance** | **Integer** | Number of days in advance of the due date to post the rent charge | [optional] |
| **next_due_date** | **Date** | Indicates the next date the rent charge will be applied. This date will also be used as the start date for the calculating the &#x60;Cycle&#x60; of when to apply the next charge. The date must be formatted as YYYY-MM-DD. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentScheduleChargePostMessage.new(
  gl_account_id: null,
  amount: null,
  memo: null,
  post_days_in_advance: null,
  next_due_date: null
)
```

