# Buildium::AssociationTenantPostMessageEmergencyContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | This is an object that represents an emergency contact. | [optional] |
| **relationship_description** | **String** | Emergency contact relationship to the person. | [optional] |
| **phone** | **String** | Emergency contact phone number | [optional] |
| **email** | **String** | Emergency contact email address. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationTenantPostMessageEmergencyContact.new(
  name: null,
  relationship_description: null,
  phone: null,
  email: null
)
```

