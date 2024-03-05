# Buildium::LeaseTenantMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Tenant unique identifier. | [optional] |
| **status** | **String** | Indicates the tenant&#39;s current status in relation to the lease. | [optional] |
| **move_in_date** | **Date** | Indicates the tenant&#39;s move-in date. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseTenantMessage.new(
  id: null,
  status: null,
  move_in_date: null
)
```

