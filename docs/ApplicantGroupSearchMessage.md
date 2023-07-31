# Buildium::ApplicantGroupSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | Filters results to any applicant groups associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references. | [optional] |
| **entity_id** | **Integer** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified. | [optional] |
| **application_group_statuses** | **Array&lt;String&gt;** | Filters results by the applicant group status. If no status is specified, applicant groups in any status will be returned. | [optional] |
| **unit_ids** | **Array&lt;Integer&gt;** | Filters results to applicant groups associated to any of the specified rental property unit identifiers. | [optional] |
| **name** | **String** | Filters results to applicant groups that includes applicants whose name *contains* the specified value. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ApplicantGroupSearchMessage.new(
  entity_type: null,
  entity_id: null,
  application_group_statuses: null,
  unit_ids: null,
  name: null
)
```

