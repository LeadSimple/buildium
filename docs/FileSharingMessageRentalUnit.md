# Buildium::FileSharingMessageRentalUnit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owners** | **Boolean** | Indicates whether file is shared with rental owners of the property. | [optional] |
| **tenants** | **Boolean** | Indicates whether file is shared with tenants of the property. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::FileSharingMessageRentalUnit.new(
  rental_owners: null,
  tenants: null
)
```

