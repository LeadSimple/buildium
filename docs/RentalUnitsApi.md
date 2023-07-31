# Buildium::RentalUnitsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rental_unit**](RentalUnitsApi.md#create_rental_unit) | **POST** /v1/rentals/units | Create a unit |
| [**create_rental_unit_note**](RentalUnitsApi.md#create_rental_unit_note) | **POST** /v1/rentals/units/{unitId}/notes | Create a note |
| [**get_all_rental_units**](RentalUnitsApi.md#get_all_rental_units) | **GET** /v1/rentals/units | Retrieve all units |
| [**get_features_for_rental_unit_by_id**](RentalUnitsApi.md#get_features_for_rental_unit_by_id) | **GET** /v1/rentals/units/{unitId}/amenities | Retrieve all amenities |
| [**get_rental_unit_by_id**](RentalUnitsApi.md#get_rental_unit_by_id) | **GET** /v1/rentals/units/{unitId} | Retrieve a unit |
| [**get_rental_unit_note_by_note_id**](RentalUnitsApi.md#get_rental_unit_note_by_note_id) | **GET** /v1/rentals/units/{unitId}/notes/{noteId} | Retrieve a note |
| [**get_rental_unit_notes**](RentalUnitsApi.md#get_rental_unit_notes) | **GET** /v1/rentals/units/{unitId}/notes | Retrieve all notes |
| [**update_note_for_rental_unit**](RentalUnitsApi.md#update_note_for_rental_unit) | **PUT** /v1/rentals/units/{unitId}/notes/{noteId} | Update a note |
| [**update_rental_unit**](RentalUnitsApi.md#update_rental_unit) | **PUT** /v1/rentals/units/{unitId} | Update a unit |
| [**update_rental_unit_features**](RentalUnitsApi.md#update_rental_unit_features) | **PUT** /v1/rentals/units/{unitId}/amenities | Update amenities |


## create_rental_unit

> <RentalUnitMessage> create_rental_unit(rental_units_post_message)

Create a unit

Creates a rental unit.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
rental_units_post_message = Buildium::RentalUnitsPostMessage.new({unit_number: 'unit_number_example', property_id: 37, address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'})}) # RentalUnitsPostMessage | 

begin
  # Create a unit
  result = api_instance.create_rental_unit(rental_units_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->create_rental_unit: #{e}"
end
```

#### Using the create_rental_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalUnitMessage>, Integer, Hash)> create_rental_unit_with_http_info(rental_units_post_message)

```ruby
begin
  # Create a unit
  data, status_code, headers = api_instance.create_rental_unit_with_http_info(rental_units_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalUnitMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->create_rental_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_units_post_message** | [**RentalUnitsPostMessage**](RentalUnitsPostMessage.md) |  |  |

### Return type

[**RentalUnitMessage**](RentalUnitMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rental_unit_note

> <NoteMessage> create_rental_unit_note(unit_id, note_post_message)

Create a note

Creates a rental unit note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create a note
  result = api_instance.create_rental_unit_note(unit_id, note_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->create_rental_unit_note: #{e}"
end
```

#### Using the create_rental_unit_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_rental_unit_note_with_http_info(unit_id, note_post_message)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_rental_unit_note_with_http_info(unit_id, note_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->create_rental_unit_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **note_post_message** | [**NotePostMessage**](NotePostMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_rental_units

> <Array<RentalUnitMessage>> get_all_rental_units(opts)

Retrieve all units

Retrieves a list of rental property units.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalUnitsApi.new
opts = {
  propertyids: [37], # Array<Integer> | Filters results to rental units that belong to the specified set of property ids.
  lastupdatedfrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any rental units that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  lastupdatedto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any rental units that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all units
  result = api_instance.get_all_rental_units(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_all_rental_units: #{e}"
end
```

#### Using the get_all_rental_units_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentalUnitMessage>>, Integer, Hash)> get_all_rental_units_with_http_info(opts)

```ruby
begin
  # Retrieve all units
  data, status_code, headers = api_instance.get_all_rental_units_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentalUnitMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_all_rental_units_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **propertyids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to rental units that belong to the specified set of property ids. | [optional] |
| **lastupdatedfrom** | **Time** | Filters results to any rental units that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **lastupdatedto** | **Time** | Filters results to any rental units that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;RentalUnitMessage&gt;**](RentalUnitMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_features_for_rental_unit_by_id

> <RentalUnitFeaturesMessage> get_features_for_rental_unit_by_id(unit_id)

Retrieve all amenities

Retrieves all amenities for a rental unit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 

begin
  # Retrieve all amenities
  result = api_instance.get_features_for_rental_unit_by_id(unit_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_features_for_rental_unit_by_id: #{e}"
end
```

#### Using the get_features_for_rental_unit_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalUnitFeaturesMessage>, Integer, Hash)> get_features_for_rental_unit_by_id_with_http_info(unit_id)

```ruby
begin
  # Retrieve all amenities
  data, status_code, headers = api_instance.get_features_for_rental_unit_by_id_with_http_info(unit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalUnitFeaturesMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_features_for_rental_unit_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |

### Return type

[**RentalUnitFeaturesMessage**](RentalUnitFeaturesMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_unit_by_id

> <RentalUnitMessage> get_rental_unit_by_id(unit_id)

Retrieve a unit

Retrieves a specific rental property unit.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | The rental unit identifier.

begin
  # Retrieve a unit
  result = api_instance.get_rental_unit_by_id(unit_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_by_id: #{e}"
end
```

#### Using the get_rental_unit_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalUnitMessage>, Integer, Hash)> get_rental_unit_by_id_with_http_info(unit_id)

```ruby
begin
  # Retrieve a unit
  data, status_code, headers = api_instance.get_rental_unit_by_id_with_http_info(unit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalUnitMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | The rental unit identifier. |  |

### Return type

[**RentalUnitMessage**](RentalUnitMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_unit_note_by_note_id

> <NoteMessage> get_rental_unit_note_by_note_id(unit_id, note_id)

Retrieve a note

Retrieves a rental unit note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
  result = api_instance.get_rental_unit_note_by_note_id(unit_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_note_by_note_id: #{e}"
end
```

#### Using the get_rental_unit_note_by_note_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_rental_unit_note_by_note_id_with_http_info(unit_id, note_id)

```ruby
begin
  # Retrieve a note
  data, status_code, headers = api_instance.get_rental_unit_note_by_note_id_with_http_info(unit_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_note_by_note_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_unit_notes

> <Array<NoteMessage>> get_rental_unit_notes(unit_id, opts)

Retrieve all notes

Retrieves all rental unit notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
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
  result = api_instance.get_rental_unit_notes(unit_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_notes: #{e}"
end
```

#### Using the get_rental_unit_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_rental_unit_notes_with_http_info(unit_id, opts)

```ruby
begin
  # Retrieve all notes
  data, status_code, headers = api_instance.get_rental_unit_notes_with_http_info(unit_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->get_rental_unit_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
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


## update_note_for_rental_unit

> <NoteMessage> update_note_for_rental_unit(unit_id, note_id, note_put_message)

Update a note

Updates a rental unit note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
note_id = 56 # Integer | 
note_put_message = Buildium::NotePutMessage.new({note: 'note_example'}) # NotePutMessage | 

begin
  # Update a note
  result = api_instance.update_note_for_rental_unit(unit_id, note_id, note_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_note_for_rental_unit: #{e}"
end
```

#### Using the update_note_for_rental_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_note_for_rental_unit_with_http_info(unit_id, note_id, note_put_message)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_note_for_rental_unit_with_http_info(unit_id, note_id, note_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_note_for_rental_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **note_put_message** | [**NotePutMessage**](NotePutMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rental_unit

> <RentalUnitMessage> update_rental_unit(unit_id, rental_unit_put_message)

Update a unit

Updates a rental unit.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | The identifier of the unit to update.
rental_unit_put_message = Buildium::RentalUnitPutMessage.new({unit_number: 'unit_number_example', address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'})}) # RentalUnitPutMessage | 

begin
  # Update a unit
  result = api_instance.update_rental_unit(unit_id, rental_unit_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_rental_unit: #{e}"
end
```

#### Using the update_rental_unit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalUnitMessage>, Integer, Hash)> update_rental_unit_with_http_info(unit_id, rental_unit_put_message)

```ruby
begin
  # Update a unit
  data, status_code, headers = api_instance.update_rental_unit_with_http_info(unit_id, rental_unit_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalUnitMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_rental_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | The identifier of the unit to update. |  |
| **rental_unit_put_message** | [**RentalUnitPutMessage**](RentalUnitPutMessage.md) |  |  |

### Return type

[**RentalUnitMessage**](RentalUnitMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rental_unit_features

> <RentalUnitFeaturesMessage> update_rental_unit_features(unit_id, rental_unit_features_put_message)

Update amenities

Updates the amenities for a rental unit.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalUnitsApi.new
unit_id = 56 # Integer | 
rental_unit_features_put_message = Buildium::RentalUnitFeaturesPutMessage.new # RentalUnitFeaturesPutMessage | 

begin
  # Update amenities
  result = api_instance.update_rental_unit_features(unit_id, rental_unit_features_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_rental_unit_features: #{e}"
end
```

#### Using the update_rental_unit_features_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalUnitFeaturesMessage>, Integer, Hash)> update_rental_unit_features_with_http_info(unit_id, rental_unit_features_put_message)

```ruby
begin
  # Update amenities
  data, status_code, headers = api_instance.update_rental_unit_features_with_http_info(unit_id, rental_unit_features_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalUnitFeaturesMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalUnitsApi->update_rental_unit_features_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **rental_unit_features_put_message** | [**RentalUnitFeaturesPutMessage**](RentalUnitFeaturesPutMessage.md) |  |  |

### Return type

[**RentalUnitFeaturesMessage**](RentalUnitFeaturesMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

