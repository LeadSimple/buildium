# Buildium::OwnershipAccountOutstandingBalanceSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** | Association unique identifier | [optional] |
| **ownership_account_statuses** | **Array&lt;String&gt;** | List of ownership account statuses | [optional] |
| **ownership_account_ids** | **Array&lt;Integer&gt;** | List of ownership account ids | [optional] |
| **past_due_email** | **String** | Status of notification of outstanding balances | [optional] |
| **balance_duration** | **String** | Duration of outstanding balances | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountOutstandingBalanceSearchMessage.new(
  association_id: null,
  ownership_account_statuses: null,
  ownership_account_ids: null,
  past_due_email: null,
  balance_duration: null
)
```

