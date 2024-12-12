# Buildium::UpdateLeaseRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_type** | **String** | Describes the type of lease. |  |
| **unit_id** | **Integer** | Unit unique identifier associated with the lease. |  |
| **lease_from_date** | **Date** | Start date of the lease. |  |
| **lease_to_date** | **Date** | End date of the lease. | [optional] |
| **is_eviction_pending** | **Boolean** | Indicates whether the lease has an eviction pending. |  |
| **automatically_move_out_tenants** | **Boolean** | Indicates whether to automatically move out all tenants assigned to the lease and set the lease status to past when the lease ends. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateLeaseRequest.new(
  lease_type: null,
  unit_id: null,
  lease_from_date: null,
  lease_to_date: null,
  is_eviction_pending: null,
  automatically_move_out_tenants: null
)
```

