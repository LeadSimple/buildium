# Buildium::AssociationSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | Filters results to any association whose address *contains* the specified value. | [optional] |
| **status** | **String** | Filters results by the status of the association. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; associations will be returned. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::AssociationSearchMessage.new(
  location: null,
  status: null
)
```

