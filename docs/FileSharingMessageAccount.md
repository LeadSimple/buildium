# Buildium::FileSharingMessageAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **all_residents** | **Boolean** | Indicates whether file is shared with all residents via the Resident Center. | [optional] |
| **property_ids** | **Array&lt;Integer&gt;** | A list of rental property unique identifiers whose residents should receive the file. | [optional] |
| **all_rental_owners** | **Boolean** | Indicates whether file is shared with all rental owners via the portal. | [optional] |
| **rental_owner_ids** | **Array&lt;Integer&gt;** | A list of rental owner unique identifiers that should receive the file. | [optional] |
| **website_visitors** | **Boolean** | Indicates whether file is shared with anyone visiting the company&#39;s public site. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::FileSharingMessageAccount.new(
  all_residents: null,
  property_ids: null,
  all_rental_owners: null,
  rental_owner_ids: null,
  website_visitors: null
)
```

