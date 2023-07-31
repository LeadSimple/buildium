# Buildium::GeneralLedgerTransactionSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selection_entity_id** | **Integer** | Filters results to any transaction containing journal lines for an entity associated with the specified entity id value. The id must be of the type specified in SelectionEntityType. | [optional] |
| **selection_entity_type** | **String** | Specifies the type of entity that SelectionEntityId refers to. | [optional] |
| **start_date** | **Date** | Filters results to any transaction whose date is greater than or equal to the specified value. |  |
| **end_date** | **Date** | Filters results to any transaction whose date is less than or equal to the specified value. |  |
| **gl_account_ids** | **Array&lt;Integer&gt;** | Filters results to transactions whose general ledger account belongs to the specified set of general ledger account ids. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::GeneralLedgerTransactionSearchMessage.new(
  selection_entity_id: null,
  selection_entity_type: null,
  start_date: null,
  end_date: null,
  gl_account_ids: null
)
```

