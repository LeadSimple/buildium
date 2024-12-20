# Buildium::CreateRentalPropertyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Rental property name. The value cannot exceed 127 characters. |  |
| **structure_description** | **String** | Description of the rental property building. The description cannot exceed 65,535 characters. | [optional] |
| **address** | [**RentalPropertyPostMessageAddress**](RentalPropertyPostMessageAddress.md) |  |  |
| **rental_sub_type** | **String** | Subtype of the rental property. |  |
| **rental_owner_ids** | **Array&lt;Integer&gt;** | List of existing rental owner ID&#39;s that are owners of this property. | [optional] |
| **operating_bank_account_id** | **Integer** | The primary bank account that a rental property uses for its income and expenses. |  |
| **property_manager_id** | **Integer** | Indicates the staff member identifier that acts as the property manager for this rental property. Note, the staff member must have permissions to this rental to be assigned as the property manager.  Set this field to null if you don&#39;t want to assign a staff member to the rental property. | [optional] |
| **reserve** | **Float** | A property reserve is cash that a property manager keeps on hand in case of unexpected expenses. It is available cash that isn&#39;t disbursed in an owner draw. | [optional] |
| **year_built** | **Integer** | Indicates the year the rental property was built. If provided this value must be a four digit integer between 1000 and the current year. | [optional] |
| **units** | [**Array&lt;RentalPropertyUnitPostMessage&gt;**](RentalPropertyUnitPostMessage.md) | Units of the rental property. If no values are provided, a default unit will be created for the property. The number of units cannot exceed 100. If you need to create more than 100 units for the property, use the &lt;a href&#x3D;\&quot;#operation/RentalUnitsCreateRentalUnit\&quot;&gt;Create a unit&lt;/a&gt; endpoint to create the additional units once the property has been created. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateRentalPropertyRequest.new(
  name: null,
  structure_description: null,
  address: null,
  rental_sub_type: null,
  rental_owner_ids: null,
  operating_bank_account_id: null,
  property_manager_id: null,
  reserve: null,
  year_built: null,
  units: null
)
```

