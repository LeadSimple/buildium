# Buildium::TaskCategoryResponseMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Task category unique identifier. | [optional] |
| **name** | **String** | Name of the task category. | [optional] |
| **href** | **String** | A link to the task category resource. | [optional] |
| **sub_category** | [**TaskSubCategoryMessage**](TaskSubCategoryMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::TaskCategoryResponseMessage.new(
  id: null,
  name: null,
  href: null,
  sub_category: null
)
```

