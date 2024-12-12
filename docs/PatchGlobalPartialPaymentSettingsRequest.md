# Buildium::PatchGlobalPartialPaymentSettingsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **require_payments_in_full** | **Boolean** | Whether or not the ownership account payments are required in full. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::PatchGlobalPartialPaymentSettingsRequest.new(
  require_payments_in_full: null
)
```

