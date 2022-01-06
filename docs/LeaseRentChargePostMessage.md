# Buildium::LeaseRentChargePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | The amount of the charge. |  |
| **gl_account_id** | **Integer** | The general ledger account identifier under which to record the charge. |  |
| **next_due_date** | **Date** | Indicates the next date the charge will be applied to the lease ledger. This date will also be used as the start date for the calculating the &#x60;Cycle&#x60; of when to apply the next charge. The date must be formatted as YYYY-MM-DD. |  |
| **memo** | **String** | Memo for the charge. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseRentChargePostMessage.new(
  amount: null,
  gl_account_id: null,
  next_due_date: null,
  memo: null
)
```

