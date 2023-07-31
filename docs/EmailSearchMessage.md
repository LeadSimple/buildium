# Buildium::EmailSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sent_date_time_from** | **Time** | Filters results to any emails whose sent date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days. |  |
| **sent_date_time_to** | **Time** | Filters results to any emails whose sent date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days. |  |
| **subject** | **String** | Filters results to any email whose subject *contains* the specified value. | [optional] |
| **recipient_name_or_email** | **String** | Filters results to any email with a recipient whose name or email address *contains* the specified value. | [optional] |
| **sender_user_id** | **Integer** | Filters results to only emails that were sent by the specified user identifier. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::EmailSearchMessage.new(
  sent_date_time_from: null,
  sent_date_time_to: null,
  subject: null,
  recipient_name_or_email: null,
  sender_user_id: null
)
```

