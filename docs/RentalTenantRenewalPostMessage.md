# Buildium::RentalTenantRenewalPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the tenant. The value cannot exceed 127 characters. |  |
| **last_name** | **String** | Last name of the tenant. The value cannot exceed 127 characters. |  |
| **email** | **String** | Email of the tenant. | [optional] |
| **alternate_email** | **String** | Alternate email of the tenant. | [optional] |
| **phone_numbers** | [**PhoneNumbersMessage**](PhoneNumbersMessage.md) |  | [optional] |
| **date_of_birth** | **Date** | Date of birth for the tenant. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **comment** | **String** | Comments about the tenant. The value cannot exceed 65,535 characters. | [optional] |
| **tax_id** | **String** | Tax identifier of the tenant. Valid formats are: &#x60;12-1234567&#x60;, &#x60;123-12-1234&#x60;, &#x60;123456789&#x60; | [optional] |
| **emergency_contact** | [**SaveEmergencyContactMessage**](SaveEmergencyContactMessage.md) |  | [optional] |
| **address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  |  |
| **alternate_address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  | [optional] |
| **mailing_preference** | **String** | Mailing preference for the tenant. If an alternate address exists and this value is not provided then the primary address will be set as the preferred address. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalTenantRenewalPostMessage.new(
  first_name: null,
  last_name: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  date_of_birth: null,
  comment: null,
  tax_id: null,
  emergency_contact: null,
  address: null,
  alternate_address: null,
  mailing_preference: null
)
```

