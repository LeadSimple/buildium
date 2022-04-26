# Buildium::AssociationBoardMemberSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statuses** | **Array&lt;String&gt;** | Filters results to only records whose status is equal to the specified values. | [optional] |
| **board_position_types** | **Array&lt;String&gt;** | Filters results to only records whose board position type is equal to the specified values. | [optional] |
| **created_date_time_to** | **Time** | Filters results to only records that were created before this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **created_date_time_from** | **Time** | Filters results to only records that were created after this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationBoardMemberSearchMessage.new(
  statuses: null,
  board_position_types: null,
  created_date_time_to: null,
  created_date_time_from: null
)
```

