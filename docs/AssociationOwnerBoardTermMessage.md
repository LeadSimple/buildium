# Buildium::AssociationOwnerBoardTermMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Board term unique identifier. | [optional] |
| **association_id** | **Integer** | Association unique identifier. | [optional] |
| **board_position_type** | **String** | Indicates the board position held by the association owner. | [optional] |
| **start_date** | **Date** | Start date of the board member term. | [optional] |
| **end_date** | **Date** | End date of the board member term. | [optional] |
| **created_date_time** | **Time** | Date and time the board member position was created. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationOwnerBoardTermMessage.new(
  id: null,
  association_id: null,
  board_position_type: null,
  start_date: null,
  end_date: null,
  created_date_time: null
)
```

