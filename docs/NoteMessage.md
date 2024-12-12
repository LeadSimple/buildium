# Buildium::NoteMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Note unique identifier. | [optional] |
| **note** | **String** | Note contents. | [optional] |
| **last_updated_by_user** | [**NoteMessageLastUpdatedByUser**](NoteMessageLastUpdatedByUser.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::NoteMessage.new(
  id: null,
  note: null,
  last_updated_by_user: null
)
```

