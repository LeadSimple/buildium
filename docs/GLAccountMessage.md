# Buildium::GLAccountMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | General ledger account unique identifier. | [optional] |
| **account_number** | **String** | General ledger account number. | [optional] |
| **name** | **String** | Name of the general ledger account. | [optional] |
| **description** | **String** | Description of the general ledger account. | [optional] |
| **type** | **String** | Describes the type of general ledger account. | [optional] |
| **sub_type** | **String** | Describes the subtype of the general ledger account. | [optional] |
| **is_default_gl_account** | **Boolean** | Indicates if the general ledger account is a default for auto populating fields. | [optional] |
| **is_contra_account** | **Boolean** | Indicates whether the account is a contra account. | [optional] |
| **is_bank_account** | **Boolean** | Indicates whether the account is a bank account. | [optional] |
| **cash_flow_classification** | **String** | Describes the cash flow classification for the general ledger account. | [optional] |
| **exclude_from_cash_balances** | **Boolean** | Indicates whether transactions associated with the account should be excluded from cash balances. | [optional] |
| **sub_accounts** | [**Array&lt;GLAccountMessage&gt;**](GLAccountMessage.md) | Children general ledger accounts. The relationship only goes one level deep. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::GLAccountMessage.new(
  id: null,
  account_number: null,
  name: null,
  description: null,
  type: null,
  sub_type: null,
  is_default_gl_account: null,
  is_contra_account: null,
  is_bank_account: null,
  cash_flow_classification: null,
  exclude_from_cash_balances: null,
  sub_accounts: null
)
```

