# Buildium::TaxInformationSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_payer_id** | **String** | The unique identifier of the tax payer. Required if &#x60;TaxPayerType&#x60; is set. Format the values based on the &#x60;TaxPayerIdType&#x60; that is specified in the request. &#x60;SSN&#x60; must be formatted as 123-45-6789. &#x60;EIN&#x60; must be formatted as 12-3456789. | [optional] |
| **tax_payer_type** | **String** | The tax payer type. Required if &#x60;TaxPayerId&#x60; is set. | [optional] |
| **tax_payer_name1** | **String** | The tax payer name 1. The value cannot exceed 40 characters. | [optional] |
| **tax_payer_name2** | **String** | The tax payer name 2. The value cannot exceed 40 characters. | [optional] |
| **include_in1099** | **Boolean** | Indicates whether the vendor should be included in 1099 form generation. |  |
| **address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::TaxInformationSaveMessage.new(
  tax_payer_id: null,
  tax_payer_type: null,
  tax_payer_name1: null,
  tax_payer_name2: null,
  include_in1099: null,
  address: null
)
```

