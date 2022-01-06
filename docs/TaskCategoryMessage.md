# Buildium::TaskCategoryMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Task category unique identifier. | [optional] |
| **name** | **String** | Name of the task category. | [optional] |
| **is_system_category** | **Boolean** | Indicates whether the category is a system category. Note, system categories can not be edited. | [optional] |
| **sub_categories** | [**Array&lt;TaskSubCategoryMessage&gt;**](TaskSubCategoryMessage.md) | Subcategories associated with the task category. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::TaskCategoryMessage.new(
  id: null,
  name: null,
  is_system_category: null,
  sub_categories: null
)
```

