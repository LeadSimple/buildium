# Buildium::WorkOrderMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Work order unique identifier. | [optional] |
| **task** | [**WorkOrderTaskMessage**](WorkOrderTaskMessage.md) |  | [optional] |
| **work_details** | **String** | Description of the work order. | [optional] |
| **invoice_number** | **String** | The invoice or reference number that the vendor assigned to the invoice. | [optional] |
| **chargeable_to** | **String** | A description of the entity that will be charged for the work. | [optional] |
| **entry_allowed** | **String** | Indicates whether entry has been allowed to the unit. | [optional] |
| **entry_notes** | **String** | Notes specific to entering the unit. | [optional] |
| **vendor_id** | **Integer** | Vendor unique identifier. | [optional] |
| **vendor_notes** | **String** | Notes specific to the vendor. | [optional] |
| **entry_contact** | [**WorkOrderEntryContactMessage**](WorkOrderEntryContactMessage.md) |  | [optional] |
| **bill_transaction_id** | **Integer** | Unique identifier for the bill related to this work order. This field will be &#x60;null&#x60; if no bill is related to this work order. | [optional] |
| **amount** | **Float** | The total amount of the work order. | [optional] |
| **line_items** | [**Array&lt;WorkOrderLineItemMessage&gt;**](WorkOrderLineItemMessage.md) | A collection of line items associated with the work order. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::WorkOrderMessage.new(
  id: null,
  task: null,
  work_details: null,
  invoice_number: null,
  chargeable_to: null,
  entry_allowed: null,
  entry_notes: null,
  vendor_id: null,
  vendor_notes: null,
  entry_contact: null,
  bill_transaction_id: null,
  amount: null,
  line_items: null
)
```

