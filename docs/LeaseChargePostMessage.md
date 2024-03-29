# Buildium::LeaseChargePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date of the charge. The date must be formatted as YYYY-MM-DD. | [optional] |
| **memo** | **String** | Memo associated with the charge. The value cannot exceed 65 characters. | [optional] |
| **lines** | [**Array&lt;LeaseChargeLineSaveMessage&gt;**](LeaseChargeLineSaveMessage.md) | A collection of line items included in the charge. At least one line item is required. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseChargePostMessage.new(
  date: null,
  memo: null,
  lines: null
)
```

