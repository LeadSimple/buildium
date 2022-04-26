# Buildium::FileCategoryMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | File category unique identifier. | [optional] |
| **name** | **String** | Name of the file category. | [optional] |
| **is_editable** | **Boolean** | Indicates whether the category is editable. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::FileCategoryMessage.new(
  id: null,
  name: null,
  is_editable: null
)
```

