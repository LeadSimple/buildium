# Buildium::TenantMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Tenant unique identifier. | [optional] |
| **first_name** | **String** | First name of the tenant. | [optional] |
| **last_name** | **String** | Last name of the tenant. | [optional] |
| **email** | **String** | Email for the tenant. | [optional] |
| **alternate_email** | **String** | Alternate email of the tenant. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | List of phone numbers for the tenant. | [optional] |
| **created_date_time** | **Time** | Created date of this tenant record. | [optional] |
| **emergency_contact** | [**TenantMessageEmergencyContact**](TenantMessageEmergencyContact.md) |  | [optional] |
| **date_of_birth** | **Date** | Tenant date of birth. | [optional] |
| **sms_opt_in_status** | **String** | Indicates the tenants SMS opt in status. Null if no status exists for the tenant. | [optional] |
| **address** | [**TenantMessageAddress**](TenantMessageAddress.md) |  | [optional] |
| **alternate_address** | [**TenantMessageAlternateAddress**](TenantMessageAlternateAddress.md) |  | [optional] |
| **mailing_preference** | **String** | Mailing preference for the tenant. | [optional] |
| **leases** | [**Array&lt;LeaseMessage&gt;**](LeaseMessage.md) | List of leases, regardless of status, that the tenant is associated with. | [optional] |
| **comment** | **String** | Comments about the tenant. | [optional] |
| **tax_id** | **String** | TaxId of the tenant. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::TenantMessage.new(
  id: null,
  first_name: null,
  last_name: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  created_date_time: null,
  emergency_contact: null,
  date_of_birth: null,
  sms_opt_in_status: null,
  address: null,
  alternate_address: null,
  mailing_preference: null,
  leases: null,
  comment: null,
  tax_id: null
)
```

