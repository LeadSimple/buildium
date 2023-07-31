# Buildium::PropertyGroupMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Property group unique identifier. | [optional] |
| **name** | **String** | Property group name. | [optional] |
| **description** | **String** | Property group description. | [optional] |
| **properties** | [**Array&lt;PropertyMessage&gt;**](PropertyMessage.md) | A list of association and/or rental property unique identifiers assigned to the property group. | [optional] |
| **created_by_user** | [**CreatedByUserMessage**](CreatedByUserMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::PropertyGroupMessage.new(
  id: null,
  name: null,
  description: null,
  properties: null,
  created_by_user: null
)
```

