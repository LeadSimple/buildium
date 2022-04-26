# Buildium::FilePutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | The title of the file. The value cannot exceed 255 characters. |  |
| **description** | **String** | A description of the file. The value cannot exceed 65000 characters. | [optional] |
| **category_id** | **Integer** | The category identifier to assign to this file. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::FilePutMessage.new(
  title: null,
  description: null,
  category_id: null
)
```

