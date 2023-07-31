# Buildium::EmailRecipientMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Recipient unique identifier. | [optional] |
| **name** | **String** | Name of the recipient. | [optional] |
| **email** | **String** | Email address of the recipient. | [optional] |
| **recipient_type** | **String** | The type of recipient. | [optional] |
| **href** | **String** | A link to the resource associated with the recipient. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::EmailRecipientMessage.new(
  id: null,
  name: null,
  email: null,
  recipient_type: null,
  href: null
)
```

