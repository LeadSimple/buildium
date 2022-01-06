# Buildium::AssociationOwnershipAccountSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_ids** | **Array&lt;Integer&gt;** | Filters results to any ownership accounts who belong to the specified set of association ids. | [optional] |
| **unit_or_owner** | **String** | Filters results to any association whose unit or owner *contains* the specified value. | [optional] |
| **date_from** | **Date** | Filters results to any ownership account whose start date is greater than or equal to the specified value. | [optional] |
| **date_to** | **Date** | Filters results to any ownership account whose start date is less than or equal to the specified value. | [optional] |
| **status** | **Array&lt;String&gt;** | Filters results by the status of the association. If no status is specified, &#x60;active&#x60;, &#x60;past&#x60; and &#x60;future&#x60; associations will be returned. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationOwnershipAccountSearchMessage.new(
  association_ids: null,
  unit_or_owner: null,
  date_from: null,
  date_to: null,
  status: null
)
```

