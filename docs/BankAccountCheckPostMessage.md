# Buildium::BankAccountCheckPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payee** | [**BankAccountCheckPayeeSaveMessage**](BankAccountCheckPayeeSaveMessage.md) |  |  |
| **check_number** | **String** | Check number. | [optional] |
| **entry_date** | **Date** | Date the check was recorded. |  |
| **memo** | **String** | Memo associated with the check, if applicable. | [optional] |
| **lines** | [**Array&lt;BankAccountCheckLineSaveMessage&gt;**](BankAccountCheckLineSaveMessage.md) | A collection of line items to associate with the check. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::BankAccountCheckPostMessage.new(
  payee: null,
  check_number: null,
  entry_date: null,
  memo: null,
  lines: null
)
```

