# Buildium::ApplianceMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Unique identifier of the appliance. | [optional] |
| **name** | **String** | Name of the appliance. | [optional] |
| **make** | **String** | Make of the appliance. | [optional] |
| **model** | **String** | Model of the appliance. | [optional] |
| **description** | **String** | Description of the appliance. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ApplianceMessage.new(
  id: null,
  name: null,
  make: null,
  model: null,
  description: null
)
```

