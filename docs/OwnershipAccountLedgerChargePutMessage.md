# Buildium::OwnershipAccountLedgerChargePutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date of the charge. The date must be formatted as YYYY-MM-DD. |  |
| **memo** | **String** | Memo associated with the charge. The value cannot exceed 65 characters. | [optional] |
| **lines** | [**Array&lt;OwnershipAccountLedgerChargeLinesPutMessage&gt;**](OwnershipAccountLedgerChargeLinesPutMessage.md) | A collection of line items included in the charge. At least one line item is required. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::OwnershipAccountLedgerChargePutMessage.new(
  date: null,
  memo: null,
  lines: null
)
```

