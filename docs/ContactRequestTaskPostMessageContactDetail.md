# Buildium::ContactRequestTaskPostMessageContactDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the contact. |  |
| **last_name** | **String** | Last name of the contact. | [optional] |
| **email** | **String** | Email of the contact. | [optional] |
| **phone_numbers** | [**ContactDetailSaveMessagePhoneNumbers**](ContactDetailSaveMessagePhoneNumbers.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ContactRequestTaskPostMessageContactDetail.new(
  first_name: null,
  last_name: null,
  email: null,
  phone_numbers: null
)
```

