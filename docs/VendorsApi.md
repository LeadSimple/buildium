# Buildium::VendorsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_vendor**](VendorsApi.md#create_vendor) | **POST** /v1/vendors | Create a vendor |
| [**create_vendor_category**](VendorsApi.md#create_vendor_category) | **POST** /v1/vendors/categories | Create a vendor category |
| [**create_vendor_credit**](VendorsApi.md#create_vendor_credit) | **POST** /v1/vendors/{vendorId}/credits | Create a credit |
| [**create_vendor_note**](VendorsApi.md#create_vendor_note) | **POST** /v1/vendors/{vendorId}/notes | Create a note |
| [**create_vendor_refund**](VendorsApi.md#create_vendor_refund) | **POST** /v1/vendors/{vendorId}/refunds | Create a refund |
| [**get_all_vendor_categories**](VendorsApi.md#get_all_vendor_categories) | **GET** /v1/vendors/categories | Retrieve all vendor categories |
| [**get_all_vendor_transactions**](VendorsApi.md#get_all_vendor_transactions) | **GET** /v1/vendors/{vendorId}/transactions | Retrieve all transactions |
| [**get_all_vendors**](VendorsApi.md#get_all_vendors) | **GET** /v1/vendors | Retrieve all vendors |
| [**get_vendor_by_id**](VendorsApi.md#get_vendor_by_id) | **GET** /v1/vendors/{vendorId} | Retrieve a vendor |
| [**get_vendor_category_by_id**](VendorsApi.md#get_vendor_category_by_id) | **GET** /v1/vendors/categories/{vendorCategoryId} | Retrieve a vendor category |
| [**get_vendor_credit**](VendorsApi.md#get_vendor_credit) | **GET** /v1/vendors/{vendorId}/credits/{vendorCreditId} | Retrieve a credit |
| [**get_vendor_note_by_note_id**](VendorsApi.md#get_vendor_note_by_note_id) | **GET** /v1/vendors/{vendorId}/notes/{noteId} | Retrieve a note |
| [**get_vendor_notes**](VendorsApi.md#get_vendor_notes) | **GET** /v1/vendors/{vendorId}/notes | Retrieve all notes |
| [**get_vendor_refund**](VendorsApi.md#get_vendor_refund) | **GET** /v1/vendors/{vendorId}/refunds/{vendorRefundId} | Retrieve a refund |
| [**update_vendor**](VendorsApi.md#update_vendor) | **PUT** /v1/vendors/{vendorId} | Update a vendor |
| [**update_vendor_category**](VendorsApi.md#update_vendor_category) | **PUT** /v1/vendors/categories/{vendorCategoryId} | Update a vendor category |
| [**update_vendor_note**](VendorsApi.md#update_vendor_note) | **PUT** /v1/vendors/{vendorId}/notes/{noteId} | Update a note |


## create_vendor

> <VendorMessage> create_vendor(vendor_post_message)

Create a vendor

Creates a vendor.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View` `Edit`

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

api_instance = Buildium::VendorsApi.new
vendor_post_message = Buildium::VendorPostMessage.new({is_company: false, category_id: 37}) # VendorPostMessage | 

begin
  # Create a vendor
  result = api_instance.create_vendor(vendor_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->create_vendor: #{e}"
end
```

#### Using the create_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VendorMessage>, Integer, Hash)> create_vendor_with_http_info(vendor_post_message)

```ruby
begin
  # Create a vendor
  data, status_code, headers = api_instance.create_vendor_with_http_info(vendor_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VendorMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->create_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_post_message** | [**VendorPostMessage**](VendorPostMessage.md) |  |  |

### Return type

[**VendorMessage**](VendorMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vendor_category

> <VendorCategoryMessage> create_vendor_category(vendor_category_save_message)

Create a vendor category

Creates a vendor category.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View` `Edit`

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

api_instance = Buildium::VendorsApi.new
vendor_category_save_message = Buildium::VendorCategorySaveMessage.new({name: 'name_example'}) # VendorCategorySaveMessage | 

begin
  # Create a vendor category
  result = api_instance.create_vendor_category(vendor_category_save_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->create_vendor_category: #{e}"
end
```

#### Using the create_vendor_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VendorCategoryMessage>, Integer, Hash)> create_vendor_category_with_http_info(vendor_category_save_message)

```ruby
begin
  # Create a vendor category
  data, status_code, headers = api_instance.create_vendor_category_with_http_info(vendor_category_save_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VendorCategoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->create_vendor_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_category_save_message** | [**VendorCategorySaveMessage**](VendorCategorySaveMessage.md) |  |  |

### Return type

[**VendorCategoryMessage**](VendorCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vendor_credit

> <VendorCreditMessage> create_vendor_credit(vendor_id, vendor_credit_post_message)

Create a credit

Creates a credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit`

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

api_instance = Buildium::VendorsApi.new
vendor_id = 56 # Integer | 
vendor_credit_post_message = Buildium::VendorCreditPostMessage.new({entry_date: Date.today, lines: [Buildium::VendorCreditLineItemPostMessage.new({gl_account_id: 37, amount: 3.56, accounting_entity: Buildium::AccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'})})]}) # VendorCreditPostMessage | 

begin
  # Create a credit
  result = api_instance.create_vendor_credit(vendor_id, vendor_credit_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->create_vendor_credit: #{e}"
end
```

#### Using the create_vendor_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VendorCreditMessage>, Integer, Hash)> create_vendor_credit_with_http_info(vendor_id, vendor_credit_post_message)

```ruby
begin
  # Create a credit
  data, status_code, headers = api_instance.create_vendor_credit_with_http_info(vendor_id, vendor_credit_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VendorCreditMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->create_vendor_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** |  |  |
| **vendor_credit_post_message** | [**VendorCreditPostMessage**](VendorCreditPostMessage.md) |  |  |

### Return type

[**VendorCreditMessage**](VendorCreditMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vendor_note

> <NoteMessage> create_vendor_note(vendor_id, note_post_message)

Create a note

Creates a vendor note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View` `Edit`

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

api_instance = Buildium::VendorsApi.new
vendor_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create a note
  result = api_instance.create_vendor_note(vendor_id, note_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->create_vendor_note: #{e}"
end
```

#### Using the create_vendor_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_vendor_note_with_http_info(vendor_id, note_post_message)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_vendor_note_with_http_info(vendor_id, note_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->create_vendor_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** |  |  |
| **note_post_message** | [**NotePostMessage**](NotePostMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_vendor_refund

> <VendorRefundMessage> create_vendor_refund(vendor_id, vendor_refund_post_message)

Create a refund

Creates a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View` `Edit`              <span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`

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

api_instance = Buildium::VendorsApi.new
vendor_id = 56 # Integer | 
vendor_refund_post_message = Buildium::VendorRefundPostMessage.new({entry_date: Date.today, bank_account_id: 37, payment_method: 'Check', lines: [Buildium::VendorRefundLinePostMessage.new({gl_account_id: 37, amount: 3.56, accounting_entity: Buildium::AccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'})})]}) # VendorRefundPostMessage | 

begin
  # Create a refund
  result = api_instance.create_vendor_refund(vendor_id, vendor_refund_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->create_vendor_refund: #{e}"
end
```

#### Using the create_vendor_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VendorRefundMessage>, Integer, Hash)> create_vendor_refund_with_http_info(vendor_id, vendor_refund_post_message)

```ruby
begin
  # Create a refund
  data, status_code, headers = api_instance.create_vendor_refund_with_http_info(vendor_id, vendor_refund_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VendorRefundMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->create_vendor_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** |  |  |
| **vendor_refund_post_message** | [**VendorRefundPostMessage**](VendorRefundPostMessage.md) |  |  |

### Return type

[**VendorRefundMessage**](VendorRefundMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_vendor_categories

> <Array<VendorCategoryMessage>> get_all_vendor_categories(opts)

Retrieve all vendor categories

Retrieves a list of vendor categories.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`

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

api_instance = Buildium::VendorsApi.new
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all vendor categories
  result = api_instance.get_all_vendor_categories(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_all_vendor_categories: #{e}"
end
```

#### Using the get_all_vendor_categories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VendorCategoryMessage>>, Integer, Hash)> get_all_vendor_categories_with_http_info(opts)

```ruby
begin
  # Retrieve all vendor categories
  data, status_code, headers = api_instance.get_all_vendor_categories_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VendorCategoryMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_all_vendor_categories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;VendorCategoryMessage&gt;**](VendorCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_vendor_transactions

> <Array<VendorTransactionMessage>> get_all_vendor_transactions(vendor_id, transactiondatefrom, transactiondateto, opts)

Retrieve all transactions

Retrieves all transactions.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`  <br /><span class=\"permissionBlock\">Accounting &gt; General Ledger Transactions</span> - `View`

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

api_instance = Buildium::VendorsApi.new
vendor_id = 56 # Integer | 
transactiondatefrom = Date.parse('2013-10-20') # Date | Filters results to any vendor transaction whose entry date that is greater than or equal to the specified value. The maximum date range is 365 days.
transactiondateto = Date.parse('2013-10-20') # Date | Filters results to any vendor transaction whose entry date is less than or equal to the specified value. The maximum date range is 365 days.
opts = {
  transactiontypes: ['Bill'], # Array<String> | Filters results to any vendor transaction whose vendor transaction type matches the specified status. If no type is specified, vendor transactions with any type will be returned.
  referencenumber: 'referencenumber_example', # String | Filters results to vendor transaction whose reference number contains the specified value. The reference number cannot exceed 40 characters.
  memo: 'memo_example', # String | Filters results to vendor transaction whose memo contains the specified value. The memo cannot exceed 40 characters.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all transactions
  result = api_instance.get_all_vendor_transactions(vendor_id, transactiondatefrom, transactiondateto, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_all_vendor_transactions: #{e}"
end
```

#### Using the get_all_vendor_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VendorTransactionMessage>>, Integer, Hash)> get_all_vendor_transactions_with_http_info(vendor_id, transactiondatefrom, transactiondateto, opts)

```ruby
begin
  # Retrieve all transactions
  data, status_code, headers = api_instance.get_all_vendor_transactions_with_http_info(vendor_id, transactiondatefrom, transactiondateto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VendorTransactionMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_all_vendor_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** |  |  |
| **transactiondatefrom** | **Date** | Filters results to any vendor transaction whose entry date that is greater than or equal to the specified value. The maximum date range is 365 days. |  |
| **transactiondateto** | **Date** | Filters results to any vendor transaction whose entry date is less than or equal to the specified value. The maximum date range is 365 days. |  |
| **transactiontypes** | [**Array&lt;String&gt;**](String.md) | Filters results to any vendor transaction whose vendor transaction type matches the specified status. If no type is specified, vendor transactions with any type will be returned. | [optional] |
| **referencenumber** | **String** | Filters results to vendor transaction whose reference number contains the specified value. The reference number cannot exceed 40 characters. | [optional] |
| **memo** | **String** | Filters results to vendor transaction whose memo contains the specified value. The memo cannot exceed 40 characters. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;VendorTransactionMessage&gt;**](VendorTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_vendors

> <Array<VendorMessage>> get_all_vendors(opts)

Retrieve all vendors

Retrieves a list of vendors.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`

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

api_instance = Buildium::VendorsApi.new
opts = {
  status: 'Inactive', # String | Filters results by the status of the vendor. If no status is specified both `active` and `inactive` vendors will be returned.
  email: 'email_example', # String | Filters results to any vendor whose email *contains* the specified value.
  website: 'website_example', # String | Filters results to any vendor whose website *contains* the specified value.
  name: 'name_example', # String | Filters results to any vendor whose name *contains* the specified value.
  insuranceexpiration: 'None', # String | Filters results to any vendor whose insurance will expire in the specified date range.
  phone: 'phone_example', # String | Filters results to any vendor who has a phone number that *contains* the specified value.
  lastupdatedfrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any vendors that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  lastupdatedto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any vendors that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all vendors
  result = api_instance.get_all_vendors(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_all_vendors: #{e}"
end
```

#### Using the get_all_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<VendorMessage>>, Integer, Hash)> get_all_vendors_with_http_info(opts)

```ruby
begin
  # Retrieve all vendors
  data, status_code, headers = api_instance.get_all_vendors_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<VendorMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_all_vendors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Filters results by the status of the vendor. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; vendors will be returned. | [optional] |
| **email** | **String** | Filters results to any vendor whose email *contains* the specified value. | [optional] |
| **website** | **String** | Filters results to any vendor whose website *contains* the specified value. | [optional] |
| **name** | **String** | Filters results to any vendor whose name *contains* the specified value. | [optional] |
| **insuranceexpiration** | **String** | Filters results to any vendor whose insurance will expire in the specified date range. | [optional] |
| **phone** | **String** | Filters results to any vendor who has a phone number that *contains* the specified value. | [optional] |
| **lastupdatedfrom** | **Time** | Filters results to any vendors that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **lastupdatedto** | **Time** | Filters results to any vendors that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;VendorMessage&gt;**](VendorMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendor_by_id

> <VendorMessage> get_vendor_by_id(vendor_id)

Retrieve a vendor

Retrieve a specific vendor.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`

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

api_instance = Buildium::VendorsApi.new
vendor_id = 56 # Integer | The vendor identifier.

begin
  # Retrieve a vendor
  result = api_instance.get_vendor_by_id(vendor_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_by_id: #{e}"
end
```

#### Using the get_vendor_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VendorMessage>, Integer, Hash)> get_vendor_by_id_with_http_info(vendor_id)

```ruby
begin
  # Retrieve a vendor
  data, status_code, headers = api_instance.get_vendor_by_id_with_http_info(vendor_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VendorMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** | The vendor identifier. |  |

### Return type

[**VendorMessage**](VendorMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendor_category_by_id

> <VendorCategoryMessage> get_vendor_category_by_id(vendor_category_id)

Retrieve a vendor category

Retrieves a specific vendor category.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`

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

api_instance = Buildium::VendorsApi.new
vendor_category_id = 56 # Integer | The vendor category identifier.

begin
  # Retrieve a vendor category
  result = api_instance.get_vendor_category_by_id(vendor_category_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_category_by_id: #{e}"
end
```

#### Using the get_vendor_category_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VendorCategoryMessage>, Integer, Hash)> get_vendor_category_by_id_with_http_info(vendor_category_id)

```ruby
begin
  # Retrieve a vendor category
  data, status_code, headers = api_instance.get_vendor_category_by_id_with_http_info(vendor_category_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VendorCategoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_category_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_category_id** | **Integer** | The vendor category identifier. |  |

### Return type

[**VendorCategoryMessage**](VendorCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendor_credit

> <VendorCreditMessage> get_vendor_credit(vendor_id, vendor_credit_id)

Retrieve a credit

Retrieves a credit.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::VendorsApi.new
vendor_id = 56 # Integer | 
vendor_credit_id = 56 # Integer | 

begin
  # Retrieve a credit
  result = api_instance.get_vendor_credit(vendor_id, vendor_credit_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_credit: #{e}"
end
```

#### Using the get_vendor_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VendorCreditMessage>, Integer, Hash)> get_vendor_credit_with_http_info(vendor_id, vendor_credit_id)

```ruby
begin
  # Retrieve a credit
  data, status_code, headers = api_instance.get_vendor_credit_with_http_info(vendor_id, vendor_credit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VendorCreditMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** |  |  |
| **vendor_credit_id** | **Integer** |  |  |

### Return type

[**VendorCreditMessage**](VendorCreditMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendor_note_by_note_id

> <NoteMessage> get_vendor_note_by_note_id(vendor_id, note_id)

Retrieve a note

Retrieves a vendor note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`

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

api_instance = Buildium::VendorsApi.new
vendor_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
  result = api_instance.get_vendor_note_by_note_id(vendor_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_note_by_note_id: #{e}"
end
```

#### Using the get_vendor_note_by_note_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_vendor_note_by_note_id_with_http_info(vendor_id, note_id)

```ruby
begin
  # Retrieve a note
  data, status_code, headers = api_instance.get_vendor_note_by_note_id_with_http_info(vendor_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_note_by_note_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_vendor_notes

> <Array<NoteMessage>> get_vendor_notes(vendor_id, opts)

Retrieve all notes

Retrieves all vendor notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`

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

api_instance = Buildium::VendorsApi.new
vendor_id = 56 # Integer | 
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
  result = api_instance.get_vendor_notes(vendor_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_notes: #{e}"
end
```

#### Using the get_vendor_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_vendor_notes_with_http_info(vendor_id, opts)

```ruby
begin
  # Retrieve all notes
  data, status_code, headers = api_instance.get_vendor_notes_with_http_info(vendor_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** |  |  |
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


## get_vendor_refund

> <VendorCreditMessage> get_vendor_refund(vendor_id, vendor_refund_id)

Retrieve a refund

Retrieves a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`

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

api_instance = Buildium::VendorsApi.new
vendor_id = 56 # Integer | 
vendor_refund_id = 56 # Integer | 

begin
  # Retrieve a refund
  result = api_instance.get_vendor_refund(vendor_id, vendor_refund_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_refund: #{e}"
end
```

#### Using the get_vendor_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VendorCreditMessage>, Integer, Hash)> get_vendor_refund_with_http_info(vendor_id, vendor_refund_id)

```ruby
begin
  # Retrieve a refund
  data, status_code, headers = api_instance.get_vendor_refund_with_http_info(vendor_id, vendor_refund_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VendorCreditMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->get_vendor_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** |  |  |
| **vendor_refund_id** | **Integer** |  |  |

### Return type

[**VendorCreditMessage**](VendorCreditMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_vendor

> <VendorMessage> update_vendor(vendor_id, vendor_put_message)

Update a vendor

Updates a vendor.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View` `Edit`

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

api_instance = Buildium::VendorsApi.new
vendor_id = 56 # Integer | 
vendor_put_message = Buildium::VendorPutMessage.new({is_company: false, category_id: 37}) # VendorPutMessage | 

begin
  # Update a vendor
  result = api_instance.update_vendor(vendor_id, vendor_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->update_vendor: #{e}"
end
```

#### Using the update_vendor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VendorMessage>, Integer, Hash)> update_vendor_with_http_info(vendor_id, vendor_put_message)

```ruby
begin
  # Update a vendor
  data, status_code, headers = api_instance.update_vendor_with_http_info(vendor_id, vendor_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VendorMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->update_vendor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** |  |  |
| **vendor_put_message** | [**VendorPutMessage**](VendorPutMessage.md) |  |  |

### Return type

[**VendorMessage**](VendorMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_vendor_category

> <VendorCategoryMessage> update_vendor_category(vendor_category_id, vendor_category_save_message)

Update a vendor category

Updates a vendor category.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View` `Edit`

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

api_instance = Buildium::VendorsApi.new
vendor_category_id = 56 # Integer | 
vendor_category_save_message = Buildium::VendorCategorySaveMessage.new({name: 'name_example'}) # VendorCategorySaveMessage | 

begin
  # Update a vendor category
  result = api_instance.update_vendor_category(vendor_category_id, vendor_category_save_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->update_vendor_category: #{e}"
end
```

#### Using the update_vendor_category_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<VendorCategoryMessage>, Integer, Hash)> update_vendor_category_with_http_info(vendor_category_id, vendor_category_save_message)

```ruby
begin
  # Update a vendor category
  data, status_code, headers = api_instance.update_vendor_category_with_http_info(vendor_category_id, vendor_category_save_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <VendorCategoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->update_vendor_category_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_category_id** | **Integer** |  |  |
| **vendor_category_save_message** | [**VendorCategorySaveMessage**](VendorCategorySaveMessage.md) |  |  |

### Return type

[**VendorCategoryMessage**](VendorCategoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_vendor_note

> <NoteMessage> update_vendor_note(vendor_id, note_id, note_put_message)

Update a note

Updates a vendor note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View` `Edit`

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

api_instance = Buildium::VendorsApi.new
vendor_id = 56 # Integer | 
note_id = 56 # Integer | 
note_put_message = Buildium::NotePutMessage.new({note: 'note_example'}) # NotePutMessage | 

begin
  # Update a note
  result = api_instance.update_vendor_note(vendor_id, note_id, note_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->update_vendor_note: #{e}"
end
```

#### Using the update_vendor_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_vendor_note_with_http_info(vendor_id, note_id, note_put_message)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_vendor_note_with_http_info(vendor_id, note_id, note_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling VendorsApi->update_vendor_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **note_put_message** | [**NotePutMessage**](NotePutMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

