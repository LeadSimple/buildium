# Buildium::BankAccountCheckMessagePayee

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The payee user identifier. | [optional] |
| **type** | **String** | The entity type for the payee. | [optional] |
| **href** | **String** | A link to the resource endpoint associated with the payee. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountCheckMessagePayee.new(
  id: null,
  type: null,
  href: null
)
```

