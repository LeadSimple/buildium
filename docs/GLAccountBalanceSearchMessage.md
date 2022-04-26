# Buildium::GLAccountBalanceSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_type** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; field refers to. | [optional] |
| **entity_id** | **Integer** | Filters transactions used in calculating the general ledger account balances to only those containing journal lines for with the specified entity id value. The entity id specified must be of the type specified in &#x60;EntityType&#x60;. | [optional] |
| **gl_account_ids** | **Array&lt;Integer&gt;** | Filters results to the specified set of general ledger account identifiers. | [optional] |
| **accounting_basis** | **String** | The methodology in which revenues and expenses are recognized when calculating the balances. Specifying &#x60;Cash&#x60; calculates balances based on when money changes hands. Specifying &#x60;Accrual&#x60; calculates balances based on the period in which the transaction originally happened. |  |
| **as_of_date** | **Date** | Indicates the end date through which the balances will be calculated. This will include all transactions in your account until this specified date. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::GLAccountBalanceSearchMessage.new(
  entity_type: null,
  entity_id: null,
  gl_account_ids: null,
  accounting_basis: null,
  as_of_date: null
)
```

