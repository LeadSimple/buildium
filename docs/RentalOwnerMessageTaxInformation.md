# Buildium::RentalOwnerMessageTaxInformation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_payer_id_type** | **String** | Indicates the type of tax payer id being specified in the request. | [optional] |
| **tax_payer_id** | **String** | The tax payer identifier. | [optional] |
| **tax_payer_name1** | **String** | Tax payer name line 1. | [optional] |
| **tax_payer_name2** | **String** | Tax payer name line 2. | [optional] |
| **include_in1099** | **Boolean** | Indicates whether the rental owner should be included in 1099 form generation. | [optional] |
| **address** | [**AssociationTaxInformationMessageAddress**](AssociationTaxInformationMessageAddress.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalOwnerMessageTaxInformation.new(
  tax_payer_id_type: null,
  tax_payer_id: null,
  tax_payer_name1: null,
  tax_payer_name2: null,
  include_in1099: null,
  address: null
)
```

