# Buildium::UpdatePhoneLogRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subject** | **String** | Subject of the phone call. This value is restricted to a maximum of 255 characters. |  |
| **description** | **String** | Description of the phone call. This value is restricted to a maximum of 65,535 characters. |  |
| **call_date_time** | **Time** | The date and time the call took place. Time of the phone call must be UTC. Example format: \&quot;2021-01-26T13:59:15Z\&quot; |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdatePhoneLogRequest.new(
  subject: null,
  description: null,
  call_date_time: null
)
```

