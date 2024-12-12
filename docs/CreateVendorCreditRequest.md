# Buildium::CreateVendorCreditRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_date** | **Date** | Date the vendor credit was made. The date must be formatted as YYYY-MM-DD. |  |
| **reference_number** | **String** | The invoice or reference number that the vendor assigned to the credit. The value cannot exceed 40 characters. | [optional] |
| **memo** | **String** | Memo associated with the vendor credit, if applicable. The value cannot exceed 40 characters. | [optional] |
| **lines** | [**Array&lt;VendorCreditLineItemPostMessage&gt;**](VendorCreditLineItemPostMessage.md) | A collection of line items associated with the vendor credit. At least one line item is required and cannot exceed 100 line items. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateVendorCreditRequest.new(
  entry_date: null,
  reference_number: null,
  memo: null,
  lines: null
)
```

