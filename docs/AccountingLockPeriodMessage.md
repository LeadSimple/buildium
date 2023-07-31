# Buildium::AccountingLockPeriodMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **global** | [**LockPeriodSettingsGlobalMessage**](LockPeriodSettingsGlobalMessage.md) |  | [optional] |
| **overrides** | [**Array&lt;LockPeriodSettingsOverridesMessage&gt;**](LockPeriodSettingsOverridesMessage.md) | Settings overrides for specific properties. | [optional] |
| **financial_administrator_user_ids** | **Array&lt;Integer&gt;** | A collection of identifiers for users that have been designated financial administrators. These users will have permission to add, edit, and delete transactions during a locked period. This won&#39;t conflict with any property-level permissions for this account. By default, account administrators have permission to add, edit, and delete transactions within a locked period. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AccountingLockPeriodMessage.new(
  global: null,
  overrides: null,
  financial_administrator_user_ids: null
)
```

