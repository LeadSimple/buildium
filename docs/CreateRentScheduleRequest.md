# Buildium::CreateRentScheduleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_date** | **Date** | Indicates the start of the rent schedule. The date must be formatted as YYYY-MM-DD.  If no rent schedules exist on a lease, this date must match the lease start date. | [optional] |
| **rent_cycle** | **String** | Indicates the cadence of when rent charges will be applied. |  |
| **backdate_charges** | **Boolean** | Indicates if charges that should have posted prior to the date of Rent creation should be posted immediately with the appropriate dates. |  |
| **charges** | [**Array&lt;RentScheduleChargePostMessage&gt;**](RentScheduleChargePostMessage.md) | List of charges to apply to the lease. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateRentScheduleRequest.new(
  start_date: null,
  rent_cycle: null,
  backdate_charges: null,
  charges: null
)
```

