# Buildium::InternalTransactionStatusMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_pending** | **Boolean** | Indicates whether the transaction is pending processing. | [optional] |
| **result_date** | **Date** | The date the transaction was processed. | [optional] |
| **result_code** | **String** | The result code of the transaction. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::InternalTransactionStatusMessage.new(
  is_pending: null,
  result_date: null,
  result_code: null
)
```

