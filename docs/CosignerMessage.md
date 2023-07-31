# Buildium::CosignerMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Cosigner unique identifier. | [optional] |
| **first_name** | **String** | First name of the cosigner. | [optional] |
| **last_name** | **String** | Last name of the cosigner. | [optional] |
| **email** | **String** | Email for the cosigner. | [optional] |
| **alternate_email** | **String** | Alternate Email for the cosigner. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | List of phone numbers for the cosigner. | [optional] |
| **created_date_time** | **Time** | Created date of this cosigner record. | [optional] |
| **address** | [**AddressMessage**](AddressMessage.md) |  | [optional] |
| **alternate_address** | [**AddressMessage**](AddressMessage.md) |  | [optional] |
| **mailing_preference** | **String** | Mailing preference for the cosigner. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CosignerMessage.new(
  id: null,
  first_name: null,
  last_name: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  created_date_time: null,
  address: null,
  alternate_address: null,
  mailing_preference: null
)
```

