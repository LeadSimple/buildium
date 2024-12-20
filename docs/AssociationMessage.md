# Buildium::AssociationMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Association unique identifier. | [optional] |
| **name** | **String** | Association name. | [optional] |
| **is_active** | **Boolean** | Indicates whether the association is active within the Buildium platform. | [optional] |
| **reserve** | **Float** | A property reserve is cash that a property manager keeps on hand in case of unexpected expenses. It is available cash that simply isn&#39;t disbursed in an owner draw. | [optional] |
| **description** | **String** | Description of the association. | [optional] |
| **year_built** | **Integer** | Indicates the year the association was built. Null if no value is set. | [optional] |
| **operating_bank_account** | **String** | Primary bank account that an association uses for its income and expenses. | [optional] |
| **operating_bank_account_id** | **Integer** | Primary bank account unique identifier that an association uses for its income and expenses. | [optional] |
| **address** | [**AssociationMessageAddress**](AssociationMessageAddress.md) |  | [optional] |
| **association_manager** | [**AssociationMessageAssociationManager**](AssociationMessageAssociationManager.md) |  | [optional] |
| **fiscal_year_end_day** | **Integer** | The day the fiscal year ends for the association. | [optional] |
| **fiscal_year_end_month** | **Integer** | The month the fiscal year ends for the association. | [optional] |
| **tax_information** | [**AssociationMessageTaxInformation**](AssociationMessageTaxInformation.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationMessage.new(
  id: null,
  name: null,
  is_active: null,
  reserve: null,
  description: null,
  year_built: null,
  operating_bank_account: null,
  operating_bank_account_id: null,
  address: null,
  association_manager: null,
  fiscal_year_end_day: null,
  fiscal_year_end_month: null,
  tax_information: null
)
```

