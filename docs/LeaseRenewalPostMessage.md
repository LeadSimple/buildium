# Buildium::LeaseRenewalPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_type** | **String** | Describes the type of lease. |  |
| **lease_to_date** | **Date** | End date of the lease. This is required if &#x60;LeaseType&#x60; is &#x60;Fixed&#x60; or &#x60;FixedWithRollover&#x60; | [optional] |
| **automatically_move_out_tenants** | **Boolean** | Indicates whether to automatically move out all tenants assigned to the lease and set the lease status to past when the lease ends. | [optional] |
| **rent** | [**LeaseRenewalPostMessageRent**](LeaseRenewalPostMessageRent.md) |  |  |
| **cosigners** | [**Array&lt;LeaseCosignerPostMessage&gt;**](LeaseCosignerPostMessage.md) | List of the cosigners to create on the lease. | [optional] |
| **tenant_ids** | **Array&lt;Integer&gt;** | Unique identifiers of existing tenants to include on the lease. The request must include at least one tenant in this property OR the &#x60;Tenants&#x60; property. | [optional] |
| **tenants** | [**Array&lt;RentalTenantRenewalPostMessage&gt;**](RentalTenantRenewalPostMessage.md) | List of new tenants to create on the lease. The request must include at least one tenant in this property OR the &#x60;TenantIds&#x60; property. | [optional] |
| **send_welcome_email** | **Boolean** | Indicates whether to send a welcome email to all tenants on the lease inviting them to the resident center website. |  |
| **recurring_charges_to_stop** | **Array&lt;Integer&gt;** | Unique identifiers of existing recurring charges on the lease to stop. | [optional] |
| **recurring_charges_to_create** | [**Array&lt;ChargeRecurringTransactionPostMessage&gt;**](ChargeRecurringTransactionPostMessage.md) | List of new recurring charges to create. | [optional] |
| **recurring_charges_to_update** | [**Array&lt;ChargeRecurringTransactionPutMessage&gt;**](ChargeRecurringTransactionPutMessage.md) | List of existing recurring charges to update. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeaseRenewalPostMessage.new(
  lease_type: null,
  lease_to_date: null,
  automatically_move_out_tenants: null,
  rent: null,
  cosigners: null,
  tenant_ids: null,
  tenants: null,
  send_welcome_email: null,
  recurring_charges_to_stop: null,
  recurring_charges_to_create: null,
  recurring_charges_to_update: null
)
```

