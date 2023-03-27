# Buildium::PropertyGroupSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_ids** | **Array&lt;Integer&gt;** | Filters results to property groups that contain any of the specified property ids. | [optional] |
| **name_or_description** | **String** | Filters results to any property group whose name or description contains the specified value. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::PropertyGroupSearchMessage.new(
  property_ids: null,
  name_or_description: null
)
```

