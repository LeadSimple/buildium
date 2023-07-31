# Buildium::RecurringTransactionLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | The general ledger account unique identifier the recurring transaction is related to. | [optional] |
| **amount** | **Float** | Amount of the line item. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RecurringTransactionLineMessage.new(
  gl_account_id: null,
  amount: null
)
```

