# Buildium::ArchitecturalRequestsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_architectural_request_async**](ArchitecturalRequestsApi.md#create_architectural_request_async) | **POST** /v1/associations/ownershipaccounts/architecturalrequests | Create an architectural request |
| [**create_upload_file_request**](ArchitecturalRequestsApi.md#create_upload_file_request) | **POST** /v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files/uploadrequests | Upload an architectural request file |
| [**download_architectural_request_file_async**](ArchitecturalRequestsApi.md#download_architectural_request_file_async) | **POST** /v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files/{fileId}/downloadrequests | Download an architectural request file |
| [**get_architectural_request_by_id**](ArchitecturalRequestsApi.md#get_architectural_request_by_id) | **GET** /v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId} | Retrieve an architectural request |
| [**get_architectural_request_file_async**](ArchitecturalRequestsApi.md#get_architectural_request_file_async) | **GET** /v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files/{fileId} | Retrieve an architectural request file |
| [**get_architectural_request_files_history_paged_async**](ArchitecturalRequestsApi.md#get_architectural_request_files_history_paged_async) | **GET** /v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files | Retrieve all files for an architectural request |
| [**get_architectural_requests**](ArchitecturalRequestsApi.md#get_architectural_requests) | **GET** /v1/associations/ownershipaccounts/architecturalrequests | Retrieve all architectural requests |


## create_architectural_request_async

> <AssociationArchitecturalRequestMessage> create_architectural_request_async(create_architectural_request_async_request)

Create an architectural request

Creates an architectural request  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit`  <br />

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

api_instance = Buildium::ArchitecturalRequestsApi.new
create_architectural_request_async_request = Buildium::CreateArchitecturalRequestAsyncRequest.new({association_id: 37, ownership_account_id: 37, name: 'name_example', submitted_date_time: Time.now}) # CreateArchitecturalRequestAsyncRequest | 

begin
  # Create an architectural request
  result = api_instance.create_architectural_request_async(create_architectural_request_async_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->create_architectural_request_async: #{e}"
end
```

#### Using the create_architectural_request_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationArchitecturalRequestMessage>, Integer, Hash)> create_architectural_request_async_with_http_info(create_architectural_request_async_request)

```ruby
begin
  # Create an architectural request
  data, status_code, headers = api_instance.create_architectural_request_async_with_http_info(create_architectural_request_async_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationArchitecturalRequestMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->create_architectural_request_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_architectural_request_async_request** | [**CreateArchitecturalRequestAsyncRequest**](CreateArchitecturalRequestAsyncRequest.md) |  |  |

### Return type

[**AssociationArchitecturalRequestMessage**](AssociationArchitecturalRequestMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_upload_file_request

> <FileUploadTicketMessage> create_upload_file_request(architectural_request_id, create_upload_file_request_request)

Upload an architectural request file

Uploads a file and associates it to the specified architectural request record.  <br /><br />Uploading a file requires making two API requests. Each step is outlined below.  <br /><br /><strong>Step 1 - Save file metadata</strong><br />  The first step in the file upload process is to submit the file metadata to `/v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId:int}/files/uploadrequests`. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  <br /><br /><strong>NOTE:</strong> The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  <br /><br /><strong>Step 2 - Upload the file binary</strong><br />  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  <br />  1. Form a POST request using the value of the `BucketUrl` property as the URL.   <br /><br />  2. Set the `Content-Type` header to `multipart/form-data`.  <br /><br />  3. Copy the fields from the `FormData`  property to this request as form-data key/value pairs.  <br /><strong>NOTE:</strong> These values must added to the request form-data in the order they were received in the response.  <br /><br />  4. Lastly create a form-data key named `file` and set the value to the file binary.  <br /><strong>NOTE:</strong> This must be the last field in the form-data list.  <br /><br />This image shows what the POST request should look like if you're using Postman:  <img src=\"file-upload-example.png\" /><br /><br />  5. Send the POST request! A successful request will return with a `204 - NO CONTENT` HTTP response code. For any failure responses, please refer to <a target=\"_blank\" href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\">AWS documentation</a> on REST error responses.  <br /><br /><strong>NOTE:</strong> The file identifier is not generated in this response. To retrieve the file identifier, call `/v1/files` and pass the `PhysicalFileName` value received from the response of this endpoint into the `physicalfilenames` query parameter.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::ArchitecturalRequestsApi.new
architectural_request_id = 56 # Integer | 
create_upload_file_request_request = Buildium::CreateUploadFileRequestRequest.new({file_name: 'file_name_example'}) # CreateUploadFileRequestRequest | 

begin
  # Upload an architectural request file
  result = api_instance.create_upload_file_request(architectural_request_id, create_upload_file_request_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->create_upload_file_request: #{e}"
end
```

#### Using the create_upload_file_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileUploadTicketMessage>, Integer, Hash)> create_upload_file_request_with_http_info(architectural_request_id, create_upload_file_request_request)

```ruby
begin
  # Upload an architectural request file
  data, status_code, headers = api_instance.create_upload_file_request_with_http_info(architectural_request_id, create_upload_file_request_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileUploadTicketMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->create_upload_file_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architectural_request_id** | **Integer** |  |  |
| **create_upload_file_request_request** | [**CreateUploadFileRequestRequest**](CreateUploadFileRequestRequest.md) |  |  |

### Return type

[**FileUploadTicketMessage**](FileUploadTicketMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## download_architectural_request_file_async

> <FileDownloadMessage> download_architectural_request_file_async(architectural_request_id, file_id)

Download an architectural request file

Downloads a specific file associated to the architectural request.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View`

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

api_instance = Buildium::ArchitecturalRequestsApi.new
architectural_request_id = 56 # Integer | 
file_id = 56 # Integer | 

begin
  # Download an architectural request file
  result = api_instance.download_architectural_request_file_async(architectural_request_id, file_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->download_architectural_request_file_async: #{e}"
end
```

#### Using the download_architectural_request_file_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDownloadMessage>, Integer, Hash)> download_architectural_request_file_async_with_http_info(architectural_request_id, file_id)

```ruby
begin
  # Download an architectural request file
  data, status_code, headers = api_instance.download_architectural_request_file_async_with_http_info(architectural_request_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDownloadMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->download_architectural_request_file_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architectural_request_id** | **Integer** |  |  |
| **file_id** | **Integer** |  |  |

### Return type

[**FileDownloadMessage**](FileDownloadMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_architectural_request_by_id

> <AssociationArchitecturalRequestMessage> get_architectural_request_by_id(architectural_request_id)

Retrieve an architectural request

Retrieves a specific architectural request.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View`

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

api_instance = Buildium::ArchitecturalRequestsApi.new
architectural_request_id = 56 # Integer | 

begin
  # Retrieve an architectural request
  result = api_instance.get_architectural_request_by_id(architectural_request_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->get_architectural_request_by_id: #{e}"
end
```

#### Using the get_architectural_request_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationArchitecturalRequestMessage>, Integer, Hash)> get_architectural_request_by_id_with_http_info(architectural_request_id)

```ruby
begin
  # Retrieve an architectural request
  data, status_code, headers = api_instance.get_architectural_request_by_id_with_http_info(architectural_request_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationArchitecturalRequestMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->get_architectural_request_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architectural_request_id** | **Integer** |  |  |

### Return type

[**AssociationArchitecturalRequestMessage**](AssociationArchitecturalRequestMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_architectural_request_file_async

> <AssociationArchitecturalRequestFileMessage> get_architectural_request_file_async(architectural_request_id, file_id)

Retrieve an architectural request file

Retrieves an architectural request file.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View`

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

api_instance = Buildium::ArchitecturalRequestsApi.new
architectural_request_id = 56 # Integer | 
file_id = 56 # Integer | 

begin
  # Retrieve an architectural request file
  result = api_instance.get_architectural_request_file_async(architectural_request_id, file_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->get_architectural_request_file_async: #{e}"
end
```

#### Using the get_architectural_request_file_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationArchitecturalRequestFileMessage>, Integer, Hash)> get_architectural_request_file_async_with_http_info(architectural_request_id, file_id)

```ruby
begin
  # Retrieve an architectural request file
  data, status_code, headers = api_instance.get_architectural_request_file_async_with_http_info(architectural_request_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationArchitecturalRequestFileMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->get_architectural_request_file_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architectural_request_id** | **Integer** |  |  |
| **file_id** | **Integer** |  |  |

### Return type

[**AssociationArchitecturalRequestFileMessage**](AssociationArchitecturalRequestFileMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_architectural_request_files_history_paged_async

> <AssociationArchitecturalRequestFileMessage> get_architectural_request_files_history_paged_async(architectural_request_id, opts)

Retrieve all files for an architectural request

Retrieves all files for an architectural request.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View`

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

api_instance = Buildium::ArchitecturalRequestsApi.new
architectural_request_id = 56 # Integer | 
opts = {
  ids: [37], # Array<Integer> | The IDs of the architectural request files to filter by.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all files for an architectural request
  result = api_instance.get_architectural_request_files_history_paged_async(architectural_request_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->get_architectural_request_files_history_paged_async: #{e}"
end
```

#### Using the get_architectural_request_files_history_paged_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationArchitecturalRequestFileMessage>, Integer, Hash)> get_architectural_request_files_history_paged_async_with_http_info(architectural_request_id, opts)

```ruby
begin
  # Retrieve all files for an architectural request
  data, status_code, headers = api_instance.get_architectural_request_files_history_paged_async_with_http_info(architectural_request_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationArchitecturalRequestFileMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->get_architectural_request_files_history_paged_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **architectural_request_id** | **Integer** |  |  |
| **ids** | [**Array&lt;Integer&gt;**](Integer.md) | The IDs of the architectural request files to filter by. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**AssociationArchitecturalRequestFileMessage**](AssociationArchitecturalRequestFileMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_architectural_requests

> <Array<AssociationArchitecturalRequestMessage>> get_architectural_requests(opts)

Retrieve all architectural requests

Retrieves all architectural requests.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View`

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

api_instance = Buildium::ArchitecturalRequestsApi.new
opts = {
  associationids: [37], # Array<Integer> | Filters results to only records that belong to the specified set of association identifiers.
  ownershipaccountids: [37], # Array<Integer> | Filters results to only records that belong to the specified set of ownership account identifiers.
  ids: [37], # Array<Integer> | Filters results to only records that belong to the specified set of architectural request identifiers.
  statuses: ['New'], # Array<String> | Filters results to only records whose status is equal to the specified value.
  decisions: ['Pending'], # Array<String> | Filters results to only records whose decision is equal to the specified value.
  createddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were created after this date. Must be formatted as `YYYY-MM-DDTHH:MM:SSZ`.
  createddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were created before this date. Must be formatted as `YYYY-MM-DDTHH:MM:SSZ`.
  lastupdatedfrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  lastupdatedto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  submitteddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were submitted on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  submitteddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were submitted on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all architectural requests
  result = api_instance.get_architectural_requests(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->get_architectural_requests: #{e}"
end
```

#### Using the get_architectural_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssociationArchitecturalRequestMessage>>, Integer, Hash)> get_architectural_requests_with_http_info(opts)

```ruby
begin
  # Retrieve all architectural requests
  data, status_code, headers = api_instance.get_architectural_requests_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssociationArchitecturalRequestMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ArchitecturalRequestsApi->get_architectural_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **associationids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to only records that belong to the specified set of association identifiers. | [optional] |
| **ownershipaccountids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to only records that belong to the specified set of ownership account identifiers. | [optional] |
| **ids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to only records that belong to the specified set of architectural request identifiers. | [optional] |
| **statuses** | [**Array&lt;String&gt;**](String.md) | Filters results to only records whose status is equal to the specified value. | [optional] |
| **decisions** | [**Array&lt;String&gt;**](String.md) | Filters results to only records whose decision is equal to the specified value. | [optional] |
| **createddatetimefrom** | **Time** | Filters results to only records that were created after this date. Must be formatted as &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] |
| **createddatetimeto** | **Time** | Filters results to only records that were created before this date. Must be formatted as &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;. | [optional] |
| **lastupdatedfrom** | **Time** | Filters results to only records that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **lastupdatedto** | **Time** | Filters results to only records that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **submitteddatetimefrom** | **Time** | Filters results to only records that were submitted on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **submitteddatetimeto** | **Time** | Filters results to only records that were submitted on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;AssociationArchitecturalRequestMessage&gt;**](AssociationArchitecturalRequestMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

