# Buildium::AssociationSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | Filters results to any association whose city or state *contains* the specified value. | [optional] |
| **status** | **String** | Filters results by the status of the association. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; associations will be returned. | [optional] |
| **last_updated_from** | **Time** | Filters results to any associations that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **last_updated_to** | **Time** | Filters results to any associations that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::AssociationSearchMessage.new(
  location: null,
  status: null,
  last_updated_from: null,
  last_updated_to: null
)
```

