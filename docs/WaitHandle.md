# Buildium::WaitHandle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **Object** |  | [optional] |
| **safe_wait_handle** | [**SafeWaitHandle**](SafeWaitHandle.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::WaitHandle.new(
  handle: null,
  safe_wait_handle: null
)
```

