# Buildium::LeaseSecurityDepositPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **due_date** | **Date** | The date the security deposit is due. This date will be used as the transaction date when applying the charge to the lease ledger. |  |
| **amount** | **Float** | Security deposit amount. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseSecurityDepositPostMessage.new(
  due_date: null,
  amount: null
)
```

