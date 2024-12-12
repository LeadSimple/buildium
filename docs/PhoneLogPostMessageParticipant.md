# Buildium::PhoneLogPostMessageParticipant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | The type of participant entity. |  |
| **entity_id** | **Integer** | The unique identifier for the participant entity. |  |
| **unit_agreement** | [**PhoneLogParticipantPostMessageUnitAgreement**](PhoneLogParticipantPostMessageUnitAgreement.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::PhoneLogPostMessageParticipant.new(
  entity_type: null,
  entity_id: null,
  unit_agreement: null
)
```
