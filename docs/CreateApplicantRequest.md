# Buildium::CreateApplicantRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | The rental property unit unique identifier to associate with the applicant. | [optional] |
| **first_name** | **String** | The first name of the applicant. The value can not exceed 127 characters. |  |
| **last_name** | **String** | The last name of the applicant. The value can not exceed 127 characters. |  |
| **email** | **String** | The email address of the applicant. | [optional] |
| **phone_numbers** | [**ApplicantPostMessagePhoneNumbers**](ApplicantPostMessagePhoneNumbers.md) |  | [optional] |
| **send_rental_application_email** | **Boolean** | Indicates whether to send the applicant an email with a link to the online rental application form. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateApplicantRequest.new(
  unit_id: null,
  first_name: null,
  last_name: null,
  email: null,
  phone_numbers: null,
  send_rental_application_email: null
)
```

