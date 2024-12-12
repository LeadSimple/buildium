# Buildium::EPaySettingsMessageOfflinePayments

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_info_in_resident_center** | **Boolean** | Indicates whether the offline payment information is displayed in the Buildium Resident Center. | [optional] |
| **display_company_address** | **Boolean** | Indicates whether to display the company address along with the offline payment information. If &#x60;DisplayInfoInResidentCenter&#x60; is false the company address will not be displayed. | [optional] |
| **payment_instructions** | **String** | Directions for how to make offline payments. If &#x60;DisplayInfoInResidentCenter&#x60; is false the payment instructions will not be displayed. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::EPaySettingsMessageOfflinePayments.new(
  display_info_in_resident_center: null,
  display_company_address: null,
  payment_instructions: null
)
```

