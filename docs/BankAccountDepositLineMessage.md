# Buildium::BankAccountDepositLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the line item. | [optional] |
| **accounting_entity** | [**BankAccountDepositLineMessageAccountingEntity**](BankAccountDepositLineMessageAccountingEntity.md) |  | [optional] |
| **gl_account_id** | **Integer** | The general ledger account identifier under which the line item amount is recorded. | [optional] |
| **memo** | **String** | Memo for the line item. | [optional] |
| **reference_number** | **String** | Reference number for the line item. | [optional] |
| **amount** | **Float** | Amount of the line item. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountDepositLineMessage.new(
  id: null,
  accounting_entity: null,
  gl_account_id: null,
  memo: null,
  reference_number: null,
  amount: null
)
```

