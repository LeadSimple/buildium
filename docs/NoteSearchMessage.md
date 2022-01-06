# Buildium::NoteSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **updated_date_time_from** | **Time** | Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS. | [optional] |
| **updated_date_time_to** | **Time** | Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS. | [optional] |
| **last_updated_by_user_id** | **Integer** | Filters results to only notes that were last updated by the specified user identifier. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::NoteSearchMessage.new(
  updated_date_time_from: null,
  updated_date_time_to: null,
  last_updated_by_user_id: null
)
```

