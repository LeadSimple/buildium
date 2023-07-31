# Buildium::BillPaymentLinePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_line_id** | **Integer** | The unique identifier of the bill line item toward which the payment is being made. |  |
| **amount** | **Float** | The amount that is being paid toward the bill line item. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BillPaymentLinePostMessage.new(
  bill_line_id: null,
  amount: null
)
```

