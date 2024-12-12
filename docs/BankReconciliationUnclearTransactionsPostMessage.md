# Buildium::BankReconciliationUnclearTransactionsPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_ids** | **Array&lt;Integer&gt;** | The transaction identifiers to un-clear for the reconciliation |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankReconciliationUnclearTransactionsPostMessage.new(
  transaction_ids: null
)
```

