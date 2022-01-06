# Buildium::OwnershipAccountLedgerChargePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date of the charge. The date must be formatted as YYYY-MM-DD. |  |
| **memo** | **String** | Memo associated with the charge. The value cannot exceed 65 characters. | [optional] |
| **lines** | [**Array&lt;OwnershipAccountLedgerChargeLinesSaveMessage&gt;**](OwnershipAccountLedgerChargeLinesSaveMessage.md) | A collection of line items included in the charge. At least one line item is required. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::OwnershipAccountLedgerChargePostMessage.new(
  date: null,
  memo: null,
  lines: null
)
```

