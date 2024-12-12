# Buildium::RentalOwnerMessageAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | Address line 1 (e.g., street, PO Box, or company name). | [optional] |
| **address_line2** | **String** | Address line 2 (e.g., apartment, suite, unit, or building). | [optional] |
| **address_line3** | **String** | Address line 3 | [optional] |
| **city** | **String** | City, district, suburb, town, or village. | [optional] |
| **state** | **String** | State, county, province, or region. | [optional] |
| **postal_code** | **String** | ZIP or postal code. | [optional] |
| **country** | **String** | Country. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalOwnerMessageAddress.new(
  address_line1: null,
  address_line2: null,
  address_line3: null,
  city: null,
  state: null,
  postal_code: null,
  country: null
)
```

