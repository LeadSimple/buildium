# Buildium::BankAccountSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_status** | **String** | Filters results by the status of the bank account. If no status is specified, bank accounts with any status will be returned. | [optional] |
| **bank_name** | **String** | Filters results to any bank account whose name *contains* the specified value. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountSearchMessage.new(
  bank_account_status: null,
  bank_name: null
)
```

