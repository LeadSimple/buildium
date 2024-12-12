# Buildium::CreateAssociationOwnershipAccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | Association unit unique identifier that the ownership account is related to. |  |
| **date_of_purchase** | **Date** | Date the unit was purchased by the owner. Must be formatted as YYYY-MM-DD.   If an existing association ownership account is being replaced then this date must be after the existing ownership accounts date of sale. |  |
| **association_fee** | **Float** | Recurring association fee charge. If provided, a recurring transaction will be created that adds a charge in the amount specified to the ownership account ledger with the frequency indicated in RecurringFrequency. | [optional] |
| **recurring_frequency** | **String** | Indicates the frequency of the recurring association fee. This field is required if &#x60;AssociationFee&#x60; has a value. | [optional] |
| **association_owner_ids** | **Array&lt;Integer&gt;** | Current or former association owners to assign to this ownership account. Values must be an active association owner identifiers. The request must include at least one owner in this property OR the &#x60;AssociationOwners&#x60; property. | [optional] |
| **association_owners** | [**Array&lt;AssociationOwnerPostMessage&gt;**](AssociationOwnerPostMessage.md) | Create new association owner(s) and assigns them to this new ownership account. The request must include at least one owner in this property OR the &#x60;AssociationOwnerIds&#x60; property. | [optional] |
| **send_welcome_email** | **Boolean** | Indicates whether to send an owner portal welcome email to all of the association owners assigned to this ownership account. Once the owners sign into the portal, they can make online payments, view important documents, submit requests, and more. |  |
| **replace_existing_ownership_account** | **Boolean** | Indicates whether to replace an ownership account if one already exists for this unit.   If this value is false and an ownership account exists the request will fail.This protects against inadvertently overwriting of an existing ownership account.   If the value is true and an ownership account exists then the existing ownership account will be marked as with a status of Past and the newly created ownership account will be Active for the unit. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateAssociationOwnershipAccountRequest.new(
  unit_id: null,
  date_of_purchase: null,
  association_fee: null,
  recurring_frequency: null,
  association_owner_ids: null,
  association_owners: null,
  send_welcome_email: null,
  replace_existing_ownership_account: null
)
```

