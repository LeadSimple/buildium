# Buildium::UserRoleMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | User role unique identifier. | [optional] |
| **name** | **String** | User role name. | [optional] |
| **description** | **String** | User role description. | [optional] |
| **number_of_users** | **Integer** | Number of users assigned to this user role. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UserRoleMessage.new(
  id: null,
  name: null,
  description: null,
  number_of_users: null
)
```

