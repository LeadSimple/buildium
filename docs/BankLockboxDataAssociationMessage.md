# Buildium::BankLockboxDataAssociationMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Association unique identifier. | [optional] |
| **name** | **String** | Association name. | [optional] |
| **operating_bank_account_id** | **Integer** | Primary bank account that an association uses for its income and expenses. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankLockboxDataAssociationMessage.new(
  id: null,
  name: null,
  operating_bank_account_id: null
)
```

