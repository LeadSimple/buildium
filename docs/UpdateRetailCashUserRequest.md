# Buildium::UpdateRetailCashUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_enabled** | **Boolean** | Whether retail cash is enabled for the user. If no retail cash account exists for the user, enabling will create one for the user. You cannot disable a user who does not have an account yet. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateRetailCashUserRequest.new(
  is_enabled: null
)
```

