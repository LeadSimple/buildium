# Buildium::AssociationOwnerMessage

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
| **mailing_preference** | **String** | Indicates the association owner&#39;s mailing preference. | [optional] |
| **vehicles** | [**Array&lt;VehicleMessage&gt;**](VehicleMessage.md) | List of vehicles associated with the association owner. | [optional] |
| **occupies_unit** | **Boolean** | Indicates if the association owner occupies a unit(s) within the association. | [optional] |
| **board_member_terms** | [**Array&lt;AssociationOwnerBoardTermMessage&gt;**](AssociationOwnerBoardTermMessage.md) | List of Board Member Terms for the given Association Owner(s) | [optional] |
| **created_date_time** | **Time** | Date and time the association owner was created. | [optional] |
| **tax_id** | **String** | Taxpayer identification number. Examples of United States identification numbers are Social Security number or a Employer Identification Number. | [optional] |
| **delinquency_status** | **String** | Indicates the delinquency status of the association owner. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationOwnerMessage.new(
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
  mailing_preference: null,
  vehicles: null,
  occupies_unit: null,
  board_member_terms: null,
  created_date_time: null,
  tax_id: null,
  delinquency_status: null
)
```

