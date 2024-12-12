# Buildium::BankAccountReconciliationMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Reconciliation unique identifier. | [optional] |
| **is_finished** | **Boolean** | Indicates if reconciliation is completed. | [optional] |
| **statement_ending_date** | **Date** | Date the reconciliation statement ended. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankAccountReconciliationMessage.new(
  id: null,
  is_finished: null,
  statement_ending_date: null
)
```

