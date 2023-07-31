# Buildium::BillSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **Integer** | Filters results to any bill containing line items associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references. | [optional] |
| **entity_type** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified. | [optional] |
| **vendor_id** | **Integer** | Filters results to bills associated with a specific vendor. | [optional] |
| **reference_number** | **String** | Filters results to bills whose reference number contains the specified value. | [optional] |
| **paid_status** | **String** | Filters results by the bill&#39;s paid status. If no status is specified, bills with any status will be returned. | [optional] |
| **from_paid_date** | **Date** | Filters results to any bill whose paid date is greater than or equal to the specified value. | [optional] |
| **to_paid_date** | **Date** | Filters results to any bill whose paid date is less than or equal to the specified value. | [optional] |
| **approval_statuses** | **Array&lt;String&gt;** | Filters the results to bills matching the specified approval statuses. If no approval status is specified, bills with any status will be returned. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BillSearchMessage.new(
  entity_id: null,
  entity_type: null,
  vendor_id: null,
  reference_number: null,
  paid_status: null,
  from_paid_date: null,
  to_paid_date: null,
  approval_statuses: null
)
```

