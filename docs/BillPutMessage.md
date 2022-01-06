# Buildium::BillPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | The date that an invoice was received. This date typically corresponds with a Bill Received Date, Invoice Date, or Invoice Received Date from an invoice. The date must be formatted as YYYY-MM-DD. |  |
| **due_date** | **Date** | The date that payment for a bill is due to the vendor. The date must be formatted as YYYY-MM-DD. |  |
| **memo** | **String** | A description of what the invoice was for. The value cannot exceed 245 characters. | [optional] |
| **vendor_id** | **Integer** | The unique identifier of the vendor or supplier who sent you an invoice. |  |
| **reference_number** | **String** | The reference or invoice number that the vendor assigned to the invoice. The value cannot exceed 40 characters. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::BillPutMessage.new(
  date: null,
  due_date: null,
  memo: null,
  vendor_id: null,
  reference_number: null
)
```

