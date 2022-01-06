# Buildium::AssociationsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_association**](AssociationsApi.md#create_association) | **POST** /v1/associations | Create an association |
| [**create_association_note**](AssociationsApi.md#create_association_note) | **POST** /v1/associations/{associationId}/notes | Create an association note |
| [**get_association_by_id**](AssociationsApi.md#get_association_by_id) | **GET** /v1/associations/{associationId} | Retrieve an association |
| [**get_association_note_by_note_id**](AssociationsApi.md#get_association_note_by_note_id) | **GET** /v1/associations/{associationId}/notes/{noteId} | Retrieve an association property note |
| [**get_association_notes**](AssociationsApi.md#get_association_notes) | **GET** /v1/associations/{associationId}/notes | Retrieve all association property notes |
| [**get_associations**](AssociationsApi.md#get_associations) | **GET** /v1/associations | Retrieve all associations |
| [**update_association**](AssociationsApi.md#update_association) | **PUT** /v1/associations/{associationId} | Update an association |
| [**update_association_note**](AssociationsApi.md#update_association_note) | **PUT** /v1/associations/{associationId}/notes/{noteId} | Update an association note |


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

Create an association note

Creates a new association note.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`

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
  # Create an association note
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
  # Create an association note
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

Retrieve an association property note

Retrieves a association property note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`

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
  # Retrieve an association property note
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
  # Retrieve an association property note
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

Retrieve all association property notes

Retrieves all association property notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`

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
  # Retrieve all association property notes
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
  # Retrieve all association property notes
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
  location: 'location_example', # String | Filters results to any association whose address *contains* the specified value.
  status: 'Active', # String | Filters results by the status of the association. If no status is specified both `active` and `inactive` associations will be returned.
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
| **location** | **String** | Filters results to any association whose address *contains* the specified value. | [optional] |
| **status** | **String** | Filters results by the status of the association. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; associations will be returned. | [optional] |
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

Updates an association.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`

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
association_put_message = Buildium::AssociationPutMessage.new({name: 'name_example', operating_bank_account_id: 37, address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'})}) # AssociationPutMessage | 

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

Update an association note

Updates an association note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`

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
  # Update an association note
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
  # Update an association note
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

