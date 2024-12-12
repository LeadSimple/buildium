# Buildium::TaskHistoryMessageLastUpdatedByUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | User unique identifier. | [optional] |
| **first_name** | **String** | First name of the user. | [optional] |
| **last_name** | **String** | Last name of the user. | [optional] |
| **href** | **String** | A link to the resource endpoint associated with the user. | [optional] |
| **user_type** | **String** | Describes the user type of the user | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::TaskHistoryMessageLastUpdatedByUser.new(
  id: null,
  first_name: null,
  last_name: null,
  href: null,
  user_type: null
)
```

