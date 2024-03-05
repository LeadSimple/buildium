# Buildium::FileSharingMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**FileSharingAccountMessage**](FileSharingAccountMessage.md) |  | [optional] |
| **rental** | [**FileSharingRentalMessage**](FileSharingRentalMessage.md) |  | [optional] |
| **rental_unit** | [**FileSharingRentalUnitMesage**](FileSharingRentalUnitMesage.md) |  | [optional] |
| **lease** | [**FileSharingLeaseMessage**](FileSharingLeaseMessage.md) |  | [optional] |
| **tenant** | [**FileSharingTenantMessage**](FileSharingTenantMessage.md) |  | [optional] |
| **rental_owner** | [**FileSharingRentalOwnerMessage**](FileSharingRentalOwnerMessage.md) |  | [optional] |
| **association** | [**FileSharingAssociationMessage**](FileSharingAssociationMessage.md) |  | [optional] |
| **association_unit** | [**FileSharingAssociationUnitMessage**](FileSharingAssociationUnitMessage.md) |  | [optional] |
| **ownership_account** | [**FileSharingOwnershipAccountMessage**](FileSharingOwnershipAccountMessage.md) |  | [optional] |
| **association_owner** | [**FileSharingAssociationOwnerMessage**](FileSharingAssociationOwnerMessage.md) |  | [optional] |
| **vendor** | [**FileSharingVendorMessage**](FileSharingVendorMessage.md) |  | [optional] |
| **committee** | [**FileSharingCommitteeMessage**](FileSharingCommitteeMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::FileSharingMessage.new(
  account: null,
  rental: null,
  rental_unit: null,
  lease: null,
  tenant: null,
  rental_owner: null,
  association: null,
  association_unit: null,
  ownership_account: null,
  association_owner: null,
  vendor: null,
  committee: null
)
```

