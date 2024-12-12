# Buildium::CreateRentalImageUploadFileRequestAsyncRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_name** | **String** | Name of file being uploaded. The value can not exceed 255 characters. |  |
| **description** | **String** | A description of the file. The value cannot exceed 100 characters. | [optional] |
| **show_in_listing** | **Boolean** | Indicates whether the image will be shown in listings. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateRentalImageUploadFileRequestAsyncRequest.new(
  file_name: null,
  description: null,
  show_in_listing: null
)
```

