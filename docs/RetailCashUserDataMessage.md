# Buildium::RetailCashUserDataMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | User unique identifier. | [optional] |
| **first_name** | **String** | User first name. | [optional] |
| **last_name** | **String** | User last name. | [optional] |
| **email** | **String** | User email address. | [optional] |
| **phone** | **String** | User phone number. | [optional] |
| **user_type** | **String** | User type. | [optional] |
| **href** | **String** | A link to the resource endpoint associated with the user. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RetailCashUserDataMessage.new(
  id: null,
  first_name: null,
  last_name: null,
  email: null,
  phone: null,
  user_type: null,
  href: null
)
```

