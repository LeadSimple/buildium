# Buildium::ApplicantSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **Integer** | Filters results to any applicant associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references. | [optional] |
| **entity_type** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified. | [optional] |
| **application_statuses** | **Array&lt;String&gt;** | Filters results by the applicant application status. If no status is specified, applicants with an application in any status will be returned. | [optional] |
| **unit_ids** | **Array&lt;Integer&gt;** | Filters results to applicants associated to any of the specified rental property unit identifiers. | [optional] |
| **name** | **String** | Filters results to applicants whose name *contains* the specified value. | [optional] |
| **email** | **String** | Filters results to applicants whose email *contains* the specified value | [optional] |
| **application_submitted_start_date** | **Time** | Filters results to any applicant who submitted an application on or after the date specified. | [optional] |
| **application_submitted_end_date** | **Time** | Filters results to any applicant who submitted an application on or prior to the date specified. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ApplicantSearchMessage.new(
  entity_id: null,
  entity_type: null,
  application_statuses: null,
  unit_ids: null,
  name: null,
  email: null,
  application_submitted_start_date: null,
  application_submitted_end_date: null
)
```

