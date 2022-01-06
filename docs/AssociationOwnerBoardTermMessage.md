# Buildium::AssociationOwnerBoardTermMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Association Owner Board Term unique identifier | [optional] |
| **association_id** | **Integer** | Association unique identifier | [optional] |
| **board_position_type** | **String** | Indicates the board position held by the association owner | [optional] |
| **start_date** | **Date** | Start date of the Association Owners term as Board Member | [optional] |
| **end_date** | **Date** | End date of the Association Owners term as Board Member | [optional] |
| **created_date_time** | **Time** | Date and time when the Board Member position was added for the Association Owner | [optional] |

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

