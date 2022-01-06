# Buildium::PayeeMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The payee user unique identifier. | [optional] |
| **name** | **String** | The name of the payee. | [optional] |
| **type** | **String** | The payee entity type. | [optional] |
| **href** | **String** | A link to the resource endpoint associated with the payee. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::PayeeMessage.new(
  id: null,
  name: null,
  type: null,
  href: null
)
```

