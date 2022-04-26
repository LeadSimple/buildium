# Buildium::AssociationOwnerUnitOccupancyStatusMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | Association unit unique identifier. | [optional] |
| **is_occupied** | **Boolean** | Indicates whether the unit is occupied by the association owner. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationOwnerUnitOccupancyStatusMessage.new(
  unit_id: null,
  is_occupied: null
)
```

