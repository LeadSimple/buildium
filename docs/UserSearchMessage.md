# Buildium::UserSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role_ids** | **Array&lt;Integer&gt;** | Describes the role of the user. | [optional] |
| **user_types** | **Array&lt;String&gt;** | Describes the user type of the user. | [optional] |
| **status** | **String** | Filters results by the status of the user. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; staff members will be returned. | [optional] |
| **name** | **String** | Filters results to only records whose name *contains* the specified value. | [optional] |
| **email** | **String** | Filters results to only records whose email *contains* the specified value. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UserSearchMessage.new(
  role_ids: null,
  user_types: null,
  status: null,
  name: null,
  email: null
)
```

