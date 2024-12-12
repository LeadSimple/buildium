# Buildium::ResidentCenterApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_resident_center_users**](ResidentCenterApi.md#get_resident_center_users) | **GET** /v1/residentCenterUsers | Retrieve all resident center users |
| [**get_retail_cash_user**](ResidentCenterApi.md#get_retail_cash_user) | **GET** /v1/retailcashusers/{userId}/{unitAgreementId} | Retrieve a retail cash user |
| [**get_retail_cash_users**](ResidentCenterApi.md#get_retail_cash_users) | **GET** /v1/retailcashusers | Retrieve all retail cash users |
| [**update_retail_cash_user**](ResidentCenterApi.md#update_retail_cash_user) | **PUT** /v1/retailcashusers/{userId}/{unitAgreementId} | Update a retail cash user |


## get_resident_center_users

> <Array<ResidentCenterUserMessage>> get_resident_center_users(opts)

Retrieve all resident center users

Retrieves all resident center users for both rentals and associations.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Resident Center Users</span> - `View`              <br /><span class=\"permissionBlock\">Rentals > Tenants</span> - `View` is required to retrieve resident center users that are tenants.              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` is required to retrieve resident center users that are association owners.

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

api_instance = Buildium::ResidentCenterApi.new
opts = {
  unitagreementids: [37], # Array<Integer> | Filters results to any resident center user who is associated with the specified lease and/or association ownership account identifiers.
  userids: [37], # Array<Integer> | Filters results to any resident center user with the specified tenant and/or association owner identifiers.
  usertypes: ['Tenant'], # Array<String> | Filters results to any resident center user with the specified types.
  residentcenteruserstatuses: ['AccountExistsButNoEmailSent'], # Array<String> | Filters results to any resident center user with the specified resident center user statuses.
  isautopayenabled: true, # Boolean | If true, filters results to any resident center users who have automatic payments scheduled for the future. If false, filters results to any resident center users  who do not have automatic payments scheduled for the future. If not provided, will not filter results based on automatic payments.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all resident center users
  result = api_instance.get_resident_center_users(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ResidentCenterApi->get_resident_center_users: #{e}"
end
```

#### Using the get_resident_center_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ResidentCenterUserMessage>>, Integer, Hash)> get_resident_center_users_with_http_info(opts)

```ruby
begin
  # Retrieve all resident center users
  data, status_code, headers = api_instance.get_resident_center_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ResidentCenterUserMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ResidentCenterApi->get_resident_center_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unitagreementids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any resident center user who is associated with the specified lease and/or association ownership account identifiers. | [optional] |
| **userids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any resident center user with the specified tenant and/or association owner identifiers. | [optional] |
| **usertypes** | [**Array&lt;String&gt;**](String.md) | Filters results to any resident center user with the specified types. | [optional] |
| **residentcenteruserstatuses** | [**Array&lt;String&gt;**](String.md) | Filters results to any resident center user with the specified resident center user statuses. | [optional] |
| **isautopayenabled** | **Boolean** | If true, filters results to any resident center users who have automatic payments scheduled for the future. If false, filters results to any resident center users  who do not have automatic payments scheduled for the future. If not provided, will not filter results based on automatic payments. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;ResidentCenterUserMessage&gt;**](ResidentCenterUserMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_retail_cash_user

> <RetailCashUserMessage> get_retail_cash_user(user_id, unit_agreement_id)

Retrieve a retail cash user

Retrieves a retail cash user.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Tenants</span> - `View`              OR              <span class=\"permissionBlock\"> Associations > Association owners and tenants</span> - `View`

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

api_instance = Buildium::ResidentCenterApi.new
user_id = 56 # Integer | 
unit_agreement_id = 56 # Integer | 

begin
  # Retrieve a retail cash user
  result = api_instance.get_retail_cash_user(user_id, unit_agreement_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ResidentCenterApi->get_retail_cash_user: #{e}"
end
```

#### Using the get_retail_cash_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetailCashUserMessage>, Integer, Hash)> get_retail_cash_user_with_http_info(user_id, unit_agreement_id)

```ruby
begin
  # Retrieve a retail cash user
  data, status_code, headers = api_instance.get_retail_cash_user_with_http_info(user_id, unit_agreement_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetailCashUserMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ResidentCenterApi->get_retail_cash_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** |  |  |
| **unit_agreement_id** | **Integer** |  |  |

### Return type

[**RetailCashUserMessage**](RetailCashUserMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_retail_cash_users

> <Array<RetailCashUserMessage>> get_retail_cash_users(opts)

Retrieve all retail cash users

Retrieves all retail cash users.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Tenants</span> - `View`              OR              <span class=\"permissionBlock\"> Associations > Association owners and tenants</span> - `View`

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

api_instance = Buildium::ResidentCenterApi.new
opts = {
  entityid: 56, # Integer | Filters results to any users associated with the specified entity id value. The value must be of the type specified in the `EntityType` field.
  entitytype: 'Rental', # String | Specifies the type of entity that the `EntityId` field refers to. This field is required if the `EntityId` field is provided.
  statuses: ['Active'], # Array<String> | Filters results to any users whose lease is in one of the provided statuses.
  name: 'name_example', # String | Filters results to any users whose name *contains* the specified value.
  unitaddress: 'unitaddress_example', # String | Filters results to any users whose unit address *contains* the specified value.
  isaccountcreated: true, # Boolean | Filters results to any users whose retail cash account is created.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all retail cash users
  result = api_instance.get_retail_cash_users(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ResidentCenterApi->get_retail_cash_users: #{e}"
end
```

#### Using the get_retail_cash_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RetailCashUserMessage>>, Integer, Hash)> get_retail_cash_users_with_http_info(opts)

```ruby
begin
  # Retrieve all retail cash users
  data, status_code, headers = api_instance.get_retail_cash_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RetailCashUserMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ResidentCenterApi->get_retail_cash_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entityid** | **Integer** | Filters results to any users associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field. | [optional] |
| **entitytype** | **String** | Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is provided. | [optional] |
| **statuses** | [**Array&lt;String&gt;**](String.md) | Filters results to any users whose lease is in one of the provided statuses. | [optional] |
| **name** | **String** | Filters results to any users whose name *contains* the specified value. | [optional] |
| **unitaddress** | **String** | Filters results to any users whose unit address *contains* the specified value. | [optional] |
| **isaccountcreated** | **Boolean** | Filters results to any users whose retail cash account is created. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;RetailCashUserMessage&gt;**](RetailCashUserMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_retail_cash_user

> <RetailCashUserMessage> update_retail_cash_user(user_id, unit_agreement_id, update_retail_cash_user_request)

Update a retail cash user

Updates a retail cash user.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Tenants</span> - `View` `Edit`              OR              <span class=\"permissionBlock\"> Associations > Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::ResidentCenterApi.new
user_id = 56 # Integer | 
unit_agreement_id = 56 # Integer | 
update_retail_cash_user_request = Buildium::UpdateRetailCashUserRequest.new({is_enabled: false}) # UpdateRetailCashUserRequest | 

begin
  # Update a retail cash user
  result = api_instance.update_retail_cash_user(user_id, unit_agreement_id, update_retail_cash_user_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ResidentCenterApi->update_retail_cash_user: #{e}"
end
```

#### Using the update_retail_cash_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetailCashUserMessage>, Integer, Hash)> update_retail_cash_user_with_http_info(user_id, unit_agreement_id, update_retail_cash_user_request)

```ruby
begin
  # Update a retail cash user
  data, status_code, headers = api_instance.update_retail_cash_user_with_http_info(user_id, unit_agreement_id, update_retail_cash_user_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetailCashUserMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ResidentCenterApi->update_retail_cash_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** |  |  |
| **unit_agreement_id** | **Integer** |  |  |
| **update_retail_cash_user_request** | [**UpdateRetailCashUserRequest**](UpdateRetailCashUserRequest.md) |  |  |

### Return type

[**RetailCashUserMessage**](RetailCashUserMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

