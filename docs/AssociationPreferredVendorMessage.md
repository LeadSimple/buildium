# Buildium::AssociationPreferredVendorMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Preferred vendor unique identifier. | [optional] |
| **first_name** | **String** | First name of the preferred vendor. | [optional] |
| **last_name** | **String** | Last name of the preferred vendor. | [optional] |
| **company_name** | **String** | Company name of the preferred vendor. | [optional] |
| **primary_email** | **String** | Primary email for the preferred vendor. | [optional] |
| **alternate_email** | **String** | Alternate email for the preferred vendor. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | List of phone numbers of the preferred vendor. | [optional] |
| **website** | **String** | Website of the preferred vendor. | [optional] |
| **is_company** | **Boolean** | Indicates whether the preferred vendor is a company. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationPreferredVendorMessage.new(
  id: null,
  first_name: null,
  last_name: null,
  company_name: null,
  primary_email: null,
  alternate_email: null,
  phone_numbers: null,
  website: null,
  is_company: null
)
```

