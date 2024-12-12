# Buildium::ToDoRequestsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_to_do_task**](ToDoRequestsApi.md#create_to_do_task) | **POST** /v1/tasks/todorequests | Create a to do request |
| [**get_to_do_task_by_id**](ToDoRequestsApi.md#get_to_do_task_by_id) | **GET** /v1/tasks/todorequests/{toDoTaskId} | Retrieve a to do request |
| [**get_to_do_tasks**](ToDoRequestsApi.md#get_to_do_tasks) | **GET** /v1/tasks/todorequests | Retrieve all to do requests |
| [**update_to_do_task**](ToDoRequestsApi.md#update_to_do_task) | **PUT** /v1/tasks/todorequests/{toDoTaskId} | Update a to do request |


## create_to_do_task

> <ToDoTaskMessage> create_to_do_task(create_to_do_task_request)

Create a to do request

Creates a to do task.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View` `Edit`

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

api_instance = Buildium::ToDoRequestsApi.new
create_to_do_task_request = Buildium::CreateToDoTaskRequest.new({title: 'title_example', assigned_to_user_id: 37, task_status: 'New', priority: 'Low'}) # CreateToDoTaskRequest | 

begin
  # Create a to do request
  result = api_instance.create_to_do_task(create_to_do_task_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ToDoRequestsApi->create_to_do_task: #{e}"
end
```

#### Using the create_to_do_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToDoTaskMessage>, Integer, Hash)> create_to_do_task_with_http_info(create_to_do_task_request)

```ruby
begin
  # Create a to do request
  data, status_code, headers = api_instance.create_to_do_task_with_http_info(create_to_do_task_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToDoTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ToDoRequestsApi->create_to_do_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_to_do_task_request** | [**CreateToDoTaskRequest**](CreateToDoTaskRequest.md) |  |  |

### Return type

[**ToDoTaskMessage**](ToDoTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_to_do_task_by_id

> <ToDoTaskMessage> get_to_do_task_by_id(to_do_task_id)

Retrieve a to do request

Retrieves a to do task.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View`

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

api_instance = Buildium::ToDoRequestsApi.new
to_do_task_id = 56 # Integer | The to do task identifier

begin
  # Retrieve a to do request
  result = api_instance.get_to_do_task_by_id(to_do_task_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ToDoRequestsApi->get_to_do_task_by_id: #{e}"
end
```

#### Using the get_to_do_task_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToDoTaskMessage>, Integer, Hash)> get_to_do_task_by_id_with_http_info(to_do_task_id)

```ruby
begin
  # Retrieve a to do request
  data, status_code, headers = api_instance.get_to_do_task_by_id_with_http_info(to_do_task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToDoTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ToDoRequestsApi->get_to_do_task_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_do_task_id** | **Integer** | The to do task identifier |  |

### Return type

[**ToDoTaskMessage**](ToDoTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_to_do_tasks

> <Array<ToDoTaskMessage>> get_to_do_tasks(opts)

Retrieve all to do requests

Retrieves a list of to do tasks.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View`

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

api_instance = Buildium::ToDoRequestsApi.new
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
  # Retrieve all to do requests
  result = api_instance.get_to_do_tasks(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ToDoRequestsApi->get_to_do_tasks: #{e}"
end
```

#### Using the get_to_do_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ToDoTaskMessage>>, Integer, Hash)> get_to_do_tasks_with_http_info(opts)

```ruby
begin
  # Retrieve all to do requests
  data, status_code, headers = api_instance.get_to_do_tasks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ToDoTaskMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ToDoRequestsApi->get_to_do_tasks_with_http_info: #{e}"
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

[**Array&lt;ToDoTaskMessage&gt;**](ToDoTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_to_do_task

> <ToDoTaskMessage> update_to_do_task(to_do_task_id, update_to_do_task_request)

Update a to do request

Updates a to do task  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View` `Edit`

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

api_instance = Buildium::ToDoRequestsApi.new
to_do_task_id = 56 # Integer | The to do task identifier.
update_to_do_task_request = Buildium::UpdateToDoTaskRequest.new({title: 'title_example', assigned_to_user_id: 37, task_status: 'New', priority: 'Low'}) # UpdateToDoTaskRequest | 

begin
  # Update a to do request
  result = api_instance.update_to_do_task(to_do_task_id, update_to_do_task_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ToDoRequestsApi->update_to_do_task: #{e}"
end
```

#### Using the update_to_do_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToDoTaskMessage>, Integer, Hash)> update_to_do_task_with_http_info(to_do_task_id, update_to_do_task_request)

```ruby
begin
  # Update a to do request
  data, status_code, headers = api_instance.update_to_do_task_with_http_info(to_do_task_id, update_to_do_task_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToDoTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ToDoRequestsApi->update_to_do_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_do_task_id** | **Integer** | The to do task identifier. |  |
| **update_to_do_task_request** | [**UpdateToDoTaskRequest**](UpdateToDoTaskRequest.md) |  |  |

### Return type

[**ToDoTaskMessage**](ToDoTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

