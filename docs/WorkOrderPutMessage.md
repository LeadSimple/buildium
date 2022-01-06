# Buildium::WorkOrderPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_details** | **String** | Description of the work order. The value cannot exceed 65,535 characters. | [optional] |
| **invoice_number** | **String** | The invoice or reference number that the vendor assigned to the invoice. The value cannot exceed 50 characters. | [optional] |
| **chargeable_to** | **String** | A description of the entity that will be charged for the work. The value cannot exceed 100 characters. | [optional] |
| **entry_allowed** | **String** | Indicates whether entry has been allowed to the unit. |  |
| **entry_notes** | **String** | Notes specific to entering the unit. The value cannot exceed 65,535 characters. | [optional] |
| **vendor_id** | **Integer** | Vendor unique identifier. |  |
| **vendor_notes** | **String** | Notes specific to the vendor. The value cannot exceed 65,535 characters. | [optional] |
| **entry_contact_id** | **Integer** | Contact user unique identifier. The user type must be one of the following types: &#x60;RentalTenant&#x60;, &#x60;AssociationOwner&#x60;, &#x60;Staff&#x60;, &#x60;RentalOwner&#x60;. | [optional] |
| **line_items** | [**Array&lt;WorkOrderLineItemSaveMessage&gt;**](WorkOrderLineItemSaveMessage.md) | Work order line items. Note that all existing work order line items will be removed and replaced with this list of line items. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::WorkOrderPutMessage.new(
  work_details: null,
  invoice_number: null,
  chargeable_to: null,
  entry_allowed: null,
  entry_notes: null,
  vendor_id: null,
  vendor_notes: null,
  entry_contact_id: null,
  line_items: null
)
```

