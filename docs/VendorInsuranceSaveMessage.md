# Buildium::VendorInsuranceSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** | Insurance provider. This value can not exceed 65 characters. | [optional] |
| **policy_number** | **String** | Insurance policy number. This value can not exceed 65 characters. | [optional] |
| **expiration_date** | **Date** | Expiration date of the insurance policy. The date must be formatted as YYYY-MM-DD. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::VendorInsuranceSaveMessage.new(
  provider: null,
  policy_number: null,
  expiration_date: null
)
```

