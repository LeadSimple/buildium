# Buildium::AnnouncementSenderMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier of the user who sent the announcement. | [optional] |
| **display_name** | **String** | Display name of the user who sent the announcement. | [optional] |
| **href** | **String** | A link to the user resource. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AnnouncementSenderMessage.new(
  id: null,
  display_name: null,
  href: null
)
```

