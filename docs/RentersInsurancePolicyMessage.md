# Buildium::RentersInsurancePolicyMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Renters insurance policy unique identifier. | [optional] |
| **insurance_company** | **String** | The name of the insurance company that issued the policy. | [optional] |
| **carrier_type** | **String** | The carrier type for the policy. | [optional] |
| **policy_identifier** | **String** | The policy identifier. | [optional] |
| **effective_date** | **Date** | The date that the policy becomes effective. | [optional] |
| **expiration_date** | **Date** | The date that the policy expires. | [optional] |
| **cancellation_date** | **Date** | The cancellation date of the policy. This only applies to policies with a &#x60;CarrierType&#x60; of &#x60;MSI&#x60;, and is independent of &#x60;ExpirationDate&#x60;. | [optional] |
| **insured_tenants** | [**Array&lt;InsuredTenantMessage&gt;**](InsuredTenantMessage.md) | A collection of tenants associated with this policy. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentersInsurancePolicyMessage.new(
  id: null,
  insurance_company: null,
  carrier_type: null,
  policy_identifier: null,
  effective_date: null,
  expiration_date: null,
  cancellation_date: null,
  insured_tenants: null
)
```

