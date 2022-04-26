# Buildium::AssociationBoardMemberMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Association board member unique identifier. | [optional] |
| **association_owner_id** | **Integer** | Association owner unique identifier. | [optional] |
| **first_name** | **String** | Association owner first name. | [optional] |
| **last_name** | **String** | Association owner last name. | [optional] |
| **email** | **String** | Association owner email. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | List of phone numbers of the association owner. | [optional] |
| **board_position_type** | **String** | Indicates the board position held by the association owner. | [optional] |
| **start_date** | **Date** | Start date of the association owner&#39;s term as board member | [optional] |
| **end_date** | **Date** | End date of the association owner&#39;s term as board member | [optional] |
| **created_date_time** | **Time** | Date and time when the board member was created. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationBoardMemberMessage.new(
  id: null,
  association_owner_id: null,
  first_name: null,
  last_name: null,
  email: null,
  phone_numbers: null,
  board_position_type: null,
  start_date: null,
  end_date: null,
  created_date_time: null
)
```

