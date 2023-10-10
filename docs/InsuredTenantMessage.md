# Buildium::InsuredTenantMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Tenant unique identifier. | [optional] |
| **first_name** | **String** | First name of the tenant. | [optional] |
| **last_name** | **String** | Last name of the tenant. | [optional] |
| **is_primary_insured** | **Boolean** | Indicates whether this tenant is the primary insured person on the policy. This only applies to policies with a &#x60;CarrierType&#x60; of &#x60;MSI&#x60;. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::InsuredTenantMessage.new(
  id: null,
  first_name: null,
  last_name: null,
  is_primary_insured: null
)
```

