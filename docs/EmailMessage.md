# Buildium::EmailMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Email unique identifier. | [optional] |
| **sent_date_time** | **Time** | The date and time the email was sent. | [optional] |
| **subject** | **String** | Email subject. | [optional] |
| **sender** | [**EmailSenderMessage**](EmailSenderMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::EmailMessage.new(
  id: null,
  sent_date_time: null,
  subject: null,
  sender: null
)
```

