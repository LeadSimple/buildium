# Buildium::ListingFileMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Indicates the media type of file. | [optional] |
| **name** | **String** | The name of the file. | [optional] |
| **url** | **String** | The the full URL to access the file. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ListingFileMessage.new(
  type: null,
  name: null,
  url: null
)
```

