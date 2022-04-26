# Buildium::ClientLeadSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lead_statuses** | **Array&lt;String&gt;** | Filters results to any client leads that are in one of the given statuses. | [optional] |
| **property_types** | **Array&lt;String&gt;** | Filters results to any client leads that have a property in one of the given property types. | [optional] |
| **date_received_from** | **Time** | Filters results to any client leads that were received on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **date_received_to** | **Time** | Filters results to any client leads that were received on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **include_credited_leads** | **Boolean** | This will also return client leads that were credited. By default credited leads will not be returned. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ClientLeadSearchMessage.new(
  lead_statuses: null,
  property_types: null,
  date_received_from: null,
  date_received_to: null,
  include_credited_leads: null
)
```

