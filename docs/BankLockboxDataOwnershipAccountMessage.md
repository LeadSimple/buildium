# Buildium::BankLockboxDataOwnershipAccountMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Association ownership account unique identifier. | [optional] |
| **unit_number** | **String** | Unit number of the unit for this ownership account. | [optional] |
| **unit_address** | [**AddressMessage**](AddressMessage.md) |  | [optional] |
| **association_owners** | [**Array&lt;BankLockboxDataAssociationOwnerMessage&gt;**](BankLockboxDataAssociationOwnerMessage.md) | Association owners for this ownership account. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankLockboxDataOwnershipAccountMessage.new(
  id: null,
  unit_number: null,
  unit_address: null,
  association_owners: null
)
```

