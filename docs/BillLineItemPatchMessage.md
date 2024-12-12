# Buildium::BillLineItemPatchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Bill line item unique identifier. | [optional] |
| **accounting_entity** | [**BillLineItemPatchMessageAccountingEntity**](BillLineItemPatchMessageAccountingEntity.md) |  | [optional] |
| **gl_account_id** | **Integer** | The general ledger account identifier under which the line item amount will be recorded. The following general ledger accounts are not valid: Accounts Payable, Accounts Receivable, Undeposited Funds or any general leger account referencing a bank account. | [optional] |
| **amount** | **Float** | Line item amount. | [optional] |
| **markup** | [**BillLineItemPatchMessageMarkup**](BillLineItemPatchMessageMarkup.md) |  | [optional] |
| **memo** | **String** | Memo for the line item. The value cannot exceed 240 characters. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BillLineItemPatchMessage.new(
  id: null,
  accounting_entity: null,
  gl_account_id: null,
  amount: null,
  markup: null,
  memo: null
)
```

