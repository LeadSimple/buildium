# Buildium::VendorSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filters results by the status of the vendor. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; vendors will be returned. | [optional] |
| **email** | **String** | Filters results to any vendor whose email *contains* the specified value. | [optional] |
| **website** | **String** | Filters results to any vendor whose website *contains* the specified value. | [optional] |
| **name** | **String** | Filters results to any vendor whose name *contains* the specified value. | [optional] |
| **insurance_expiration** | **String** | Filters results to any vendor whose insurance will expire in the specified date range. | [optional] |
| **phone** | **String** | Filters results to any vendor who has a phone number that *contains* the specified value. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::VendorSearchMessage.new(
  status: null,
  email: null,
  website: null,
  name: null,
  insurance_expiration: null,
  phone: null
)
```

