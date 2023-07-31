# Buildium::AssociationBoardMemberPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **board_position_type** | **String** | Indicates the board position held by the association owner. |  |
| **start_date** | **Date** | Start date of the association owners term as a board member. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **end_date** | **Date** | End date of the association owners term as a board member. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationBoardMemberPutMessage.new(
  board_position_type: null,
  start_date: null,
  end_date: null
)
```

