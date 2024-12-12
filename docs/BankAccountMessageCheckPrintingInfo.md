# Buildium::BankAccountMessageCheckPrintingInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enable_remote_check_printing** | **Boolean** | Indicates whether remote check printing is enabled. | [optional] |
| **enable_local_check_printing** | **Boolean** | Indicates whether local check printing is enabled. | [optional] |
| **check_layout_type** | **String** | The check layout type. | [optional] |
| **signature_heading** | **String** | The check signature heading. | [optional] |
| **fractional_number** | **String** | The fractional form of the routing number. Typically is used to identify the bank of the check in cases where the MICR is unreadable. | [optional] |
| **bank_information_line1** | **String** | Bank information line 1. | [optional] |
| **bank_information_line2** | **String** | Bank information line 2. | [optional] |
| **bank_information_line3** | **String** | Bank information line 3. | [optional] |
| **bank_information_line4** | **String** | Bank information line 4. | [optional] |
| **bank_information_line5** | **String** | Bank information line 5. | [optional] |
| **company_information_line1** | **String** | Company information 1. | [optional] |
| **company_information_line2** | **String** | Company information 2. | [optional] |
| **company_information_line3** | **String** | Company information 3. | [optional] |
| **company_information_line4** | **String** | Company information 4. | [optional] |
| **company_information_line5** | **String** | Company information 5. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountMessageCheckPrintingInfo.new(
  enable_remote_check_printing: null,
  enable_local_check_printing: null,
  check_layout_type: null,
  signature_heading: null,
  fractional_number: null,
  bank_information_line1: null,
  bank_information_line2: null,
  bank_information_line3: null,
  bank_information_line4: null,
  bank_information_line5: null,
  company_information_line1: null,
  company_information_line2: null,
  company_information_line3: null,
  company_information_line4: null,
  company_information_line5: null
)
```

