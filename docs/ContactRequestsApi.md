# Buildium::ContactRequestsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact_request_task**](ContactRequestsApi.md#create_contact_request_task) | **POST** /v1/tasks/contactrequests | Create a contact request |
| [**get_contact_request_task_by_id**](ContactRequestsApi.md#get_contact_request_task_by_id) | **GET** /v1/tasks/contactrequests/{contactRequestTaskId} | Retrieve a contact request |
| [**get_contact_request_tasks**](ContactRequestsApi.md#get_contact_request_tasks) | **GET** /v1/tasks/contactrequests | Retrieve all contact requests |
| [**update_contact_request_task**](ContactRequestsApi.md#update_contact_request_task) | **PUT** /v1/tasks/contactrequests/{contactRequestTaskId} | Update a contact request |


## create_contact_request_task

> <ContactRequestTaskMessage> create_contact_request_task(create_contact_request_task_request)

Create a contact request

Creates a contact request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View` `Edit`

### Examples

```ruby
require 'time'
require 'buildium-ruby'
# setup authorization
Buildium.configure do |config|
  # Configure API key authorization: clientId
  config.api_key['clientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientId'] = 'Bearer'

  # Configure API key authorization: clientSecret
  config.api_key['clientSecret'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientSecret'] = 'Bearer'
end

api_instance = Buildium::ContactRequestsApi.new
create_contact_request_task_request = Buildium::CreateContactRequestTaskRequest.new({title: 'title_example', assigned_to_user_id: 37, task_status: 'New', priority: 'Low', contact_detail: Buildium::ContactRequestTaskPostMessageContactDetail.new({first_name: 'first_name_example'})}) # CreateContactRequestTaskRequest | 

begin
  # Create a contact request
  result = api_instance.create_contact_request_task(create_contact_request_task_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ContactRequestsApi->create_contact_request_task: #{e}"
end
```

#### Using the create_contact_request_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactRequestTaskMessage>, Integer, Hash)> create_contact_request_task_with_http_info(create_contact_request_task_request)

```ruby
begin
  # Create a contact request
  data, status_code, headers = api_instance.create_contact_request_task_with_http_info(create_contact_request_task_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ContactRequestsApi->create_contact_request_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_contact_request_task_request** | [**CreateContactRequestTaskRequest**](CreateContactRequestTaskRequest.md) |  |  |

### Return type

[**ContactRequestTaskMessage**](ContactRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_contact_request_task_by_id

> <ContactRequestTaskMessage> get_contact_request_task_by_id(contact_request_task_id)

Retrieve a contact request

Retrieves a contact request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium-ruby'
# setup authorization
Buildium.configure do |config|
  # Configure API key authorization: clientId
  config.api_key['clientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientId'] = 'Bearer'

  # Configure API key authorization: clientSecret
  config.api_key['clientSecret'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientSecret'] = 'Bearer'
end

api_instance = Buildium::ContactRequestsApi.new
contact_request_task_id = 56 # Integer | The contact request identifier.

begin
  # Retrieve a contact request
  result = api_instance.get_contact_request_task_by_id(contact_request_task_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ContactRequestsApi->get_contact_request_task_by_id: #{e}"
end
```

#### Using the get_contact_request_task_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactRequestTaskMessage>, Integer, Hash)> get_contact_request_task_by_id_with_http_info(contact_request_task_id)

```ruby
begin
  # Retrieve a contact request
  data, status_code, headers = api_instance.get_contact_request_task_by_id_with_http_info(contact_request_task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ContactRequestsApi->get_contact_request_task_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_request_task_id** | **Integer** | The contact request identifier. |  |

### Return type

[**ContactRequestTaskMessage**](ContactRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_contact_request_tasks

> <Array<ContactRequestTaskMessage>> get_contact_request_tasks(opts)

Retrieve all contact requests

Retrieves a list of contact requests.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium-ruby'
# setup authorization
Buildium.configure do |config|
  # Configure API key authorization: clientId
  config.api_key['clientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientId'] = 'Bearer'

  # Configure API key authorization: clientSecret
  config.api_key['clientSecret'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientSecret'] = 'Bearer'
end

api_instance = Buildium::ContactRequestsApi.new
opts = {
  entitytype: 'Rental', # String | Specifies the type of entity that the `EntityId` field refers to. This field is required if the `EntityId` field is populated.
  entityid: 56, # Integer | Filters results to any task associated with the specified entity id value. The value must be of the type specified in the `EntityType` field.
  statuses: ['New'], # Array<String> | Filters results by the status of the task. If no status is specified, tasks with any status will be returned.
  unitid: 56, # Integer | Filters results to any task associated with the unit identifier.
  lastupdatedfrom: Date.parse('2013-10-20'), # Date | Filters results to any tasks were updated on or after the specified date. The value must be formatted as YYYY-MM-DD.
  lastupdatedto: Date.parse('2013-10-20'), # Date | Filters results to any tasks were updated on or before the specified date. The value must be formatted as YYYY-MM-DD.
  duedatefrom: Date.parse('2013-10-20'), # Date | Filters results to any tasks with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD.
  duedateto: Date.parse('2013-10-20'), # Date | Filters results to any tasks with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD.
  taskcategoryid: 56, # Integer | Filters results to any tasks with the specified category identifier.
  priorities: ['Low'], # Array<String> | Filters results to any tasks whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned.
  assignedtoid: 56, # Integer | Filters results to any tasks that have been assigned to the specified staff user identifier.
  tasktitle: 'tasktitle_example', # String | Filters results to any task whose title *contains* the specified value.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all contact requests
  result = api_instance.get_contact_request_tasks(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ContactRequestsApi->get_contact_request_tasks: #{e}"
end
```

#### Using the get_contact_request_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ContactRequestTaskMessage>>, Integer, Hash)> get_contact_request_tasks_with_http_info(opts)

```ruby
begin
  # Retrieve all contact requests
  data, status_code, headers = api_instance.get_contact_request_tasks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ContactRequestTaskMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ContactRequestsApi->get_contact_request_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entitytype** | **String** | Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is populated. | [optional] |
| **entityid** | **Integer** | Filters results to any task associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field. | [optional] |
| **statuses** | [**Array&lt;String&gt;**](String.md) | Filters results by the status of the task. If no status is specified, tasks with any status will be returned. | [optional] |
| **unitid** | **Integer** | Filters results to any task associated with the unit identifier. | [optional] |
| **lastupdatedfrom** | **Date** | Filters results to any tasks were updated on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **lastupdatedto** | **Date** | Filters results to any tasks were updated on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **duedatefrom** | **Date** | Filters results to any tasks with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **duedateto** | **Date** | Filters results to any tasks with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **taskcategoryid** | **Integer** | Filters results to any tasks with the specified category identifier. | [optional] |
| **priorities** | [**Array&lt;String&gt;**](String.md) | Filters results to any tasks whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned. | [optional] |
| **assignedtoid** | **Integer** | Filters results to any tasks that have been assigned to the specified staff user identifier. | [optional] |
| **tasktitle** | **String** | Filters results to any task whose title *contains* the specified value. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;ContactRequestTaskMessage&gt;**](ContactRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_contact_request_task

> <ContactRequestTaskMessage> update_contact_request_task(contact_request_task_id, update_contact_request_task_request)

Update a contact request

Updates a contact request.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View` `Edit`

### Examples

```ruby
require 'time'
require 'buildium-ruby'
# setup authorization
Buildium.configure do |config|
  # Configure API key authorization: clientId
  config.api_key['clientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientId'] = 'Bearer'

  # Configure API key authorization: clientSecret
  config.api_key['clientSecret'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientSecret'] = 'Bearer'
end

api_instance = Buildium::ContactRequestsApi.new
contact_request_task_id = 56 # Integer | The contact request identifier.
update_contact_request_task_request = Buildium::UpdateContactRequestTaskRequest.new({title: 'title_example', assigned_to_user_id: 37, task_status: 'New', priority: 'Low', contact_detail: Buildium::ContactRequestTaskPutMessageContactDetail.new({first_name: 'first_name_example'})}) # UpdateContactRequestTaskRequest | 

begin
  # Update a contact request
  result = api_instance.update_contact_request_task(contact_request_task_id, update_contact_request_task_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ContactRequestsApi->update_contact_request_task: #{e}"
end
```

#### Using the update_contact_request_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactRequestTaskMessage>, Integer, Hash)> update_contact_request_task_with_http_info(contact_request_task_id, update_contact_request_task_request)

```ruby
begin
  # Update a contact request
  data, status_code, headers = api_instance.update_contact_request_task_with_http_info(contact_request_task_id, update_contact_request_task_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ContactRequestsApi->update_contact_request_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_request_task_id** | **Integer** | The contact request identifier. |  |
| **update_contact_request_task_request** | [**UpdateContactRequestTaskRequest**](UpdateContactRequestTaskRequest.md) |  |  |

### Return type

[**ContactRequestTaskMessage**](ContactRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

