# Buildium::ApiErrorResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_message** | **String** |  | [optional] |
| **error_code** | **String** |  | [optional] |
| **errors** | [**Array&lt;ApiError&gt;**](ApiError.md) |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ApiErrorResponse.new(
  user_message: null,
  error_code: null,
  errors: null
)
```

