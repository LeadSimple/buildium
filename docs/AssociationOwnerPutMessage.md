# Buildium::AssociationOwnerPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the owner. The value cannot exceed 127 characters. |  |
| **last_name** | **String** | Last name of the owner. The value cannot exceed 127 characters. |  |
| **primary_address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  |  |
| **alternate_address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  | [optional] |
| **email** | **String** | Email of the owner. | [optional] |
| **alternate_email** | **String** | Alternate email of the owner. | [optional] |
| **phone_numbers** | [**PhoneNumbersMessage**](PhoneNumbersMessage.md) |  | [optional] |
| **emergency_contact** | [**SaveEmergencyContactMessage**](SaveEmergencyContactMessage.md) |  | [optional] |
| **comment** | **String** | Comments about the owner. The value cannot exceed 65,535 characters. | [optional] |
| **mailing_preference** | **String** | Mailing preferences for the owner. If an alternate address exists and this value is not provided then the primary address will be set as the preferred address. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationOwnerPutMessage.new(
  first_name: null,
  last_name: null,
  primary_address: null,
  alternate_address: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  emergency_contact: null,
  comment: null,
  mailing_preference: null
)
```

