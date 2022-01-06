# Buildium::ListingContactSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the listing contact. This name must be unique across all listing contacts. |  |
| **email** | **String** | Email address for the listing contact. | [optional] |
| **phone_number** | **String** | Phone number of the listing contact. The value must be between 10 and 20 characters, ideally formatted as (123) 123-1234. | [optional] |
| **website** | **String** | Website associated with the listing contact. The value must be a valid URL including the HTTP protocol. For example http://www.example.com. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ListingContactSaveMessage.new(
  name: null,
  email: null,
  phone_number: null,
  website: null
)
```

