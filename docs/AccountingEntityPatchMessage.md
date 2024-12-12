# Buildium::AccountingEntityPatchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The unique identifier of the accounting entity | [optional] |
| **accounting_entity_type** | **String** | The type of the accounting entity | [optional] |
| **unit_id** | **Integer** | The unit unique identifier for the accounting entity. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AccountingEntityPatchMessage.new(
  id: null,
  accounting_entity_type: null,
  unit_id: null
)
```

