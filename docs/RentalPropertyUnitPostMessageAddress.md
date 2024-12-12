# Buildium::RentalPropertyUnitPostMessageAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line1** | **String** | Address line 1 (e.g., street, PO Box, or company name). This value cannot exceed 100 characters. |  |
| **address_line2** | **String** | Address line 2 (e.g., apartment, suite, unit, or building). This value cannot exceed 100 characters. | [optional] |
| **address_line3** | **String** | Address line 3.  This value cannot exceed 100 characters. | [optional] |
| **city** | **String** | City, district, suburb, town, or village. This value cannot exceed 100 characters. | [optional] |
| **state** | **String** | State, county, province, or region. When &#x60;Country&#x60; is set to &#x60;UnitedStates&#x60; this value must be a valid state name or abbreviation. If the value is &#x60;Canada&#x60; this value must be a valid Canadian province. For all other countries this field is optional and not validated. | [optional] |
| **postal_code** | **String** | ZIP or postal code. | [optional] |
| **country** | **String** | Country. Must be a valid &#x60;Country&#x60; enumeration value. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalPropertyUnitPostMessageAddress.new(
  address_line1: null,
  address_line2: null,
  address_line3: null,
  city: null,
  state: null,
  postal_code: null,
  country: null
)
```

