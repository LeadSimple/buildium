# Buildium::RentalOwnerMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Rental property owner unique identifier. | [optional] |
| **is_company** | **Boolean** | Indicates whether the rental owner is a company. | [optional] |
| **is_active** | **Boolean** | Indicates whether the rental owner is active within the Buildium platform. | [optional] |
| **first_name** | **String** | First name of the rental owner. Empty if &#x60;IsCompany&#x60; is &#x60;true&#x60;. | [optional] |
| **last_name** | **String** | Last name of the rental owner. Empty if &#x60;IsCompany&#x60; is &#x60;true&#x60;. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | Phone numbers associated with the rental owner. | [optional] |
| **email** | **String** | Email of the rental owner. | [optional] |
| **alternate_email** | **String** | Alternate email of the rental owner. | [optional] |
| **comment** | **String** | Comments about the rental owner. | [optional] |
| **address** | [**RentalOwnerMessageAddress**](RentalOwnerMessageAddress.md) |  | [optional] |
| **management_agreement_start_date** | **Date** | Start date of the management agreement with the rental owner. Null if value is not set. | [optional] |
| **management_agreement_end_date** | **Date** | End date of the management agreement with the rental owner. Null if value is not set. | [optional] |
| **company_name** | **String** | Company name of the rental owner. Empty if &#x60;IsCompany&#x60; is &#x60;false&#x60;. | [optional] |
| **property_ids** | **Array&lt;Integer&gt;** | A list of rental property ID&#39;s associated with this rental owner. | [optional] |
| **tax_information** | [**RentalOwnerMessageTaxInformation**](RentalOwnerMessageTaxInformation.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalOwnerMessage.new(
  id: null,
  is_company: null,
  is_active: null,
  first_name: null,
  last_name: null,
  phone_numbers: null,
  email: null,
  alternate_email: null,
  comment: null,
  address: null,
  management_agreement_start_date: null,
  management_agreement_end_date: null,
  company_name: null,
  property_ids: null,
  tax_information: null
)
```

