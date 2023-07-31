# Buildium::PhoneLogMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Phone log unique identifier. | [optional] |
| **participant** | [**ParticipantMessage**](ParticipantMessage.md) |  | [optional] |
| **logged_by_staff_user** | [**LoggedByStaffUserMessage**](LoggedByStaffUserMessage.md) |  | [optional] |
| **subject** | **String** | Subject of the phone call. | [optional] |
| **description** | **String** | Description of the phone call. | [optional] |
| **call_date_time** | **Time** | The date and time in UTC of when the call took place. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::PhoneLogMessage.new(
  id: null,
  participant: null,
  logged_by_staff_user: null,
  subject: null,
  description: null,
  call_date_time: null
)
```

