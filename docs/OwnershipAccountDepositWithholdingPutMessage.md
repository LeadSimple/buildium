# Buildium::OwnershipAccountDepositWithholdingPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_date** | **Date** | Date of the deposit withholding. The date must be formatted as YYYY-MM-DD. |  |
| **deposit_liability_gl_account_id** | **Integer** | The identifier of the liability general ledger account from which to withhold the funds. |  |
| **memo** | **String** | Memo associated with the withholding. Memo cannot exceed 65 characters. | [optional] |
| **lines** | [**Array&lt;OwnershipAccountDepositWithholdingLinePutMessage&gt;**](OwnershipAccountDepositWithholdingLinePutMessage.md) | Line items specifying the income accounts the deposit will be applied to. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountDepositWithholdingPutMessage.new(
  entry_date: null,
  deposit_liability_gl_account_id: null,
  memo: null,
  lines: null
)
```

