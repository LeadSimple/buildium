# Buildium::CreateArchitecturalRequestAsyncRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** | The ID of the association  to tie the architectural request to. |  |
| **ownership_account_id** | **Integer** | The ID of the ownership account to tie the architectural request to. |  |
| **name** | **String** | The name of the architectural request. Must be 30 characters or less. |  |
| **submitted_date_time** | **Time** | The date and time the architectural request was submitted. Must not be in the future. |  |
| **status** | **String** | The status of the architectural request. If no value is submitted the Status will be set to \&quot;New\&quot;. | [optional] |
| **decision** | **String** | The decision of the architectural request. If no value is submitted the Decision will be set to \&quot;Pending\&quot;. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateArchitecturalRequestAsyncRequest.new(
  association_id: null,
  ownership_account_id: null,
  name: null,
  submitted_date_time: null,
  status: null,
  decision: null
)
```

