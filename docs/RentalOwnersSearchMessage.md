# Buildium::RentalOwnersSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_ids** | **Array&lt;Integer&gt;** | Filters results to any lease whose unit belongs to the specified set of property ids. | [optional] |
| **status** | **String** | Filters results by the status of the user. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; users will be returned. | [optional] |
| **agreement_days_remaining** | **Integer** | Filters results by the days remaining on their lease agreement. | [optional] |
| **owner_name** | **String** | Filters results to any owner whose name *contains* the specified value. | [optional] |
| **phone** | **String** | Filters results to any owner who has a phone number that *contains* the specified value. | [optional] |
| **last_updated_from** | **Time** | Filters results to any rental owners that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **last_updated_to** | **Time** | Filters results to any rental owners that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalOwnersSearchMessage.new(
  property_ids: null,
  status: null,
  agreement_days_remaining: null,
  owner_name: null,
  phone: null,
  last_updated_from: null,
  last_updated_to: null
)
```

