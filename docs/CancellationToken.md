# Buildium::CancellationToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_cancellation_requested** | **Boolean** |  | [optional] |
| **can_be_canceled** | **Boolean** |  | [optional] |
| **wait_handle** | [**WaitHandle**](WaitHandle.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CancellationToken.new(
  is_cancellation_requested: null,
  can_be_canceled: null,
  wait_handle: null
)
```

