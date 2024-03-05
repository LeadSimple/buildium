# Buildium::LeaseRentMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Rent unique identifier. | [optional] |
| **start_date** | **Date** | Start date of the rent. | [optional] |
| **end_date** | **Date** | End date of the rent. | [optional] |
| **total_amount** | **Float** | Total amount of the rent. | [optional] |
| **rent_cycle** | **String** | Determines the frequency at which rent is charged. | [optional] |
| **backdate_charges** | **Boolean** | Indicates whether backdated charges should be created when creating or editing rents. This field will always return false, even if backdated charges exist. | [optional] |
| **created_date_time** | **Time** | The date and time the rent was created. | [optional] |
| **created_by_user_id** | **Integer** | Unique identifier of user that created the rent. | [optional] |
| **charges** | [**Array&lt;LeaseRentChargeMessage&gt;**](LeaseRentChargeMessage.md) | A collection of charges associated with the rent. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseRentMessage.new(
  id: null,
  start_date: null,
  end_date: null,
  total_amount: null,
  rent_cycle: null,
  backdate_charges: null,
  created_date_time: null,
  created_by_user_id: null,
  charges: null
)
```

