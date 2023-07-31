# Buildium::EmailSenderMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | User unique identifier. | [optional] |
| **first_name** | **String** | First name of the user. | [optional] |
| **last_name** | **String** | Last name of the user. | [optional] |
| **href** | **String** | A link to the user resource. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::EmailSenderMessage.new(
  id: null,
  first_name: null,
  last_name: null,
  href: null
)
```

