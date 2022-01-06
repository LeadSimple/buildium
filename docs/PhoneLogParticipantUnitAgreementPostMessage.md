# Buildium::PhoneLogParticipantUnitAgreementPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unit agreement unique identifier. Note, if a value is provided in this field then &#x60;Type&#x60; must also be provided. | [optional] |
| **type** | **String** | The type of unit agreement. Note, this field is required if a value is provided for the &#x60;Id&#x60; field. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::PhoneLogParticipantUnitAgreementPostMessage.new(
  id: null,
  type: null
)
```

