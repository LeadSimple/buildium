# Buildium::JournalMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **memo** | **String** | Memo associated with the journal. | [optional] |
| **lines** | [**Array&lt;JournalLineMessage&gt;**](JournalLineMessage.md) | A collection of line items associated with the journal. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::JournalMessage.new(
  memo: null,
  lines: null
)
```

