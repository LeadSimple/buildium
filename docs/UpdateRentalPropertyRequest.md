# Buildium::UpdateRentalPropertyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Rental property name. The value cannot exceed 127 characters. |  |
| **structure_description** | **String** | Description of the rental property building. The description cannot exceed 65,535 characters. | [optional] |
| **address** | [**RentalPropertyPutMessageAddress**](RentalPropertyPutMessageAddress.md) |  |  |
| **rental_sub_type** | **String** | Subtype of the rental property |  |
| **operating_bank_account_id** | **Integer** | The primary bank account that an rental property uses for its income and expenses. |  |
| **property_manager_id** | **Integer** | Indicates the staff member identifier that acts as the property manager for this rental property. Note, the staff member must have permissions to this rental to be assigned as the property manager.  Set this field to null if you don&#39;t want to assign a staff member to the rental property. | [optional] |
| **reserve** | **Float** | A property reserve is cash that a property manager keeps on hand in case of unexpected expenses. It is available cash that isn&#39;t disbursed in an owner draw. | [optional] |
| **year_built** | **Integer** | Indicates the year the rental property was built. If provided this value must be a four digit integer between 1000 and the current year. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateRentalPropertyRequest.new(
  name: null,
  structure_description: null,
  address: null,
  rental_sub_type: null,
  operating_bank_account_id: null,
  property_manager_id: null,
  reserve: null,
  year_built: null
)
```

