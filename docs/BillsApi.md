# Buildium::BillsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bill**](BillsApi.md#create_bill) | **POST** /v1/bills | Create a bill |
| [**create_bill_payment**](BillsApi.md#create_bill_payment) | **POST** /v1/bills/{billId}/payments | Create a bill payment |
| [**create_upload_file_request**](BillsApi.md#create_upload_file_request) | **POST** /v1/bills/{billId}/files/uploadrequests | Upload a bill file |
| [**delete_bill_file**](BillsApi.md#delete_bill_file) | **DELETE** /v1/bills/{billId}/files/{fileId} | Delete a bill file |
| [**download_bill_file**](BillsApi.md#download_bill_file) | **POST** /v1/bills/{billId}/files/{fileId}/downloadrequest | Download a bill file |
| [**get_all_files_for_bill**](BillsApi.md#get_all_files_for_bill) | **GET** /v1/bills/{billId}/files | Retrieve all files for a bill |
| [**get_bill_by_id**](BillsApi.md#get_bill_by_id) | **GET** /v1/bills/{billId} | Retrieve a bill |
| [**get_bill_file_by_id**](BillsApi.md#get_bill_file_by_id) | **GET** /v1/bills/{billId}/files/{fileId} | Retrieve a file for a bill |
| [**get_bill_payment_by_id**](BillsApi.md#get_bill_payment_by_id) | **GET** /v1/bills/{billId}/payments/{paymentId} | Retrieve a bill payment |
| [**get_bill_payments**](BillsApi.md#get_bill_payments) | **GET** /v1/bills/{billId}/payments | Retrieve all bill payments |
| [**get_bills_async**](BillsApi.md#get_bills_async) | **GET** /v1/bills | Retrieve all bills |
| [**update_bill**](BillsApi.md#update_bill) | **PUT** /v1/bills/{billId} | Update a bill |


## create_bill

> <BillMessage> create_bill(bill_post_message)

Create a bill

Creates a bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit`

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

api_instance = Buildium::BillsApi.new
bill_post_message = Buildium::BillPostMessage.new({date: Date.today, due_date: Date.today, vendor_id: 37, lines: [Buildium::BillLinePostMessage.new({accounting_entity: Buildium::AccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'}), gl_account_id: 37, amount: 3.56})]}) # BillPostMessage | 

begin
  # Create a bill
  result = api_instance.create_bill(bill_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->create_bill: #{e}"
end
```

#### Using the create_bill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillMessage>, Integer, Hash)> create_bill_with_http_info(bill_post_message)

```ruby
begin
  # Create a bill
  data, status_code, headers = api_instance.create_bill_with_http_info(bill_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->create_bill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_post_message** | [**BillPostMessage**](BillPostMessage.md) |  |  |

### Return type

[**BillMessage**](BillMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bill_payment

> <BillPaymentMessage> create_bill_payment(bill_id, bill_payment_post_message)

Create a bill payment

Creates a bill payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit`              <span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BillsApi.new
bill_id = 56 # Integer | 
bill_payment_post_message = Buildium::BillPaymentPostMessage.new({bank_account_id: 37, entry_date: Date.today, lines: [Buildium::BillPaymentLinePostMessage.new({bill_line_id: 37, amount: 3.56})]}) # BillPaymentPostMessage | 

begin
  # Create a bill payment
  result = api_instance.create_bill_payment(bill_id, bill_payment_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->create_bill_payment: #{e}"
end
```

#### Using the create_bill_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillPaymentMessage>, Integer, Hash)> create_bill_payment_with_http_info(bill_id, bill_payment_post_message)

```ruby
begin
  # Create a bill payment
  data, status_code, headers = api_instance.create_bill_payment_with_http_info(bill_id, bill_payment_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillPaymentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->create_bill_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **bill_payment_post_message** | [**BillPaymentPostMessage**](BillPaymentPostMessage.md) |  |  |

### Return type

[**BillPaymentMessage**](BillPaymentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_upload_file_request

> <FileUploadTicketMessage> create_upload_file_request(bill_id, file_name_post_message)

Upload a bill file

Uploads a file and associates it to the specified bill record.  <br /><br />Uploading a file requires making two API requests. Each step is outlined below.  <br /><br /><strong>Step 1 - Save file metadata</strong><br />  The first step in the file upload process is to submit the file metadata to `/v1/bills/{billId:int}/files/uploadrequests`. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  <br /><br /><strong>NOTE:</strong> The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  <br /><br /><strong>Step 2 - Upload the file binary</strong><br />  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  <br />  1. Form a POST request using the value of the `BucketUrl` property as the URL.   <br /><br />  2. Set the `Content-Type` header to `multipart/form-data`.  <br /><br />  3. Copy the fields from the `FormData`  property to this request as form-data key/value pairs.  <br /><strong>NOTE:</strong> These values must added to the request form-data in the order they were received in the response.  <br /><br />  4. Lastly create a form-data key named `file` and set the value to the file binary.  <br /><strong>NOTE:</strong> This must be the last field in the form-data list.  <br /><br />This image shows what the POST request should look like if you're using Postman:  <img src=\"file-upload-example.png\" /><br /><br />  5. Send the POST request! A successful request will return with a `204 - NO CONTENT` HTTP response code. For any failure responses, please refer to <a target=\"_blank\" href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\">AWS documentation</a> on REST error responses.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit`

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

api_instance = Buildium::BillsApi.new
bill_id = 56 # Integer | 
file_name_post_message = Buildium::FileNamePostMessage.new({file_name: 'file_name_example'}) # FileNamePostMessage | 

begin
  # Upload a bill file
  result = api_instance.create_upload_file_request(bill_id, file_name_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->create_upload_file_request: #{e}"
end
```

#### Using the create_upload_file_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileUploadTicketMessage>, Integer, Hash)> create_upload_file_request_with_http_info(bill_id, file_name_post_message)

```ruby
begin
  # Upload a bill file
  data, status_code, headers = api_instance.create_upload_file_request_with_http_info(bill_id, file_name_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileUploadTicketMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->create_upload_file_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **file_name_post_message** | [**FileNamePostMessage**](FileNamePostMessage.md) |  |  |

### Return type

[**FileUploadTicketMessage**](FileUploadTicketMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_bill_file

> delete_bill_file(bill_id, file_id)

Delete a bill file

Deletes the specified file from a bill. The file will be permanently deleted from the Buildium platform and can not be recovered.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit` `Delete`

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

api_instance = Buildium::BillsApi.new
bill_id = 56 # Integer | 
file_id = 56 # Integer | 

begin
  # Delete a bill file
  api_instance.delete_bill_file(bill_id, file_id)
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->delete_bill_file: #{e}"
end
```

#### Using the delete_bill_file_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_bill_file_with_http_info(bill_id, file_id)

```ruby
begin
  # Delete a bill file
  data, status_code, headers = api_instance.delete_bill_file_with_http_info(bill_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->delete_bill_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **file_id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## download_bill_file

> <FileDownloadMessage> download_bill_file(bill_id, file_id)

Download a bill file

Downloads a specific file associated to the bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::BillsApi.new
bill_id = 56 # Integer | 
file_id = 56 # Integer | 

begin
  # Download a bill file
  result = api_instance.download_bill_file(bill_id, file_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->download_bill_file: #{e}"
end
```

#### Using the download_bill_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDownloadMessage>, Integer, Hash)> download_bill_file_with_http_info(bill_id, file_id)

```ruby
begin
  # Download a bill file
  data, status_code, headers = api_instance.download_bill_file_with_http_info(bill_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDownloadMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->download_bill_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **file_id** | **Integer** |  |  |

### Return type

[**FileDownloadMessage**](FileDownloadMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_files_for_bill

> <Array<BillFileMessage>> get_all_files_for_bill(bill_id, opts)

Retrieve all files for a bill

Retrieves the metadata for all files associated to the specified bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::BillsApi.new
bill_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all files for a bill
  result = api_instance.get_all_files_for_bill(bill_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_all_files_for_bill: #{e}"
end
```

#### Using the get_all_files_for_bill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BillFileMessage>>, Integer, Hash)> get_all_files_for_bill_with_http_info(bill_id, opts)

```ruby
begin
  # Retrieve all files for a bill
  data, status_code, headers = api_instance.get_all_files_for_bill_with_http_info(bill_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BillFileMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_all_files_for_bill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BillFileMessage&gt;**](BillFileMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bill_by_id

> <BillMessage> get_bill_by_id(bill_id)

Retrieve a bill

Retrieves a single bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::BillsApi.new
bill_id = 56 # Integer | 

begin
  # Retrieve a bill
  result = api_instance.get_bill_by_id(bill_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_bill_by_id: #{e}"
end
```

#### Using the get_bill_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillMessage>, Integer, Hash)> get_bill_by_id_with_http_info(bill_id)

```ruby
begin
  # Retrieve a bill
  data, status_code, headers = api_instance.get_bill_by_id_with_http_info(bill_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_bill_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |

### Return type

[**BillMessage**](BillMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bill_file_by_id

> <BillFileMessage> get_bill_file_by_id(bill_id, file_id)

Retrieve a file for a bill

Retrieves the metadata for a specific file associated with the specified bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::BillsApi.new
bill_id = 56 # Integer | 
file_id = 56 # Integer | 

begin
  # Retrieve a file for a bill
  result = api_instance.get_bill_file_by_id(bill_id, file_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_bill_file_by_id: #{e}"
end
```

#### Using the get_bill_file_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillFileMessage>, Integer, Hash)> get_bill_file_by_id_with_http_info(bill_id, file_id)

```ruby
begin
  # Retrieve a file for a bill
  data, status_code, headers = api_instance.get_bill_file_by_id_with_http_info(bill_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillFileMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_bill_file_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **file_id** | **Integer** |  |  |

### Return type

[**BillFileMessage**](BillFileMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bill_payment_by_id

> <BillPaymentMessage> get_bill_payment_by_id(bill_id, payment_id)

Retrieve a bill payment

Retrieves specific bill payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::BillsApi.new
bill_id = 56 # Integer | 
payment_id = 56 # Integer | 

begin
  # Retrieve a bill payment
  result = api_instance.get_bill_payment_by_id(bill_id, payment_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_bill_payment_by_id: #{e}"
end
```

#### Using the get_bill_payment_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillPaymentMessage>, Integer, Hash)> get_bill_payment_by_id_with_http_info(bill_id, payment_id)

```ruby
begin
  # Retrieve a bill payment
  data, status_code, headers = api_instance.get_bill_payment_by_id_with_http_info(bill_id, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillPaymentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_bill_payment_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **payment_id** | **Integer** |  |  |

### Return type

[**BillPaymentMessage**](BillPaymentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bill_payments

> <Array<BillPaymentMessage>> get_bill_payments(bill_id, opts)

Retrieve all bill payments

Retrieves a list of bill payments for a specific bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::BillsApi.new
bill_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all bill payments
  result = api_instance.get_bill_payments(bill_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_bill_payments: #{e}"
end
```

#### Using the get_bill_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BillPaymentMessage>>, Integer, Hash)> get_bill_payments_with_http_info(bill_id, opts)

```ruby
begin
  # Retrieve all bill payments
  data, status_code, headers = api_instance.get_bill_payments_with_http_info(bill_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BillPaymentMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_bill_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BillPaymentMessage&gt;**](BillPaymentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bills_async

> <Array<BillMessage>> get_bills_async(opts)

Retrieve all bills

Retrieves a list of bills.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::BillsApi.new
opts = {
  entityid: 56, # Integer | Filters results to any bill containing line items associated with the specified entity identifier. This filter is used in conjunction with the `EntityType` field which must be set to the type of entity this identifier references.
  entitytype: 'Rental', # String | Specifies the type of entity that `EntityId` refers to. This field is required if `EntityId` is specified.
  vendorid: 56, # Integer | Filters results to bills associated with a specific vendor.
  referencenumber: 'referencenumber_example', # String | Filters results to bills whose reference number contains the specified value.
  paidstatus: 'Paid', # String | Filters results by the bill's paid status. If no status is specified, bills with any status will be returned.
  frompaiddate: Date.parse('2013-10-20'), # Date | Filters results to any bill whose paid date is greater than or equal to the specified value.
  topaiddate: Date.parse('2013-10-20'), # Date | Filters results to any bill whose paid date is less than or equal to the specified value.
  approvalstatuses: ['NotNeeded'], # Array<String> | Filters the results to bills matching the specified approval statuses. If no approval status is specified, bills with any status will be returned.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all bills
  result = api_instance.get_bills_async(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_bills_async: #{e}"
end
```

#### Using the get_bills_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BillMessage>>, Integer, Hash)> get_bills_async_with_http_info(opts)

```ruby
begin
  # Retrieve all bills
  data, status_code, headers = api_instance.get_bills_async_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BillMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->get_bills_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entityid** | **Integer** | Filters results to any bill containing line items associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references. | [optional] |
| **entitytype** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified. | [optional] |
| **vendorid** | **Integer** | Filters results to bills associated with a specific vendor. | [optional] |
| **referencenumber** | **String** | Filters results to bills whose reference number contains the specified value. | [optional] |
| **paidstatus** | **String** | Filters results by the bill&#39;s paid status. If no status is specified, bills with any status will be returned. | [optional] |
| **frompaiddate** | **Date** | Filters results to any bill whose paid date is greater than or equal to the specified value. | [optional] |
| **topaiddate** | **Date** | Filters results to any bill whose paid date is less than or equal to the specified value. | [optional] |
| **approvalstatuses** | [**Array&lt;String&gt;**](String.md) | Filters the results to bills matching the specified approval statuses. If no approval status is specified, bills with any status will be returned. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BillMessage&gt;**](BillMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_bill

> <BillMessage> update_bill(bill_id, bill_put_message)

Update a bill

Use this operation to update any of the writable fields of an existing bill resource. When updating this resource keep the following in mind: <br /><ul><li>Writable fields omitted from the request or that do not have a value in the request message are set to `NULL`. If you do not want to update the field, submit the original field value.</li><li>When a bill has an existing payment any edits to the line items that change the total bill amount must result in the new total bill amount being equal to or greater than the amount paid.</li><li>When adding a new line item leave the `LineItem.Id` field empty.</li></ul><br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit`

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

api_instance = Buildium::BillsApi.new
bill_id = 56 # Integer | 
bill_put_message = Buildium::BillPutMessage.new({date: Date.today, due_date: Date.today, vendor_id: 37}) # BillPutMessage | 

begin
  # Update a bill
  result = api_instance.update_bill(bill_id, bill_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->update_bill: #{e}"
end
```

#### Using the update_bill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillMessage>, Integer, Hash)> update_bill_with_http_info(bill_id, bill_put_message)

```ruby
begin
  # Update a bill
  data, status_code, headers = api_instance.update_bill_with_http_info(bill_id, bill_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BillsApi->update_bill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **bill_put_message** | [**BillPutMessage**](BillPutMessage.md) |  |  |

### Return type

[**BillMessage**](BillMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

