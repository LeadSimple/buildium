# Buildium::OwnershipAccountLedgerChargeMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Charge unique identifier. | [optional] |
| **date** | **Date** | Date of the charge. | [optional] |
| **total_amount** | **Float** | Sum of all &#x60;Lines.Amount&#x60; entries in the charge. | [optional] |
| **memo** | **String** | Memo associated with the charge. | [optional] |
| **bill_id** | **Integer** | The bill identifier this charge is associated with, if applicable. | [optional] |
| **lines** | [**Array&lt;OwnershipAccountLedgerChargeLineMessage&gt;**](OwnershipAccountLedgerChargeLineMessage.md) | A collection of line items associated with the charge. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::OwnershipAccountLedgerChargeMessage.new(
  id: null,
  date: null,
  total_amount: null,
  memo: null,
  bill_id: null,
  lines: null
)
```

