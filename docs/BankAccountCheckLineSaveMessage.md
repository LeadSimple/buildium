# Buildium::BankAccountCheckLineSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | The general ledger account identifier under which the line item amount will be recorded. |  |
| **accounting_entity** | [**BankAccountCheckLineSaveMessageAccountingEntity**](BankAccountCheckLineSaveMessageAccountingEntity.md) |  |  |
| **memo** | **String** | Memo for the line item. | [optional] |
| **reference_number** | **String** | Reference number for the line item. | [optional] |
| **amount** | **Float** | Amount of the line item. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountCheckLineSaveMessage.new(
  gl_account_id: null,
  accounting_entity: null,
  memo: null,
  reference_number: null,
  amount: null
)
```

