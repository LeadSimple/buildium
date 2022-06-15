# Buildium::ResidentRequestTaskPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Request title. The title can not exceed 127 characters. |  |
| **description** | **String** | Request description. The description can not exceed 65500 characters. | [optional] |
| **category_id** | **Integer** | The category identifier to assign the request. | [optional] |
| **sub_category_id** | **Integer** | The subcategory identifier to assign the request. | [optional] |
| **unit_agreement_id** | **Integer** | The unique identifier of the unit agreement associated with the request. |  |
| **requested_by_entity_id** | **Integer** | The unique identifier of the resident that submitted the request. |  |
| **assigned_to_user_id** | **Integer** | The unique identifier of the staff user assigned to the request. The user must be a &#x60;Staff&#x60; user type. If not provided, assignment rules in the resident center settings (if configured) will be used for assignment. | [optional] |
| **task_status** | **String** | Request status. |  |
| **priority** | **String** | Request priority. |  |
| **due_date** | **Date** | Request due date. The date must be formatted as YYYY-MM-DD. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ResidentRequestTaskPostMessage.new(
  title: null,
  description: null,
  category_id: null,
  sub_category_id: null,
  unit_agreement_id: null,
  requested_by_entity_id: null,
  assigned_to_user_id: null,
  task_status: null,
  priority: null,
  due_date: null
)
```

