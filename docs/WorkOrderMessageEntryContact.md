# Buildium::WorkOrderMessageEntryContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Contact entity unique identifier. | [optional] |
| **resources** | [**Array&lt;WorkOrderEntryContactResourceMessage&gt;**](WorkOrderEntryContactResourceMessage.md) | List of contact entity resources. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::WorkOrderMessageEntryContact.new(
  id: null,
  resources: null
)
```

