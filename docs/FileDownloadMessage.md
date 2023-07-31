# Buildium::FileDownloadMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **download_url** | **String** | A transient URL that can be used to download the requested file. This URL expires after 5 minutes. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::FileDownloadMessage.new(
  download_url: null
)
```

