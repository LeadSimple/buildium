# Buildium::FileUploadTicketMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bucket_url** | **String** | AWS S3 Bucket Url. | [optional] |
| **form_data** | **Hash&lt;String, String&gt;** | AWS Meta Data. | [optional] |
| **physical_file_name** | **String** | The physical file name. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::FileUploadTicketMessage.new(
  bucket_url: null,
  form_data: null,
  physical_file_name: null
)
```

