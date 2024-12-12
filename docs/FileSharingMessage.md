# Buildium::FileSharingMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**FileSharingMessageAccount**](FileSharingMessageAccount.md) |  | [optional] |
| **rental** | [**FileSharingMessageRental**](FileSharingMessageRental.md) |  | [optional] |
| **rental_unit** | [**FileSharingMessageRentalUnit**](FileSharingMessageRentalUnit.md) |  | [optional] |
| **lease** | [**FileSharingMessageLease**](FileSharingMessageLease.md) |  | [optional] |
| **tenant** | [**FileSharingMessageTenant**](FileSharingMessageTenant.md) |  | [optional] |
| **rental_owner** | [**FileSharingMessageRentalOwner**](FileSharingMessageRentalOwner.md) |  | [optional] |
| **association** | [**FileSharingMessageAssociation**](FileSharingMessageAssociation.md) |  | [optional] |
| **association_unit** | [**FileSharingMessageAssociationUnit**](FileSharingMessageAssociationUnit.md) |  | [optional] |
| **ownership_account** | [**FileSharingMessageOwnershipAccount**](FileSharingMessageOwnershipAccount.md) |  | [optional] |
| **association_owner** | [**FileSharingMessageAssociationOwner**](FileSharingMessageAssociationOwner.md) |  | [optional] |
| **vendor** | [**FileSharingMessageVendor**](FileSharingMessageVendor.md) |  | [optional] |
| **committee** | [**FileSharingMessageCommittee**](FileSharingMessageCommittee.md) |  | [optional] |

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

