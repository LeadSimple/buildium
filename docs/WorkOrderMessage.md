# Buildium::WorkOrderMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Work order unique identifier. | [optional] |
| **task** | [**WorkOrderMessageTask**](WorkOrderMessageTask.md) |  | [optional] |
| **title** | **String** | Work order title. | [optional] |
| **due_date** | **Date** | Work order due date. | [optional] |
| **priority** | **String** | Work order  priority. | [optional] |
| **status** | **String** | Work order status. | [optional] |
| **work_details** | **String** | Description of the work order. | [optional] |
| **invoice_number** | **String** | The invoice or reference number that the vendor assigned to the invoice. | [optional] |
| **chargeable_to** | **String** | A description of the entity that will be charged for the work. | [optional] |
| **entry_allowed** | **String** | Indicates whether entry has been allowed to the unit. | [optional] |
| **entry_notes** | **String** | Notes specific to entering the unit. | [optional] |
| **vendor_id** | **Integer** | Vendor unique identifier. | [optional] |
| **vendor_notes** | **String** | Notes specific to the vendor. | [optional] |
| **entry_contact** | [**WorkOrderMessageEntryContact**](WorkOrderMessageEntryContact.md) |  | [optional] |
| **entry_contacts** | [**Array&lt;WorkOrderEntryContactMessage&gt;**](WorkOrderEntryContactMessage.md) | A collection of all entry contacts for the work order | [optional] |
| **bill_transaction_id** | **Integer** | Unique identifier for the bill related to this work order. This field will be &#x60;null&#x60; if no bill is related to this work order.  If the BillTransactionIds field is available, please refer to that field instead of this one going forward. | [optional] |
| **amount** | **Float** | The total amount of the work order. | [optional] |
| **line_items** | [**Array&lt;WorkOrderLineItemMessage&gt;**](WorkOrderLineItemMessage.md) | A collection of line items associated with the work order. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::WorkOrderMessage.new(
  id: null,
  task: null,
  title: null,
  due_date: null,
  priority: null,
  status: null,
  work_details: null,
  invoice_number: null,
  chargeable_to: null,
  entry_allowed: null,
  entry_notes: null,
  vendor_id: null,
  vendor_notes: null,
  entry_contact: null,
  entry_contacts: null,
  bill_transaction_id: null,
  amount: null,
  line_items: null
)
```

