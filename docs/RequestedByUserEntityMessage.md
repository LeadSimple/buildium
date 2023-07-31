# Buildium::RequestedByUserEntityMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Entity type. | [optional] |
| **id** | **Integer** | Entity identifier. | [optional] |
| **first_name** | **String** | First name. | [optional] |
| **last_name** | **String** | Last name. | [optional] |
| **is_company** | **Boolean** | Indicates whether entity is a company. | [optional] |
| **href** | **String** | A link to the entity resource. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RequestedByUserEntityMessage.new(
  type: null,
  id: null,
  first_name: null,
  last_name: null,
  is_company: null,
  href: null
)
```

