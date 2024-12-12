# Buildium::UpdateGeneralJournalEntryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounting_entity** | [**GeneralJournalEntryPostMessageAccountingEntity**](GeneralJournalEntryPostMessageAccountingEntity.md) |  |  |
| **date** | **Date** | Date of the general journal entry. The date must be formatted as YYYY-MM-DD. |  |
| **memo** | **String** | Description of the general journal entry. Must be no longer than 240 characters. | [optional] |
| **lines** | [**Array&lt;GeneralJournalEntryLineSaveMessage&gt;**](GeneralJournalEntryLineSaveMessage.md) | A list of general journal entry lines. At least two lines are required. The total amount of the debit PostingType lines must equal the total of the credit PostingType lines. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateGeneralJournalEntryRequest.new(
  accounting_entity: null,
  date: null,
  memo: null,
  lines: null
)
```

