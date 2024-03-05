# Buildium::FileSharingPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**FileSharingAccountPutMessage**](FileSharingAccountPutMessage.md) |  | [optional] |
| **rental** | [**FileSharingRentalPutMessage**](FileSharingRentalPutMessage.md) |  | [optional] |
| **rental_unit** | [**FileSharingRentalUnitPutMesage**](FileSharingRentalUnitPutMesage.md) |  | [optional] |
| **lease** | [**FileSharingLeasePutMessage**](FileSharingLeasePutMessage.md) |  | [optional] |
| **tenant** | [**FileSharingTenantPutMessage**](FileSharingTenantPutMessage.md) |  | [optional] |
| **rental_owner** | [**FileSharingRentalOwnerPutMessage**](FileSharingRentalOwnerPutMessage.md) |  | [optional] |
| **association** | [**FileSharingAssociationPutMessage**](FileSharingAssociationPutMessage.md) |  | [optional] |
| **association_unit** | [**FileSharingAssociationUnitPutMessage**](FileSharingAssociationUnitPutMessage.md) |  | [optional] |
| **ownership_account** | [**FileSharingOwnershipAccountPutMessage**](FileSharingOwnershipAccountPutMessage.md) |  | [optional] |
| **association_owner** | [**FileSharingAssociationOwnerPutMessage**](FileSharingAssociationOwnerPutMessage.md) |  | [optional] |
| **vendor** | [**FileSharingVendorPutMessage**](FileSharingVendorPutMessage.md) |  | [optional] |
| **committee** | [**FileSharingCommitteePutMessage**](FileSharingCommitteePutMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::FileSharingPutMessage.new(
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

