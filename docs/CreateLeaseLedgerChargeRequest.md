# Buildium::CreateLeaseLedgerChargeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date of the charge. The date must be formatted as YYYY-MM-DD. | [optional] |
| **memo** | **String** | Memo associated with the charge. The value cannot exceed 65 characters. | [optional] |
| **bill_id** | **Integer** | Unique identifier of the bill this charge is associated to. If provided, the property of the lease the  charge is being created in must be in at least one line item of the bill. | [optional] |
| **lines** | [**Array&lt;LeaseChargeLineSaveMessage&gt;**](LeaseChargeLineSaveMessage.md) | A collection of line items included in the charge. At least one line item is required. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateLeaseLedgerChargeRequest.new(
  date: null,
  memo: null,
  bill_id: null,
  lines: null
)
```

