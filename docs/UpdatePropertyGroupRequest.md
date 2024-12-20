# Buildium::UpdatePropertyGroupRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Property group name. The name can not exceed 127 characters. |  |
| **description** | **String** | Description of the property group. The description can not exceed 1000 characters. | [optional] |
| **property_ids** | **Array&lt;Integer&gt;** | A list of association and/or rental property unique identifiers to assign to the property group. Property groups cannot be updated using inactive associations and/or rental properties. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdatePropertyGroupRequest.new(
  name: null,
  description: null,
  property_ids: null
)
```

