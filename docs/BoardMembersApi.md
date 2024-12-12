# Buildium::BoardMembersApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_board_member**](BoardMembersApi.md#create_board_member) | **POST** /v1/associations/{associationId}/boardmembers | Create a board member |
| [**delete_board_member**](BoardMembersApi.md#delete_board_member) | **DELETE** /v1/associations/{associationId}/boardmembers/{boardMemberId} | Delete a board member |
| [**get_all_association_board_members**](BoardMembersApi.md#get_all_association_board_members) | **GET** /v1/associations/{associationId}/boardmembers | Retrieve all board members |
| [**get_association_board_member_by_id**](BoardMembersApi.md#get_association_board_member_by_id) | **GET** /v1/associations/{associationId}/boardmembers/{boardMemberId} | Retrieve a board member |
| [**update_board_member**](BoardMembersApi.md#update_board_member) | **PUT** /v1/associations/{associationId}/boardmembers/{boardMemberId} | Update a board member |


## create_board_member

> <AssociationBoardMemberMessage> create_board_member(association_id, create_board_member_request)

Create a board member

Creates a board member for a given association.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::BoardMembersApi.new
association_id = 56 # Integer | 
create_board_member_request = Buildium::CreateBoardMemberRequest.new({association_owner_id: 37, board_position_type: 'President'}) # CreateBoardMemberRequest | 

begin
  # Create a board member
  result = api_instance.create_board_member(association_id, create_board_member_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BoardMembersApi->create_board_member: #{e}"
end
```

#### Using the create_board_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationBoardMemberMessage>, Integer, Hash)> create_board_member_with_http_info(association_id, create_board_member_request)

```ruby
begin
  # Create a board member
  data, status_code, headers = api_instance.create_board_member_with_http_info(association_id, create_board_member_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationBoardMemberMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BoardMembersApi->create_board_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **create_board_member_request** | [**CreateBoardMemberRequest**](CreateBoardMemberRequest.md) |  |  |

### Return type

[**AssociationBoardMemberMessage**](AssociationBoardMemberMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_board_member

> delete_board_member(association_id, board_member_id)

Delete a board member

Deletes a board member. Note, this is a hard delete from the database and data can not be restored.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit` `Delete`

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

api_instance = Buildium::BoardMembersApi.new
association_id = 56 # Integer | 
board_member_id = 56 # Integer | 

begin
  # Delete a board member
  api_instance.delete_board_member(association_id, board_member_id)
rescue Buildium::ApiError => e
  puts "Error when calling BoardMembersApi->delete_board_member: #{e}"
end
```

#### Using the delete_board_member_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_board_member_with_http_info(association_id, board_member_id)

```ruby
begin
  # Delete a board member
  data, status_code, headers = api_instance.delete_board_member_with_http_info(association_id, board_member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling BoardMembersApi->delete_board_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **board_member_id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_association_board_members

> <Array<AssociationBoardMemberMessage>> get_all_association_board_members(association_id, opts)

Retrieve all board members

Retrieves all association board members.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`

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

api_instance = Buildium::BoardMembersApi.new
association_id = 56 # Integer | 
opts = {
  statuses: ['Current'], # Array<String> | Filters results to only records whose status is equal to the specified values.
  boardpositiontypes: ['President'], # Array<String> | Filters results to only records whose board position type is equal to the specified values.
  createddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were created before this date. Must be formatted as `YYYY-MM-DD`.
  createddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were created after this date. Must be formatted as `YYYY-MM-DD`.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all board members
  result = api_instance.get_all_association_board_members(association_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BoardMembersApi->get_all_association_board_members: #{e}"
end
```

#### Using the get_all_association_board_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssociationBoardMemberMessage>>, Integer, Hash)> get_all_association_board_members_with_http_info(association_id, opts)

```ruby
begin
  # Retrieve all board members
  data, status_code, headers = api_instance.get_all_association_board_members_with_http_info(association_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssociationBoardMemberMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BoardMembersApi->get_all_association_board_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **statuses** | [**Array&lt;String&gt;**](String.md) | Filters results to only records whose status is equal to the specified values. | [optional] |
| **boardpositiontypes** | [**Array&lt;String&gt;**](String.md) | Filters results to only records whose board position type is equal to the specified values. | [optional] |
| **createddatetimeto** | **Time** | Filters results to only records that were created before this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **createddatetimefrom** | **Time** | Filters results to only records that were created after this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;AssociationBoardMemberMessage&gt;**](AssociationBoardMemberMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_board_member_by_id

> <AssociationBoardMemberMessage> get_association_board_member_by_id(association_id, board_member_id)

Retrieve a board member

Retrieves an association board member.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`

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

api_instance = Buildium::BoardMembersApi.new
association_id = 56 # Integer | 
board_member_id = 56 # Integer | 

begin
  # Retrieve a board member
  result = api_instance.get_association_board_member_by_id(association_id, board_member_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BoardMembersApi->get_association_board_member_by_id: #{e}"
end
```

#### Using the get_association_board_member_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationBoardMemberMessage>, Integer, Hash)> get_association_board_member_by_id_with_http_info(association_id, board_member_id)

```ruby
begin
  # Retrieve a board member
  data, status_code, headers = api_instance.get_association_board_member_by_id_with_http_info(association_id, board_member_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationBoardMemberMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BoardMembersApi->get_association_board_member_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **board_member_id** | **Integer** |  |  |

### Return type

[**AssociationBoardMemberMessage**](AssociationBoardMemberMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_board_member

> <AssociationBoardMemberMessage> update_board_member(association_id, board_member_id, update_board_member_request)

Update a board member

Updates a board member for a given association.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::BoardMembersApi.new
association_id = 56 # Integer | 
board_member_id = 56 # Integer | 
update_board_member_request = Buildium::UpdateBoardMemberRequest.new({board_position_type: 'President'}) # UpdateBoardMemberRequest | 

begin
  # Update a board member
  result = api_instance.update_board_member(association_id, board_member_id, update_board_member_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BoardMembersApi->update_board_member: #{e}"
end
```

#### Using the update_board_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationBoardMemberMessage>, Integer, Hash)> update_board_member_with_http_info(association_id, board_member_id, update_board_member_request)

```ruby
begin
  # Update a board member
  data, status_code, headers = api_instance.update_board_member_with_http_info(association_id, board_member_id, update_board_member_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationBoardMemberMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BoardMembersApi->update_board_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **board_member_id** | **Integer** |  |  |
| **update_board_member_request** | [**UpdateBoardMemberRequest**](UpdateBoardMemberRequest.md) |  |  |

### Return type

[**AssociationBoardMemberMessage**](AssociationBoardMemberMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

