# Buildium::ApplicantMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Applicant unique identifier. | [optional] |
| **applicant_group_id** | **Integer** | Applicant group unique identifier. | [optional] |
| **property_id** | **Integer** | Rental property unique identifier that the applicant is associated with. | [optional] |
| **unit_id** | **Integer** | Rental property unit unique identifier that the applicant is associated with. | [optional] |
| **first_name** | **String** | Applicant first name. | [optional] |
| **last_name** | **String** | Applicant last name. | [optional] |
| **email** | **String** | Applicant email address. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | Applicant phone numbers. | [optional] |
| **applications** | [**Array&lt;ApplicantApplicationMessage&gt;**](ApplicantApplicationMessage.md) | A collection of applications associated with the applicant. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ApplicantMessage.new(
  id: null,
  applicant_group_id: null,
  property_id: null,
  unit_id: null,
  first_name: null,
  last_name: null,
  email: null,
  phone_numbers: null,
  applications: null
)
```

