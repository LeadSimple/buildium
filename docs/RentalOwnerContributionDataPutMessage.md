# Buildium::RentalOwnerContributionDataPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contribution_requests** | [**Array&lt;RentalOwnerContributionPutMessage&gt;**](RentalOwnerContributionPutMessage.md) | The contribution request details associated with the task. | [optional] |
| **reminder_settings** | [**RentalOwnerContributionDataPutMessageReminderSettings**](RentalOwnerContributionDataPutMessageReminderSettings.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalOwnerContributionDataPutMessage.new(
  contribution_requests: null,
  reminder_settings: null
)
```

