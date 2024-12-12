# Buildium::UpdateRentScheduleRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rent_cycle** | **String** | Indicates the cadence of when rent charges will be applied. |  |
| **backdate_charges** | **Boolean** | Indicates if charges that should have posted prior to the date of Rent creation should be posted immediately with the appropriate dates. |  |
| **charges** | [**Array&lt;RentScheduleChargePutMessage&gt;**](RentScheduleChargePutMessage.md) | List of charges to apply to the lease. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateRentScheduleRequest.new(
  rent_cycle: null,
  backdate_charges: null,
  charges: null
)
```

