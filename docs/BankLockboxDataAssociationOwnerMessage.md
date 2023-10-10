# Buildium::BankLockboxDataAssociationOwnerMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Association owner unique identifier. | [optional] |
| **first_name** | **String** | Association owner first name. | [optional] |
| **last_name** | **String** | Association owner last name. | [optional] |
| **email** | **String** | Association owner email. | [optional] |
| **alternate_email** | **String** | Association owner alternate email. | [optional] |
| **phone_numbers** | [**Array&lt;PhoneNumberMessage&gt;**](PhoneNumberMessage.md) | List of phone numbers associated with the association owner. | [optional] |
| **delinquency_status** | **String** | Indicates the delinquency status of the association owner. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::BankLockboxDataAssociationOwnerMessage.new(
  id: null,
  first_name: null,
  last_name: null,
  email: null,
  alternate_email: null,
  phone_numbers: null,
  delinquency_status: null
)
```

