# Buildium::BankLockboxDataMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association** | [**BankLockboxDataAssociationMessage**](BankLockboxDataAssociationMessage.md) |  | [optional] |
| **ownership_accounts** | [**Array&lt;BankLockboxDataOwnershipAccountMessage&gt;**](BankLockboxDataOwnershipAccountMessage.md) | Information about ownership accounts that belong to the association. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankLockboxDataMessage.new(
  association: null,
  ownership_accounts: null
)
```

