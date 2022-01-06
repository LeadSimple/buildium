# Buildium::ApplicantGroupMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Applicant group unique identifier. | [optional] |
| **property_id** | **Integer** | Rental property unique identifier that the applicant group is associated with. | [optional] |
| **unit_id** | **Integer** | Rental property unit unique identifier that the applicant group is associated with. | [optional] |
| **application_group_status** | **String** | Indicates the current applicant group status. Note, this status is independent from individual application statuses within the group. | [optional] |
| **applicants** | [**Array&lt;ApplicantMessage&gt;**](ApplicantMessage.md) | A collection of applicants in the group. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ApplicantGroupMessage.new(
  id: null,
  property_id: null,
  unit_id: null,
  application_group_status: null,
  applicants: null
)
```

