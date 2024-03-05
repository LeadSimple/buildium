# Buildium::PropertyGroupsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_property_group**](PropertyGroupsApi.md#create_property_group) | **POST** /v1/propertygroups | Create a property group |
| [**get_property_group_by_id**](PropertyGroupsApi.md#get_property_group_by_id) | **GET** /v1/propertygroups/{propertyGroupId} | Retrieve a property group |
| [**get_property_groups**](PropertyGroupsApi.md#get_property_groups) | **GET** /v1/propertygroups | Retrieve all property groups |
| [**update_property_group**](PropertyGroupsApi.md#update_property_group) | **PUT** /v1/propertygroups/{propertyGroupId} | Update a property group |


## create_property_group

> <PropertyGroupMessage> create_property_group(property_group_post_message)

Create a property group

Creates a property group.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units or</span> - `View` `Edit`              <span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`

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

api_instance = Buildium::PropertyGroupsApi.new
property_group_post_message = Buildium::PropertyGroupPostMessage.new({name: 'name_example', property_ids: [37]}) # PropertyGroupPostMessage | 

begin
  # Create a property group
  result = api_instance.create_property_group(property_group_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling PropertyGroupsApi->create_property_group: #{e}"
end
```

#### Using the create_property_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PropertyGroupMessage>, Integer, Hash)> create_property_group_with_http_info(property_group_post_message)

```ruby
begin
  # Create a property group
  data, status_code, headers = api_instance.create_property_group_with_http_info(property_group_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PropertyGroupMessage>
rescue Buildium::ApiError => e
  puts "Error when calling PropertyGroupsApi->create_property_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_group_post_message** | [**PropertyGroupPostMessage**](PropertyGroupPostMessage.md) |  |  |

### Return type

[**PropertyGroupMessage**](PropertyGroupMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_property_group_by_id

> <PropertyGroupMessage> get_property_group_by_id(property_group_id)

Retrieve a property group

Retrieves a property group.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units or</span> - `View`              <span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`

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

api_instance = Buildium::PropertyGroupsApi.new
property_group_id = 56 # Integer | 

begin
  # Retrieve a property group
  result = api_instance.get_property_group_by_id(property_group_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling PropertyGroupsApi->get_property_group_by_id: #{e}"
end
```

#### Using the get_property_group_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PropertyGroupMessage>, Integer, Hash)> get_property_group_by_id_with_http_info(property_group_id)

```ruby
begin
  # Retrieve a property group
  data, status_code, headers = api_instance.get_property_group_by_id_with_http_info(property_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PropertyGroupMessage>
rescue Buildium::ApiError => e
  puts "Error when calling PropertyGroupsApi->get_property_group_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_group_id** | **Integer** |  |  |

### Return type

[**PropertyGroupMessage**](PropertyGroupMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_property_groups

> <Array<PropertyGroupMessage>> get_property_groups(opts)

Retrieve all property groups

Retrieves all property groups.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units or</span> - `View`              <br /><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`

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

api_instance = Buildium::PropertyGroupsApi.new
opts = {
  propertyids: [37], # Array<Integer> | Filters results to property groups that contain any of the specified property ids.
  nameordescription: 'nameordescription_example', # String | Filters results to any property group whose name or description contains the specified value.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all property groups
  result = api_instance.get_property_groups(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling PropertyGroupsApi->get_property_groups: #{e}"
end
```

#### Using the get_property_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PropertyGroupMessage>>, Integer, Hash)> get_property_groups_with_http_info(opts)

```ruby
begin
  # Retrieve all property groups
  data, status_code, headers = api_instance.get_property_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PropertyGroupMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling PropertyGroupsApi->get_property_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **propertyids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to property groups that contain any of the specified property ids. | [optional] |
| **nameordescription** | **String** | Filters results to any property group whose name or description contains the specified value. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;PropertyGroupMessage&gt;**](PropertyGroupMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_property_group

> <PropertyGroupMessage> update_property_group(property_group_id, property_group_put_message)

Update a property group

Updates a property group.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units or</span> - `View` `Edit`              <span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`

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

api_instance = Buildium::PropertyGroupsApi.new
property_group_id = 56 # Integer | 
property_group_put_message = Buildium::PropertyGroupPutMessage.new({name: 'name_example', property_ids: [37]}) # PropertyGroupPutMessage | 

begin
  # Update a property group
  result = api_instance.update_property_group(property_group_id, property_group_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling PropertyGroupsApi->update_property_group: #{e}"
end
```

#### Using the update_property_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PropertyGroupMessage>, Integer, Hash)> update_property_group_with_http_info(property_group_id, property_group_put_message)

```ruby
begin
  # Update a property group
  data, status_code, headers = api_instance.update_property_group_with_http_info(property_group_id, property_group_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PropertyGroupMessage>
rescue Buildium::ApiError => e
  puts "Error when calling PropertyGroupsApi->update_property_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_group_id** | **Integer** |  |  |
| **property_group_put_message** | [**PropertyGroupPutMessage**](PropertyGroupPutMessage.md) |  |  |

### Return type

[**PropertyGroupMessage**](PropertyGroupMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

