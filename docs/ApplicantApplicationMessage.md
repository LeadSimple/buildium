# Buildium::ApplicantApplicationMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Rental application unique identifier. | [optional] |
| **application_number** | **String** | An alpha numeric value that can be used to uniquely identify the application. This is typically provided to an applicant to use as a reference when making inquiries about their application. | [optional] |
| **application_status** | **String** | Indicates the current application status. | [optional] |
| **application_submitted_date_time** | **Time** | Date and time the application was submitted. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ApplicantApplicationMessage.new(
  id: null,
  application_number: null,
  application_status: null,
  application_submitted_date_time: null
)
```

