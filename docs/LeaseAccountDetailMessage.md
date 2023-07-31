# Buildium::LeaseAccountDetailMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **security_deposit** | **Float** | Security deposit for the lease. Null if no security deposit exists. | [optional] |
| **rent** | **Float** | Rent for the lease. Null if no rent exists. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseAccountDetailMessage.new(
  security_deposit: null,
  rent: null
)
```

