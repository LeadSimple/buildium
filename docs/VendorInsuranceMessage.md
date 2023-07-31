# Buildium::VendorInsuranceMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | Insurance provider. | [optional] |
| **policy_number** | **String** | Insurance policy number. | [optional] |
| **expiration_date** | **Time** | Expiration date of the insurance policy. Null if no expiration exists. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VendorInsuranceMessage.new(
  provider: null,
  policy_number: null,
  expiration_date: null
)
```

