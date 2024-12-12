# Buildium::LeasePostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_type** | **String** | Describes the type of lease.&lt;br /&gt;&lt;br /&gt;  &#x60;AtWill&#x60; leases are month-to-month leases. Setting a lease as at will tells Buildium when the tenant&#39;s lease initially started, but since there is no lease end date, Buildium will never move the lease to expired, and it will continue to post any automatic transactions (like recurring monthly rent charges or late fees) until you manually end the lease.  &lt;br /&gt;&lt;br /&gt;  &#x60;Fixed&#x60; leases are leases that have specific start and end dates.When the end date occurs, the lease will move from active to expired, and any transactions set to post automatically(like recurring monthly rent charges or late fees) will stop posting.  &lt;br /&gt;&lt;br /&gt;  &#x60;FixedWithRollover&#x60; leases are similar to fixed leases, but instead of Buildium moving this lease to expired as of the end date, it will move the lease to an at will status, which tells Buildium to continue posting monthly rent charges, late fees for you until you manually end the lease. |  |
| **unit_id** | **Integer** | Unit unique identifier associated with the lease. |  |
| **lease_from_date** | **Date** | Start date of the lease. |  |
| **lease_to_date** | **Date** | End date of the lease. | [optional] |
| **send_welcome_email** | **Boolean** | Indicates whether to send a welcome email to all tenants on the lease inviting them to the resident center website. |  |
| **tenants** | [**Array&lt;RentalTenantPutMessage&gt;**](RentalTenantPutMessage.md) | List of new tenants to add to the lease. The list cannot exceed five tenants. | [optional] |
| **tenant_ids** | **Array&lt;Integer&gt;** | List of identifiers for existing tenants to add to the lease. The list cannot exceed five tenants. | [optional] |
| **applicant_ids** | **Array&lt;Integer&gt;** | List of identifiers for applicants to become tenants on the lease. Identifiers must refer to applicants with a Status of &#x60;Approved&#x60;. The list cannot exceed five applicants. | [optional] |
| **cosigners** | [**Array&lt;LeaseCosignerPostMessage&gt;**](LeaseCosignerPostMessage.md) | List of the cosigners on the lease. | [optional] |
| **rent** | [**LeasePostMessageRent**](LeasePostMessageRent.md) |  | [optional] |
| **security_deposit** | [**LeasePostMessageSecurityDeposit**](LeasePostMessageSecurityDeposit.md) |  | [optional] |
| **prorated_first_month_rent** | **Float** | Prorated rent charged for the first month of the lease. Must be null if the lease begins on the first day of a month. | [optional] |
| **prorated_last_month_rent** | **Float** | Prorated rent charged for the last month of the lease. Must be null if the lease ends on the last day of a month. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::LeasePostMessage.new(
  lease_type: null,
  unit_id: null,
  lease_from_date: null,
  lease_to_date: null,
  send_welcome_email: null,
  tenants: null,
  tenant_ids: null,
  applicant_ids: null,
  cosigners: null,
  rent: null,
  security_deposit: null,
  prorated_first_month_rent: null,
  prorated_last_month_rent: null
)
```

