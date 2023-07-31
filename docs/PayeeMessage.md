# Buildium::PayeeMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The payer user unique identifier. | [optional] |
| **name** | **String** | The name of the payer. | [optional] |
| **type** | **String** | The payer user entity type. | [optional] |
| **href** | **String** | A link to the resource endpoint associated with the payer. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::PayeeMessage.new(
  id: null,
  name: null,
  type: null,
  href: null
)
```

