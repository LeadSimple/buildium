# Buildium::AccountInfoMessageContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | Contact first name. | [optional] |
| **last_name** | **String** | Contact last name. | [optional] |
| **address** | [**ContactInfoMessageAddress**](ContactInfoMessageAddress.md) |  | [optional] |
| **phone_number** | **String** | Contact phone number. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AccountInfoMessageContact.new(
  first_name: null,
  last_name: null,
  address: null,
  phone_number: null
)
```

