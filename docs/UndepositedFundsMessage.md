# Buildium::UndepositedFundsMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **general_ledger_transaction** | [**GLTransactionMessageV1**](GLTransactionMessageV1.md) |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::UndepositedFundsMessage.new(
  general_ledger_transaction: null
)
```

