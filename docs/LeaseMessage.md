# Buildium::LeaseMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Lease unique identifier. | [optional] |
| **property_id** | **Integer** | Rental property unique identifier. | [optional] |
| **unit_id** | **Integer** | Unit unique identifier. | [optional] |
| **unit_number** | **String** | Unit number specified in the lease. | [optional] |
| **lease_from_date** | **Date** | Start date of the lease. | [optional] |
| **lease_to_date** | **Date** | End date of the lease. | [optional] |
| **lease_type** | **String** | Describes the type of lease. | [optional] |
| **lease_status** | **String** | Indicates the status of the lease. | [optional] |
| **is_eviction_pending** | **Boolean** | Indicates whether the lease has an eviction pending. | [optional] |
| **term_type** | **String** | Describes the term type of the lease. | [optional] |
| **renewal_offer_status** | **String** | Describes the status of the renewal offer. Null if no renewal offer exists. | [optional] |
| **current_tenants** | [**Array&lt;TenantMessage&gt;**](TenantMessage.md) | List of the current tenants on the lease. | [optional] |
| **current_number_of_occupants** | **Integer** | Count of current tenants. | [optional] |
| **account_details** | [**LeaseAccountDetailMessage**](LeaseAccountDetailMessage.md) |  | [optional] |
| **cosigners** | [**Array&lt;CosignerMessage&gt;**](CosignerMessage.md) | List of the cosigners on the lease. | [optional] |
| **automatically_move_out_tenants** | **Boolean** | Indicates whether to automatically move out all tenants assigned to the lease and set the lease status to past when the lease ends. | [optional] |
| **created_date_time** | **Time** | Date and time the lease was created. | [optional] |
| **last_updated_date_time** | **Time** | The date and time the lease was last updated. | [optional] |
| **move_out_data** | [**Array&lt;LeaseMoveOutDataMessage&gt;**](LeaseMoveOutDataMessage.md) | Move out data of lease | [optional] |
| **payment_due_day** | **Integer** | Day of the month payment is due. | [optional] |
| **tenants** | [**Array&lt;LeaseTenantMessage&gt;**](LeaseTenantMessage.md) | List of all tenants ever associated with the lease | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseMessage.new(
  id: null,
  property_id: null,
  unit_id: null,
  unit_number: null,
  lease_from_date: null,
  lease_to_date: null,
  lease_type: null,
  lease_status: null,
  is_eviction_pending: null,
  term_type: null,
  renewal_offer_status: null,
  current_tenants: null,
  current_number_of_occupants: null,
  account_details: null,
  cosigners: null,
  automatically_move_out_tenants: null,
  created_date_time: null,
  last_updated_date_time: null,
  move_out_data: null,
  payment_due_day: null,
  tenants: null
)
```

