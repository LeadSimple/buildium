# Buildium::UserMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | User unique identifier. | [optional] |
| **user_types** | **Array&lt;String&gt;** | User Type. | [optional] |
| **is_active** | **Boolean** | User status. | [optional] |
| **last_login** | **Time** | Last Login. Null if no value. | [optional] |
| **first_name** | **String** | First Name of User. | [optional] |
| **last_name** | **String** | Last Name of User. | [optional] |
| **company_name** | **String** | Company Name. | [optional] |
| **email** | **String** | Email of User. | [optional] |
| **alternate_email** | **String** | Alternate Email of User. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | List of phone numbers for the User. | [optional] |
| **user_role** | [**UserRoleMessage**](UserRoleMessage.md) |  | [optional] |
| **is_company** | **Boolean** | Specifies whether or not it is a company. | [optional] |

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

