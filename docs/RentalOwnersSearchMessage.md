# Buildium::RentalOwnersSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_ids** | **Array&lt;Integer&gt;** | Filters results to any lease whose unit belongs to the specified set of property ids. | [optional] |
| **status** | **String** | Filters results by the status of the user. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; users will be returned. | [optional] |
| **agreement_days_remaining** | **Integer** | Filters results by the days remaining on their lease agreement. | [optional] |
| **owner_name** | **String** | Filters results to any owner whose name *contains* the specified value. | [optional] |
| **phone** | **String** | Filters results to any owner who has a phone number that *contains* the specified value. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::RentalOwnersSearchMessage.new(
  property_ids: null,
  status: null,
  agreement_days_remaining: null,
  owner_name: null,
  phone: null
)
```

