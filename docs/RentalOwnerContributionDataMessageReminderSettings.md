# Buildium::RentalOwnerContributionDataMessageReminderSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_active** | **Boolean** | Flag for enabling the reminders. | [optional] |
| **recurrence_days** | **Integer** | Interval of days for the reminder to be sent on. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalOwnerContributionDataMessageReminderSettings.new(
  is_active: null,
  recurrence_days: null
)
```

