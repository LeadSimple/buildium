# Buildium::ListingPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rent** | **Float** | Rent for the listing. |  |
| **deposit** | **Float** | Deposit for the listing. | [optional] |
| **lease_terms** | **String** | The lease term for the listing. | [optional] |
| **available_date** | **Date** | The date the listing is available. |  |
| **contact_id** | **Integer** | The contact Id for the listing. | [optional] |
| **is_managed_externally** | **Boolean** |  |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ListingPutMessage.new(
  rent: null,
  deposit: null,
  lease_terms: null,
  available_date: null,
  contact_id: null,
  is_managed_externally: null
)
```

