# Buildium::RentalOwnerRequestsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rental_owner_request_task**](RentalOwnerRequestsApi.md#create_rental_owner_request_task) | **POST** /v1/tasks/rentalownerrequests | Create a rental owner request |
| [**get_all_rental_owner_request_tasks**](RentalOwnerRequestsApi.md#get_all_rental_owner_request_tasks) | **GET** /v1/tasks/rentalownerrequests | Retrieve all rental owner requests |
| [**get_rental_owner_request_task_by_id**](RentalOwnerRequestsApi.md#get_rental_owner_request_task_by_id) | **GET** /v1/tasks/rentalownerrequests/{rentalOwnerRequestTaskId} | Retrieve a rental owner request |
| [**get_rental_owner_request_task_contribution_data**](RentalOwnerRequestsApi.md#get_rental_owner_request_task_contribution_data) | **GET** /v1/tasks/rentalownerrequests/{rentalOwnerRequestTaskId}/contributiondata | Retrieve rental owner contribution request |
| [**update_rental_owner_request_task**](RentalOwnerRequestsApi.md#update_rental_owner_request_task) | **PUT** /v1/tasks/rentalownerrequests/{rentalOwnerRequestTaskId} | Update a rental owner request |
| [**update_rental_owner_request_task_contribution_data**](RentalOwnerRequestsApi.md#update_rental_owner_request_task_contribution_data) | **PUT** /v1/tasks/rentalownerrequests/{rentalOwnerRequestTaskId}/contributiondata | Update a rental owner contribution request |


## create_rental_owner_request_task

> <RentalOwnerRequestTaskMessage> create_rental_owner_request_task(create_rental_owner_request_task_request)

Create a rental owner request

Creates a rental owner request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View` `Edit`

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

api_instance = Buildium::RentalOwnerRequestsApi.new
create_rental_owner_request_task_request = Buildium::CreateRentalOwnerRequestTaskRequest.new({title: 'title_example', task_status: 'New', priority: 'Low', requested_by_rental_owner_id: 37}) # CreateRentalOwnerRequestTaskRequest | 

begin
  # Create a rental owner request
  result = api_instance.create_rental_owner_request_task(create_rental_owner_request_task_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnerRequestsApi->create_rental_owner_request_task: #{e}"
end
```

#### Using the create_rental_owner_request_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalOwnerRequestTaskMessage>, Integer, Hash)> create_rental_owner_request_task_with_http_info(create_rental_owner_request_task_request)

```ruby
begin
  # Create a rental owner request
  data, status_code, headers = api_instance.create_rental_owner_request_task_with_http_info(create_rental_owner_request_task_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalOwnerRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnerRequestsApi->create_rental_owner_request_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_rental_owner_request_task_request** | [**CreateRentalOwnerRequestTaskRequest**](CreateRentalOwnerRequestTaskRequest.md) |  |  |

### Return type

[**RentalOwnerRequestTaskMessage**](RentalOwnerRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_rental_owner_request_tasks

> <Array<RentalOwnerRequestTaskMessage>> get_all_rental_owner_request_tasks(opts)

Retrieve all rental owner requests

Retrieves all rental owner requests.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View`

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

api_instance = Buildium::RentalOwnerRequestsApi.new
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
  tasktitle: 'tasktitle_example' # String | Filters results to any task whose title *contains* the specified value.
}

begin
  # Retrieve all rental owner requests
  result = api_instance.get_all_rental_owner_request_tasks(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnerRequestsApi->get_all_rental_owner_request_tasks: #{e}"
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
  puts "Error when calling RentalOwnerRequestsApi->get_all_rental_owner_request_tasks_with_http_info: #{e}"
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

### Return type

[**Array&lt;RentalOwnerRequestTaskMessage&gt;**](RentalOwnerRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_owner_request_task_by_id

> <RentalOwnerRequestTaskMessage> get_rental_owner_request_task_by_id(rental_owner_request_task_id)

Retrieve a rental owner request

Retrieves a specific rental owner request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View`

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

api_instance = Buildium::RentalOwnerRequestsApi.new
rental_owner_request_task_id = 56 # Integer | The rental owner request identifier.

begin
  # Retrieve a rental owner request
  result = api_instance.get_rental_owner_request_task_by_id(rental_owner_request_task_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnerRequestsApi->get_rental_owner_request_task_by_id: #{e}"
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
  puts "Error when calling RentalOwnerRequestsApi->get_rental_owner_request_task_by_id_with_http_info: #{e}"
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


## get_rental_owner_request_task_contribution_data

> <RentalOwnerContributionDataMessage> get_rental_owner_request_task_contribution_data(rental_owner_request_task_id)

Retrieve rental owner contribution request

Retrieves the contribution details for a rental owner contribution request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View`

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

api_instance = Buildium::RentalOwnerRequestsApi.new
rental_owner_request_task_id = 56 # Integer | The rental owner request identifier.

begin
  # Retrieve rental owner contribution request
  result = api_instance.get_rental_owner_request_task_contribution_data(rental_owner_request_task_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnerRequestsApi->get_rental_owner_request_task_contribution_data: #{e}"
end
```

#### Using the get_rental_owner_request_task_contribution_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalOwnerContributionDataMessage>, Integer, Hash)> get_rental_owner_request_task_contribution_data_with_http_info(rental_owner_request_task_id)

```ruby
begin
  # Retrieve rental owner contribution request
  data, status_code, headers = api_instance.get_rental_owner_request_task_contribution_data_with_http_info(rental_owner_request_task_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalOwnerContributionDataMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnerRequestsApi->get_rental_owner_request_task_contribution_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_request_task_id** | **Integer** | The rental owner request identifier. |  |

### Return type

[**RentalOwnerContributionDataMessage**](RentalOwnerContributionDataMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rental_owner_request_task

> <RentalOwnerRequestTaskMessage> update_rental_owner_request_task(rental_owner_request_task_id, update_rental_owner_request_task_request)

Update a rental owner request

Updates a rental owner request.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View` `Edit`

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

api_instance = Buildium::RentalOwnerRequestsApi.new
rental_owner_request_task_id = 56 # Integer | The rental owner request identifier.
update_rental_owner_request_task_request = Buildium::UpdateRentalOwnerRequestTaskRequest.new({title: 'title_example', task_status: 'New', priority: 'Low'}) # UpdateRentalOwnerRequestTaskRequest | 

begin
  # Update a rental owner request
  result = api_instance.update_rental_owner_request_task(rental_owner_request_task_id, update_rental_owner_request_task_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnerRequestsApi->update_rental_owner_request_task: #{e}"
end
```

#### Using the update_rental_owner_request_task_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalOwnerRequestTaskMessage>, Integer, Hash)> update_rental_owner_request_task_with_http_info(rental_owner_request_task_id, update_rental_owner_request_task_request)

```ruby
begin
  # Update a rental owner request
  data, status_code, headers = api_instance.update_rental_owner_request_task_with_http_info(rental_owner_request_task_id, update_rental_owner_request_task_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalOwnerRequestTaskMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnerRequestsApi->update_rental_owner_request_task_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_request_task_id** | **Integer** | The rental owner request identifier. |  |
| **update_rental_owner_request_task_request** | [**UpdateRentalOwnerRequestTaskRequest**](UpdateRentalOwnerRequestTaskRequest.md) |  |  |

### Return type

[**RentalOwnerRequestTaskMessage**](RentalOwnerRequestTaskMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rental_owner_request_task_contribution_data

> <RentalOwnerContributionDataMessage> update_rental_owner_request_task_contribution_data(rental_owner_request_task_id, update_rental_owner_request_task_contribution_data_request)

Update a rental owner contribution request

Updates the contribution details for a rental owner contribution request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View` `Edit`

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

api_instance = Buildium::RentalOwnerRequestsApi.new
rental_owner_request_task_id = 56 # Integer | The rental owner request identifier.
update_rental_owner_request_task_contribution_data_request = Buildium::UpdateRentalOwnerRequestTaskContributionDataRequest.new # UpdateRentalOwnerRequestTaskContributionDataRequest | 

begin
  # Update a rental owner contribution request
  result = api_instance.update_rental_owner_request_task_contribution_data(rental_owner_request_task_id, update_rental_owner_request_task_contribution_data_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnerRequestsApi->update_rental_owner_request_task_contribution_data: #{e}"
end
```

#### Using the update_rental_owner_request_task_contribution_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalOwnerContributionDataMessage>, Integer, Hash)> update_rental_owner_request_task_contribution_data_with_http_info(rental_owner_request_task_id, update_rental_owner_request_task_contribution_data_request)

```ruby
begin
  # Update a rental owner contribution request
  data, status_code, headers = api_instance.update_rental_owner_request_task_contribution_data_with_http_info(rental_owner_request_task_id, update_rental_owner_request_task_contribution_data_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalOwnerContributionDataMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnerRequestsApi->update_rental_owner_request_task_contribution_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_request_task_id** | **Integer** | The rental owner request identifier. |  |
| **update_rental_owner_request_task_contribution_data_request** | [**UpdateRentalOwnerRequestTaskContributionDataRequest**](UpdateRentalOwnerRequestTaskContributionDataRequest.md) |  |  |

### Return type

[**RentalOwnerContributionDataMessage**](RentalOwnerContributionDataMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

