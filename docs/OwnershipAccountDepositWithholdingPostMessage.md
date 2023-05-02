# Buildium::OwnershipAccountDepositWithholdingPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_date** | **Date** | Date of the deposit withholding. The date must be formatted as YYYY-MM-DD. |  |
| **deposit_liability_gl_account_id** | **Integer** | General Ledger Account identifier to record the deposit withholding under. |  |
| **memo** | **String** | Memo associated with the withholding. Memo cannot exceed 65 characters. | [optional] |
| **lines** | [**Array&lt;OwnershipAccountDepositWithholdingLinePostMessage&gt;**](OwnershipAccountDepositWithholdingLinePostMessage.md) | Collection of line items included in this deposit withholding. At least one line item is required. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::OwnershipAccountDepositWithholdingPostMessage.new(
  entry_date: null,
  deposit_liability_gl_account_id: null,
  memo: null,
  lines: null
)
```

