# Buildium::AssociationOwnerToExistingOwnershipAccountPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** | Ownership account Id for the owner. |  |
| **send_welcome_email** | **Boolean** | Send a welcome email to any homeowner at the association |  |
| **primary_address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  |  |
| **alternate_address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  | [optional] |
| **first_name** | **String** | First name of the owner. The value can not exceed 127 characters. |  |
| **last_name** | **String** | Last name of the owner. The value can not exceed 127 characters. |  |
| **board_member_term** | [**AssociationOwnerBoardTermPostMessage**](AssociationOwnerBoardTermPostMessage.md) |  | [optional] |
| **is_owner_occupied** | **Boolean** | Indicates if the association owner occupies a unit(s) within the association. |  |
| **email** | **String** | Email of owner. | [optional] |
| **alternate_email** | **String** | Alternate email of owner. | [optional] |
| **phone_numbers** | [**PhoneNumbersMessage**](PhoneNumbersMessage.md) |  | [optional] |
| **date_of_birth** | **Date** | Date Of Birth for the owner. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **emergency_contact** | [**SaveEmergencyContactMessage**](SaveEmergencyContactMessage.md) |  | [optional] |
| **comment** | **String** | Comments about the owner. The value can not exceed 65,535 characters. | [optional] |
| **mailing_preference** | **String** | Mailing preferences for the owner. If an alternate address exists and this value is not provided then the primary address will be set as the preferred address. | [optional] |
| **tax_id** | **String** | Taxpayer identification number of the owner. Examples of United States identification numbers are Social Security number or a Employer Identification Number. Valid formats are: &#x60;12-1234567&#x60;, &#x60;123-12-1234&#x60;, &#x60;123456789&#x60;. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationOwnerToExistingOwnershipAccountPostMessage.new(
  ownership_account_id: null,
  send_welcome_email: null,
  primary_address: null,
  alternate_address: null,
  first_name: null,
  last_name: null,
  board_member_term: null,
  is_owner_occupied: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  date_of_birth: null,
  emergency_contact: null,
  comment: null,
  mailing_preference: null,
  tax_id: null
)
```

