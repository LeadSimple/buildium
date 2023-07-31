# Buildium::AccountingSettingsMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounting_book_id** | **Integer** | The accounting book entity unique identifier. | [optional] |
| **default_bank_account_id** | **Integer** | The default bank account unique identifier. | [optional] |
| **default_accounting_basis** | **String** | The default accounting basis. | [optional] |
| **trust_account_warning** | **String** | Indicates the type of trust account warnings are enable within the account, if any. | [optional] |
| **fiscal_year_end_month** | **Integer** | The month the fiscal year ends. | [optional] |
| **fiscal_year_end_day** | **Integer** | The day the fiscal year ends. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AccountingSettingsMessage.new(
  accounting_book_id: null,
  default_bank_account_id: null,
  default_accounting_basis: null,
  trust_account_warning: null,
  fiscal_year_end_month: null,
  fiscal_year_end_day: null
)
```

