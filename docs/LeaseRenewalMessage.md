# Buildium::LeaseRenewalMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Lease renewal unique identifier. | [optional] |
| **lease_status** | **String** | Indicates the status of the lease. | [optional] |
| **lease_from_date** | **Date** | Start date of the lease. | [optional] |
| **lease_to_date** | **Date** | End date of the lease. | [optional] |
| **lease_type** | **String** | Describes the type of lease. | [optional] |
| **rent** | **Float** | Rent for the lease. | [optional] |
| **rent_id** | **Integer** | The unique identifier of the scheduled Rent entity. If the renewal is not associated with a Rent entity then the value will be &#x60;NULL&#x60;. | [optional] |
| **tenant_ids** | **Array&lt;Integer&gt;** | Unique identifiers of tenants on the lease. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseRenewalMessage.new(
  id: null,
  lease_status: null,
  lease_from_date: null,
  lease_to_date: null,
  lease_type: null,
  rent: null,
  rent_id: null,
  tenant_ids: null
)
```

