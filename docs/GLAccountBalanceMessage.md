# Buildium::GLAccountBalanceMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_balance** | **Float** | The sum of transactions across all accounting entities (rental properties, association properties and your company) that are associated with the given general ledger account. | [optional] |
| **gl_account** | [**GLAccountMessage**](GLAccountMessage.md) |  | [optional] |
| **accounting_entity_balances** | [**Array&lt;GLAccountBalanceItemMessage&gt;**](GLAccountBalanceItemMessage.md) | A collection of accounting entity balances that make up the &#x60;TotalBalance&#x60;. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::GLAccountBalanceMessage.new(
  total_balance: null,
  gl_account: null,
  accounting_entity_balances: null
)
```

