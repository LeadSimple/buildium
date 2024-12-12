# Buildium::AccountingLockPeriodMessageGlobal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lock_date** | **Date** | Financial transactions on or prior to this date will be locked. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AccountingLockPeriodMessageGlobal.new(
  lock_date: null
)
```

