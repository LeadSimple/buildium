# Buildium::AssociationPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Association name. The value cannot exceed 127 characters. |  |
| **operating_bank_account_id** | **Integer** | The primary bank account that an association uses for its income and expenses. |  |
| **address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  |  |
| **is_active** | **Boolean** | Indicates whether the association is active within the Buildium platform. If no value is passed in the default is &#x60;true&#x60;. | [optional] |
| **reserve** | **Float** | A property reserve is cash that a property manager keeps on hand in case of unexpected expenses. It is available cash that isn&#39;t disbursed in an owner draw. | [optional] |
| **description** | **String** | Description of the association. The description cannot exceed 65,535 characters. | [optional] |
| **year_built** | **Integer** | Indicates the year the association was established. If provided this value must be a four digit integer between 1000 and the current year. | [optional] |
| **property_manager_id** | **Integer** | Indicates the staff member identifier that acts as the property manager for this association. Note, the staff member must have permissions to this association to be assigned as the property manager.  Leave this field null if you don&#39;t want to assign a staff member to the association. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationPostMessage.new(
  name: null,
  operating_bank_account_id: null,
  address: null,
  is_active: null,
  reserve: null,
  description: null,
  year_built: null,
  property_manager_id: null
)
```

