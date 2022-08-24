# Buildium::UserMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | User unique identifier. | [optional] |
| **user_types** | **Array&lt;String&gt;** | The user type assigned to the user account. | [optional] |
| **is_active** | **Boolean** | Indicates whether the user account is still active. | [optional] |
| **last_login** | **Time** | Date and time the user last logged into Buildium. This value will be &#x60;NULL&#x60; if the user has never logged into Buildium. | [optional] |
| **first_name** | **String** | First name of the user. | [optional] |
| **last_name** | **String** | Last name of the user. | [optional] |
| **company_name** | **String** | The company name. | [optional] |
| **email** | **String** | Email address of the user. | [optional] |
| **alternate_email** | **String** | Alternate email address of user. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | List of phone numbers for the user. | [optional] |
| **user_role** | [**UserRoleMessage**](UserRoleMessage.md) |  | [optional] |
| **is_company** | **Boolean** | Indicates with the user account represents company versus a person. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::UserMessage.new(
  id: null,
  user_types: null,
  is_active: null,
  last_login: null,
  first_name: null,
  last_name: null,
  company_name: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  user_role: null,
  is_company: null
)
```

