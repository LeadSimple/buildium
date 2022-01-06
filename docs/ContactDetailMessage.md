# Buildium::ContactDetailMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | Contact first name. | [optional] |
| **last_name** | **String** | Contact last name. | [optional] |
| **email** | **String** | Contact email. | [optional] |
| **phone_numbers** | [**ContactDetailPhoneMessage**](ContactDetailPhoneMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ContactDetailMessage.new(
  first_name: null,
  last_name: null,
  email: null,
  phone_numbers: null
)
```

