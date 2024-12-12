# Buildium::ApplicantMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Applicant unique identifier. | [optional] |
| **applicant_group_id** | **Integer** | Applicant group unique identifier. | [optional] |
| **property_id** | **Integer** | Rental property unique identifier that the applicant is associated with. | [optional] |
| **unit_id** | **Integer** | Rental property unit unique identifier that the applicant is associated with. | [optional] |
| **tenant_id** | **Integer** | The rental tenant identifier associated with the applicant. This value will be null if the applicant never transitioned into a tenant. | [optional] |
| **first_name** | **String** | Applicant first name. | [optional] |
| **last_name** | **String** | Applicant last name. | [optional] |
| **email** | **String** | Applicant email address. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | Applicant phone numbers. | [optional] |
| **status** | **String** | Applicant status. | [optional] |
| **applications** | [**Array&lt;ApplicantApplicationMessage&gt;**](ApplicantApplicationMessage.md) | A collection of applications associated with the applicant. | [optional] |
| **last_updated_date_time** | **Time** | Date and time the applicant was last updated. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ApplicantMessage.new(
  id: null,
  applicant_group_id: null,
  property_id: null,
  unit_id: null,
  tenant_id: null,
  first_name: null,
  last_name: null,
  email: null,
  phone_numbers: null,
  status: null,
  applications: null,
  last_updated_date_time: null
)
```

