# Buildium::TasksApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_contact_request_task**](TasksApi.md#create_contact_request_task) | **POST** /v1/tasks/contactrequests | Create a contact request |
| [**create_rental_owner_request_task**](TasksApi.md#create_rental_owner_request_task) | **POST** /v1/tasks/rentalownerrequests | Create a rental owner request |
| [**create_resource**](TasksApi.md#create_resource) | **POST** /v1/tasks/residentrequests | Create a resident request |
| [**create_task_category**](TasksApi.md#create_task_category) | **POST** /v1/tasks/categories | Create a task category |
| [**create_to_do_task**](TasksApi.md#create_to_do_task) | **POST** /v1/tasks/todorequests | Create a to do task |
| [**get_all_rental_owner_request_tasks**](TasksApi.md#get_all_rental_owner_request_tasks) | **GET** /v1/tasks/rentalownerrequests | Retrieve all rental owner requests |
| [**get_all_task_categories**](TasksApi.md#get_all_task_categories) | **GET** /v1/tasks/categories | Retrieve all task categories |
| [**get_all_tasks**](TasksApi.md#get_all_tasks) | **GET** /v1/tasks | Retrieve all tasks |
| [**get_contact_request_task_by_id**](TasksApi.md#get_contact_request_task_by_id) | **GET** /v1/tasks/contactrequests/{contactRequestTaskId} | Retrieve a contact request |
| [**get_contact_request_tasks**](TasksApi.md#get_contact_request_tasks) | **GET** /v1/tasks/contactrequests | Retrieve all contact requests |
| [**get_rental_owner_request_task_by_id**](TasksApi.md#get_rental_owner_request_task_by_id) | **GET** /v1/tasks/rentalownerrequests/{rentalOwnerRequestTaskId} | Retrieve a rental owner request |
| [**get_resident_request_task**](TasksApi.md#get_resident_request_task) | **GET** /v1/tasks/residentrequests/{residentRequestTaskId} | Retrieve a resident request |
| [**get_resident_request_tasks**](TasksApi.md#get_resident_request_tasks) | **GET** /v1/tasks/residentrequests | Retrieve all resident requests |
| [**get_task_by_id**](TasksApi.md#get_task_by_id) | **GET** /v1/tasks/{taskId} | Retrieve a task |
| [**get_task_category_by_id**](TasksApi.md#get_task_category_by_id) | **GET** /v1/tasks/categories/{taskCategoryId} | Retrieve a task category |
| [**get_to_do_task_by_id**](TasksApi.md#get_to_do_task_by_id) | **GET** /v1/tasks/todorequests/{toDoTaskId} | Retrieve a to do task |
| [**get_to_do_tasks**](TasksApi.md#get_to_do_tasks) | **GET** /v1/tasks/todorequests | Retrieve all to do tasks |
| [**update_contact_request_task**](TasksApi.md#update_contact_request_task) | **PUT** /v1/tasks/contactrequests/{contactRequestTaskId} | Update a contact request |
| [**update_rental_owner_request_task**](TasksApi.md#update_rental_owner_request_task) | **PUT** /v1/tasks/rentalownerrequests/{rentalOwnerRequestTaskId} | Update a rental owner request |
| [**update_resource**](TasksApi.md#update_resource) | **PUT** /v1/tasks/residentrequests/{residentRequestTaskId} | Update a resident request |
| [**update_task_category**](TasksApi.md#update_task_category) | **PUT** /v1/tasks/categories/{taskCategoryId} | Updates a task category |
| [**update_to_do_task**](TasksApi.md#update_to_do_task) | **PUT** /v1/tasks/todorequests/{toDoTaskId} | Updates a to do task |


## create_contact_request_task

> <ContactRequestTaskMessage> create_contact_request_task(contact_request_task_post_message)

Create a contact request

Creates a contact request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View` `Edit`

### Examples

```ruby
require 'time'
require 'buildium'
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
contact_request_task_post_message = Buildium::ContactRequestTaskPostMessage.new({title: 'title_example', assigned_to_user_id: 37, task_status: 'New', priority: 'Low', contact_detail: Buildium::ContactDetailSaveMessage.new({first_name: 'first_name_example'})}) # ContactRequestTaskPostMessage | 

begin
  # Create a contact request
  result = api_instance.create_contact_request_task(contact_request_task_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->create_contact_request_task: #{e}"
end
```

#### Using the create_contact_request_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactRequestTaskMessage>, Integer, Hash)> create_contact_request_task_with_http_info(contact_request_task_post_message)

```ruby
begin
  # Create a contact request
  data, status_code, headers = api_instance.create_contact_request_task_with_http_info(contact_request_task_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->create_contact_request_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_request_task_post_message** | [**ContactRequestTaskPostMessage**](ContactRequestTaskPostMessage.md) |  |  |

### Return type

[**ContactRequestTaskMessage**](ContactRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rental_owner_request_task

> <RentalOwnerRequestTaskMessage> create_rental_owner_request_task(rental_owner_request_task_post_message)

Create a rental owner request

Creates a rental owner request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View` `Edit`

### Examples

```ruby
require 'time'
require 'buildium'
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
rental_owner_request_task_post_message = Buildium::RentalOwnerRequestTaskPostMessage.new({title: 'title_example', task_status: 'New', priority: 'Low', requested_by_rental_owner_id: 37}) # RentalOwnerRequestTaskPostMessage | 

begin
  # Create a rental owner request
  result = api_instance.create_rental_owner_request_task(rental_owner_request_task_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->create_rental_owner_request_task: #{e}"
end
```

#### Using the create_rental_owner_request_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalOwnerRequestTaskMessage>, Integer, Hash)> create_rental_owner_request_task_with_http_info(rental_owner_request_task_post_message)

```ruby
begin
  # Create a rental owner request
  data, status_code, headers = api_instance.create_rental_owner_request_task_with_http_info(rental_owner_request_task_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalOwnerRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->create_rental_owner_request_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_request_task_post_message** | [**RentalOwnerRequestTaskPostMessage**](RentalOwnerRequestTaskPostMessage.md) |  |  |

### Return type

[**RentalOwnerRequestTaskMessage**](RentalOwnerRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_resource

> <ResidentRequestTaskMessage> create_resource(resident_request_task_post_message)

Create a resident request

Creates a resident request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `Edit`

### Examples

```ruby
require 'time'
require 'buildium'
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
resident_request_task_post_message = Buildium::ResidentRequestTaskPostMessage.new({title: 'title_example', unit_agreement_id: 37, requested_by_entity_id: 37, task_status: 'New', priority: 'Low'}) # ResidentRequestTaskPostMessage | 

begin
  # Create a resident request
  result = api_instance.create_resource(resident_request_task_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->create_resource: #{e}"
end
```

#### Using the create_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResidentRequestTaskMessage>, Integer, Hash)> create_resource_with_http_info(resident_request_task_post_message)

```ruby
begin
  # Create a resident request
  data, status_code, headers = api_instance.create_resource_with_http_info(resident_request_task_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResidentRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->create_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resident_request_task_post_message** | [**ResidentRequestTaskPostMessage**](ResidentRequestTaskPostMessage.md) |  |  |

### Return type

[**ResidentRequestTaskMessage**](ResidentRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_task_category

> <TaskCategoryMessage> create_task_category(task_category_save_message)

Create a task category

Create a task category.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `Edit`

### Examples

```ruby
require 'time'
require 'buildium'
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


## create_to_do_task

> <ToDoTaskMessage> create_to_do_task(to_do_task_post_message)

Create a to do task

Creates a to do task.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `Edit`

### Examples

```ruby
require 'time'
require 'buildium'
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
to_do_task_post_message = Buildium::ToDoTaskPostMessage.new({title: 'title_example', assigned_to_user_id: 37, task_status: 'New', priority: 'Low'}) # ToDoTaskPostMessage | 

begin
  # Create a to do task
  result = api_instance.create_to_do_task(to_do_task_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->create_to_do_task: #{e}"
end
```

#### Using the create_to_do_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToDoTaskMessage>, Integer, Hash)> create_to_do_task_with_http_info(to_do_task_post_message)

```ruby
begin
  # Create a to do task
  data, status_code, headers = api_instance.create_to_do_task_with_http_info(to_do_task_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToDoTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->create_to_do_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_do_task_post_message** | [**ToDoTaskPostMessage**](ToDoTaskPostMessage.md) |  |  |

### Return type

[**ToDoTaskMessage**](ToDoTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_rental_owner_request_tasks

> <Array<RentalOwnerRequestTaskMessage>> get_all_rental_owner_request_tasks(opts)

Retrieve all rental owner requests

Retrieves all rental owner requests.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium'
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
  # Retrieve all rental owner requests
  result = api_instance.get_all_rental_owner_request_tasks(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_all_rental_owner_request_tasks: #{e}"
end
```

#### Using the get_all_rental_owner_request_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentalOwnerRequestTaskMessage>>, Integer, Hash)> get_all_rental_owner_request_tasks_with_http_info(opts)

```ruby
begin
  # Retrieve all rental owner requests
  data, status_code, headers = api_instance.get_all_rental_owner_request_tasks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentalOwnerRequestTaskMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_all_rental_owner_request_tasks_with_http_info: #{e}"
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

[**Array&lt;RentalOwnerRequestTaskMessage&gt;**](RentalOwnerRequestTaskMessage.md)

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
require 'buildium'
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


## get_all_tasks

> <Array<AllTasksMessage>> get_all_tasks(opts)

Retrieve all tasks

Retrieves a list of tasks.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium'
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


## get_contact_request_task_by_id

> <ContactRequestTaskMessage> get_contact_request_task_by_id(contact_request_task_id)

Retrieve a contact request

Retrieves a contact request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium'
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
contact_request_task_id = 56 # Integer | The contact request identifier.

begin
  # Retrieve a contact request
  result = api_instance.get_contact_request_task_by_id(contact_request_task_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_contact_request_task_by_id: #{e}"
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
  puts "Error when calling TasksApi->get_contact_request_task_by_id_with_http_info: #{e}"
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

Retrieves a list of contact requests.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium'
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
  puts "Error when calling TasksApi->get_contact_request_tasks: #{e}"
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
  puts "Error when calling TasksApi->get_contact_request_tasks_with_http_info: #{e}"
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


## get_rental_owner_request_task_by_id

> <RentalOwnerRequestTaskMessage> get_rental_owner_request_task_by_id(rental_owner_request_task_id)

Retrieve a rental owner request

Retrieves a specific rental owner request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium'
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
rental_owner_request_task_id = 56 # Integer | The rental owner request identifier.

begin
  # Retrieve a rental owner request
  result = api_instance.get_rental_owner_request_task_by_id(rental_owner_request_task_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_rental_owner_request_task_by_id: #{e}"
end
```

#### Using the get_rental_owner_request_task_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalOwnerRequestTaskMessage>, Integer, Hash)> get_rental_owner_request_task_by_id_with_http_info(rental_owner_request_task_id)

```ruby
begin
  # Retrieve a rental owner request
  data, status_code, headers = api_instance.get_rental_owner_request_task_by_id_with_http_info(rental_owner_request_task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalOwnerRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_rental_owner_request_task_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_request_task_id** | **Integer** | The rental owner request identifier. |  |

### Return type

[**RentalOwnerRequestTaskMessage**](RentalOwnerRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resident_request_task

> <ResidentRequestTaskMessage> get_resident_request_task(resident_request_task_id)

Retrieve a resident request

Retrieves a specific resident request.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium'
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
resident_request_task_id = 56 # Integer | The resident request identifier.

begin
  # Retrieve a resident request
  result = api_instance.get_resident_request_task(resident_request_task_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_resident_request_task: #{e}"
end
```

#### Using the get_resident_request_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResidentRequestTaskMessage>, Integer, Hash)> get_resident_request_task_with_http_info(resident_request_task_id)

```ruby
begin
  # Retrieve a resident request
  data, status_code, headers = api_instance.get_resident_request_task_with_http_info(resident_request_task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResidentRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_resident_request_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resident_request_task_id** | **Integer** | The resident request identifier. |  |

### Return type

[**ResidentRequestTaskMessage**](ResidentRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_resident_request_tasks

> <Array<ResidentRequestTaskMessage>> get_resident_request_tasks(opts)

Retrieve all resident requests

Retrieves a list of resident requests.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium'
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
  # Retrieve all resident requests
  result = api_instance.get_resident_request_tasks(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_resident_request_tasks: #{e}"
end
```

#### Using the get_resident_request_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ResidentRequestTaskMessage>>, Integer, Hash)> get_resident_request_tasks_with_http_info(opts)

```ruby
begin
  # Retrieve all resident requests
  data, status_code, headers = api_instance.get_resident_request_tasks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ResidentRequestTaskMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_resident_request_tasks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entitytype** | **String** | Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is populated. | [optional] |
| **entityid** | **Integer** | Filters results to any task associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field. | [optional] |
| **statuses** | [**Array&lt;String&gt;**](String.md) | Filters results by the status of the task. If no status is specified, tasks with any status will be returned. | [optional] |
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

[**Array&lt;ResidentRequestTaskMessage&gt;**](ResidentRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_task_by_id

> <AllTasksMessage> get_task_by_id(task_id)

Retrieve a task

Retrieves a specific task.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium'
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
require 'buildium'
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


## get_to_do_task_by_id

> <ToDoTaskMessage> get_to_do_task_by_id(to_do_task_id)

Retrieve a to do task

Retrieves a to do task.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium'
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
to_do_task_id = 56 # Integer | The to do task identifier

begin
  # Retrieve a to do task
  result = api_instance.get_to_do_task_by_id(to_do_task_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_to_do_task_by_id: #{e}"
end
```

#### Using the get_to_do_task_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToDoTaskMessage>, Integer, Hash)> get_to_do_task_by_id_with_http_info(to_do_task_id)

```ruby
begin
  # Retrieve a to do task
  data, status_code, headers = api_instance.get_to_do_task_by_id_with_http_info(to_do_task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToDoTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_to_do_task_by_id_with_http_info: #{e}"
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

Retrieve all to do tasks

Retrieves a list of to do tasks.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View`

### Examples

```ruby
require 'time'
require 'buildium'
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
  # Retrieve all to do tasks
  result = api_instance.get_to_do_tasks(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_to_do_tasks: #{e}"
end
```

#### Using the get_to_do_tasks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ToDoTaskMessage>>, Integer, Hash)> get_to_do_tasks_with_http_info(opts)

```ruby
begin
  # Retrieve all to do tasks
  data, status_code, headers = api_instance.get_to_do_tasks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ToDoTaskMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->get_to_do_tasks_with_http_info: #{e}"
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


## update_contact_request_task

> <ContactRequestTaskMessage> update_contact_request_task(contact_request_task_id, contact_request_task_put_message)

Update a contact request

Updates a contact request.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View` `Edit`

### Examples

```ruby
require 'time'
require 'buildium'
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
contact_request_task_id = 56 # Integer | The contact request identifier.
contact_request_task_put_message = Buildium::ContactRequestTaskPutMessage.new({title: 'title_example', assigned_to_user_id: 37, task_status: 'New', priority: 'Low', contact_detail: Buildium::ContactDetailSaveMessage.new({first_name: 'first_name_example'})}) # ContactRequestTaskPutMessage | 

begin
  # Update a contact request
  result = api_instance.update_contact_request_task(contact_request_task_id, contact_request_task_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_contact_request_task: #{e}"
end
```

#### Using the update_contact_request_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ContactRequestTaskMessage>, Integer, Hash)> update_contact_request_task_with_http_info(contact_request_task_id, contact_request_task_put_message)

```ruby
begin
  # Update a contact request
  data, status_code, headers = api_instance.update_contact_request_task_with_http_info(contact_request_task_id, contact_request_task_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ContactRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_contact_request_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **contact_request_task_id** | **Integer** | The contact request identifier. |  |
| **contact_request_task_put_message** | [**ContactRequestTaskPutMessage**](ContactRequestTaskPutMessage.md) |  |  |

### Return type

[**ContactRequestTaskMessage**](ContactRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rental_owner_request_task

> <RentalOwnerRequestTaskMessage> update_rental_owner_request_task(rental_owner_request_task_id, rental_owner_request_task_put_message)

Update a rental owner request

Updates a rental owner request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View` `Edit`

### Examples

```ruby
require 'time'
require 'buildium'
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
rental_owner_request_task_id = 56 # Integer | The rental owner request identifier.
rental_owner_request_task_put_message = Buildium::RentalOwnerRequestTaskPutMessage.new({title: 'title_example', task_status: 'New', priority: 'Low'}) # RentalOwnerRequestTaskPutMessage | 

begin
  # Update a rental owner request
  result = api_instance.update_rental_owner_request_task(rental_owner_request_task_id, rental_owner_request_task_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_rental_owner_request_task: #{e}"
end
```

#### Using the update_rental_owner_request_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalOwnerRequestTaskMessage>, Integer, Hash)> update_rental_owner_request_task_with_http_info(rental_owner_request_task_id, rental_owner_request_task_put_message)

```ruby
begin
  # Update a rental owner request
  data, status_code, headers = api_instance.update_rental_owner_request_task_with_http_info(rental_owner_request_task_id, rental_owner_request_task_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalOwnerRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_rental_owner_request_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_request_task_id** | **Integer** | The rental owner request identifier. |  |
| **rental_owner_request_task_put_message** | [**RentalOwnerRequestTaskPutMessage**](RentalOwnerRequestTaskPutMessage.md) |  |  |

### Return type

[**RentalOwnerRequestTaskMessage**](RentalOwnerRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_resource

> <ResidentRequestTaskMessage> update_resource(resident_request_task_id, resident_request_task_put_message)

Update a resident request

Update a resident request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `Edit`

### Examples

```ruby
require 'time'
require 'buildium'
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
resident_request_task_id = 56 # Integer | The resident request identifier.
resident_request_task_put_message = Buildium::ResidentRequestTaskPutMessage.new({title: 'title_example', task_status: 'New', priority: 'Low'}) # ResidentRequestTaskPutMessage | 

begin
  # Update a resident request
  result = api_instance.update_resource(resident_request_task_id, resident_request_task_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_resource: #{e}"
end
```

#### Using the update_resource_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResidentRequestTaskMessage>, Integer, Hash)> update_resource_with_http_info(resident_request_task_id, resident_request_task_put_message)

```ruby
begin
  # Update a resident request
  data, status_code, headers = api_instance.update_resource_with_http_info(resident_request_task_id, resident_request_task_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResidentRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_resource_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resident_request_task_id** | **Integer** | The resident request identifier. |  |
| **resident_request_task_put_message** | [**ResidentRequestTaskPutMessage**](ResidentRequestTaskPutMessage.md) |  |  |

### Return type

[**ResidentRequestTaskMessage**](ResidentRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_task_category

> <TaskCategoryMessage> update_task_category(task_category_id, task_category_put_message)

Updates a task category

Updates a task category.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `Edit`

### Examples

```ruby
require 'time'
require 'buildium'
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
  # Updates a task category
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
  # Updates a task category
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


## update_to_do_task

> <ToDoTaskMessage> update_to_do_task(to_do_task_id, to_do_task_put_message)

Updates a to do task

Updates a to do task  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks &gt; Tasks</span> - `View` `Edit`

### Examples

```ruby
require 'time'
require 'buildium'
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
to_do_task_id = 56 # Integer | The to do task identifier.
to_do_task_put_message = Buildium::ToDoTaskPutMessage.new({title: 'title_example', assigned_to_user_id: 37, task_status: 'New', priority: 'Low'}) # ToDoTaskPutMessage | 

begin
  # Updates a to do task
  result = api_instance.update_to_do_task(to_do_task_id, to_do_task_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_to_do_task: #{e}"
end
```

#### Using the update_to_do_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ToDoTaskMessage>, Integer, Hash)> update_to_do_task_with_http_info(to_do_task_id, to_do_task_put_message)

```ruby
begin
  # Updates a to do task
  data, status_code, headers = api_instance.update_to_do_task_with_http_info(to_do_task_id, to_do_task_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ToDoTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling TasksApi->update_to_do_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_do_task_id** | **Integer** | The to do task identifier. |  |
| **to_do_task_put_message** | [**ToDoTaskPutMessage**](ToDoTaskPutMessage.md) |  |  |

### Return type

[**ToDoTaskMessage**](ToDoTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

