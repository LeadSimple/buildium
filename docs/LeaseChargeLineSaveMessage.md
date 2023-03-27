# Buildium::LeaseChargeLineSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | Line item amount. |  |
| **gl_account_id** | **Integer** | The general ledger account identifier under which the line item amount will be recorded. |  |
| **reference_number** | **String** | Reference number for the line item. The value cannot exceed 30 characters. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseChargeLineSaveMessage.new(
  amount: null,
  gl_account_id: null,
  reference_number: null
)
```

