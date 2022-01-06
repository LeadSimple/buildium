# Buildium::LastUpdatedByUserMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | User unique identifier. | [optional] |
| **first_name** | **String** | User first name. | [optional] |
| **last_name** | **String** | User last name. | [optional] |
| **href** | **String** | A link to the user resource. | [optional] |
| **updated_date_time** | **Time** | The date and time the note was last updated. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::LastUpdatedByUserMessage.new(
  id: null,
  first_name: null,
  last_name: null,
  href: null,
  updated_date_time: null
)
```

