# Buildium::RentalMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Rental property unique identifier. | [optional] |
| **name** | **String** | Name of the rental property. | [optional] |
| **structure_description** | **String** | Description of the rental property structure. | [optional] |
| **number_units** | **Integer** | Number of units in the rental property. | [optional] |
| **is_active** | **Boolean** | Indicates whether the rental property is active within the Buildium platform. | [optional] |
| **operating_bank_account_id** | **Integer** | The primary bank account that a rental property uses for its income and expenses. | [optional] |
| **reserve** | **Float** | A property reserve is cash that a property manager keeps on hand in case of unexpected expenses. It is available cash that isn&#39;t disbursed in an owner draw. | [optional] |
| **address** | [**AddressMessage**](AddressMessage.md) |  | [optional] |
| **year_built** | **Integer** | Year the rental property was built. | [optional] |
| **rental_type** | **String** | Indicates the type of rental property. | [optional] |
| **rental_sub_type** | **String** | Indicates the sub type of the rental property. | [optional] |
| **rental_manager** | [**PropertyManagerMessage**](PropertyManagerMessage.md) |  | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::RentalMessage.new(
  id: null,
  name: null,
  structure_description: null,
  number_units: null,
  is_active: null,
  operating_bank_account_id: null,
  reserve: null,
  address: null,
  year_built: null,
  rental_type: null,
  rental_sub_type: null,
  rental_manager: null
)
```

