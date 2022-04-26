# Buildium::LeaseRentChargeMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Rent charge unique identifier. | [optional] |
| **gl_account_id** | **Integer** | General ledger account unique identifier the rent charge is related to. | [optional] |
| **amount** | **Float** | Amount of the rent charge. | [optional] |
| **memo** | **String** | Memo for the rent charge. | [optional] |
| **first_charge_date** | **Date** | First date for the rent charge. | [optional] |
| **post_days_in_advance** | **Integer** | Number of days ahead of the due date the charge will post on the lease ledger. | [optional] |
| **due_on_day_of_the_month** | **Integer** | The day of the month the rent charge is due. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseRentChargeMessage.new(
  id: null,
  gl_account_id: null,
  amount: null,
  memo: null,
  first_charge_date: null,
  post_days_in_advance: null,
  due_on_day_of_the_month: null
)
```

