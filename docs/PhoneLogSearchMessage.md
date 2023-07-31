# Buildium::PhoneLogSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from_date** | **Date** | Filters results to any phone log whose call date is greater than or equal to the specified value. | [optional] |
| **to_date** | **Date** | Filters results to any phone log whose call date is less than or equal to the specified value. | [optional] |
| **logged_by_staff_user_ids** | **Array&lt;Integer&gt;** | Filters results to any phone log that was logged by staff user(s). | [optional] |
| **subject** | **String** | Filters results to any phone log whose subject *contains* the specified value. | [optional] |
| **participant_entity_id** | **Integer** | Filters results to any phone logs that match the participant identifier. Note, if a value is provided in this field the &#x60;ParticipantEntityType&#x60; must also be provided. | [optional] |
| **participant_entity_type** | **String** | Filters results to any phone log with the specified participant type. This field is required if a value is provided for the &#x60;ParticipantEntityId&#x60; field. | [optional] |
| **unit_agreement_id** | **Integer** | Filters results to any phone log with the specified unit agreement identifier. Note, if a value is provided in this field the &#x60;UnitAgreementType&#x60; must also be provided. | [optional] |
| **unit_agreement_type** | **String** | Filters results to any phone log with the specified unit agreement type. This field is required if a value is provided for the &#x60;UnitAgreementId&#x60; field. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::PhoneLogSearchMessage.new(
  from_date: null,
  to_date: null,
  logged_by_staff_user_ids: null,
  subject: null,
  participant_entity_id: null,
  participant_entity_type: null,
  unit_agreement_id: null,
  unit_agreement_type: null
)
```

