# Buildium::AssociationPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Association name. The value cannot exceed 127 characters. |  |
| **description** | **String** | Description of the association. The value cannot exceed 65,535 characters. | [optional] |
| **year_built** | **Integer** | Indicates the year the association was established. If provided this value must be a four digit integer between 1000 and the current year. | [optional] |
| **operating_bank_account_id** | **Integer** | The primary bank account that an association uses for its income and expenses. |  |
| **reserve** | **Float** | A property reserve is cash that a property manager keeps on hand in case of unexpected expenses. It is available cash that isn&#39;t disbursed in an owner draw. | [optional] |
| **address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  |  |
| **property_manager_id** | **Integer** | Indicates the staff member identifier that acts as the property manager for this association. Note, the staff member must have permissions to this association to be assigned as the property manager.  Set this field to null if you don&#39;t want to assign a staff member to the association. | [optional] |
| **fiscal_year_end_day** | **Integer** | The day the fiscal year ends for the association. |  |
| **fiscal_year_end_month** | **Integer** | The month the fiscal year ends for the association. |  |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationPutMessage.new(
  name: null,
  description: null,
  year_built: null,
  operating_bank_account_id: null,
  reserve: null,
  address: null,
  property_manager_id: null,
  fiscal_year_end_day: null,
  fiscal_year_end_month: null
)
```

