# Buildium::VendorTransactionSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_date_from** | **Date** | Filters results to any vendor transaction whose entry date that is greater than or equal to the specified value. The maximum date range is 365 days. |  |
| **transaction_date_to** | **Date** | Filters results to any vendor transaction whose entry date is less than or equal to the specified value. The maximum date range is 365 days. |  |
| **transaction_types** | **Array&lt;String&gt;** | Filters results to any vendor transaction whose vendor transaction type matches the specified status. If no type is specified, vendor transactions with any type will be returned. | [optional] |
| **reference_number** | **String** | Filters results to vendor transaction whose reference number contains the specified value. The reference number cannot exceed 40 characters. | [optional] |
| **memo** | **String** | Filters results to vendor transaction whose memo contains the specified value. The memo cannot exceed 40 characters. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VendorTransactionSearchMessage.new(
  transaction_date_from: null,
  transaction_date_to: null,
  transaction_types: null,
  reference_number: null,
  memo: null
)
```

