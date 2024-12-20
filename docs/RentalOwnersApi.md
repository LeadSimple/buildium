# Buildium::RentalOwnersApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rental_owner**](RentalOwnersApi.md#create_rental_owner) | **POST** /v1/rentals/owners | Create an owner |
| [**create_rental_owner_note**](RentalOwnersApi.md#create_rental_owner_note) | **POST** /v1/rentals/owners/{rentalOwnerId}/notes | Create a note |
| [**get_rental_owner_by_id**](RentalOwnersApi.md#get_rental_owner_by_id) | **GET** /v1/rentals/owners/{rentalOwnerId} | Retrieve an owner |
| [**get_rental_owner_note_by_id**](RentalOwnersApi.md#get_rental_owner_note_by_id) | **GET** /v1/rentals/owners/{rentalOwnerId}/notes/{noteId} | Retrieve a note |
| [**get_rental_owner_notes**](RentalOwnersApi.md#get_rental_owner_notes) | **GET** /v1/rentals/owners/{rentalOwnerId}/notes | Retrieves all notes |
| [**get_rental_owners**](RentalOwnersApi.md#get_rental_owners) | **GET** /v1/rentals/owners | Retrieve all owners |
| [**update_rental_owner**](RentalOwnersApi.md#update_rental_owner) | **PUT** /v1/rentals/owners/{rentalOwnerId} | Update an owner |
| [**update_rental_owner_note**](RentalOwnersApi.md#update_rental_owner_note) | **PUT** /v1/rentals/owners/{rentalOwnerId}/notes/{noteId} | Update a note |


## create_rental_owner

> <RentalOwnerMessage> create_rental_owner(create_rental_owner_request)

Create an owner

Creates a rental owner.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View` `Edit`

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

api_instance = Buildium::RentalOwnersApi.new
create_rental_owner_request = Buildium::CreateRentalOwnerRequest.new({is_company: false, address: Buildium::RentalOwnerPostMessageAddress.new({address_line1: 'address_line1_example', country: 'Afghanistan'}), property_ids: [37]}) # CreateRentalOwnerRequest | 

begin
  # Create an owner
  result = api_instance.create_rental_owner(create_rental_owner_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->create_rental_owner: #{e}"
end
```

#### Using the create_rental_owner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalOwnerMessage>, Integer, Hash)> create_rental_owner_with_http_info(create_rental_owner_request)

```ruby
begin
  # Create an owner
  data, status_code, headers = api_instance.create_rental_owner_with_http_info(create_rental_owner_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalOwnerMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->create_rental_owner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_rental_owner_request** | [**CreateRentalOwnerRequest**](CreateRentalOwnerRequest.md) |  |  |

### Return type

[**RentalOwnerMessage**](RentalOwnerMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rental_owner_note

> <NoteMessage> create_rental_owner_note(rental_owner_id, create_lease_note_request)

Create a note

Creates a new Rental Owner note.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View` `Edit`

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

api_instance = Buildium::RentalOwnersApi.new
rental_owner_id = 56 # Integer | 
create_lease_note_request = Buildium::CreateLeaseNoteRequest.new({note: 'note_example'}) # CreateLeaseNoteRequest | 

begin
  # Create a note
  result = api_instance.create_rental_owner_note(rental_owner_id, create_lease_note_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->create_rental_owner_note: #{e}"
end
```

#### Using the create_rental_owner_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_rental_owner_note_with_http_info(rental_owner_id, create_lease_note_request)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_rental_owner_note_with_http_info(rental_owner_id, create_lease_note_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->create_rental_owner_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_id** | **Integer** |  |  |
| **create_lease_note_request** | [**CreateLeaseNoteRequest**](CreateLeaseNoteRequest.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_rental_owner_by_id

> <RentalOwnerMessage> get_rental_owner_by_id(rental_owner_id)

Retrieve an owner

Retrieves a specific rental owner.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View`

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

api_instance = Buildium::RentalOwnersApi.new
rental_owner_id = 56 # Integer | The rental owner identifier.

begin
  # Retrieve an owner
  result = api_instance.get_rental_owner_by_id(rental_owner_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->get_rental_owner_by_id: #{e}"
end
```

#### Using the get_rental_owner_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalOwnerMessage>, Integer, Hash)> get_rental_owner_by_id_with_http_info(rental_owner_id)

```ruby
begin
  # Retrieve an owner
  data, status_code, headers = api_instance.get_rental_owner_by_id_with_http_info(rental_owner_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalOwnerMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->get_rental_owner_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_id** | **Integer** | The rental owner identifier. |  |

### Return type

[**RentalOwnerMessage**](RentalOwnerMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_owner_note_by_id

> <NoteMessage> get_rental_owner_note_by_id(rental_owner_id, note_id)

Retrieve a note

Retrieves a rental owner note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View`

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

api_instance = Buildium::RentalOwnersApi.new
rental_owner_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
  result = api_instance.get_rental_owner_note_by_id(rental_owner_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->get_rental_owner_note_by_id: #{e}"
end
```

#### Using the get_rental_owner_note_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_rental_owner_note_by_id_with_http_info(rental_owner_id, note_id)

```ruby
begin
  # Retrieve a note
  data, status_code, headers = api_instance.get_rental_owner_note_by_id_with_http_info(rental_owner_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->get_rental_owner_note_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_owner_notes

> <Array<NoteMessage>> get_rental_owner_notes(rental_owner_id, opts)

Retrieves all notes

Retrieves all rental owner notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View`

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

api_instance = Buildium::RentalOwnersApi.new
rental_owner_id = 56 # Integer | 
opts = {
  updateddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  updateddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  lastupdatedbyuserid: 56, # Integer | Filters results to only notes that were last updated by the specified user identifier.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieves all notes
  result = api_instance.get_rental_owner_notes(rental_owner_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->get_rental_owner_notes: #{e}"
end
```

#### Using the get_rental_owner_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_rental_owner_notes_with_http_info(rental_owner_id, opts)

```ruby
begin
  # Retrieves all notes
  data, status_code, headers = api_instance.get_rental_owner_notes_with_http_info(rental_owner_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->get_rental_owner_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_id** | **Integer** |  |  |
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


## get_rental_owners

> <Array<RentalOwnerMessage>> get_rental_owners(opts)

Retrieve all owners

Retrieves a list of rental owners.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View`

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

api_instance = Buildium::RentalOwnersApi.new
opts = {
  propertyids: [37], # Array<Integer> | Filters results to any lease whose unit belongs to the specified set of property ids.
  status: 'Inactive', # String | Filters results by the status of the user. If no status is specified both `active` and `inactive` users will be returned.
  agreementdaysremaining: 56, # Integer | Filters results by the days remaining on their lease agreement.
  ownername: 'ownername_example', # String | Filters results to any owner whose name *contains* the specified value.
  phone: 'phone_example', # String | Filters results to any owner who has a phone number that *contains* the specified value.
  lastupdatedfrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any rental owners that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  lastupdatedto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any rental owners that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all owners
  result = api_instance.get_rental_owners(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->get_rental_owners: #{e}"
end
```

#### Using the get_rental_owners_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentalOwnerMessage>>, Integer, Hash)> get_rental_owners_with_http_info(opts)

```ruby
begin
  # Retrieve all owners
  data, status_code, headers = api_instance.get_rental_owners_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentalOwnerMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->get_rental_owners_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **propertyids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any lease whose unit belongs to the specified set of property ids. | [optional] |
| **status** | **String** | Filters results by the status of the user. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; users will be returned. | [optional] |
| **agreementdaysremaining** | **Integer** | Filters results by the days remaining on their lease agreement. | [optional] |
| **ownername** | **String** | Filters results to any owner whose name *contains* the specified value. | [optional] |
| **phone** | **String** | Filters results to any owner who has a phone number that *contains* the specified value. | [optional] |
| **lastupdatedfrom** | **Time** | Filters results to any rental owners that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **lastupdatedto** | **Time** | Filters results to any rental owners that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;RentalOwnerMessage&gt;**](RentalOwnerMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rental_owner

> <RentalOwnerMessage> update_rental_owner(rental_owner_id, update_rental_owner_request)

Update an owner

Updates a rental owner.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View` `Edit`

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

api_instance = Buildium::RentalOwnersApi.new
rental_owner_id = 56 # Integer | The identifier of the rental owner to update.
update_rental_owner_request = Buildium::UpdateRentalOwnerRequest.new({is_company: false, address: Buildium::RentalOwnerPostMessageAddress.new({address_line1: 'address_line1_example', country: 'Afghanistan'}), property_ids: [37]}) # UpdateRentalOwnerRequest | 

begin
  # Update an owner
  result = api_instance.update_rental_owner(rental_owner_id, update_rental_owner_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->update_rental_owner: #{e}"
end
```

#### Using the update_rental_owner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalOwnerMessage>, Integer, Hash)> update_rental_owner_with_http_info(rental_owner_id, update_rental_owner_request)

```ruby
begin
  # Update an owner
  data, status_code, headers = api_instance.update_rental_owner_with_http_info(rental_owner_id, update_rental_owner_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalOwnerMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->update_rental_owner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_id** | **Integer** | The identifier of the rental owner to update. |  |
| **update_rental_owner_request** | [**UpdateRentalOwnerRequest**](UpdateRentalOwnerRequest.md) |  |  |

### Return type

[**RentalOwnerMessage**](RentalOwnerMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rental_owner_note

> <NoteMessage> update_rental_owner_note(rental_owner_id, note_id, update_lease_note_request)

Update a note

Updates a Rental Owner note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View` `Edit`

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

api_instance = Buildium::RentalOwnersApi.new
rental_owner_id = 56 # Integer | 
note_id = 56 # Integer | 
update_lease_note_request = Buildium::UpdateLeaseNoteRequest.new({note: 'note_example'}) # UpdateLeaseNoteRequest | 

begin
  # Update a note
  result = api_instance.update_rental_owner_note(rental_owner_id, note_id, update_lease_note_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->update_rental_owner_note: #{e}"
end
```

#### Using the update_rental_owner_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_rental_owner_note_with_http_info(rental_owner_id, note_id, update_lease_note_request)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_rental_owner_note_with_http_info(rental_owner_id, note_id, update_lease_note_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalOwnersApi->update_rental_owner_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_owner_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **update_lease_note_request** | [**UpdateLeaseNoteRequest**](UpdateLeaseNoteRequest.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

