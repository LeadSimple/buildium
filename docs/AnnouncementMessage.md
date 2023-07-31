# Buildium::AnnouncementMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier of the announcement. | [optional] |
| **subject** | **String** | Subject line of the announcement. | [optional] |
| **body** | **String** | Content of the announcement. | [optional] |
| **announcement_date** | **Date** | Date the announcement was published. | [optional] |
| **expiration_date** | **Date** | Indicates the date on which the announcement will be removed from the Resident Center. | [optional] |
| **channels** | **Array&lt;String&gt;** | List of the distribution channels the announcement was sent through. | [optional] |
| **sender** | [**AnnouncementSenderMessage**](AnnouncementSenderMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AnnouncementMessage.new(
  id: null,
  subject: null,
  body: null,
  announcement_date: null,
  expiration_date: null,
  channels: null,
  sender: null
)
```

