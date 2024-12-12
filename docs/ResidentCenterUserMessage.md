# Buildium::ResidentCenterUserMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_agreement** | [**ResidentCenterUserMessageUnitAgreement**](ResidentCenterUserMessageUnitAgreement.md) |  | [optional] |
| **user** | [**ResidentCenterUserMessageUser**](ResidentCenterUserMessageUser.md) |  | [optional] |
| **resident_center_user_status** | **String** | Resident center status for the user. | [optional] |
| **is_auto_pay_enabled** | **Boolean** | Indicates if the user has an automatic payment scheduled for the future. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ResidentCenterUserMessage.new(
  unit_agreement: null,
  user: null,
  resident_center_user_status: null,
  is_auto_pay_enabled: null
)
```

