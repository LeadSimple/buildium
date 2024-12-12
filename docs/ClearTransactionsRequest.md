# Buildium::ClearTransactionsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_ids** | **Array&lt;Integer&gt;** | The transaction identifiers to clear for the reconciliation |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ClearTransactionsRequest.new(
  transaction_ids: null
)
```

