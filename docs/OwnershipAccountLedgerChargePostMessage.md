# Buildium::OwnershipAccountLedgerChargePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date of the charge. The date must be formatted as YYYY-MM-DD. |  |
| **memo** | **String** | Memo associated with the charge. The value cannot exceed 65 characters. | [optional] |
| **lines** | [**Array&lt;OwnershipAccountLedgerChargeLinesSaveMessage&gt;**](OwnershipAccountLedgerChargeLinesSaveMessage.md) | Collection of line items to be included in the charge. All existing line items will be deleted and replaced with the line items in this request. At least 1 line item is required. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::OwnershipAccountLedgerChargePostMessage.new(
  date: null,
  memo: null,
  lines: null
)
```

