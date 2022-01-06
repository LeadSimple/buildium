# Buildium::UserRoleMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | User Role Name. | [optional] |
| **description** | **String** | User Role Description. | [optional] |
| **id** | **Integer** | User Role unique identifier. | [optional] |
| **number_of_users** | **Integer** | Number of Users under User Role Type. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::UserRoleMessage.new(
  name: null,
  description: null,
  id: null,
  number_of_users: null
)
```

