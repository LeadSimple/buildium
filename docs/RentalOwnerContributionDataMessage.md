# Buildium::RentalOwnerContributionDataMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contribution_requests** | [**Array&lt;RentalOwnerContributionMessage&gt;**](RentalOwnerContributionMessage.md) | The contribution request details associated with the task. | [optional] |
| **reminder_settings** | [**RentalOwnerContributionDataMessageReminderSettings**](RentalOwnerContributionDataMessageReminderSettings.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalOwnerContributionDataMessage.new(
  contribution_requests: null,
  reminder_settings: null
)
```

