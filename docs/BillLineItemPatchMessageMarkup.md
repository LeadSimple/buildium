# Buildium::BillLineItemPatchMessageMarkup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Float** | The mark up amount. The value should be relative to the markup &#x60;Type&#x60;. If the mark up &#x60;Type&#x60; is &#x60;Percent&#x60; the value cannot exceed 100. | [optional] |
| **type** | **String** | The markup type. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BillLineItemPatchMessageMarkup.new(
  amount: null,
  type: null
)
```

