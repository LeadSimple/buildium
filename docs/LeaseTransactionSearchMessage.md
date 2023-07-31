# Buildium::LeaseTransactionSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_date_from** | **Date** | Filters results to any lease transaction whose start date is greater than or equal to the specified value. | [optional] |
| **transaction_date_to** | **Date** | Filters results to any lease transaction whose end date is less than or equal to the specified value. | [optional] |
| **transaction_types** | **Array&lt;String&gt;** | Filters results to any lease transaction whose lease transaction type matches the specified status. If no type is specified, lease transactions with any type will be returned. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseTransactionSearchMessage.new(
  transaction_date_from: null,
  transaction_date_to: null,
  transaction_types: null
)
```

