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
| **primary_address** | [**AssociationOwnerMessagePrimaryAddress**](AssociationOwnerMessagePrimaryAddress.md) |  | [optional] |
| **alternate_address** | [**AssociationOwnerMessageAlternateAddress**](AssociationOwnerMessageAlternateAddress.md) |  | [optional] |
| **mailing_preference** | **String** | Indicates the association owner&#39;s mailing preference. | [optional] |

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
  delinquency_status: null,
  primary_address: null,
  alternate_address: null,
  mailing_preference: null
)
```

