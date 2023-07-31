# Buildium::RentalOwnerPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the rental owner. Required if &#x60;IsCompany&#x60; is &#x60;false&#x60;. The value cannot exceed 127 characters. | [optional] |
| **last_name** | **String** | Last name of the rental owner. Required if &#x60;IsCompany&#x60; is &#x60;false&#x60;. The value cannot exceed 127 characters. | [optional] |
| **is_company** | **Boolean** | Indicates whether the rental owner should be considered a company or person. |  |
| **company_name** | **String** | Company name of the rental owner. Required if &#x60;IsCompany&#x60; is &#x60;true&#x60;. The value cannot exceed 127 characters. | [optional] |
| **date_of_birth** | **Date** | Date of birth of the rental owner. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **management_agreement_start_date** | **Date** | Start date of the management agreement with the rental owner. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **management_agreement_end_date** | **Date** | End date of the management agreement with the rental owner. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **email** | **String** | Email of the rental owner. | [optional] |
| **alternate_email** | **String** | Alternate email of the rental owner. | [optional] |
| **phone_numbers** | [**PhoneNumbersMessage**](PhoneNumbersMessage.md) |  | [optional] |
| **address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  |  |
| **comment** | **String** | Comments about the rental owner. The comments cannot exceed 65,535 characters. | [optional] |
| **property_ids** | **Array&lt;Integer&gt;** | A list of rental property ID&#39;s to associate with this rental owner. At least one property ID must be provided. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalOwnerPutMessage.new(
  first_name: null,
  last_name: null,
  is_company: null,
  company_name: null,
  date_of_birth: null,
  management_agreement_start_date: null,
  management_agreement_end_date: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  address: null,
  comment: null,
  property_ids: null
)
```

