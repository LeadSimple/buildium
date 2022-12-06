# Buildium::AnnouncementPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **String** | The subject of the announcement. Note, this will only show up in announcements sent via email and in the Resident Center. The value cannot exceed 100 characters. |  |
| **body** | **String** | The content of the announcement. The value cannot exceed 65535 characters. Note: if your message is over 140 characters, the announcement will not be sent via SMS. Announcement texts are available for US numbers only. |  |
| **expiration_date** | **Date** | Optional date that indicates when the announcement should be removed from the Resident Center. If no date is provided the announcement will appear indefinitely The date must be formatted as YYYY-MM-DD. | [optional] |
| **notify_association_tenants** | **Boolean** | Indicates whether to include notifying the association tenants in addition to the association owners when publishing the announcement. Note this is only pertains to announcements sent to residents of &#x60;Association&#x60; properties. |  |
| **include_alternate_email** | **Boolean** | Indicates whether to send the announcement to alternate emails in addition to the main email addresses when publishing the announcement. |  |
| **property_ids** | **Array&lt;Integer&gt;** | A list of association and/or rental property unique identifiers whose residents should receive the announcement. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::AnnouncementPostMessage.new(
  subject: null,
  body: null,
  expiration_date: null,
  notify_association_tenants: null,
  include_alternate_email: null,
  property_ids: null
)
```

