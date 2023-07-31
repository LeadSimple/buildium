# Buildium::VendorPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the vendor. Required if &#x60;IsCompany&#x60; is &#x60;false&#x60;. The value cannot exceed 127 characters. | [optional] |
| **last_name** | **String** | Last name of the vendor. Required if &#x60;IsCompany&#x60; is &#x60;false&#x60;. The value cannot exceed 127 characters. | [optional] |
| **is_company** | **Boolean** | Indicates whether the vendor should be considered a company or person. |  |
| **company_name** | **String** | Company name of the vendor. Required if &#x60;IsCompany&#x60; is &#x60;true&#x60;. The value cannot exceed 127 characters. | [optional] |
| **primary_email** | **String** | Primary email for the vendor. | [optional] |
| **alternate_email** | **String** | Alternate email for the vendor. | [optional] |
| **phone_numbers** | [**PhoneNumbersMessage**](PhoneNumbersMessage.md) |  | [optional] |
| **address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  | [optional] |
| **category_id** | **Integer** | The unique identifier of the vendor category. |  |
| **expense_gl_account_id** | **Integer** | The unique identifier of the default expense general ledger account to associate with the vendor. | [optional] |
| **account_number** | **String** | The account number of the vendor. The value cannot exceed 30 characters. | [optional] |
| **website** | **String** | The website of the vendor. The value must be a valid URL. For example \&quot;http://www.example.com\&quot;. The value cannot exceed 100 characters. | [optional] |
| **vendor_insurance** | [**VendorInsuranceSaveMessage**](VendorInsuranceSaveMessage.md) |  | [optional] |
| **comments** | **String** | Comments about the vendor. The value cannot exceed 65,535 characters. | [optional] |
| **tax_information** | [**TaxInformationSaveMessage**](TaxInformationSaveMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VendorPutMessage.new(
  first_name: null,
  last_name: null,
  is_company: null,
  company_name: null,
  primary_email: null,
  alternate_email: null,
  phone_numbers: null,
  address: null,
  category_id: null,
  expense_gl_account_id: null,
  account_number: null,
  website: null,
  vendor_insurance: null,
  comments: null,
  tax_information: null
)
```

