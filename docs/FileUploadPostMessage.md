# Buildium::FileUploadPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. |  |
| **entity_id** | **Integer** | Unique identified of the Entity Type. | [optional] |
| **file_name** | **String** | Name of file being uploaded. The value can not exceed 255 characters. |  |
| **title** | **String** | Title of file upload. The value can not exceed 255 characters. |  |
| **description** | **String** | Description of file upload. The value can not exceed 1000 characters. | [optional] |
| **category_id** | **Integer** | Unique identified of file category. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::FileUploadPostMessage.new(
  entity_type: null,
  entity_id: null,
  file_name: null,
  title: null,
  description: null,
  category_id: null
)
```

