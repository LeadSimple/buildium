# Buildium::ListingSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. | [optional] |
| **entity_id** | **Integer** | Filters results to only listings that are associated with the specified entity id value. The id must be of the type specified in &#x60;EntityType&#x60; property. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ListingSearchMessage.new(
  entity_type: null,
  entity_id: null
)
```

