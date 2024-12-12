# Buildium::CreateWorkOrderRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_details** | **String** | Description of the work order. The value cannot exceed 65,535 characters. | [optional] |
| **invoice_number** | **String** | The invoice or reference number that the vendor assigned to the work order. The value cannot exceed 50 characters. | [optional] |
| **chargeable_to** | **String** | A description of the entity that will be charged for the work. The value cannot exceed 100 characters. | [optional] |
| **entry_allowed** | **String** | Indicates whether entry has been allowed to the unit. |  |
| **entry_notes** | **String** | Notes specific to entering the unit. The value cannot exceed 65,535 characters. | [optional] |
| **vendor_id** | **Integer** | Vendor unique identifier. |  |
| **vendor_notes** | **String** | Notes specific to the vendor. The value cannot exceed 65,535 characters. | [optional] |
| **entry_contact_id** | **Integer** | Contact user unique identifier. The user type must be one of the following: &#x60;RentalTenant&#x60;, &#x60;AssociationOwner&#x60;, &#x60;Staff&#x60;, &#x60;RentalOwner&#x60;. | [optional] |
| **entry_contact_ids** | **Array&lt;Integer&gt;** | Collection of entry contact user unique identifiers for the work order. The user type of each user in the collection must be one of the following: &#x60;RentalTenant&#x60;, &#x60;AssociationOwner&#x60;, &#x60;Staff&#x60;, &#x60;RentalOwner&#x60;. | [optional] |
| **line_items** | [**Array&lt;WorkOrderLineItemSaveMessage&gt;**](WorkOrderLineItemSaveMessage.md) | Work order line items. | [optional] |
| **task_id** | **Integer** | Task unique identifier to associate with the work order. | [optional] |
| **task** | [**WorkOrderPostMessageTask**](WorkOrderPostMessageTask.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateWorkOrderRequest.new(
  work_details: null,
  invoice_number: null,
  chargeable_to: null,
  entry_allowed: null,
  entry_notes: null,
  vendor_id: null,
  vendor_notes: null,
  entry_contact_id: null,
  entry_contact_ids: null,
  line_items: null,
  task_id: null,
  task: null
)
```

