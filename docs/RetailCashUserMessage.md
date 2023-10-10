# Buildium::RetailCashUserMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_agreement** | [**UnitAgreementMessage**](UnitAgreementMessage.md) |  | [optional] |
| **user** | [**RetailCashUserDataMessage**](RetailCashUserDataMessage.md) |  | [optional] |
| **property** | [**RetailCashPropertyMessage**](RetailCashPropertyMessage.md) |  | [optional] |
| **unit** | [**RetailCashUnitMessage**](RetailCashUnitMessage.md) |  | [optional] |
| **is_account_created** | **Boolean** | Whether the user has a retail cash account created. | [optional] |
| **is_eviction_pending** | **Boolean** | Whether the unit agreement associated with the retail cash user has a pending eviction. | [optional] |
| **is_enabled** | **Boolean** | Whether retail cash is enabled for the user. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RetailCashUserMessage.new(
  unit_agreement: null,
  user: null,
  property: null,
  unit: null,
  is_account_created: null,
  is_eviction_pending: null,
  is_enabled: null
)
```

