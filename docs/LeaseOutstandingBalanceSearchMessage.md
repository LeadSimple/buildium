# Buildium::LeaseOutstandingBalanceSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** |  | [optional] |
| **entity_id** | **Integer** |  | [optional] |
| **lease_statuses** | **Array&lt;String&gt;** |  | [optional] |
| **lease_ids** | **Array&lt;Integer&gt;** |  | [optional] |
| **past_due_email** | **String** |  | [optional] |
| **balance_duration** | **String** |  | [optional] |
| **eviction_status** | **String** |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseOutstandingBalanceSearchMessage.new(
  entity_type: null,
  entity_id: null,
  lease_statuses: null,
  lease_ids: null,
  past_due_email: null,
  balance_duration: null,
  eviction_status: null
)
```

