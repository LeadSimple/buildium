# Buildium::VendorCreditMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Vendor credit unique identifier. | [optional] |
| **entry_date** | **Date** | Date the vendor credit was made. | [optional] |
| **reference_number** | **String** | The invoice or reference number that the vendor assigned to the credit. | [optional] |
| **memo** | **String** | Memo associated with the vendor credit, if applicable. | [optional] |
| **lines** | [**Array&lt;VendorCreditLineItemMessage&gt;**](VendorCreditLineItemMessage.md) | A collection of line items associated with the vendor credit. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VendorCreditMessage.new(
  id: null,
  entry_date: null,
  reference_number: null,
  memo: null,
  lines: null
)
```

