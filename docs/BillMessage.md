# Buildium::BillMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Bill unique identifier. | [optional] |
| **date** | **Date** | Date of the bill. | [optional] |
| **due_date** | **Date** | The date that payment is due to the vendor. | [optional] |
| **paid_date** | **Date** | The date that payment was made to the vendor. | [optional] |
| **memo** | **String** | A description of what the invoice was for. | [optional] |
| **vendor_id** | **Integer** | Unique identifier of the vendor who submitted the bill. | [optional] |
| **work_order_id** | **Integer** | Unique identifier of the work order associated with this bill. | [optional] |
| **reference_number** | **String** | The invoice or reference number that the vendor assigned to the invoice. | [optional] |
| **approval_status** | **String** | The current approval status for the bill. | [optional] |
| **lines** | [**Array&lt;BillLineMessage&gt;**](BillLineMessage.md) | A collection of line items associated with the bill. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::BillMessage.new(
  id: null,
  date: null,
  due_date: null,
  paid_date: null,
  memo: null,
  vendor_id: null,
  work_order_id: null,
  reference_number: null,
  approval_status: null,
  lines: null
)
```

