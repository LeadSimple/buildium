# Buildium::BankAccountCheckLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the line item. | [optional] |
| **gl_account_id** | **Integer** | General ledger account unique identifier the line item is related to. | [optional] |
| **accounting_entity** | [**AccountingEntityMessage**](AccountingEntityMessage.md) |  | [optional] |
| **memo** | **String** | Memo for the line item. | [optional] |
| **reference_number** | **String** | Reference number for the line item. | [optional] |
| **amount** | **Float** | Amount of the line item. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountCheckLineMessage.new(
  id: null,
  gl_account_id: null,
  accounting_entity: null,
  memo: null,
  reference_number: null,
  amount: null
)
```

