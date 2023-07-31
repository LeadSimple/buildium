# Buildium::BankAccountTransactionSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **selection_entity_id** | **Integer** | Filters results to any transaction containing journal lines for an entity associated with the specified entity id value. The id must be of the type specified in SelectionEntityType. | [optional] |
| **selection_entity_type** | **String** | Specifies the type of entity that SelectionEntityId refers to. | [optional] |
| **start_date** | **Date** | Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **end_date** | **Date** | Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountTransactionSearchMessage.new(
  selection_entity_id: null,
  selection_entity_type: null,
  start_date: null,
  end_date: null
)
```

