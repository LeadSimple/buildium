# Buildium::BillPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | The date that the bill was received. This date typically corresponds with a Bill Received Date, Invoice Date, or Invoice Received Date from an invoice. The date must be formatted as YYYY-MM-DD. |  |
| **due_date** | **Date** | The date that payment is due to the vendor. The due date must be after the value in the &#x60;Date&#x60; field. The date must be formatted as YYYY-MM-DD. |  |
| **memo** | **String** | A description of what the invoice was for. The value cannot exceed 245 characters. | [optional] |
| **vendor_id** | **Integer** | The unique identifier of the vendor or supplier who sent you an invoice. |  |
| **work_order_id** | **Integer** | Unique identifier of the work order associated with this bill. | [optional] |
| **reference_number** | **String** | The reference or invoice number that the vendor assigned to the invoice. The value cannot exceed 40 characters. | [optional] |
| **lines** | [**Array&lt;BillLinePostMessage&gt;**](BillLinePostMessage.md) | A collection of line items associated with the bill. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BillPostMessage.new(
  date: null,
  due_date: null,
  memo: null,
  vendor_id: null,
  work_order_id: null,
  reference_number: null,
  lines: null
)
```

