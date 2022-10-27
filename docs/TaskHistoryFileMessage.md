# Buildium::TaskHistoryFileMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | File unique identifier. | [optional] |
| **title** | **String** | The title of the file. | [optional] |
| **physical_file_name** | **String** | Physical name of the file on the server. | [optional] |
| **size** | **Integer** | Size of the file, in kilobytes. | [optional] |
| **content_type** | **String** | MIME type of the file. | [optional] |
| **uploaded_date_time** | **Time** | Date and time the file was uploaded. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::TaskHistoryFileMessage.new(
  id: null,
  title: null,
  physical_file_name: null,
  size: null,
  content_type: null,
  uploaded_date_time: null
)
```

