# Buildium::CreateApplicantGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | Rental property unit unique identifier to associate with the applicant group. | [optional] |
| **applicant_ids** | **Array&lt;Integer&gt;** | The applicant unique identifiers to include in the applicant group. Note, that applicants can only be included in one applicant group. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateApplicantGroupRequest.new(
  unit_id: null,
  applicant_ids: null
)
```

