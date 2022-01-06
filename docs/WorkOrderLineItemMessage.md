# Buildium::WorkOrderLineItemMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | General ledger account unique identifier. | [optional] |
| **quantity** | **Float** | Line item quantity. | [optional] |
| **memo** | **String** | Line item memo. | [optional] |
| **unit_price** | **Float** | Line item unit price. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::WorkOrderLineItemMessage.new(
  gl_account_id: null,
  quantity: null,
  memo: null,
  unit_price: null
)
```

