# Buildium::LeaseTenantMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Tenant unique identifier. | [optional] |
| **status** | **String** | Indicates the tenant&#39;s current status in relation to the lease. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseTenantMessage.new(
  id: null,
  status: null
)
```

