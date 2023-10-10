# Buildium::GeneralLedgerSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounting_basis** | **String** | The methodology in which revenues and expenses are recognized when calculating the balances. Specifying &#x60;Cash&#x60; calculates balances based on when money changes hands. Specifying &#x60;Accrual&#x60; calculates balances based on the period in which the transaction originally happened. |  |
| **entity_type** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; field refers to. | [optional] |
| **entity_id** | **Integer** | Filters results to any general ledger entry containing line items associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references. | [optional] |
| **gl_account_ids** | **Array&lt;Integer&gt;** | Filters results to entries whose general ledger account belongs to the specified set of general ledger account ids. |  |
| **start_date** | **Date** | Filters results to any entries whose start date is greater than or equal to the specified value. |  |
| **end_date** | **Date** | Filters results to any entries whose end date is less than or equal to the specified value. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::GeneralLedgerSearchMessage.new(
  accounting_basis: null,
  entity_type: null,
  entity_id: null,
  gl_account_ids: null,
  start_date: null,
  end_date: null
)
```

