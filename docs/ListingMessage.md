# Buildium::ListingMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_date** | **Date** | The date the listing was created in Buildium. It does not reflect when the listing was syndicated and listed in external systems. It can take 24-48 hours for a listing to be syndicated once it is created in Buildium. | [optional] |
| **rent** | **Float** | The asking rent amount for this unit. | [optional] |
| **deposit** | **Float** | The deposit amount for the unit. | [optional] |
| **lease_terms** | **String** | A summary of the lease terms. | [optional] |
| **available_date** | **Date** | The date the unit will be available to move in. | [optional] |
| **is_managed_externally** | **Boolean** | Indicates if the listing is managed by an external vendor. Note, the &#x60;Contact&#x60; property will be &#x60;null&#x60; if the this property is &#x60;true&#x60; as the contact information is managed by a vendor outside of Buildium. | [optional] |
| **rental_application_url** | **String** | The URL to the online rental application hosted by Buildium. | [optional] |
| **contact** | [**ListingMessageContact**](ListingMessageContact.md) |  | [optional] |
| **property** | [**ListingMessageProperty**](ListingMessageProperty.md) |  | [optional] |
| **unit** | [**ListingMessageUnit**](ListingMessageUnit.md) |  | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ListingMessage.new(
  listing_date: null,
  rent: null,
  deposit: null,
  lease_terms: null,
  available_date: null,
  is_managed_externally: null,
  rental_application_url: null,
  contact: null,
  property: null,
  unit: null
)
```

