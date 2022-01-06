# Buildium::RentalPropertyPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Rental property name. The value cannot exceed 127 characters. |  |
| **structure_description** | **String** | Description of the rental property building. The description cannot exceed 65,535 characters. | [optional] |
| **address** | [**SaveAddressMessage**](SaveAddressMessage.md) |  |  |
| **rental_sub_type** | **String** | Subtype of the rental property. |  |
| **rental_owner_ids** | **Array&lt;Integer&gt;** | List of existing rental owner ID&#39;s that are owners of this property. | [optional] |
| **operating_bank_account_id** | **Integer** | The primary bank account that a rental property uses for its income and expenses. |  |
| **reserve** | **Float** | A property reserve is cash that a property manager keeps on hand in case of unexpected expenses. It is available cash that isn&#39;t disbursed in an owner draw. | [optional] |
| **year_built** | **Integer** | Indicates the year the rental property was built. If provided this value must be a four digit integer between 1000 and the current year. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::RentalPropertyPostMessage.new(
  name: null,
  structure_description: null,
  address: null,
  rental_sub_type: null,
  rental_owner_ids: null,
  operating_bank_account_id: null,
  reserve: null,
  year_built: null
)
```

