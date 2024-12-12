# Buildium::CreateBankAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_printing_info** | [**BankAccountPostMessageCheckPrintingInfo**](BankAccountPostMessageCheckPrintingInfo.md) |  | [optional] |
| **name** | **String** | Bank account name. |  |
| **description** | **String** | Bank account description. | [optional] |
| **bank_account_type** | **String** | Type of bank account. |  |
| **country** | **String** | The country the bank account exists in. |  |
| **account_number** | **String** | Bank account number. | [optional] |
| **routing_number** | **String** | Bank routing number. If the bank is in Canada, the routing number should be provided as a zero followed by the three digit institution number, followed by the five digit transit number. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateBankAccountRequest.new(
  check_printing_info: null,
  name: null,
  description: null,
  bank_account_type: null,
  country: null,
  account_number: null,
  routing_number: null
)
```

