# Buildium::RentalAppliancesApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rental_appliance**](RentalAppliancesApi.md#create_rental_appliance) | **POST** /v1/rentals/appliances | Create an appliance |
| [**create_rental_appliance_service_history**](RentalAppliancesApi.md#create_rental_appliance_service_history) | **POST** /v1/rentals/appliances/{applianceId}/servicehistory | Create a service history |
| [**delete_rental_appliances**](RentalAppliancesApi.md#delete_rental_appliances) | **DELETE** /v1/rentals/appliances/{applianceId} | Delete an appliance |
| [**get_rental_appliance_by_id**](RentalAppliancesApi.md#get_rental_appliance_by_id) | **GET** /v1/rentals/appliances/{applianceId} | Retrieve an appliance |
| [**get_rental_appliance_service_history**](RentalAppliancesApi.md#get_rental_appliance_service_history) | **GET** /v1/rentals/appliances/{applianceId}/servicehistory | Retrieve all service history |
| [**get_rental_appliance_service_history_by_id**](RentalAppliancesApi.md#get_rental_appliance_service_history_by_id) | **GET** /v1/rentals/appliances/{applianceId}/servicehistory/{serviceHistoryId} | Retrieve a service history |
| [**get_rental_appliances**](RentalAppliancesApi.md#get_rental_appliances) | **GET** /v1/rentals/appliances | Retrieve all appliances |
| [**update_rental_appliance**](RentalAppliancesApi.md#update_rental_appliance) | **PUT** /v1/rentals/appliances/{applianceId} | Update an appliance |


## create_rental_appliance

> <RentalApplianceMessage> create_rental_appliance(rental_appliance_post_message)

Create an appliance

Creates a rental property appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalAppliancesApi.new
rental_appliance_post_message = Buildium::RentalAppliancePostMessage.new({property_id: 37, name: 'name_example'}) # RentalAppliancePostMessage | 

begin
  # Create an appliance
  result = api_instance.create_rental_appliance(rental_appliance_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->create_rental_appliance: #{e}"
end
```

#### Using the create_rental_appliance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalApplianceMessage>, Integer, Hash)> create_rental_appliance_with_http_info(rental_appliance_post_message)

```ruby
begin
  # Create an appliance
  data, status_code, headers = api_instance.create_rental_appliance_with_http_info(rental_appliance_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalApplianceMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->create_rental_appliance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_appliance_post_message** | [**RentalAppliancePostMessage**](RentalAppliancePostMessage.md) |  |  |

### Return type

[**RentalApplianceMessage**](RentalApplianceMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rental_appliance_service_history

> <RentalApplianceServiceHistoryMessage> create_rental_appliance_service_history(appliance_id, rental_appliance_service_history_post_message)

Create a service history

Creates a service history record for an appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalAppliancesApi.new
appliance_id = 56 # Integer | 
rental_appliance_service_history_post_message = Buildium::RentalApplianceServiceHistoryPostMessage.new({service_type: 'Installed', date: Date.today}) # RentalApplianceServiceHistoryPostMessage | 

begin
  # Create a service history
  result = api_instance.create_rental_appliance_service_history(appliance_id, rental_appliance_service_history_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->create_rental_appliance_service_history: #{e}"
end
```

#### Using the create_rental_appliance_service_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalApplianceServiceHistoryMessage>, Integer, Hash)> create_rental_appliance_service_history_with_http_info(appliance_id, rental_appliance_service_history_post_message)

```ruby
begin
  # Create a service history
  data, status_code, headers = api_instance.create_rental_appliance_service_history_with_http_info(appliance_id, rental_appliance_service_history_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalApplianceServiceHistoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->create_rental_appliance_service_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appliance_id** | **Integer** |  |  |
| **rental_appliance_service_history_post_message** | [**RentalApplianceServiceHistoryPostMessage**](RentalApplianceServiceHistoryPostMessage.md) |  |  |

### Return type

[**RentalApplianceServiceHistoryMessage**](RentalApplianceServiceHistoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_rental_appliances

> delete_rental_appliances(appliance_id)

Delete an appliance

Deletes an appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalAppliancesApi.new
appliance_id = 56 # Integer | 

begin
  # Delete an appliance
  api_instance.delete_rental_appliances(appliance_id)
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->delete_rental_appliances: #{e}"
end
```

#### Using the delete_rental_appliances_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_rental_appliances_with_http_info(appliance_id)

```ruby
begin
  # Delete an appliance
  data, status_code, headers = api_instance.delete_rental_appliances_with_http_info(appliance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->delete_rental_appliances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appliance_id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_appliance_by_id

> <RentalApplianceMessage> get_rental_appliance_by_id(appliance_id)

Retrieve an appliance

Retrieves a rental appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalAppliancesApi.new
appliance_id = 56 # Integer | 

begin
  # Retrieve an appliance
  result = api_instance.get_rental_appliance_by_id(appliance_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->get_rental_appliance_by_id: #{e}"
end
```

#### Using the get_rental_appliance_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalApplianceMessage>, Integer, Hash)> get_rental_appliance_by_id_with_http_info(appliance_id)

```ruby
begin
  # Retrieve an appliance
  data, status_code, headers = api_instance.get_rental_appliance_by_id_with_http_info(appliance_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalApplianceMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->get_rental_appliance_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appliance_id** | **Integer** |  |  |

### Return type

[**RentalApplianceMessage**](RentalApplianceMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_appliance_service_history

> <Array<RentalApplianceServiceHistoryMessage>> get_rental_appliance_service_history(appliance_id, opts)

Retrieve all service history

Retrieves all of the service history records for an appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalAppliancesApi.new
appliance_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all service history
  result = api_instance.get_rental_appliance_service_history(appliance_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->get_rental_appliance_service_history: #{e}"
end
```

#### Using the get_rental_appliance_service_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentalApplianceServiceHistoryMessage>>, Integer, Hash)> get_rental_appliance_service_history_with_http_info(appliance_id, opts)

```ruby
begin
  # Retrieve all service history
  data, status_code, headers = api_instance.get_rental_appliance_service_history_with_http_info(appliance_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentalApplianceServiceHistoryMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->get_rental_appliance_service_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appliance_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;RentalApplianceServiceHistoryMessage&gt;**](RentalApplianceServiceHistoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_appliance_service_history_by_id

> <RentalApplianceServiceHistoryMessage> get_rental_appliance_service_history_by_id(appliance_id, service_history_id)

Retrieve a service history

Retrieves a specific service history record for a given appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalAppliancesApi.new
appliance_id = 56 # Integer | 
service_history_id = 56 # Integer | 

begin
  # Retrieve a service history
  result = api_instance.get_rental_appliance_service_history_by_id(appliance_id, service_history_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->get_rental_appliance_service_history_by_id: #{e}"
end
```

#### Using the get_rental_appliance_service_history_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalApplianceServiceHistoryMessage>, Integer, Hash)> get_rental_appliance_service_history_by_id_with_http_info(appliance_id, service_history_id)

```ruby
begin
  # Retrieve a service history
  data, status_code, headers = api_instance.get_rental_appliance_service_history_by_id_with_http_info(appliance_id, service_history_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalApplianceServiceHistoryMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->get_rental_appliance_service_history_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appliance_id** | **Integer** |  |  |
| **service_history_id** | **Integer** |  |  |

### Return type

[**RentalApplianceServiceHistoryMessage**](RentalApplianceServiceHistoryMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_appliances

> <Array<RentalApplianceMessage>> get_rental_appliances(opts)

Retrieve all appliances

Retrieves all rental appliances.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalAppliancesApi.new
opts = {
  propertyids: [37], # Array<Integer> | Filters results to appliances associated to any of the specified rental property identifiers.
  unitids: [37], # Array<Integer> | Filters results to appliances associated to any of the specified rental unit identifiers.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all appliances
  result = api_instance.get_rental_appliances(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->get_rental_appliances: #{e}"
end
```

#### Using the get_rental_appliances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentalApplianceMessage>>, Integer, Hash)> get_rental_appliances_with_http_info(opts)

```ruby
begin
  # Retrieve all appliances
  data, status_code, headers = api_instance.get_rental_appliances_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentalApplianceMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->get_rental_appliances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **propertyids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to appliances associated to any of the specified rental property identifiers. | [optional] |
| **unitids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to appliances associated to any of the specified rental unit identifiers. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;RentalApplianceMessage&gt;**](RentalApplianceMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rental_appliance

> <RentalApplianceMessage> update_rental_appliance(appliance_id, rental_appliance_put_message)

Update an appliance

Updates a rental appliance.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalAppliancesApi.new
appliance_id = 56 # Integer | 
rental_appliance_put_message = Buildium::RentalAppliancePutMessage.new({name: 'name_example'}) # RentalAppliancePutMessage | 

begin
  # Update an appliance
  result = api_instance.update_rental_appliance(appliance_id, rental_appliance_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->update_rental_appliance: #{e}"
end
```

#### Using the update_rental_appliance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalApplianceMessage>, Integer, Hash)> update_rental_appliance_with_http_info(appliance_id, rental_appliance_put_message)

```ruby
begin
  # Update an appliance
  data, status_code, headers = api_instance.update_rental_appliance_with_http_info(appliance_id, rental_appliance_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalApplianceMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalAppliancesApi->update_rental_appliance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **appliance_id** | **Integer** |  |  |
| **rental_appliance_put_message** | [**RentalAppliancePutMessage**](RentalAppliancePutMessage.md) |  |  |

### Return type

[**RentalApplianceMessage**](RentalApplianceMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

