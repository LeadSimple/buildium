# Buildium::AssociationTenantMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier. | [optional] |
| **first_name** | **String** | First name. | [optional] |
| **last_name** | **String** | Last name. | [optional] |
| **email** | **String** | Email. | [optional] |
| **alternate_email** | **String** | Alternate email. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | List of phone numbers of the association user. | [optional] |
| **primary_address** | [**AssociationOwnerMessagePrimaryAddress**](AssociationOwnerMessagePrimaryAddress.md) |  | [optional] |
| **alternate_address** | [**AssociationOwnerMessageAlternateAddress**](AssociationOwnerMessageAlternateAddress.md) |  | [optional] |
| **comment** | **String** | General comments. | [optional] |
| **emergency_contact** | [**AssociationOwnerMessageEmergencyContact**](AssociationOwnerMessageEmergencyContact.md) |  | [optional] |
| **ownership_accounts** | [**Array&lt;AssociationOwnershipAccountMessage&gt;**](AssociationOwnershipAccountMessage.md) | List of associated ownership accounts. | [optional] |
| **move_in_date** | **Date** | Move in date for the tenant. | [optional] |
| **move_out_date** | **Date** | Move out date for the tenant. | [optional] |
| **created_date_time** | **Time** | Date and time the tenant was created. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationTenantMessage.new(
  id: null,
  first_name: null,
  last_name: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  primary_address: null,
  alternate_address: null,
  comment: null,
  emergency_contact: null,
  ownership_accounts: null,
  move_in_date: null,
  move_out_date: null,
  created_date_time: null
)
```

