# Buildium::LeaseRentPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cycle** | **String** | Indicates the cadence of when rent &#x60;Charges&#x60; will be applied automatically to the lease ledger. |  |
| **charges** | [**Array&lt;LeaseRentChargePostMessage&gt;**](LeaseRentChargePostMessage.md) | List of charges to apply to the lease. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseRentPostMessage.new(
  cycle: null,
  charges: null
)
```

