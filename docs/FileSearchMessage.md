# Buildium::FileSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entity_id** | **Integer** | Filters results to any file associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references. | [optional] |
| **entity_type** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified. | [optional] |
| **category_id** | **Integer** | Filters results to any file associated with the specified category identifier. | [optional] |
| **title_or_description** | **String** | Filters results to files whose title or description *contains* the specified value. | [optional] |
| **uploaded_from** | **Date** | Filters results to any files that were updated on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **uploaded_to** | **Date** | Filters results to any files that were updated on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **physical_file_names** | **Array&lt;String&gt;** | Filters results to any files with a &#x60;PhysicalFileName&#x60;exactly matching one of the provided values. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::FileSearchMessage.new(
  entity_id: null,
  entity_type: null,
  category_id: null,
  title_or_description: null,
  uploaded_from: null,
  uploaded_to: null,
  physical_file_names: null
)
```

