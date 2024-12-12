# Buildium::PhoneLogMessageParticipant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **Integer** | The unique identifier for the participant entity. | [optional] |
| **entity_resources** | [**Array&lt;ParticipantResourceMessage&gt;**](ParticipantResourceMessage.md) | A list of the participants entity types and links to the entity resource. Note, that a participant can have more than one type assigned to them. For example, they could be both a vendor and a rental owner. | [optional] |
| **unit_agreement** | [**ParticipantMessageUnitAgreement**](ParticipantMessageUnitAgreement.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::PhoneLogMessageParticipant.new(
  entity_id: null,
  entity_resources: null,
  unit_agreement: null
)
```

