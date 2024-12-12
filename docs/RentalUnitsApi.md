# Buildium::RentalUnitsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rental_unit_image_upload_file_request_async**](RentalUnitsApi.md#create_rental_unit_image_upload_file_request_async) | **POST** /v1/rentals/units/{unitId}/images/uploadrequests | Upload a unit image |
| [**create_rental_unit_note**](RentalUnitsApi.md#create_rental_unit_note) | **POST** /v1/rentals/units/{unitId}/notes | Create a note |
| [**create_unit_video_link_request**](RentalUnitsApi.md#create_unit_video_link_request) | **POST** /v1/rentals/units/{unitId}/images/videolinkrequests | Create an image for a unit using a video link |
| [**delete_rental_unit_image**](RentalUnitsApi.md#delete_rental_unit_image) | **DELETE** /v1/rentals/units/{unitId}/images/{imageId} | Delete a unit image |
| [**get_features_for_rental_unit_by_id**](RentalUnitsApi.md#get_features_for_rental_unit_by_id) | **GET** /v1/rentals/units/{unitId}/amenities | Retrieve all amenities |
| [**get_rental_unit_image_by_id**](RentalUnitsApi.md#get_rental_unit_image_by_id) | **GET** /v1/rentals/units/{unitId}/images/{imageId} | Retrieve a unit image |
| [**get_rental_unit_image_download_url_by_id**](RentalUnitsApi.md#get_rental_unit_image_download_url_by_id) | **POST** /v1/rentals/units/{unitId}/images/{imageId}/downloadrequests | Download a unit image |
| [**get_rental_unit_images**](RentalUnitsApi.md#get_rental_unit_images) | **GET** /v1/rentals/units/{unitId}/images | Retrieve all unit images |
| [**get_rental_unit_note_by_note_id**](RentalUnitsApi.md#get_rental_unit_note_by_note_id) | **GET** /v1/rentals/units/{unitId}/notes/{noteId} | Retrieve a note |
| [**get_rental_unit_notes**](RentalUnitsApi.md#get_rental_unit_notes) | **GET** /v1/rentals/units/{unitId}/notes | Retrieve all notes |
| [**reorder_rental_unit_images**](RentalUnitsApi.md#reorder_rental_unit_images) | **PUT** /v1/rentals/units/{unitId}/images/order | Update unit image order |
| [**update_note_for_rental_unit**](RentalUnitsApi.md#update_note_for_rental_unit) | **PUT** /v1/rentals/units/{unitId}/notes/{noteId} | Update a note |
| [**update_rental_unit_features**](RentalUnitsApi.md#update_rental_unit_features) | **PUT** /v1/rentals/units/{unitId}/amenities | Update amenities |
| [**update_rental_unit_image**](RentalUnitsApi.md#update_rental_unit_image) | **PUT** /v1/rentals/units/{unitId}/images/{imageId} | Update a unit image |


## create_rental_unit_image_upload_file_request_async

> <FileUploadTicketMessage> create_rental_unit_image_upload_file_request_async(unit_id, create_rental_image_upload_file_request_async_request)

Upload a unit image

Uploads an image and associates it to the specified unit record.              <br /><br />Uploading a file requires making two API requests. Each step is outlined below.              <br /><br /><strong>Step 1 - Save file metadata</strong><br />              The first step in the file upload process is to submit the file metadata to `/v1/rentals/units/{unitId:int}/images/uploadrequests`. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.              <br /><br /><strong>NOTE:</strong> The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.              <br /><br /><strong>Step 2 - Upload the file binary</strong><br />              Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:              <br />              1. Form a POST request using the value of the `BucketUrl` property as the URL.               <br /><br />              2. Set the `Content-Type` header to `multipart/form-data`.              <br /><br />              3. Copy the fields from the `FormData`  property to this request as form-data key/value pairs.              <br /><strong>NOTE:</strong> These values must added to the request form-data in the order they were received in the response.              <br /><br />              4. Lastly create a form-data key named `file` and set the value to the file binary.              <br /><strong>NOTE:</strong> This must be the last field in the form-data list.              <br /><br />This image shows what the POST request should look like if you're using Postman:              <img src=\"file-upload-example.png\" /><br /><br />              5. Send the POST request! A successful request will return with a `204 - NO CONTENT` HTTP response code. For any failure responses, please refer to <a target=\"_blank\" href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\">AWS documentation</a> on REST error responses.              <br /><br /><strong>NOTE:</strong> The file identifier is not generated in this response. To retrieve the file identifier, call `/v1/files` and pass the `PhysicalFileName` value received from the response of this endpoint into the `physicalfilenames` query parameter.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
create_rental_image_upload_file_request_async_request = Buildium::CreateRentalImageUploadFileRequestAsyncRequest.new({file_name: 'file_name_example', show_in_listing: false}) # CreateRentalImageUploadFileRequestAsyncRequest | 

begin
  # Upload a unit image
  result = api_instance.create_rental_unit_image_upload_file_request_async(unit_id, create_rental_image_upload_file_request_async_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->create_rental_unit_image_upload_file_request_async: #{e}"
end
```

#### Using the create_rental_unit_image_upload_file_request_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileUploadTicketMessage>, Integer, Hash)> create_rental_unit_image_upload_file_request_async_with_http_info(unit_id, create_rental_image_upload_file_request_async_request)

```ruby
begin
  # Upload a unit image
  data, status_code, headers = api_instance.create_rental_unit_image_upload_file_request_async_with_http_info(unit_id, create_rental_image_upload_file_request_async_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileUploadTicketMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->create_rental_unit_image_upload_file_request_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **create_rental_image_upload_file_request_async_request** | [**CreateRentalImageUploadFileRequestAsyncRequest**](CreateRentalImageUploadFileRequestAsyncRequest.md) |  |  |

### Return type

[**FileUploadTicketMessage**](FileUploadTicketMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rental_unit_note

> <NoteMessage> create_rental_unit_note(unit_id, create_lease_note_request)

Create a note

Creates a rental unit note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
create_lease_note_request = Buildium::CreateLeaseNoteRequest.new({note: 'note_example'}) # CreateLeaseNoteRequest | 

begin
  # Create a note
  result = api_instance.create_rental_unit_note(unit_id, create_lease_note_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->create_rental_unit_note: #{e}"
end
```

#### Using the create_rental_unit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_rental_unit_note_with_http_info(unit_id, create_lease_note_request)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_rental_unit_note_with_http_info(unit_id, create_lease_note_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->create_rental_unit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **create_lease_note_request** | [**CreateLeaseNoteRequest**](CreateLeaseNoteRequest.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_unit_video_link_request

> <RentalUnitImageMessage> create_unit_video_link_request(unit_id, create_video_link_request_request)

Create an image for a unit using a video link

Creates an image for a rental unit using a video link.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
create_video_link_request_request = Buildium::CreateVideoLinkRequestRequest.new({video_url: 'video_url_example', show_in_listing: false}) # CreateVideoLinkRequestRequest | 

begin
  # Create an image for a unit using a video link
  result = api_instance.create_unit_video_link_request(unit_id, create_video_link_request_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->create_unit_video_link_request: #{e}"
end
```

#### Using the create_unit_video_link_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalUnitImageMessage>, Integer, Hash)> create_unit_video_link_request_with_http_info(unit_id, create_video_link_request_request)

```ruby
begin
  # Create an image for a unit using a video link
  data, status_code, headers = api_instance.create_unit_video_link_request_with_http_info(unit_id, create_video_link_request_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalUnitImageMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->create_unit_video_link_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **create_video_link_request_request** | [**CreateVideoLinkRequestRequest**](CreateVideoLinkRequestRequest.md) |  |  |

### Return type

[**RentalUnitImageMessage**](RentalUnitImageMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_rental_unit_image

> delete_rental_unit_image(unit_id, image_id)

Delete a unit image

Deletes a unit image.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View` `Edit` `Delete`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
image_id = 56 # Integer | 

begin
  # Delete a unit image
  api_instance.delete_rental_unit_image(unit_id, image_id)
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->delete_rental_unit_image: #{e}"
end
```

#### Using the delete_rental_unit_image_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_rental_unit_image_with_http_info(unit_id, image_id)

```ruby
begin
  # Delete a unit image
  data, status_code, headers = api_instance.delete_rental_unit_image_with_http_info(unit_id, image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->delete_rental_unit_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **image_id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_features_for_rental_unit_by_id

> <RentalUnitFeaturesMessage> get_features_for_rental_unit_by_id(unit_id)

Retrieve all amenities

Retrieves all amenities for a rental unit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 

begin
  # Retrieve all amenities
  result = api_instance.get_features_for_rental_unit_by_id(unit_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_features_for_rental_unit_by_id: #{e}"
end
```

#### Using the get_features_for_rental_unit_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalUnitFeaturesMessage>, Integer, Hash)> get_features_for_rental_unit_by_id_with_http_info(unit_id)

```ruby
begin
  # Retrieve all amenities
  data, status_code, headers = api_instance.get_features_for_rental_unit_by_id_with_http_info(unit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalUnitFeaturesMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_features_for_rental_unit_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |

### Return type

[**RentalUnitFeaturesMessage**](RentalUnitFeaturesMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_unit_image_by_id

> <RentalUnitImageMessage> get_rental_unit_image_by_id(unit_id, image_id)

Retrieve a unit image

Retrieves a unit image.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
image_id = 56 # Integer | 

begin
  # Retrieve a unit image
  result = api_instance.get_rental_unit_image_by_id(unit_id, image_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_image_by_id: #{e}"
end
```

#### Using the get_rental_unit_image_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalUnitImageMessage>, Integer, Hash)> get_rental_unit_image_by_id_with_http_info(unit_id, image_id)

```ruby
begin
  # Retrieve a unit image
  data, status_code, headers = api_instance.get_rental_unit_image_by_id_with_http_info(unit_id, image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalUnitImageMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_image_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **image_id** | **Integer** |  |  |

### Return type

[**RentalUnitImageMessage**](RentalUnitImageMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_unit_image_download_url_by_id

> <FileDownloadMessage> get_rental_unit_image_download_url_by_id(unit_id, image_id)

Download a unit image

Use this endpoint to create a temporary URL that can be used to download a unit image. This URL expires after 5 minutes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
image_id = 56 # Integer | 

begin
  # Download a unit image
  result = api_instance.get_rental_unit_image_download_url_by_id(unit_id, image_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_image_download_url_by_id: #{e}"
end
```

#### Using the get_rental_unit_image_download_url_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDownloadMessage>, Integer, Hash)> get_rental_unit_image_download_url_by_id_with_http_info(unit_id, image_id)

```ruby
begin
  # Download a unit image
  data, status_code, headers = api_instance.get_rental_unit_image_download_url_by_id_with_http_info(unit_id, image_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDownloadMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_image_download_url_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **image_id** | **Integer** |  |  |

### Return type

[**FileDownloadMessage**](FileDownloadMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_unit_images

> <Array<RentalUnitImageMessage>> get_rental_unit_images(unit_id, opts)

Retrieve all unit images

Retrieves all images for a unit. Note this endpoint will only return file metadata such as file names and descriptions. To download files make requests to the [Download File](#tag/Rental-Units/operation/GetRentalUnitImageDownloadUrlById) endpoint.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all unit images
  result = api_instance.get_rental_unit_images(unit_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_images: #{e}"
end
```

#### Using the get_rental_unit_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentalUnitImageMessage>>, Integer, Hash)> get_rental_unit_images_with_http_info(unit_id, opts)

```ruby
begin
  # Retrieve all unit images
  data, status_code, headers = api_instance.get_rental_unit_images_with_http_info(unit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentalUnitImageMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;RentalUnitImageMessage&gt;**](RentalUnitImageMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_unit_note_by_note_id

> <NoteMessage> get_rental_unit_note_by_note_id(unit_id, note_id)

Retrieve a note

Retrieves a rental unit note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
  result = api_instance.get_rental_unit_note_by_note_id(unit_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_note_by_note_id: #{e}"
end
```

#### Using the get_rental_unit_note_by_note_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_rental_unit_note_by_note_id_with_http_info(unit_id, note_id)

```ruby
begin
  # Retrieve a note
  data, status_code, headers = api_instance.get_rental_unit_note_by_note_id_with_http_info(unit_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_note_by_note_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_unit_notes

> <Array<NoteMessage>> get_rental_unit_notes(unit_id, opts)

Retrieve all notes

Retrieves all rental unit notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
opts = {
  updateddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  updateddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  lastupdatedbyuserid: 56, # Integer | Filters results to only notes that were last updated by the specified user identifier.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all notes
  result = api_instance.get_rental_unit_notes(unit_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_notes: #{e}"
end
```

#### Using the get_rental_unit_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_rental_unit_notes_with_http_info(unit_id, opts)

```ruby
begin
  # Retrieve all notes
  data, status_code, headers = api_instance.get_rental_unit_notes_with_http_info(unit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **updateddatetimefrom** | **Time** | Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS. | [optional] |
| **updateddatetimeto** | **Time** | Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS. | [optional] |
| **lastupdatedbyuserid** | **Integer** | Filters results to only notes that were last updated by the specified user identifier. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;NoteMessage&gt;**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reorder_rental_unit_images

> <Array<RentalUnitImageMessage>> reorder_rental_unit_images(unit_id, reorder_rental_images_request)

Update unit image order

Updates the image display order within the Buildium web application and in any associated rental listings.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
reorder_rental_images_request = Buildium::ReorderRentalImagesRequest.new({ids: [37]}) # ReorderRentalImagesRequest | 

begin
  # Update unit image order
  result = api_instance.reorder_rental_unit_images(unit_id, reorder_rental_images_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->reorder_rental_unit_images: #{e}"
end
```

#### Using the reorder_rental_unit_images_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentalUnitImageMessage>>, Integer, Hash)> reorder_rental_unit_images_with_http_info(unit_id, reorder_rental_images_request)

```ruby
begin
  # Update unit image order
  data, status_code, headers = api_instance.reorder_rental_unit_images_with_http_info(unit_id, reorder_rental_images_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentalUnitImageMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->reorder_rental_unit_images_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **reorder_rental_images_request** | [**ReorderRentalImagesRequest**](ReorderRentalImagesRequest.md) |  |  |

### Return type

[**Array&lt;RentalUnitImageMessage&gt;**](RentalUnitImageMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_note_for_rental_unit

> <NoteMessage> update_note_for_rental_unit(unit_id, note_id, update_lease_note_request)

Update a note

Updates a rental unit note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
note_id = 56 # Integer | 
update_lease_note_request = Buildium::UpdateLeaseNoteRequest.new({note: 'note_example'}) # UpdateLeaseNoteRequest | 

begin
  # Update a note
  result = api_instance.update_note_for_rental_unit(unit_id, note_id, update_lease_note_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_note_for_rental_unit: #{e}"
end
```

#### Using the update_note_for_rental_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_note_for_rental_unit_with_http_info(unit_id, note_id, update_lease_note_request)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_note_for_rental_unit_with_http_info(unit_id, note_id, update_lease_note_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_note_for_rental_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **update_lease_note_request** | [**UpdateLeaseNoteRequest**](UpdateLeaseNoteRequest.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rental_unit_features

> <RentalUnitFeaturesMessage> update_rental_unit_features(unit_id, update_rental_unit_features_request)

Update amenities

Updates the amenities for a rental unit.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
update_rental_unit_features_request = Buildium::UpdateRentalUnitFeaturesRequest.new # UpdateRentalUnitFeaturesRequest | 

begin
  # Update amenities
  result = api_instance.update_rental_unit_features(unit_id, update_rental_unit_features_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_rental_unit_features: #{e}"
end
```

#### Using the update_rental_unit_features_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalUnitFeaturesMessage>, Integer, Hash)> update_rental_unit_features_with_http_info(unit_id, update_rental_unit_features_request)

```ruby
begin
  # Update amenities
  data, status_code, headers = api_instance.update_rental_unit_features_with_http_info(unit_id, update_rental_unit_features_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalUnitFeaturesMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_rental_unit_features_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **update_rental_unit_features_request** | [**UpdateRentalUnitFeaturesRequest**](UpdateRentalUnitFeaturesRequest.md) |  |  |

### Return type

[**RentalUnitFeaturesMessage**](RentalUnitFeaturesMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rental_unit_image

> <RentalImageMessage> update_rental_unit_image(unit_id, image_id, update_rental_unit_image_request)

Update a unit image

Updates a unit image.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
image_id = 56 # Integer | 
update_rental_unit_image_request = Buildium::UpdateRentalUnitImageRequest.new({show_in_listing: false}) # UpdateRentalUnitImageRequest | 

begin
  # Update a unit image
  result = api_instance.update_rental_unit_image(unit_id, image_id, update_rental_unit_image_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_rental_unit_image: #{e}"
end
```

#### Using the update_rental_unit_image_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalImageMessage>, Integer, Hash)> update_rental_unit_image_with_http_info(unit_id, image_id, update_rental_unit_image_request)

```ruby
begin
  # Update a unit image
  data, status_code, headers = api_instance.update_rental_unit_image_with_http_info(unit_id, image_id, update_rental_unit_image_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalImageMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_rental_unit_image_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **image_id** | **Integer** |  |  |
| **update_rental_unit_image_request** | [**UpdateRentalUnitImageRequest**](UpdateRentalUnitImageRequest.md) |  |  |

### Return type

[**RentalImageMessage**](RentalImageMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

