# Buildium::GeneralLedgerTransactionMessageJournal

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **memo** | **String** | Memo associated with the journal. | [optional] |
| **lines** | [**Array&lt;GeneralLedgerJournalLineMessage&gt;**](GeneralLedgerJournalLineMessage.md) | A collection of line items associated with the journal. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::GeneralLedgerTransactionMessageJournal.new(
  memo: null,
  lines: null
)
```

