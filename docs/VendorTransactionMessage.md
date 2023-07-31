# Buildium::VendorTransactionMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Transaction unique identifier. | [optional] |
| **date** | **Date** | Date of the transaction. | [optional] |
| **total_amount** | **Float** | Total amount of the transaction. | [optional] |
| **transaction_type** | **String** | Type of transaction. | [optional] |
| **reference_number** | **String** | Reference number for the transaction. | [optional] |
| **memo** | **String** | Memo for the transaction. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VendorTransactionMessage.new(
  id: null,
  date: null,
  total_amount: null,
  transaction_type: null,
  reference_number: null,
  memo: null
)
```

