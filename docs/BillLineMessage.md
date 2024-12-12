# Buildium::BillLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The bill line item unique identifier. | [optional] |
| **accounting_entity** | [**BillLineMessageAccountingEntity**](BillLineMessageAccountingEntity.md) |  | [optional] |
| **gl_account** | [**BillLineMessageGLAccount**](BillLineMessageGLAccount.md) |  | [optional] |
| **amount** | **Float** | Line item amount. | [optional] |
| **markup** | [**BillLineMessageMarkup**](BillLineMessageMarkup.md) |  | [optional] |
| **memo** | **String** | Description of the line item. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BillLineMessage.new(
  id: null,
  accounting_entity: null,
  gl_account: null,
  amount: null,
  markup: null,
  memo: null
)
```

