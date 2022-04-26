# Buildium::ClientLeadMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Client lead unique identifier. | [optional] |
| **date_received** | **Time** | The date the lead was received. | [optional] |
| **name** | **String** | The name of the lead. | [optional] |
| **email** | **String** | The email of the lead. | [optional] |
| **phone_number** | **String** | The phone number of the lead. | [optional] |
| **price_paid** | **Float** | The price paid for the lead. | [optional] |
| **address** | [**AddressMessage**](AddressMessage.md) |  | [optional] |
| **property_type** | **String** | The property type of the lead&#39;s property. | [optional] |
| **comments** | **String** | Additional comments submitted for the lead. | [optional] |
| **lead_status** | **String** | The current status of the client lead. | [optional] |
| **credit_request** | [**ClientLeadCreditRequestMessage**](ClientLeadCreditRequestMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ClientLeadMessage.new(
  id: null,
  date_received: null,
  name: null,
  email: null,
  phone_number: null,
  price_paid: null,
  address: null,
  property_type: null,
  comments: null,
  lead_status: null,
  credit_request: null
)
```

