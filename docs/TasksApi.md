# Buildium::TasksApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_task_category**](TasksApi.md#create_task_category) | **POST** /v1/tasks/categories | Create a task category |
| [**delete_task_history_file**](TasksApi.md#delete_task_history_file) | **DELETE** /v1/tasks/{taskId}/history/{taskHistoryId}/files/{fileId} | Delete task history file |
| [**get_all_task_categories**](TasksApi.md#get_all_task_categories) | **GET** /v1/tasks/categories | Retrieve all task categories |
| [**get_all_task_history_files**](TasksApi.md#get_all_task_history_files) | **GET** /v1/tasks/{taskId}/history/{taskHistoryId}/files | Retrieve all task history files |
| [**get_all_tasks**](TasksApi.md#get_all_tasks) | **GET** /v1/tasks | Retrieve all tasks |
| [**get_file_download_request**](TasksApi.md#get_file_download_request) | **POST** /v1/tasks/{taskId}/history/{taskHistoryId}/files/{fileId}/downloadrequest | Download a task history file |
| [**get_task_by_id**](TasksApi.md#get_task_by_id) | **GET** /v1/tasks/{taskId} | Retrieve a task |
| [**get_task_category_by_id**](TasksApi.md#get_task_category_by_id) | **GET** /v1/tasks/categories/{taskCategoryId} | Retrieve a task category |
| [**get_task_histories**](TasksApi.md#get_task_histories) | **GET** /v1/tasks/{taskId}/history | Retrieve all task history |
| [**get_task_history_by_id**](TasksApi.md#get_task_history_by_id) | **GET** /v1/tasks/{taskId}/history/{taskHistoryId} | Retrieve a task history |
| [**get_task_history_file_by_id**](TasksApi.md#get_task_history_file_by_id) | **GET** /v1/tasks/{taskId}/history/{taskHistoryId}/files/{fileId} | Retrieve a task history file |
| [**update_task_category**](TasksApi.md#update_task_category) | **PUT** /v1/tasks/categories/{taskCategoryId} | Update a task category |
| [**update_task_history**](TasksApi.md#update_task_history) | **PUT** /v1/tasks/{taskId}/history/{taskHistoryId} | Update a task history |
| [**upload_task_history_file_request_async**](TasksApi.md#upload_task_history_file_request_async) | **POST** /v1/tasks/{taskId}/history/{taskHistoryId}/files/uploadrequests | Upload a task history file |


## create_task_category

> <TaskCategoryMessage> create_task_category(task_category_save_message)

Create a task category

Create a task category.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View` `Edit`

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

api_instance = Buildium::TasksApi.new
task_category_save_message = Buildium::TaskCategorySaveMessage.new({name: 'name_example'}) # TaskCategorySaveMessage | 

begin
  # Create a task category
  result = api_instance.create_task_category(task_category_save_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->create_task_category: #{e}"
end
```

#### Using the create_task_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskCategoryMessage>, Integer, Hash)> create_task_category_with_http_info(task_category_save_message)

```ruby
begin
  # Create a task category
  data, status_code, headers = api_instance.create_task_category_with_http_info(task_category_save_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskCategoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->create_task_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_category_save_message** | [**TaskCategorySaveMessage**](TaskCategorySaveMessage.md) |  |  |

### Return type

[**TaskCategoryMessage**](TaskCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_task_history_file

> delete_task_history_file(task_id, task_history_id, file_id)

Delete task history file

Deletes a specific file from a task history record. The file will be permanently deleted from the Buildium platform an can not be recovered.              <br /><br />This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do's.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View` `Edit` `Delete`

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

api_instance = Buildium::TasksApi.new
task_id = 56 # Integer | 
task_history_id = 56 # Integer | 
file_id = 56 # Integer | 

begin
  # Delete task history file
  api_instance.delete_task_history_file(task_id, task_history_id, file_id)
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->delete_task_history_file: #{e}"
end
```

#### Using the delete_task_history_file_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_task_history_file_with_http_info(task_id, task_history_id, file_id)

```ruby
begin
  # Delete task history file
  data, status_code, headers = api_instance.delete_task_history_file_with_http_info(task_id, task_history_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->delete_task_history_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **Integer** |  |  |
| **task_history_id** | **Integer** |  |  |
| **file_id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_task_categories

> <Array<TaskCategoryMessage>> get_all_task_categories(opts)

Retrieve all task categories

Retrieves a list of task categories.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

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

api_instance = Buildium::TasksApi.new
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all task categories
  result = api_instance.get_all_task_categories(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_all_task_categories: #{e}"
end
```

#### Using the get_all_task_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TaskCategoryMessage>>, Integer, Hash)> get_all_task_categories_with_http_info(opts)

```ruby
begin
  # Retrieve all task categories
  data, status_code, headers = api_instance.get_all_task_categories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TaskCategoryMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_all_task_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;TaskCategoryMessage&gt;**](TaskCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_task_history_files

> <Array<TaskHistoryFileMessage>> get_all_task_history_files(task_id, task_history_id, opts)

Retrieve all task history files

Retrieves the metadata for all files associated with a task history record.              <br /><br />This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do's.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

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

api_instance = Buildium::TasksApi.new
task_id = 56 # Integer | 
task_history_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all task history files
  result = api_instance.get_all_task_history_files(task_id, task_history_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_all_task_history_files: #{e}"
end
```

#### Using the get_all_task_history_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TaskHistoryFileMessage>>, Integer, Hash)> get_all_task_history_files_with_http_info(task_id, task_history_id, opts)

```ruby
begin
  # Retrieve all task history files
  data, status_code, headers = api_instance.get_all_task_history_files_with_http_info(task_id, task_history_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TaskHistoryFileMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_all_task_history_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **Integer** |  |  |
| **task_history_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;TaskHistoryFileMessage&gt;**](TaskHistoryFileMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_tasks

> <Array<AllTasksMessage>> get_all_tasks(opts)

Retrieve all tasks

Retrieves a list of all task/request types (Contact, Owner, Resident and To Do). Note, the response payload only contains fields common across all of the request types. To retrieve the full details of the task query the retrieve endpoint specific to the task type.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

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

api_instance = Buildium::TasksApi.new
opts = {
  entitytype: 'Rental', # String | Specifies the type of entity that the `EntityId` field refers to. This field is required if the `EntityId` field is populated.
  entityid: 56, # Integer | Filters results to any task associated with the specified entity id value. The value must be of the type specified in the `EntityType` field.
  statuses: ['New'], # Array<String> | Filters results by the status of the task. If no status is specified, tasks with any status will be returned.
  type: 'ContactRequest', # String | Filters results to any task associated with the task type specified.
  unitid: 56, # Integer | Filters results to any task associated with the unit identifier.
  unitagreementid: 56, # Integer | Filters results to any task associated with the unit agreement identifier specified.
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
  # Retrieve all tasks
  result = api_instance.get_all_tasks(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_all_tasks: #{e}"
end
```

#### Using the get_all_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AllTasksMessage>>, Integer, Hash)> get_all_tasks_with_http_info(opts)

```ruby
begin
  # Retrieve all tasks
  data, status_code, headers = api_instance.get_all_tasks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AllTasksMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_all_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entitytype** | **String** | Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is populated. | [optional] |
| **entityid** | **Integer** | Filters results to any task associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field. | [optional] |
| **statuses** | [**Array&lt;String&gt;**](String.md) | Filters results by the status of the task. If no status is specified, tasks with any status will be returned. | [optional] |
| **type** | **String** | Filters results to any task associated with the task type specified. | [optional] |
| **unitid** | **Integer** | Filters results to any task associated with the unit identifier. | [optional] |
| **unitagreementid** | **Integer** | Filters results to any task associated with the unit agreement identifier specified. | [optional] |
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

[**Array&lt;AllTasksMessage&gt;**](AllTasksMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_download_request

> <FileDownloadMessage> get_file_download_request(task_id, task_history_id, file_id)

Download a task history file

Downloads a specific file associated to the task history record.              <br /><br />This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do's.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

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

api_instance = Buildium::TasksApi.new
task_id = 56 # Integer | 
task_history_id = 56 # Integer | 
file_id = 56 # Integer | 

begin
  # Download a task history file
  result = api_instance.get_file_download_request(task_id, task_history_id, file_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_file_download_request: #{e}"
end
```

#### Using the get_file_download_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDownloadMessage>, Integer, Hash)> get_file_download_request_with_http_info(task_id, task_history_id, file_id)

```ruby
begin
  # Download a task history file
  data, status_code, headers = api_instance.get_file_download_request_with_http_info(task_id, task_history_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDownloadMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_file_download_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **Integer** |  |  |
| **task_history_id** | **Integer** |  |  |
| **file_id** | **Integer** |  |  |

### Return type

[**FileDownloadMessage**](FileDownloadMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_task_by_id

> <AllTasksMessage> get_task_by_id(task_id)

Retrieve a task

Retrieves a specific task. This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do's. Note, the response payload only contains fields common across all of the request types. To retrieve the full details of the task query the retrieve endpoint specific to the task type.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

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

api_instance = Buildium::TasksApi.new
task_id = 56 # Integer | The task identifier

begin
  # Retrieve a task
  result = api_instance.get_task_by_id(task_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_task_by_id: #{e}"
end
```

#### Using the get_task_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AllTasksMessage>, Integer, Hash)> get_task_by_id_with_http_info(task_id)

```ruby
begin
  # Retrieve a task
  data, status_code, headers = api_instance.get_task_by_id_with_http_info(task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AllTasksMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_task_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **Integer** | The task identifier |  |

### Return type

[**AllTasksMessage**](AllTasksMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_task_category_by_id

> <TaskCategoryMessage> get_task_category_by_id(task_category_id)

Retrieve a task category

Retrieves a specific task category.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

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

api_instance = Buildium::TasksApi.new
task_category_id = 56 # Integer | The task category identifier.

begin
  # Retrieve a task category
  result = api_instance.get_task_category_by_id(task_category_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_task_category_by_id: #{e}"
end
```

#### Using the get_task_category_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskCategoryMessage>, Integer, Hash)> get_task_category_by_id_with_http_info(task_category_id)

```ruby
begin
  # Retrieve a task category
  data, status_code, headers = api_instance.get_task_category_by_id_with_http_info(task_category_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskCategoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_task_category_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_category_id** | **Integer** | The task category identifier. |  |

### Return type

[**TaskCategoryMessage**](TaskCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_task_histories

> <Array<TaskHistoryMessage>> get_task_histories(task_id, opts)

Retrieve all task history

Retrieves all task history records for a specific task.              <br /><br />This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do's.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

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

api_instance = Buildium::TasksApi.new
task_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all task history
  result = api_instance.get_task_histories(task_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_task_histories: #{e}"
end
```

#### Using the get_task_histories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TaskHistoryMessage>>, Integer, Hash)> get_task_histories_with_http_info(task_id, opts)

```ruby
begin
  # Retrieve all task history
  data, status_code, headers = api_instance.get_task_histories_with_http_info(task_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TaskHistoryMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_task_histories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;TaskHistoryMessage&gt;**](TaskHistoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_task_history_by_id

> <TaskHistoryMessage> get_task_history_by_id(task_id, task_history_id)

Retrieve a task history

Retrieves a specific task history record for a task.              <br /><br />This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do's.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

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

api_instance = Buildium::TasksApi.new
task_id = 56 # Integer | 
task_history_id = 56 # Integer | 

begin
  # Retrieve a task history
  result = api_instance.get_task_history_by_id(task_id, task_history_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_task_history_by_id: #{e}"
end
```

#### Using the get_task_history_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskHistoryMessage>, Integer, Hash)> get_task_history_by_id_with_http_info(task_id, task_history_id)

```ruby
begin
  # Retrieve a task history
  data, status_code, headers = api_instance.get_task_history_by_id_with_http_info(task_id, task_history_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskHistoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_task_history_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **Integer** |  |  |
| **task_history_id** | **Integer** |  |  |

### Return type

[**TaskHistoryMessage**](TaskHistoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_task_history_file_by_id

> <TaskHistoryFileMessage> get_task_history_file_by_id(task_id, task_history_id, file_id)

Retrieve a task history file

Retrieves the metadata for a specific file associated with a task history record.              <br /><br />This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do's.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

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

api_instance = Buildium::TasksApi.new
task_id = 56 # Integer | 
task_history_id = 56 # Integer | 
file_id = 56 # Integer | 

begin
  # Retrieve a task history file
  result = api_instance.get_task_history_file_by_id(task_id, task_history_id, file_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_task_history_file_by_id: #{e}"
end
```

#### Using the get_task_history_file_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskHistoryFileMessage>, Integer, Hash)> get_task_history_file_by_id_with_http_info(task_id, task_history_id, file_id)

```ruby
begin
  # Retrieve a task history file
  data, status_code, headers = api_instance.get_task_history_file_by_id_with_http_info(task_id, task_history_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskHistoryFileMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_task_history_file_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **Integer** |  |  |
| **task_history_id** | **Integer** |  |  |
| **file_id** | **Integer** |  |  |

### Return type

[**TaskHistoryFileMessage**](TaskHistoryFileMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_task_category

> <TaskCategoryMessage> update_task_category(task_category_id, task_category_put_message)

Update a task category

Updates a task category.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View` `Edit`

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

api_instance = Buildium::TasksApi.new
task_category_id = 56 # Integer | The task category identifier.
task_category_put_message = Buildium::TaskCategoryPutMessage.new({name: 'name_example'}) # TaskCategoryPutMessage | 

begin
  # Update a task category
  result = api_instance.update_task_category(task_category_id, task_category_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_task_category: #{e}"
end
```

#### Using the update_task_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskCategoryMessage>, Integer, Hash)> update_task_category_with_http_info(task_category_id, task_category_put_message)

```ruby
begin
  # Update a task category
  data, status_code, headers = api_instance.update_task_category_with_http_info(task_category_id, task_category_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskCategoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_task_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_category_id** | **Integer** | The task category identifier. |  |
| **task_category_put_message** | [**TaskCategoryPutMessage**](TaskCategoryPutMessage.md) |  |  |

### Return type

[**TaskCategoryMessage**](TaskCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_task_history

> <TaskHistoryMessage> update_task_history(task_id, task_history_id, task_history_put_message)

Update a task history

Updates a specific task history record for a task.              <br /><br />This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do's.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View` `Edit`

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

api_instance = Buildium::TasksApi.new
task_id = 56 # Integer | 
task_history_id = 56 # Integer | 
task_history_put_message = Buildium::TaskHistoryPutMessage.new({message: 'message_example'}) # TaskHistoryPutMessage | 

begin
  # Update a task history
  result = api_instance.update_task_history(task_id, task_history_id, task_history_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_task_history: #{e}"
end
```

#### Using the update_task_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TaskHistoryMessage>, Integer, Hash)> update_task_history_with_http_info(task_id, task_history_id, task_history_put_message)

```ruby
begin
  # Update a task history
  data, status_code, headers = api_instance.update_task_history_with_http_info(task_id, task_history_id, task_history_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TaskHistoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_task_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **Integer** |  |  |
| **task_history_id** | **Integer** |  |  |
| **task_history_put_message** | [**TaskHistoryPutMessage**](TaskHistoryPutMessage.md) |  |  |

### Return type

[**TaskHistoryMessage**](TaskHistoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upload_task_history_file_request_async

> <FileUploadTicketMessage> upload_task_history_file_request_async(task_id, task_history_id, task_history_file_upload_post_message)

Upload a task history file

Uploads a file and associates it to the specified task history record.  <br /><br />This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do's.  <br /><br />Uploading a file requires making two API requests. Each step is outlined below.  <br /><br /><strong>Step 1 - Save file metadata</strong><br />  The first step in the file upload process is to submit the file metadata to `/v1/tasks/{taskId}/history/{taskHistoryId}/files/uploadrequests`. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  <br /><br /><strong>NOTE:</strong> The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  <br /><br /><strong>Step 2 - Upload the file binary</strong><br />  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  <br />  1. Form a POST request using the value of the `BucketUrl` property as the URL.   <br /><br />  2. Set the `Content-Type` header to `multipart/form-data`.  <br /><br />  3. Copy the fields from the `FormData`  property to this request as form-data key/value pairs.  <br /><strong>NOTE:</strong> These values must added to the request form-data in the order they were received in the response.  <br /><br />  4. Lastly create a form-data key named `file` and set the value to the file binary.  <br /><strong>NOTE:</strong> This must be the last field in the form-data list.  <br /><br />This image shows what the POST request should look like if you're using Postman:  <img src=\"file-upload-example.png\" /><br /><br />  5. Send the POST request! A successful request will return with a `204 - NO CONTENT` HTTP response code. For any failure responses, please refer to <a target=\"_blank\" href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\">AWS documentation</a> on REST error responses.  <br /><br /><strong>NOTE:</strong> The file identifier is not generated in this response. To retrieve the file identifier, call `/v1/files` and pass the `PhysicalFileName` value received from the response of this endpoint into the `physicalfilenames` query parameter.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View` `Edit`

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

api_instance = Buildium::TasksApi.new
task_id = 56 # Integer | 
task_history_id = 56 # Integer | 
task_history_file_upload_post_message = Buildium::TaskHistoryFileUploadPostMessage.new({file_name: 'file_name_example'}) # TaskHistoryFileUploadPostMessage | 

begin
  # Upload a task history file
  result = api_instance.upload_task_history_file_request_async(task_id, task_history_id, task_history_file_upload_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->upload_task_history_file_request_async: #{e}"
end
```

#### Using the upload_task_history_file_request_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileUploadTicketMessage>, Integer, Hash)> upload_task_history_file_request_async_with_http_info(task_id, task_history_id, task_history_file_upload_post_message)

```ruby
begin
  # Upload a task history file
  data, status_code, headers = api_instance.upload_task_history_file_request_async_with_http_info(task_id, task_history_id, task_history_file_upload_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileUploadTicketMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->upload_task_history_file_request_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **task_id** | **Integer** |  |  |
| **task_history_id** | **Integer** |  |  |
| **task_history_file_upload_post_message** | [**TaskHistoryFileUploadPostMessage**](TaskHistoryFileUploadPostMessage.md) |  |  |

### Return type

[**FileUploadTicketMessage**](FileUploadTicketMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

