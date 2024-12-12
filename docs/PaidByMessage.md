# Buildium::PaidByMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounting_entity** | [**GeneralLedgerJournalLineMessageAccountingEntity**](GeneralLedgerJournalLineMessageAccountingEntity.md) |  | [optional] |
| **amount** | **Float** | Amount of the line item. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::PaidByMessage.new(
  accounting_entity: null,
  amount: null
)
```

