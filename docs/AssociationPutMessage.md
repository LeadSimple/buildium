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

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationPutMessage.new(
  name: null,
  description: null,
  year_built: null,
  operating_bank_account_id: null,
  reserve: null,
  address: null
)
```

