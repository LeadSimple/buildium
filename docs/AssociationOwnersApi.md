# Buildium::AssociationOwnersApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_association_owner**](AssociationOwnersApi.md#create_association_owner) | **POST** /v1/associations/owners | Create an owner |
| [**create_association_owner_note**](AssociationOwnersApi.md#create_association_owner_note) | **POST** /v1/associations/owners/{ownerId}/notes | Create a note |
| [**get_all_association_owners**](AssociationOwnersApi.md#get_all_association_owners) | **GET** /v1/associations/owners | Retrieve all owners |
| [**get_association_owner_by_id**](AssociationOwnersApi.md#get_association_owner_by_id) | **GET** /v1/associations/owners/{ownerId} | Retrieve an owner |
| [**get_association_owner_note_by_note_id**](AssociationOwnersApi.md#get_association_owner_note_by_note_id) | **GET** /v1/associations/owners/{ownerId}/notes/{noteId} | Retrieve a note |
| [**get_association_owner_notes**](AssociationOwnersApi.md#get_association_owner_notes) | **GET** /v1/associations/owners/{ownerId}/notes | Retrieve all notes |
| [**get_unit_occupancy_statuses_by_id_for_association_owner**](AssociationOwnersApi.md#get_unit_occupancy_statuses_by_id_for_association_owner) | **GET** /v1/associations/owners/{ownerId}/units/{unitId} | Retrieve an occupancy status |
| [**get_unit_occupancy_statuses_for_association_owner**](AssociationOwnersApi.md#get_unit_occupancy_statuses_for_association_owner) | **GET** /v1/associations/owners/{ownerId}/units | Retrieve all occupancy statuses |
| [**update_association_owner**](AssociationOwnersApi.md#update_association_owner) | **PUT** /v1/associations/owners/{ownerId} | Update an owner |
| [**update_association_owner_note**](AssociationOwnersApi.md#update_association_owner_note) | **PUT** /v1/associations/owners/{ownerId}/notes/{noteId} | Update a note |
| [**update_association_owner_occupancy_status**](AssociationOwnersApi.md#update_association_owner_occupancy_status) | **PUT** /v1/associations/owners/{ownerId}/units/{unitId} | Update occupancy status |


## create_association_owner

> <AssociationOwnerMessage> create_association_owner(create_association_owner_request)

Create an owner

Creates an association owner.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnersApi.new
create_association_owner_request = Buildium::CreateAssociationOwnerRequest.new({ownership_account_id: 37, send_welcome_email: false, primary_address: Buildium::AssociationOwnerPostMessagePrimaryAddress.new({address_line1: 'address_line1_example', country: 'Afghanistan'}), first_name: 'first_name_example', last_name: 'last_name_example', is_owner_occupied: false}) # CreateAssociationOwnerRequest | 

begin
  # Create an owner
  result = api_instance.create_association_owner(create_association_owner_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->create_association_owner: #{e}"
end
```

#### Using the create_association_owner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnerMessage>, Integer, Hash)> create_association_owner_with_http_info(create_association_owner_request)

```ruby
begin
  # Create an owner
  data, status_code, headers = api_instance.create_association_owner_with_http_info(create_association_owner_request)
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
| **create_association_owner_request** | [**CreateAssociationOwnerRequest**](CreateAssociationOwnerRequest.md) |  |  |

### Return type

[**AssociationOwnerMessage**](AssociationOwnerMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_association_owner_note

> <NoteMessage> create_association_owner_note(owner_id, create_lease_note_request)

Create a note

Creates an association owner note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | 
create_lease_note_request = Buildium::CreateLeaseNoteRequest.new({note: 'note_example'}) # CreateLeaseNoteRequest | 

begin
  # Create a note
  result = api_instance.create_association_owner_note(owner_id, create_lease_note_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->create_association_owner_note: #{e}"
end
```

#### Using the create_association_owner_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_association_owner_note_with_http_info(owner_id, create_lease_note_request)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_association_owner_note_with_http_info(owner_id, create_lease_note_request)
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
| **create_lease_note_request** | [**CreateLeaseNoteRequest**](CreateLeaseNoteRequest.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_association_owners

> <Array<AssociationOwnerMessage>> get_all_association_owners(opts)

Retrieve all owners

Retrieves a list of association owners.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationOwnersApi.new
opts = {
  name: 'name_example', # String | Filters results to only records whose name *contains* the specified value.
  phone: 'phone_example', # String | Filters results to only records whose phone number *contains* the specified value.
  email: 'email_example', # String | Filters results to only records whose email *contains* the specified value.
  associationids: [37], # Array<Integer> | Filters results to only records that belong to the specified set of association identifiers.
  statuses: ['Active'], # Array<String> | Filters results to only records whose status is equal to the specified value.
  createddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were created before this date. Must be formatted as `YYYY-MM-DD`.
  createddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were created after this date. Must be formatted as `YYYY-MM-DD`.
  lastupdatedfrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any association owners that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  lastupdatedto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any association owners that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all owners
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
  # Retrieve all owners
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
| **associationids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to only records that belong to the specified set of association identifiers. | [optional] |
| **statuses** | [**Array&lt;String&gt;**](String.md) | Filters results to only records whose status is equal to the specified value. | [optional] |
| **createddatetimeto** | **Time** | Filters results to only records that were created before this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **createddatetimefrom** | **Time** | Filters results to only records that were created after this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;. | [optional] |
| **lastupdatedfrom** | **Time** | Filters results to any association owners that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **lastupdatedto** | **Time** | Filters results to any association owners that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
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

Retrieve an owner

Retrieve a specific association owner.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | The association owner identifier.

begin
  # Retrieve an owner
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
  # Retrieve an owner
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

Retrieve a note

Retrieves an association owner note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
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
  # Retrieve a note
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

Retrieve all notes

Retrieves all association owner notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`

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
  # Retrieve all notes
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
  # Retrieve all notes
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


## get_unit_occupancy_statuses_by_id_for_association_owner

> <AssociationOwnerUnitOccupancyStatusMessage> get_unit_occupancy_statuses_by_id_for_association_owner(owner_id, unit_id)

Retrieve an occupancy status

Retrieves the owner occupancy status for an association unit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` <br /><span class=\"permissionBlock\">Associations > Ownership Accounts</span> - `View`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | 
unit_id = 56 # Integer | 

begin
  # Retrieve an occupancy status
  result = api_instance.get_unit_occupancy_statuses_by_id_for_association_owner(owner_id, unit_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_unit_occupancy_statuses_by_id_for_association_owner: #{e}"
end
```

#### Using the get_unit_occupancy_statuses_by_id_for_association_owner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnerUnitOccupancyStatusMessage>, Integer, Hash)> get_unit_occupancy_statuses_by_id_for_association_owner_with_http_info(owner_id, unit_id)

```ruby
begin
  # Retrieve an occupancy status
  data, status_code, headers = api_instance.get_unit_occupancy_statuses_by_id_for_association_owner_with_http_info(owner_id, unit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationOwnerUnitOccupancyStatusMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_unit_occupancy_statuses_by_id_for_association_owner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | **Integer** |  |  |
| **unit_id** | **Integer** |  |  |

### Return type

[**AssociationOwnerUnitOccupancyStatusMessage**](AssociationOwnerUnitOccupancyStatusMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_unit_occupancy_statuses_for_association_owner

> <Array<AssociationOwnerUnitOccupancyStatusMessage>> get_unit_occupancy_statuses_for_association_owner(owner_id, opts)

Retrieve all occupancy statuses

Retrieves the occupancy status for all of the units owned by the association owner.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` <br /><span class=\"permissionBlock\">Associations > Ownership Accounts</span> - `View`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all occupancy statuses
  result = api_instance.get_unit_occupancy_statuses_for_association_owner(owner_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_unit_occupancy_statuses_for_association_owner: #{e}"
end
```

#### Using the get_unit_occupancy_statuses_for_association_owner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssociationOwnerUnitOccupancyStatusMessage>>, Integer, Hash)> get_unit_occupancy_statuses_for_association_owner_with_http_info(owner_id, opts)

```ruby
begin
  # Retrieve all occupancy statuses
  data, status_code, headers = api_instance.get_unit_occupancy_statuses_for_association_owner_with_http_info(owner_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssociationOwnerUnitOccupancyStatusMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->get_unit_occupancy_statuses_for_association_owner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;AssociationOwnerUnitOccupancyStatusMessage&gt;**](AssociationOwnerUnitOccupancyStatusMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_association_owner

> <AssociationOwnerMessage> update_association_owner(owner_id, update_association_owner_request)

Update an owner

Updates an existing association owner.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | The identifier of the association owner to update.
update_association_owner_request = Buildium::UpdateAssociationOwnerRequest.new({first_name: 'first_name_example', last_name: 'last_name_example', primary_address: Buildium::AssociationOwnerPostMessagePrimaryAddress.new({address_line1: 'address_line1_example', country: 'Afghanistan'})}) # UpdateAssociationOwnerRequest | 

begin
  # Update an owner
  result = api_instance.update_association_owner(owner_id, update_association_owner_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->update_association_owner: #{e}"
end
```

#### Using the update_association_owner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnerMessage>, Integer, Hash)> update_association_owner_with_http_info(owner_id, update_association_owner_request)

```ruby
begin
  # Update an owner
  data, status_code, headers = api_instance.update_association_owner_with_http_info(owner_id, update_association_owner_request)
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
| **update_association_owner_request** | [**UpdateAssociationOwnerRequest**](UpdateAssociationOwnerRequest.md) |  |  |

### Return type

[**AssociationOwnerMessage**](AssociationOwnerMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_association_owner_note

> <NoteMessage> update_association_owner_note(owner_id, note_id, update_lease_note_request)

Update a note

Updates an association owner note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | 
note_id = 56 # Integer | 
update_lease_note_request = Buildium::UpdateLeaseNoteRequest.new({note: 'note_example'}) # UpdateLeaseNoteRequest | 

begin
  # Update a note
  result = api_instance.update_association_owner_note(owner_id, note_id, update_lease_note_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->update_association_owner_note: #{e}"
end
```

#### Using the update_association_owner_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_association_owner_note_with_http_info(owner_id, note_id, update_lease_note_request)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_association_owner_note_with_http_info(owner_id, note_id, update_lease_note_request)
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
| **update_lease_note_request** | [**UpdateLeaseNoteRequest**](UpdateLeaseNoteRequest.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_association_owner_occupancy_status

> <AssociationOwnerUnitOccupancyStatusMessage> update_association_owner_occupancy_status(owner_id, unit_id, update_association_owner_occupancy_status_request)

Update occupancy status

Updates whether a unit is occupied by the association owner.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit` <br /><span class=\"permissionBlock\">Associations > Ownership Accounts</span> - `View`

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

api_instance = Buildium::AssociationOwnersApi.new
owner_id = 56 # Integer | 
unit_id = 56 # Integer | 
update_association_owner_occupancy_status_request = Buildium::UpdateAssociationOwnerOccupancyStatusRequest.new({is_occupied: false}) # UpdateAssociationOwnerOccupancyStatusRequest | 

begin
  # Update occupancy status
  result = api_instance.update_association_owner_occupancy_status(owner_id, unit_id, update_association_owner_occupancy_status_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->update_association_owner_occupancy_status: #{e}"
end
```

#### Using the update_association_owner_occupancy_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnerUnitOccupancyStatusMessage>, Integer, Hash)> update_association_owner_occupancy_status_with_http_info(owner_id, unit_id, update_association_owner_occupancy_status_request)

```ruby
begin
  # Update occupancy status
  data, status_code, headers = api_instance.update_association_owner_occupancy_status_with_http_info(owner_id, unit_id, update_association_owner_occupancy_status_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationOwnerUnitOccupancyStatusMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnersApi->update_association_owner_occupancy_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **owner_id** | **Integer** |  |  |
| **unit_id** | **Integer** |  |  |
| **update_association_owner_occupancy_status_request** | [**UpdateAssociationOwnerOccupancyStatusRequest**](UpdateAssociationOwnerOccupancyStatusRequest.md) |  |  |

### Return type

[**AssociationOwnerUnitOccupancyStatusMessage**](AssociationOwnerUnitOccupancyStatusMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

