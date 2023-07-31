# Buildium::ClientLeadCreditRequestMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **credit_status** | **String** | Indicates the current status of the credit. | [optional] |
| **credit_reason** | **String** | Indicates the reason a credit was requested. | [optional] |
| **comments** | **String** | Additional comments about the credit request. | [optional] |
| **request_date** | **Date** | The date the credit was requested. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ClientLeadCreditRequestMessage.new(
  credit_status: null,
  credit_reason: null,
  comments: null,
  request_date: null
)
```

