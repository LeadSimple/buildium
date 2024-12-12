# Buildium::BankAccountMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Bank account unique identifier. | [optional] |
| **gl_account** | [**BankAccountMessageGLAccount**](BankAccountMessageGLAccount.md) |  | [optional] |
| **check_printing_info** | [**BankAccountMessageCheckPrintingInfo**](BankAccountMessageCheckPrintingInfo.md) |  | [optional] |
| **electronic_payments** | [**BankAccountMessageElectronicPayments**](BankAccountMessageElectronicPayments.md) |  | [optional] |
| **name** | **String** | Bank Account name. | [optional] |
| **description** | **String** | Bank account description. | [optional] |
| **bank_account_type** | **String** | Type of bank account. Values are &#x60;Checking&#x60; or &#x60;Savings&#x60;. | [optional] |
| **country** | **String** | The country the bank account is in. | [optional] |
| **account_number** | **String** | Bank account number. | [optional] |
| **routing_number** | **String** | Bank routing number. | [optional] |
| **is_active** | **Boolean** | Bank Account Status | [optional] |
| **balance** | **Float** | Bank Account balance | [optional] |
| **account_number_unmasked** | **String** | Unmasked bank account number | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountMessage.new(
  id: null,
  gl_account: null,
  check_printing_info: null,
  electronic_payments: null,
  name: null,
  description: null,
  bank_account_type: null,
  country: null,
  account_number: null,
  routing_number: null,
  is_active: null,
  balance: null,
  account_number_unmasked: null
)
```

