# Buildium::UpdateAssociationOwnerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the owner. The value cannot exceed 127 characters. |  |
| **last_name** | **String** | Last name of the owner. The value cannot exceed 127 characters. |  |
| **primary_address** | [**AssociationOwnerPostMessagePrimaryAddress**](AssociationOwnerPostMessagePrimaryAddress.md) |  |  |
| **alternate_address** | [**AssociationOwnerPostMessageAlternateAddress**](AssociationOwnerPostMessageAlternateAddress.md) |  | [optional] |
| **email** | **String** | Email of the owner. | [optional] |
| **alternate_email** | **String** | Alternate email of the owner. | [optional] |
| **phone_numbers** | [**AssociationOwnerPutMessagePhoneNumbers**](AssociationOwnerPutMessagePhoneNumbers.md) |  | [optional] |
| **emergency_contact** | [**AssociationOwnerPostMessageEmergencyContact**](AssociationOwnerPostMessageEmergencyContact.md) |  | [optional] |
| **comment** | **String** | Comments about the owner. The value cannot exceed 65,535 characters. | [optional] |
| **mailing_preference** | **String** | Mailing preferences for the owner. If an alternate address exists and this value is not provided then the primary address will be set as the preferred address. | [optional] |
| **tax_id** | **String** | Taxpayer identification number of the owner. Examples of United States identification numbers are Social Security number or a Employer Identification Number. Valid formats are: &#x60;12-1234567&#x60;, &#x60;123-12-1234&#x60;, &#x60;123456789&#x60;. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateAssociationOwnerRequest.new(
  first_name: null,
  last_name: null,
  primary_address: null,
  alternate_address: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  emergency_contact: null,
  comment: null,
  mailing_preference: null,
  tax_id: null
)
```

