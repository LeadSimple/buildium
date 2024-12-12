# Buildium::JournalLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account** | [**GeneralLedgerJournalLineMessageGLAccount**](GeneralLedgerJournalLineMessageGLAccount.md) |  | [optional] |
| **amount** | **Float** | Amount of the line item. | [optional] |
| **is_cash_posting** | **Boolean** | Indicates whether the line item is a cash posting. | [optional] |
| **reference_number** | **String** | Reference number for the line item. | [optional] |
| **memo** | **String** | Memo for the line item. | [optional] |
| **property_id** | **Integer** | PropertyId associated with the line item. | [optional] |
| **unit_id** | **Integer** | UnitId associated with the line item. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::JournalLineMessage.new(
  gl_account: null,
  amount: null,
  is_cash_posting: null,
  reference_number: null,
  memo: null,
  property_id: null,
  unit_id: null
)
```

