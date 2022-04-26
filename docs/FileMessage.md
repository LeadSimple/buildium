# Buildium::FileMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | File unique identifier. | [optional] |
| **file_entity** | [**FileEntityMessage**](FileEntityMessage.md) |  | [optional] |
| **category_id** | **Integer** | The category identifier assigned to this file. | [optional] |
| **title** | **String** | Title of the file. | [optional] |
| **description** | **String** | Description of the file. | [optional] |
| **physical_file_name** | **String** | Physical name of the file on the server. | [optional] |
| **size** | **Integer** | Size of the file. Unit of measure is bytes. | [optional] |
| **content_type** | **String** | MIME type of the file. | [optional] |
| **uploaded_date_time** | **Time** | Date the file was uploaded. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::FileMessage.new(
  id: null,
  file_entity: null,
  category_id: null,
  title: null,
  description: null,
  physical_file_name: null,
  size: null,
  content_type: null,
  uploaded_date_time: null
)
```

