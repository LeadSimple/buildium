# Buildium::FileSharingMessageLease

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenants** | **Boolean** | Indicates whether file is shared with tenants on the lease. | [optional] |
| **rental_owners** | **Boolean** | Indicates whether file is shared with rental owners of the property. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::FileSharingMessageLease.new(
  tenants: null,
  rental_owners: null
)
```

