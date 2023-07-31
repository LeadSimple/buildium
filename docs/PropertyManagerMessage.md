# Buildium::PropertyManagerMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Property manager unique identifier. | [optional] |
| **first_name** | **String** | First name of the property manager. | [optional] |
| **last_name** | **String** | Last name of the property manager. | [optional] |
| **company_name** | **String** | Company name of the rental owner. Empty if &#x60;IsCompany&#x60; is &#x60;false&#x60;. | [optional] |
| **is_company** | **Boolean** | Denotes if the property manager is a company. | [optional] |
| **profile_photo_url** | **String** | Profile photo URL for the property manager. | [optional] |
| **email** | **String** | Email of the property manager. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | List of phone numbers associated with the property manager. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::PropertyManagerMessage.new(
  id: null,
  first_name: null,
  last_name: null,
  company_name: null,
  is_company: null,
  profile_photo_url: null,
  email: null,
  phone_numbers: null
)
```

