# Buildium::AssociationUnitSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_ids** | **Array&lt;Integer&gt;** | Filters results to only include Associations with matching IDs | [optional] |
| **last_updated_from** | **Time** | Filters results to any association units that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **last_updated_to** | **Time** | Filters results to any association units that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationUnitSearchMessage.new(
  association_ids: null,
  last_updated_from: null,
  last_updated_to: null
)
```

