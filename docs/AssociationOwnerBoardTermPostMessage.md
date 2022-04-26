# Buildium::AssociationOwnerBoardTermPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **board_position_type** | **String** | Indicates the board position held by the association owner. |  |
| **start_date** | **Date** | Start date of the board member term. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **end_date** | **Date** | End date of the board member term. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationOwnerBoardTermPostMessage.new(
  board_position_type: null,
  start_date: null,
  end_date: null
)
```

