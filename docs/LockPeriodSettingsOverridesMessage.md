# Buildium::LockPeriodSettingsOverridesMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property** | [**LockPeriodSettingsOverridesMessageProperty**](LockPeriodSettingsOverridesMessageProperty.md) |  | [optional] |
| **lock_date** | **Date** | Accounting transactions related to the property specified in the Property field on or prior to this date will be locked. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LockPeriodSettingsOverridesMessage.new(
  property: null,
  lock_date: null
)
```

