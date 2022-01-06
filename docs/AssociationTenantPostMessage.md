# Buildium::AssociationTenantPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of tenant. The value cannot exceed 127 characters. |  |
| **last_name** | **String** | Last name of tenant. The value cannot exceed 127 characters. |  |
| **email** | **String** | Email of tenant. | [optional] |
| **alternate_email** | **String** | Alternate email of tenant. | [optional] |
| **phone_numbers** | [**PhoneNumbersMessage**](PhoneNumbersMessage.md) |  | [optional] |
| **date_of_birth** | **Date** | Date of birth for the tenant. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **comment** | **String** | Comments about the tenant. The value cannot exceed 65,535 characters. | [optional] |
| **emergency_contact** | [**SaveEmergencyContactMessage**](SaveEmergencyContactMessage.md) |  | [optional] |
| **primary_address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  |  |
| **alternate_address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  | [optional] |
| **move_in_date** | **Date** | Move in date for the tenant. This date is not editable and can only be set when creating the tenant. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **move_out_date** | **Date** | Move out date for the tenant. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **ownership_account_id** | **Integer** | Ownership account id for the tenant. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationTenantPostMessage.new(
  first_name: null,
  last_name: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  date_of_birth: null,
  comment: null,
  emergency_contact: null,
  primary_address: null,
  alternate_address: null,
  move_in_date: null,
  move_out_date: null,
  ownership_account_id: null
)
```

