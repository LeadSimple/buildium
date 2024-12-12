# Buildium::LeaseLedgerReversePaymentPostMessageNSFCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | Income general ledger income account to record the charge under. |  |
| **total_amount** | **Float** | Total amount to charge the tenant. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseLedgerReversePaymentPostMessageNSFCharge.new(
  gl_account_id: null,
  total_amount: null
)
```

