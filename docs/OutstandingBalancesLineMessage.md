# Buildium::OutstandingBalancesLineMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | General ledger account unique identifier. | [optional] |
| **total_balance** | **Float** | Total balance of the account on the line item. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::OutstandingBalancesLineMessage.new(
  gl_account_id: null,
  total_balance: null
)
```

