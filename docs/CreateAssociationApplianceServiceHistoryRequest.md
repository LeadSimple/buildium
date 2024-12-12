# Buildium::CreateAssociationApplianceServiceHistoryRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service_type** | **String** | Specifies the type of service that occured. |  |
| **date** | **Date** | Date the service was performed. Must be formatted as &#x60;YYYY-MM-DD&#x60;. |  |
| **details** | **String** | The service history details associated with the appliance. The description cannot exceed 100 characters. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateAssociationApplianceServiceHistoryRequest.new(
  service_type: null,
  date: null,
  details: null
)
```

