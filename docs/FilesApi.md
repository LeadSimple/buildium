# Buildium::FilesApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_file_category**](FilesApi.md#create_file_category) | **POST** /v1/files/categories | Create a category |
| [**create_upload_file_request_async**](FilesApi.md#create_upload_file_request_async) | **POST** /v1/files/uploadrequests | Upload a file |
| [**get_file_by_id**](FilesApi.md#get_file_by_id) | **GET** /v1/files/{fileId} | Retrieve a file |
| [**get_file_categories**](FilesApi.md#get_file_categories) | **GET** /v1/files/categories | Retrieve all categories |
| [**get_file_category_by_id**](FilesApi.md#get_file_category_by_id) | **GET** /v1/files/categories/{fileCategoryId} | Retrieve a category |
| [**get_file_download_url_async**](FilesApi.md#get_file_download_url_async) | **POST** /v1/files/{fileId}/downloadrequest | Download a file |
| [**get_file_share_settings_by_id**](FilesApi.md#get_file_share_settings_by_id) | **GET** /v1/files/{fileId}/sharing | Retrieve file share settings |
| [**get_files**](FilesApi.md#get_files) | **GET** /v1/files | Retrieve all files |
| [**update_file**](FilesApi.md#update_file) | **PUT** /v1/files/{fileId} | Update a file |
| [**update_file_category**](FilesApi.md#update_file_category) | **PUT** /v1/files/categories/{fileCategoryId} | Update a category |
| [**update_file_sharing_setting**](FilesApi.md#update_file_sharing_setting) | **PUT** /v1/files/{fileId}/sharing | Update file share settings |


## create_file_category

> <FileCategoryMessage> create_file_category(create_file_category_request)

Create a category

Creates a file category.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents > Files</span> - `View` `Edit`

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

api_instance = Buildium::FilesApi.new
create_file_category_request = Buildium::CreateFileCategoryRequest.new({name: 'name_example'}) # CreateFileCategoryRequest | 

begin
  # Create a category
  result = api_instance.create_file_category(create_file_category_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->create_file_category: #{e}"
end
```

#### Using the create_file_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileCategoryMessage>, Integer, Hash)> create_file_category_with_http_info(create_file_category_request)

```ruby
begin
  # Create a category
  data, status_code, headers = api_instance.create_file_category_with_http_info(create_file_category_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileCategoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->create_file_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_file_category_request** | [**CreateFileCategoryRequest**](CreateFileCategoryRequest.md) |  |  |

### Return type

[**FileCategoryMessage**](FileCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_upload_file_request_async

> <FileUploadTicketMessage> create_upload_file_request_async(create_upload_file_request_async_request)

Upload a file

Uploading a file requires making two API requests. Each step is outlined below.  <br /><br /><strong>Step 1 - Save file metadata</strong><br />  The first step in the file upload process is to submit the file metadata to `/v1/files/uploadrequests`. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  <br /><br /><strong>NOTE:</strong> The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  <br /><br /><strong>Step 2 - Upload the file binary</strong><br />  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  <br />  1. Form a POST request using the value of the `BucketUrl` property as the URL.   <br /><br />  2. Set the `Content-Type` header to `multipart/form-data`.  <br /><br />  3. Copy the fields from the `FormData`  property to this request as form-data key/value pairs.  <br /><strong>NOTE:</strong> These values must added to the request form-data in the order they were received in the response.  <br /><br />  4. Lastly create a form-data key named `file` and set the value to the file binary.  <br /><strong>NOTE:</strong> This must be the last field in the form-data list.  <br /><br />This image shows what the POST request should look like if you're using Postman:  <img src=\"file-upload-example.png\" /><br /><br />  5. Send the POST request! A successful request will return with a `204 - NO CONTENT` HTTP response code. For any failure responses, please refer to <a target=\"_blank\" href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\">AWS documentation</a> on REST error responses.  <br /><br /><strong>NOTE:</strong> The file identifier is not generated in this response. To retrieve the file identifier, call `/v1/files` and pass the `PhysicalFileName` value received from the response of this endpoint into the `physicalfilenames` query parameter.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents > Files</span> - `View` `Edit`

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

api_instance = Buildium::FilesApi.new
create_upload_file_request_async_request = Buildium::CreateUploadFileRequestAsyncRequest.new({entity_type: 'Account', file_name: 'file_name_example', title: 'title_example', category_id: 37}) # CreateUploadFileRequestAsyncRequest | 

begin
  # Upload a file
  result = api_instance.create_upload_file_request_async(create_upload_file_request_async_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->create_upload_file_request_async: #{e}"
end
```

#### Using the create_upload_file_request_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileUploadTicketMessage>, Integer, Hash)> create_upload_file_request_async_with_http_info(create_upload_file_request_async_request)

```ruby
begin
  # Upload a file
  data, status_code, headers = api_instance.create_upload_file_request_async_with_http_info(create_upload_file_request_async_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileUploadTicketMessage>
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->create_upload_file_request_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_upload_file_request_async_request** | [**CreateUploadFileRequestAsyncRequest**](CreateUploadFileRequestAsyncRequest.md) |  |  |

### Return type

[**FileUploadTicketMessage**](FileUploadTicketMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_file_by_id

> <FileMessage> get_file_by_id(file_id)

Retrieve a file

Retrieves the file metadata for a specific file. Note this endpoint will only return file metadata. To download files make requests to the <a href=\"#operation/FileDownloadGetFileDownloadUrlAsync\">Download File endpoint.</a><br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents > Files</span> - `View`

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

api_instance = Buildium::FilesApi.new
file_id = 56 # Integer | 

begin
  # Retrieve a file
  result = api_instance.get_file_by_id(file_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_file_by_id: #{e}"
end
```

#### Using the get_file_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileMessage>, Integer, Hash)> get_file_by_id_with_http_info(file_id)

```ruby
begin
  # Retrieve a file
  data, status_code, headers = api_instance.get_file_by_id_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileMessage>
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_file_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** |  |  |

### Return type

[**FileMessage**](FileMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_categories

> <Array<FileCategoryMessage>> get_file_categories(opts)

Retrieve all categories

Retrieves a list of file categories.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents > Files</span> - `View`

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

api_instance = Buildium::FilesApi.new
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all categories
  result = api_instance.get_file_categories(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_file_categories: #{e}"
end
```

#### Using the get_file_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FileCategoryMessage>>, Integer, Hash)> get_file_categories_with_http_info(opts)

```ruby
begin
  # Retrieve all categories
  data, status_code, headers = api_instance.get_file_categories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FileCategoryMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_file_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;FileCategoryMessage&gt;**](FileCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_category_by_id

> <FileCategoryMessage> get_file_category_by_id(file_category_id)

Retrieve a category

Retrieves a specific file category.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents > Files</span> - `View`

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

api_instance = Buildium::FilesApi.new
file_category_id = 56 # Integer | 

begin
  # Retrieve a category
  result = api_instance.get_file_category_by_id(file_category_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_file_category_by_id: #{e}"
end
```

#### Using the get_file_category_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileCategoryMessage>, Integer, Hash)> get_file_category_by_id_with_http_info(file_category_id)

```ruby
begin
  # Retrieve a category
  data, status_code, headers = api_instance.get_file_category_by_id_with_http_info(file_category_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileCategoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_file_category_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_category_id** | **Integer** |  |  |

### Return type

[**FileCategoryMessage**](FileCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_download_url_async

> <FileDownloadMessage> get_file_download_url_async(file_id)

Download a file

Downloading a file requires making two API requests. The first request to `/v1/files/{fileId}/downloadrequest` will return a secure URL that can be used to download the file contents. Note the download URL is transient and will expire after 5 minutes.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents > Files</span> - `View`

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

api_instance = Buildium::FilesApi.new
file_id = 56 # Integer | 

begin
  # Download a file
  result = api_instance.get_file_download_url_async(file_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_file_download_url_async: #{e}"
end
```

#### Using the get_file_download_url_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDownloadMessage>, Integer, Hash)> get_file_download_url_async_with_http_info(file_id)

```ruby
begin
  # Download a file
  data, status_code, headers = api_instance.get_file_download_url_async_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDownloadMessage>
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_file_download_url_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** |  |  |

### Return type

[**FileDownloadMessage**](FileDownloadMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_file_share_settings_by_id

> <FileSharingMessage> get_file_share_settings_by_id(file_id)

Retrieve file share settings

Retrieves a file's share settings. Note, that the response JSON schema includes share setting fields for all file entity types, however only fields that pertain to the queried file entity type will be populated. For example, if a file of entity type Rental is retrieved only the fields in the Rental section of the response will have values.              <br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents > Files</span> - `View`

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

api_instance = Buildium::FilesApi.new
file_id = 56 # Integer | 

begin
  # Retrieve file share settings
  result = api_instance.get_file_share_settings_by_id(file_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_file_share_settings_by_id: #{e}"
end
```

#### Using the get_file_share_settings_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileSharingMessage>, Integer, Hash)> get_file_share_settings_by_id_with_http_info(file_id)

```ruby
begin
  # Retrieve file share settings
  data, status_code, headers = api_instance.get_file_share_settings_by_id_with_http_info(file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileSharingMessage>
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_file_share_settings_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** |  |  |

### Return type

[**FileSharingMessage**](FileSharingMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_files

> <Array<FileMessage>> get_files(opts)

Retrieve all files

Retrieves a list of files that exist within the customer account. Note this endpoint will only return file metadata. To download files make requests to the <a href=\"#operation/FileDownloadGetFileDownloadUrlAsync\">Download File</a> endpoint.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents > Files</span> - `View`

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

api_instance = Buildium::FilesApi.new
opts = {
  entityid: 56, # Integer | Filters results to any file associated with the specified entity identifier. This filter is used in conjunction with the `EntityType` field which must be set to the type of entity this identifier references.
  entitytype: 'Account', # String | Specifies the type of entity that `EntityId` refers to. This field is required if `EntityId` is specified.
  categoryid: 56, # Integer | Filters results to any file associated with the specified category identifier.
  titleordescription: 'titleordescription_example', # String | Filters results to files whose title or description *contains* the specified value.
  uploadedfrom: Date.parse('2013-10-20'), # Date | Filters results to any files that were updated on or after the specified date. The value must be formatted as YYYY-MM-DD.
  uploadedto: Date.parse('2013-10-20'), # Date | Filters results to any files that were updated on or before the specified date. The value must be formatted as YYYY-MM-DD.
  physicalfilenames: ['inner_example'], # Array<String> | Filters results to any files with a `PhysicalFileName`exactly matching one of the provided values.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all files
  result = api_instance.get_files(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_files: #{e}"
end
```

#### Using the get_files_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FileMessage>>, Integer, Hash)> get_files_with_http_info(opts)

```ruby
begin
  # Retrieve all files
  data, status_code, headers = api_instance.get_files_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FileMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->get_files_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entityid** | **Integer** | Filters results to any file associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references. | [optional] |
| **entitytype** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified. | [optional] |
| **categoryid** | **Integer** | Filters results to any file associated with the specified category identifier. | [optional] |
| **titleordescription** | **String** | Filters results to files whose title or description *contains* the specified value. | [optional] |
| **uploadedfrom** | **Date** | Filters results to any files that were updated on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **uploadedto** | **Date** | Filters results to any files that were updated on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **physicalfilenames** | [**Array&lt;String&gt;**](String.md) | Filters results to any files with a &#x60;PhysicalFileName&#x60;exactly matching one of the provided values. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;FileMessage&gt;**](FileMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_file

> <FileMessage> update_file(file_id, update_file_request)

Update a file

Updates a metadata of the file.               <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents > Files</span> - `View` `Edit`

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

api_instance = Buildium::FilesApi.new
file_id = 56 # Integer | 
update_file_request = Buildium::UpdateFileRequest.new({title: 'title_example', category_id: 37}) # UpdateFileRequest | 

begin
  # Update a file
  result = api_instance.update_file(file_id, update_file_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->update_file: #{e}"
end
```

#### Using the update_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileMessage>, Integer, Hash)> update_file_with_http_info(file_id, update_file_request)

```ruby
begin
  # Update a file
  data, status_code, headers = api_instance.update_file_with_http_info(file_id, update_file_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileMessage>
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->update_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** |  |  |
| **update_file_request** | [**UpdateFileRequest**](UpdateFileRequest.md) |  |  |

### Return type

[**FileMessage**](FileMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_file_category

> <FileCategoryMessage> update_file_category(file_category_id, update_file_category_request)

Update a category

Updates a file category. Note that file categories where `IsEditable` is `false` can not be updated.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents > Files</span> - `View` `Edit`

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

api_instance = Buildium::FilesApi.new
file_category_id = 56 # Integer | 
update_file_category_request = Buildium::UpdateFileCategoryRequest.new({name: 'name_example'}) # UpdateFileCategoryRequest | 

begin
  # Update a category
  result = api_instance.update_file_category(file_category_id, update_file_category_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->update_file_category: #{e}"
end
```

#### Using the update_file_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileCategoryMessage>, Integer, Hash)> update_file_category_with_http_info(file_category_id, update_file_category_request)

```ruby
begin
  # Update a category
  data, status_code, headers = api_instance.update_file_category_with_http_info(file_category_id, update_file_category_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileCategoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->update_file_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_category_id** | **Integer** |  |  |
| **update_file_category_request** | [**UpdateFileCategoryRequest**](UpdateFileCategoryRequest.md) |  |  |

### Return type

[**FileCategoryMessage**](FileCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_file_sharing_setting

> <FileSharingMessage> update_file_sharing_setting(file_id, update_file_sharing_setting_request)

Update file share settings

Updates a file's share settings. Note, can only update a file's share settings based on the file's entity type (ie: If the file belongs to a rental property, you can only update the rental file sharing settings). The response payload contains file share setting values for all file entity types, but the relevant setting values correlate to the file's entity type.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents > Files</span> - `View` `Edit`

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

api_instance = Buildium::FilesApi.new
file_id = 56 # Integer | 
update_file_sharing_setting_request = Buildium::UpdateFileSharingSettingRequest.new # UpdateFileSharingSettingRequest | 

begin
  # Update file share settings
  result = api_instance.update_file_sharing_setting(file_id, update_file_sharing_setting_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->update_file_sharing_setting: #{e}"
end
```

#### Using the update_file_sharing_setting_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileSharingMessage>, Integer, Hash)> update_file_sharing_setting_with_http_info(file_id, update_file_sharing_setting_request)

```ruby
begin
  # Update file share settings
  data, status_code, headers = api_instance.update_file_sharing_setting_with_http_info(file_id, update_file_sharing_setting_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileSharingMessage>
rescue Buildium::ApiError => e
  puts "Error when calling FilesApi->update_file_sharing_setting_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file_id** | **Integer** |  |  |
| **update_file_sharing_setting_request** | [**UpdateFileSharingSettingRequest**](UpdateFileSharingSettingRequest.md) |  |  |

### Return type

[**FileSharingMessage**](FileSharingMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

