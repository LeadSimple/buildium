# Buildium::ResidentCenterUserReferenceMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Resident center user unique identifier. | [optional] |
| **first_name** | **String** | First name of the resident center user. | [optional] |
| **last_name** | **String** | Last name of the resident center user. | [optional] |
| **user_type** | **String** | Indicates if the resident center user is a tenant or association owner | [optional] |
| **href** | **String** | A link to the user resource. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ResidentCenterUserReferenceMessage.new(
  id: null,
  first_name: null,
  last_name: null,
  user_type: null,
  href: null
)
```

