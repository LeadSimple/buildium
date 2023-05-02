# Buildium::MailingTemplateMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier of the mailing template. | [optional] |
| **name** | **String** | Name of the mailing template. | [optional] |
| **description** | **String** | Description of the mailing template. | [optional] |
| **recipient_type** | **String** | Intended recipient type for mailings using the template. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::MailingTemplateMessage.new(
  id: null,
  name: null,
  description: null,
  recipient_type: null
)
```

