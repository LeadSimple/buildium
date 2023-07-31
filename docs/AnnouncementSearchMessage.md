# Buildium::AnnouncementSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **announcement_date_from** | **Date** | Filters results to any announcements created on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **announcement_date_to** | **Date** | Filters results to any announcements created on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **entity_id** | **Integer** | Filters results to any announcement associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field. | [optional] |
| **entity_type** | **String** | Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is provided. | [optional] |
| **sender_id** | **Integer** | Unique identifier of the user that published the announcement. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AnnouncementSearchMessage.new(
  announcement_date_from: null,
  announcement_date_to: null,
  entity_id: null,
  entity_type: null,
  sender_id: null
)
```

