# Buildium::BankAccountCheckMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Check unique identifier. | [optional] |
| **payee** | [**BankAccountCheckPayeeMessage**](BankAccountCheckPayeeMessage.md) |  | [optional] |
| **check_number** | **String** | Check number. | [optional] |
| **entry_date** | **Date** | Date the check was recorded. | [optional] |
| **memo** | **String** | Memo associated with the check, if applicable. | [optional] |
| **total_amount** | **Float** | Sum of all &#x60;Journal.Lines.Amount&#x60; entries in the check. | [optional] |
| **lines** | [**Array&lt;BankAccountCheckLineMessage&gt;**](BankAccountCheckLineMessage.md) | A collection of line items associated with the check. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountCheckMessage.new(
  id: null,
  payee: null,
  check_number: null,
  entry_date: null,
  memo: null,
  total_amount: null,
  lines: null
)
```

