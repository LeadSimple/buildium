# Buildium::UpdateBankAccountDepositRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_date** | **Date** | Date the deposit was recorded. |  |
| **memo** | **String** | Memo associated with the deposit, if applicable. | [optional] |
| **lines** | [**Array&lt;BankAccountDepositLineSaveMessage&gt;**](BankAccountDepositLineSaveMessage.md) |  |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateBankAccountDepositRequest.new(
  entry_date: null,
  memo: null,
  lines: null
)
```

