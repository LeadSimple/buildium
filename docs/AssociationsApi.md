# Buildium::AssociationsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_association**](AssociationsApi.md#create_association) | **POST** /v1/associations | Create an association |
| [**create_association_note**](AssociationsApi.md#create_association_note) | **POST** /v1/associations/{associationId}/notes | Create a note |
| [**create_board_member**](AssociationsApi.md#create_board_member) | **POST** /v1/associations/{associationId}/boardmembers | Create a board member |
| [**delete_board_member**](AssociationsApi.md#delete_board_member) | **DELETE** /v1/associations/{associationId}/boardmembers/{boardMemberId} | Delete a board member |
| [**get_all_association_board_members**](AssociationsApi.md#get_all_association_board_members) | **GET** /v1/associations/{associationId}/boardmembers | Retrieve all board members |
| [**get_association_board_member_by_id**](AssociationsApi.md#get_association_board_member_by_id) | **GET** /v1/associations/{associationId}/boardmembers/{boardMemberId} | Retrieve a board member |
| [**get_association_by_id**](AssociationsApi.md#get_association_by_id) | **GET** /v1/associations/{associationId} | Retrieve an association |
| [**get_association_note_by_note_id**](AssociationsApi.md#get_association_note_by_note_id) | **GET** /v1/associations/{associationId}/notes/{noteId} | Retrieve a note |
| [**get_association_notes**](AssociationsApi.md#get_association_notes) | **GET** /v1/associations/{associationId}/notes | Retrieve all notes |
| [**get_association_preferred_vendors**](AssociationsApi.md#get_association_preferred_vendors) | **GET** /v1/associations/{associationId}/vendors | Retrieve all preferred vendors |
| [**get_associations**](AssociationsApi.md#get_associations) | **GET** /v1/associations | Retrieve all associations |
| [**update_association**](AssociationsApi.md#update_association) | **PUT** /v1/associations/{associationId} | Update an association |
| [**update_association_note**](AssociationsApi.md#update_association_note) | **PUT** /v1/associations/{associationId}/notes/{noteId} | Update a note |
| [**update_association_preferred_vendors**](AssociationsApi.md#update_association_preferred_vendors) | **PUT** /v1/associations/{associationId}/vendors | Update preferred vendors |
| [**update_board_member**](AssociationsApi.md#update_board_member) | **PUT** /v1/associations/{associationId}/boardmembers/{boardMemberId} | Update a board member |


## create_association

> <AssociationMessage> create_association(association_post_message)

Create an association

Creates an association.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`

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

api_instance = Buildium::AssociationsApi.new
association_post_message = Buildium::AssociationPostMessage.new({name: 'name_example', operating_bank_account_id: 37, address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'})}) # AssociationPostMessage | 

begin
  # Create an association
  result = api_instance.create_association(association_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->create_association: #{e}"
end
```

#### Using the create_association_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationMessage>, Integer, Hash)> create_association_with_http_info(association_post_message)

```ruby
begin
  # Create an association
  data, status_code, headers = api_instance.create_association_with_http_info(association_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->create_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_post_message** | [**AssociationPostMessage**](AssociationPostMessage.md) |  |  |

### Return type

[**AssociationMessage**](AssociationMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_association_note

> <NoteMessage> create_association_note(association_id, note_post_message)

Create a note

Creates a note.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create a note
  result = api_instance.create_association_note(association_id, note_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->create_association_note: #{e}"
end
```

#### Using the create_association_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_association_note_with_http_info(association_id, note_post_message)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_association_note_with_http_info(association_id, note_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->create_association_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **note_post_message** | [**NotePostMessage**](NotePostMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_board_member

> <AssociationBoardMemberMessage> create_board_member(association_id, association_board_member_post_message)

Create a board member

Creates a board member for a given association.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | 
association_board_member_post_message = Buildium::AssociationBoardMemberPostMessage.new({association_owner_id: 37, board_position_type: 'President'}) # AssociationBoardMemberPostMessage | 

begin
  # Create a board member
  result = api_instance.create_board_member(association_id, association_board_member_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->create_board_member: #{e}"
end
```

#### Using the create_board_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationBoardMemberMessage>, Integer, Hash)> create_board_member_with_http_info(association_id, association_board_member_post_message)

```ruby
begin
  # Create a board member
  data, status_code, headers = api_instance.create_board_member_with_http_info(association_id, association_board_member_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationBoardMemberMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->create_board_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **association_board_member_post_message** | [**AssociationBoardMemberPostMessage**](AssociationBoardMemberPostMessage.md) |  |  |

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

Deletes a board member. Note, this is a hard delete from the database and data can not be restored.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit` `Delete`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | 
board_member_id = 56 # Integer | 

begin
  # Delete a board member
  api_instance.delete_board_member(association_id, board_member_id)
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->delete_board_member: #{e}"
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
  puts "Error when calling AssociationsApi->delete_board_member_with_http_info: #{e}"
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

Retrieves all association board members.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationsApi.new
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
  puts "Error when calling AssociationsApi->get_all_association_board_members: #{e}"
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
  puts "Error when calling AssociationsApi->get_all_association_board_members_with_http_info: #{e}"
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

Retrieves an association board member.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | 
board_member_id = 56 # Integer | 

begin
  # Retrieve a board member
  result = api_instance.get_association_board_member_by_id(association_id, board_member_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->get_association_board_member_by_id: #{e}"
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
  puts "Error when calling AssociationsApi->get_association_board_member_by_id_with_http_info: #{e}"
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


## get_association_by_id

> <AssociationMessage> get_association_by_id(association_id)

Retrieve an association

Retrieve a specific association.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | The association identifier.

begin
  # Retrieve an association
  result = api_instance.get_association_by_id(association_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->get_association_by_id: #{e}"
end
```

#### Using the get_association_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationMessage>, Integer, Hash)> get_association_by_id_with_http_info(association_id)

```ruby
begin
  # Retrieve an association
  data, status_code, headers = api_instance.get_association_by_id_with_http_info(association_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->get_association_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** | The association identifier. |  |

### Return type

[**AssociationMessage**](AssociationMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_note_by_note_id

> <NoteMessage> get_association_note_by_note_id(association_id, note_id)

Retrieve a note

Retrieves a note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
  result = api_instance.get_association_note_by_note_id(association_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->get_association_note_by_note_id: #{e}"
end
```

#### Using the get_association_note_by_note_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_association_note_by_note_id_with_http_info(association_id, note_id)

```ruby
begin
  # Retrieve a note
  data, status_code, headers = api_instance.get_association_note_by_note_id_with_http_info(association_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->get_association_note_by_note_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_notes

> <Array<NoteMessage>> get_association_notes(association_id, opts)

Retrieve all notes

Retrieves all notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | 
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
  result = api_instance.get_association_notes(association_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->get_association_notes: #{e}"
end
```

#### Using the get_association_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_association_notes_with_http_info(association_id, opts)

```ruby
begin
  # Retrieve all notes
  data, status_code, headers = api_instance.get_association_notes_with_http_info(association_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->get_association_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
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


## get_association_preferred_vendors

> <Array<AssociationPreferredVendorMessage>> get_association_preferred_vendors(association_id, opts)

Retrieve all preferred vendors

Retrieves all preferred vendors.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all preferred vendors
  result = api_instance.get_association_preferred_vendors(association_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->get_association_preferred_vendors: #{e}"
end
```

#### Using the get_association_preferred_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssociationPreferredVendorMessage>>, Integer, Hash)> get_association_preferred_vendors_with_http_info(association_id, opts)

```ruby
begin
  # Retrieve all preferred vendors
  data, status_code, headers = api_instance.get_association_preferred_vendors_with_http_info(association_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssociationPreferredVendorMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->get_association_preferred_vendors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;AssociationPreferredVendorMessage&gt;**](AssociationPreferredVendorMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_associations

> <Array<AssociationMessage>> get_associations(opts)

Retrieve all associations

Retrieves a list of associations.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`

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

api_instance = Buildium::AssociationsApi.new
opts = {
  location: 'location_example', # String | Filters results to any association whose city or state *contains* the specified value.
  status: 'Active', # String | Filters results by the status of the association. If no status is specified both `active` and `inactive` associations will be returned.
  lastupdatedfrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any associations that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  lastupdatedto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any associations that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all associations
  result = api_instance.get_associations(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->get_associations: #{e}"
end
```

#### Using the get_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssociationMessage>>, Integer, Hash)> get_associations_with_http_info(opts)

```ruby
begin
  # Retrieve all associations
  data, status_code, headers = api_instance.get_associations_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssociationMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->get_associations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | Filters results to any association whose city or state *contains* the specified value. | [optional] |
| **status** | **String** | Filters results by the status of the association. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; associations will be returned. | [optional] |
| **lastupdatedfrom** | **Time** | Filters results to any associations that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **lastupdatedto** | **Time** | Filters results to any associations that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;AssociationMessage&gt;**](AssociationMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_association

> <AssociationMessage> update_association(association_id, association_put_message)

Update an association

Updates an association.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | 
association_put_message = Buildium::AssociationPutMessage.new({name: 'name_example', operating_bank_account_id: 37, address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'}), fiscal_year_end_day: 37, fiscal_year_end_month: 37}) # AssociationPutMessage | 

begin
  # Update an association
  result = api_instance.update_association(association_id, association_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->update_association: #{e}"
end
```

#### Using the update_association_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationMessage>, Integer, Hash)> update_association_with_http_info(association_id, association_put_message)

```ruby
begin
  # Update an association
  data, status_code, headers = api_instance.update_association_with_http_info(association_id, association_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->update_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **association_put_message** | [**AssociationPutMessage**](AssociationPutMessage.md) |  |  |

### Return type

[**AssociationMessage**](AssociationMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_association_note

> <NoteMessage> update_association_note(association_id, note_id, note_put_message)

Update a note

Updates a note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | 
note_id = 56 # Integer | 
note_put_message = Buildium::NotePutMessage.new({note: 'note_example'}) # NotePutMessage | 

begin
  # Update a note
  result = api_instance.update_association_note(association_id, note_id, note_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->update_association_note: #{e}"
end
```

#### Using the update_association_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_association_note_with_http_info(association_id, note_id, note_put_message)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_association_note_with_http_info(association_id, note_id, note_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->update_association_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **note_put_message** | [**NotePutMessage**](NotePutMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_association_preferred_vendors

> <Array<AssociationPreferredVendorMessage>> update_association_preferred_vendors(association_id, association_preferred_vendor_put_message)

Update preferred vendors

Updates preferred vendors.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View` `Edit`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | 
association_preferred_vendor_put_message = Buildium::AssociationPreferredVendorPutMessage.new({vendor_ids: [37]}) # AssociationPreferredVendorPutMessage | 

begin
  # Update preferred vendors
  result = api_instance.update_association_preferred_vendors(association_id, association_preferred_vendor_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->update_association_preferred_vendors: #{e}"
end
```

#### Using the update_association_preferred_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssociationPreferredVendorMessage>>, Integer, Hash)> update_association_preferred_vendors_with_http_info(association_id, association_preferred_vendor_put_message)

```ruby
begin
  # Update preferred vendors
  data, status_code, headers = api_instance.update_association_preferred_vendors_with_http_info(association_id, association_preferred_vendor_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssociationPreferredVendorMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->update_association_preferred_vendors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **association_preferred_vendor_put_message** | [**AssociationPreferredVendorPutMessage**](AssociationPreferredVendorPutMessage.md) |  |  |

### Return type

[**Array&lt;AssociationPreferredVendorMessage&gt;**](AssociationPreferredVendorMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_board_member

> <AssociationBoardMemberMessage> update_board_member(association_id, board_member_id, association_board_member_put_message)

Update a board member

Updates a board member for a given association.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationsApi.new
association_id = 56 # Integer | 
board_member_id = 56 # Integer | 
association_board_member_put_message = Buildium::AssociationBoardMemberPutMessage.new({board_position_type: 'President'}) # AssociationBoardMemberPutMessage | 

begin
  # Update a board member
  result = api_instance.update_board_member(association_id, board_member_id, association_board_member_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->update_board_member: #{e}"
end
```

#### Using the update_board_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationBoardMemberMessage>, Integer, Hash)> update_board_member_with_http_info(association_id, board_member_id, association_board_member_put_message)

```ruby
begin
  # Update a board member
  data, status_code, headers = api_instance.update_board_member_with_http_info(association_id, board_member_id, association_board_member_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationBoardMemberMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationsApi->update_board_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **board_member_id** | **Integer** |  |  |
| **association_board_member_put_message** | [**AssociationBoardMemberPutMessage**](AssociationBoardMemberPutMessage.md) |  |  |

### Return type

[**AssociationBoardMemberMessage**](AssociationBoardMemberMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

