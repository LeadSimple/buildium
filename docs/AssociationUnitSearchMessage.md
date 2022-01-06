# Buildium::AssociationUnitSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_ids** | **Array&lt;Integer&gt;** | Filters results to only include Associations with matching IDs | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationUnitSearchMessage.new(
  association_ids: null
)
```

