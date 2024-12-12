# Buildium::AssociationTenantPostMessagePhoneNumbers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **home** | **String** | Home phone number. If provided, must be between 10 and 20 characters, ideally formatted as &#x60;(123) 123-1234&#x60;. | [optional] |
| **work** | **String** | Work phone number. If provided, must be between 10 and 20 characters, ideally formatted as &#x60;(123) 123-1234&#x60;. | [optional] |
| **mobile** | **String** | Mobile phone number. If provided, must be between 10 and 20 characters, ideally formatted as &#x60;(123) 123-1234&#x60;. | [optional] |
| **fax** | **String** | Fax number. If provided, must be between 10 and 20 characters, ideally formatted as &#x60;(123) 123-1234&#x60;. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationTenantPostMessagePhoneNumbers.new(
  home: null,
  work: null,
  mobile: null,
  fax: null
)
```

