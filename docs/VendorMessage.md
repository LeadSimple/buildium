# Buildium::VendorMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Vendor unique identifier. | [optional] |
| **is_company** | **Boolean** | Indicates whether the vendor is a company. | [optional] |
| **is_active** | **Boolean** | Indicates whether the vendor is active within the Buildium platform. | [optional] |
| **first_name** | **String** | First name of the vendor. Empty if &#x60;IsCompany&#x60; is &#x60;true&#x60;. | [optional] |
| **last_name** | **String** | Last name of the vendor. Empty if &#x60;IsCompany&#x60; is &#x60;true&#x60;. | [optional] |
| **primary_email** | **String** | Primary email for the vendor. | [optional] |
| **alternate_email** | **String** | Alternate email for the vendor. | [optional] |
| **company_name** | **String** | Company name for the vendor. Empty if &#x60;IsCompany&#x60; is &#x60;false&#x60; | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | List of phone numbers for the vendor. | [optional] |
| **website** | **String** | Website of the vendor. | [optional] |
| **category** | [**LookupMessage**](LookupMessage.md) |  | [optional] |
| **address** | [**AddressMessage**](AddressMessage.md) |  | [optional] |
| **vendor_insurance** | [**VendorInsuranceMessage**](VendorInsuranceMessage.md) |  | [optional] |
| **comments** | **String** | General comments about the vendor. | [optional] |
| **account_number** | **String** | Vendor account number. | [optional] |
| **expense_gl_account_id** | **Integer** | The unique identifier of the default expense general ledger account to associate with the vendor. | [optional] |
| **tax_information** | [**VendorTaxInformationMessage**](VendorTaxInformationMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VendorMessage.new(
  id: null,
  is_company: null,
  is_active: null,
  first_name: null,
  last_name: null,
  primary_email: null,
  alternate_email: null,
  company_name: null,
  phone_numbers: null,
  website: null,
  category: null,
  address: null,
  vendor_insurance: null,
  comments: null,
  account_number: null,
  expense_gl_account_id: null,
  tax_information: null
)
```

