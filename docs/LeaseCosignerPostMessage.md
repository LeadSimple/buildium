# Buildium::LeaseCosignerPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **first_name** | **String** | First name of the cosigner. |  |
| **last_name** | **String** | Last name of the cosigner. |  |
| **email** | **String** | Email for the cosigner. | [optional] |
| **alternate_email** | **String** | Alternate Email for the cosigner. | [optional] |
| **phone_numbers** | [**LeaseCosignerPostMessagePhoneNumbers**](LeaseCosignerPostMessagePhoneNumbers.md) |  | [optional] |
| **address** | [**LeaseCosignerPostMessageAddress**](LeaseCosignerPostMessageAddress.md) |  | [optional] |
| **alternate_address** | [**LeaseCosignerPostMessageAlternateAddress**](LeaseCosignerPostMessageAlternateAddress.md) |  | [optional] |
| **mailing_preference** | **String** | Mailing preferences for the cosigner. If an alternate address exists and this value is not provided then the primary address will be set as the preferred address. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseCosignerPostMessage.new(
  first_name: null,
  last_name: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  address: null,
  alternate_address: null,
  mailing_preference: null
)
```

