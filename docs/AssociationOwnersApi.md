# Buildium::AssociationOwnersApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_association_owner**](AssociationOwnersApi.md#create_association_owner) | **POST** /v1/associations/owners | Create an association owner |
| [**create_association_owner_note**](AssociationOwnersApi.md#create_association_owner_note) | **POST** /v1/associations/owners/{ownerId}/notes | Create an association owner note |
| [**get_all_association_owners**](AssociationOwnersApi.md#get_all_association_owners) | **GET** /v1/associations/owners | Retrieve all association owners |
| [**get_association_owner_by_id**](AssociationOwnersApi.md#get_association_owner_by_id) | **GET** /v1/associations/owners/{ownerId} | Retrieve an association owner |
| [**get_association_owner_note_by_note_id**](AssociationOwnersApi.md#get_association_owner_note_by_note_id) | **GET** /v1/associations/owners/{ownerId}/notes/{noteId} | Retrieve an association owner note |
| [**get_association_owner_notes**](AssociationOwnersApi.md#get_association_owner_notes) | **GET** /v1/associations/owners/{ownerId}/notes | Retrieve all association owner notes |
| [**update_association_owner**](AssociationOwnersApi.md#update_association_owner) | **PUT** /v1/associations/owners/{ownerId} | Update an association owner |
| [**update_association_owner_note**](AssociationOwnersApi.md#update_association_owner_note) | **PUT** /v1/associations/owners/{ownerId}/notes/{noteId} | Update an association owner note |


## create_association_owner

> <AssociationOwnerMessage> create_association_owner(association_owner_to_existing_ownership_account_post_message)

Create an association owner

Creates an association owner.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations &gt; Ownership accounts</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnersApi.new
association_owner_to_existing_ownership_account_post_message = Buildium::AssociationOwnerToExistingOwnershipAccountPostMessage.new({ownership_account_id: 37, send_welcome_email: false, primary_address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'}), first_name: 'first_name_example', last_name: 'last_name_example', is_owner_occupied: false}) # AssociationOwnerToExistingOwnershipAccountPostMessage | 

begin
  # Create an association owner
  result = api_instance.create_association_owner(association_owner_to_existing_ownership_account_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->create_association_owner: #{e}"
end
```

#### Using the create_association_owner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnerMessage>, Integer, Hash)> create_association_owner_with_http_info(association_owner_to_existing_ownership_account_post_message)

```ruby
begin
  # Create an association owner
  data, status_code, headers = api_instance.create_association_owner_with_http_info(association_owner_to_existing_ownership_account_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationOwnerMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->create_association_owner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_owner_to_existing_ownership_account_post_message** | [**AssociationOwnerToExistingOwnershipAccountPostMessage**](AssociationOwnerToExistingOwnershipAccountPostMessage.md) |  |  |

### Return type

[**AssociationOwnerMessage**](AssociationOwnerMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_association_owner_note

> <NoteMessage> create_association_owner_note(owner_id, note_post_message)

Create an association owner note

Creates an association owner note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create an association owner note
  result = api_instance.create_association_owner_note(owner_id, note_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->create_association_owner_note: #{e}"
end
```

#### Using the create_association_owner_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_association_owner_note_with_http_info(owner_id, note_post_message)

```ruby
begin
  # Create an association owner note
  data, status_code, headers = api_instance.create_association_owner_note_with_http_info(owner_id, note_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->create_association_owner_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | **Integer** |  |  |
| **note_post_message** | [**NotePostMessage**](NotePostMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_association_owners

> <Array<AssociationOwnerMessage>> get_all_association_owners(opts)

Retrieve all association owners

Retrieves a list of association owners.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationOwnersApi.new
opts = {
  name: 'name_example', # String | Filters results to only records whose name *contains* the specified value.
  phone: 'phone_example', # String | Filters results to only records whose phone number *contains* the specified value.
  email: 'email_example', # String | Filters results to only records whose email *contains* the specified value.
  associationids: [37], # Array<Integer> | Filters results to only records that belong to the specified set of association ids.
  statuses: ['Active'], # Array<String> | Filters results to only records whose status is equal to the specified value.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all association owners
  result = api_instance.get_all_association_owners(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_all_association_owners: #{e}"
end
```

#### Using the get_all_association_owners_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssociationOwnerMessage>>, Integer, Hash)> get_all_association_owners_with_http_info(opts)

```ruby
begin
  # Retrieve all association owners
  data, status_code, headers = api_instance.get_all_association_owners_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssociationOwnerMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_all_association_owners_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Filters results to only records whose name *contains* the specified value. | [optional] |
| **phone** | **String** | Filters results to only records whose phone number *contains* the specified value. | [optional] |
| **email** | **String** | Filters results to only records whose email *contains* the specified value. | [optional] |
| **associationids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to only records that belong to the specified set of association ids. | [optional] |
| **statuses** | [**Array&lt;String&gt;**](String.md) | Filters results to only records whose status is equal to the specified value. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;AssociationOwnerMessage&gt;**](AssociationOwnerMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_owner_by_id

> <AssociationOwnerMessage> get_association_owner_by_id(owner_id)

Retrieve an association owner

Retrieve a specific association owner.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | The association owner identifier.

begin
  # Retrieve an association owner
  result = api_instance.get_association_owner_by_id(owner_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_association_owner_by_id: #{e}"
end
```

#### Using the get_association_owner_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnerMessage>, Integer, Hash)> get_association_owner_by_id_with_http_info(owner_id)

```ruby
begin
  # Retrieve an association owner
  data, status_code, headers = api_instance.get_association_owner_by_id_with_http_info(owner_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationOwnerMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_association_owner_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | **Integer** | The association owner identifier. |  |

### Return type

[**AssociationOwnerMessage**](AssociationOwnerMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_owner_note_by_note_id

> <NoteMessage> get_association_owner_note_by_note_id(owner_id, note_id)

Retrieve an association owner note

Retrieves an association owner note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve an association owner note
  result = api_instance.get_association_owner_note_by_note_id(owner_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_association_owner_note_by_note_id: #{e}"
end
```

#### Using the get_association_owner_note_by_note_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_association_owner_note_by_note_id_with_http_info(owner_id, note_id)

```ruby
begin
  # Retrieve an association owner note
  data, status_code, headers = api_instance.get_association_owner_note_by_note_id_with_http_info(owner_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_association_owner_note_by_note_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_owner_notes

> <Array<NoteMessage>> get_association_owner_notes(owner_id, opts)

Retrieve all association owner notes

Retrieves all association owner notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | 
opts = {
  updateddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  updateddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  lastupdatedbyuserid: 56, # Integer | Filters results to only notes that were last updated by the specified user identifier.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all association owner notes
  result = api_instance.get_association_owner_notes(owner_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_association_owner_notes: #{e}"
end
```

#### Using the get_association_owner_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_association_owner_notes_with_http_info(owner_id, opts)

```ruby
begin
  # Retrieve all association owner notes
  data, status_code, headers = api_instance.get_association_owner_notes_with_http_info(owner_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_association_owner_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | **Integer** |  |  |
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


## update_association_owner

> <AssociationOwnerMessage> update_association_owner(owner_id, association_owner_put_message)

Update an association owner

Updates an existing association owner.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | The identifier of the association owner to update.
association_owner_put_message = Buildium::AssociationOwnerPutMessage.new({first_name: 'first_name_example', last_name: 'last_name_example', primary_address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'})}) # AssociationOwnerPutMessage | 

begin
  # Update an association owner
  result = api_instance.update_association_owner(owner_id, association_owner_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->update_association_owner: #{e}"
end
```

#### Using the update_association_owner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnerMessage>, Integer, Hash)> update_association_owner_with_http_info(owner_id, association_owner_put_message)

```ruby
begin
  # Update an association owner
  data, status_code, headers = api_instance.update_association_owner_with_http_info(owner_id, association_owner_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationOwnerMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->update_association_owner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | **Integer** | The identifier of the association owner to update. |  |
| **association_owner_put_message** | [**AssociationOwnerPutMessage**](AssociationOwnerPutMessage.md) |  |  |

### Return type

[**AssociationOwnerMessage**](AssociationOwnerMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_association_owner_note

> <NoteMessage> update_association_owner_note(owner_id, note_id, note_put_message)

Update an association owner note

Updates an association owner note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | 
note_id = 56 # Integer | 
note_put_message = Buildium::NotePutMessage.new({note: 'note_example'}) # NotePutMessage | 

begin
  # Update an association owner note
  result = api_instance.update_association_owner_note(owner_id, note_id, note_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->update_association_owner_note: #{e}"
end
```

#### Using the update_association_owner_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_association_owner_note_with_http_info(owner_id, note_id, note_put_message)

```ruby
begin
  # Update an association owner note
  data, status_code, headers = api_instance.update_association_owner_note_with_http_info(owner_id, note_id, note_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->update_association_owner_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **note_put_message** | [**NotePutMessage**](NotePutMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

