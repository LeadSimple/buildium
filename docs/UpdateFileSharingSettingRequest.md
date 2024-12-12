# Buildium::UpdateFileSharingSettingRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**FileSharingPutMessageAccount**](FileSharingPutMessageAccount.md) |  | [optional] |
| **rental** | [**FileSharingPutMessageRental**](FileSharingPutMessageRental.md) |  | [optional] |
| **rental_unit** | [**FileSharingPutMessageRentalUnit**](FileSharingPutMessageRentalUnit.md) |  | [optional] |
| **lease** | [**FileSharingPutMessageLease**](FileSharingPutMessageLease.md) |  | [optional] |
| **tenant** | [**FileSharingPutMessageTenant**](FileSharingPutMessageTenant.md) |  | [optional] |
| **rental_owner** | [**FileSharingPutMessageRentalOwner**](FileSharingPutMessageRentalOwner.md) |  | [optional] |
| **association** | [**FileSharingPutMessageAssociation**](FileSharingPutMessageAssociation.md) |  | [optional] |
| **association_unit** | [**FileSharingPutMessageAssociationUnit**](FileSharingPutMessageAssociationUnit.md) |  | [optional] |
| **ownership_account** | [**FileSharingPutMessageOwnershipAccount**](FileSharingPutMessageOwnershipAccount.md) |  | [optional] |
| **association_owner** | [**FileSharingPutMessageAssociationOwner**](FileSharingPutMessageAssociationOwner.md) |  | [optional] |
| **vendor** | [**FileSharingPutMessageVendor**](FileSharingPutMessageVendor.md) |  | [optional] |
| **committee** | [**FileSharingPutMessageCommittee**](FileSharingPutMessageCommittee.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateFileSharingSettingRequest.new(
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

