# Buildium::AssociationApplianceSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_ids** | **Array&lt;Integer&gt;** | Filters results to appliances associated to any of the specified association identifiers. | [optional] |
| **unit_ids** | **Array&lt;Integer&gt;** | Filters results to appliances associated to any of the specified association unit identifiers. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationApplianceSearchMessage.new(
  association_ids: null,
  unit_ids: null
)
```

