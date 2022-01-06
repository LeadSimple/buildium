# Buildium::LeaseMoveOutDataMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** | Tenant unique identifier. | [optional] |
| **move_out_date** | **Date** | Date the tenant(s) will move out of the leased unit. | [optional] |
| **notice_given_date** | **Date** | Date the tenant(s) gave their move out notice. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::LeaseMoveOutDataMessage.new(
  tenant_id: null,
  move_out_date: null,
  notice_given_date: null
)
```

