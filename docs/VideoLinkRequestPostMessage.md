# Buildium::VideoLinkRequestPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **video_url** | **String** | The URL of the video. Only Youtube and Vimeo URLs are supported. The URL cannot exceed 255 characters. |  |
| **show_in_listing** | **Boolean** | Indicates whether the video will be shown in the listing. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VideoLinkRequestPostMessage.new(
  video_url: null,
  show_in_listing: null
)
```

