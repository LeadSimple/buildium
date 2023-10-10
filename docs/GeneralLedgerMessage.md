# Buildium::GeneralLedgerMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | Unique identifier of the general ledger account associated with the entries. | [optional] |
| **gl_account_name** | **String** | Name of the general ledger account associated with the entries. | [optional] |
| **beginning_balance** | **Float** | The general ledger account balance based on the date range requested. | [optional] |
| **total_amount** | **Float** | The sum of the entry amounts that were recorded under this general ledger account within the date range requested. | [optional] |
| **entries** | [**Array&lt;GeneralLedgerEntryMessage&gt;**](GeneralLedgerEntryMessage.md) | Entries applied to the general ledger account. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::GeneralLedgerMessage.new(
  gl_account_id: null,
  gl_account_name: null,
  beginning_balance: null,
  total_amount: null,
  entries: null
)
```

