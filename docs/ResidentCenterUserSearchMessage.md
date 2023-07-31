# Buildium::ResidentCenterUserSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_agreement_ids** | **Array&lt;Integer&gt;** | Filters results to any resident center user who is associated with the specified lease and/or association ownership account identifiers. | [optional] |
| **user_ids** | **Array&lt;Integer&gt;** | Filters results to any resident center user with the specified tenant and/or association owner identifiers. | [optional] |
| **user_types** | **Array&lt;String&gt;** | Filters results to any resident center user with the specified types. | [optional] |
| **resident_center_user_statuses** | **Array&lt;String&gt;** | Filters results to any resident center user with the specified resident center user statuses. | [optional] |
| **is_auto_pay_enabled** | **Boolean** | If true, filters results to any resident center users who have automatic payments scheduled for the future. If false, filters results to any resident center users  who do not have automatic payments scheduled for the future. If not provided, will not filter results based on automatic payments. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ResidentCenterUserSearchMessage.new(
  unit_agreement_ids: null,
  user_ids: null,
  user_types: null,
  resident_center_user_statuses: null,
  is_auto_pay_enabled: null
)
```

