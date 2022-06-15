# Buildium::AssociationUserSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Filters results to only records whose name *contains* the specified value. | [optional] |
| **phone** | **String** | Filters results to only records whose phone number *contains* the specified value. | [optional] |
| **email** | **String** | Filters results to only records whose email *contains* the specified value. | [optional] |
| **association_ids** | **Array&lt;Integer&gt;** | Filters results to only records that belong to the specified set of association identifiers. | [optional] |
| **statuses** | **Array&lt;String&gt;** | Filters results to only records whose status is equal to the specified value. | [optional] |
| **created_date_time_to** | **Time** | Filters results to only records that were created before this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **created_date_time_from** | **Time** | Filters results to only records that were created after this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **last_updated_from** | **Time** | Filters results to any association owners that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **last_updated_to** | **Time** | Filters results to any association owners that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationUserSearchMessage.new(
  name: null,
  phone: null,
  email: null,
  association_ids: null,
  statuses: null,
  created_date_time_to: null,
  created_date_time_from: null,
  last_updated_from: null,
  last_updated_to: null
)
```

