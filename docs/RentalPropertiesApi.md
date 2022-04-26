# Buildium::RentalPropertiesApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rental_property**](RentalPropertiesApi.md#create_rental_property) | **POST** /v1/rentals | Create a property |
| [**create_rental_property_note**](RentalPropertiesApi.md#create_rental_property_note) | **POST** /v1/rentals/{propertyId}/notes | Create a note |
| [**get_all_rentals**](RentalPropertiesApi.md#get_all_rentals) | **GET** /v1/rentals | Retrieve all properties |
| [**get_features_by_rental_property_id**](RentalPropertiesApi.md#get_features_by_rental_property_id) | **GET** /v1/rentals/{propertyId}/amenities | Retrieve all amenities |
| [**get_rental_by_id**](RentalPropertiesApi.md#get_rental_by_id) | **GET** /v1/rentals/{propertyId} | Retrieve a property |
| [**get_rental_note_by_note_id**](RentalPropertiesApi.md#get_rental_note_by_note_id) | **GET** /v1/rentals/{propertyId}/notes/{noteId} | Retrieve a note |
| [**get_rental_notes**](RentalPropertiesApi.md#get_rental_notes) | **GET** /v1/rentals/{propertyId}/notes | Retrieve all notes |
| [**get_rental_preferred_vendors**](RentalPropertiesApi.md#get_rental_preferred_vendors) | **GET** /v1/rentals/{propertyId}/vendors | Retrieve all preferred vendors |
| [**update_rental_features**](RentalPropertiesApi.md#update_rental_features) | **PUT** /v1/rentals/{propertyId}/amenities | Update amenities |
| [**update_rental_preferred_vendors**](RentalPropertiesApi.md#update_rental_preferred_vendors) | **PUT** /v1/rentals/{propertyId}/vendors | Update preferred vendors |
| [**update_rental_property**](RentalPropertiesApi.md#update_rental_property) | **PUT** /v1/rentals/{propertyId} | Update a property |
| [**update_rental_property_note**](RentalPropertiesApi.md#update_rental_property_note) | **PUT** /v1/rentals/{propertyId}/notes/{noteId} | Update a note |


## create_rental_property

> <RentalMessage> create_rental_property(rental_property_post_message)

Create a property

Creates a new rental property.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalPropertiesApi.new
rental_property_post_message = Buildium::RentalPropertyPostMessage.new({name: 'name_example', address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'}), rental_sub_type: 'CondoTownhome', operating_bank_account_id: 37}) # RentalPropertyPostMessage | 

begin
  # Create a property
  result = api_instance.create_rental_property(rental_property_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->create_rental_property: #{e}"
end
```

#### Using the create_rental_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalMessage>, Integer, Hash)> create_rental_property_with_http_info(rental_property_post_message)

```ruby
begin
  # Create a property
  data, status_code, headers = api_instance.create_rental_property_with_http_info(rental_property_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->create_rental_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_property_post_message** | [**RentalPropertyPostMessage**](RentalPropertyPostMessage.md) |  |  |

### Return type

[**RentalMessage**](RentalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rental_property_note

> <NoteMessage> create_rental_property_note(property_id, note_post_message)

Create a note

Creates a note.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalPropertiesApi.new
property_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create a note
  result = api_instance.create_rental_property_note(property_id, note_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->create_rental_property_note: #{e}"
end
```

#### Using the create_rental_property_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_rental_property_note_with_http_info(property_id, note_post_message)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_rental_property_note_with_http_info(property_id, note_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->create_rental_property_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** |  |  |
| **note_post_message** | [**NotePostMessage**](NotePostMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_rentals

> <Array<RentalMessage>> get_all_rentals(opts)

Retrieve all properties

Retrieves a list of rental properties.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalPropertiesApi.new
opts = {
  location: 'location_example', # String | Filters results to only rental properties whose city or state *contains* the specified value.
  types: ['Residential'], # Array<String> | Filters results by the rental type. If no type is provided all types will be returned.
  subtypes: ['CondoTownhome'], # Array<String> | Filters results by the sub type of the rental property. If no sub type is specified all sub types will be returned.
  status: 'Active', # String | Filters results by the status of the rental property. If no status is specified both `active` and `inactive` rental properties will be returned.
  rentalownerids: [37], # Array<Integer> | Filters results to only rental properties whose RentalOwnerId matches the specified Id.
  propertyids: [37], # Array<Integer> | Filters results to only rental properties units whose Rental matches the specified Id.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all properties
  result = api_instance.get_all_rentals(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_all_rentals: #{e}"
end
```

#### Using the get_all_rentals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentalMessage>>, Integer, Hash)> get_all_rentals_with_http_info(opts)

```ruby
begin
  # Retrieve all properties
  data, status_code, headers = api_instance.get_all_rentals_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentalMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_all_rentals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | Filters results to only rental properties whose city or state *contains* the specified value. | [optional] |
| **types** | [**Array&lt;String&gt;**](String.md) | Filters results by the rental type. If no type is provided all types will be returned. | [optional] |
| **subtypes** | [**Array&lt;String&gt;**](String.md) | Filters results by the sub type of the rental property. If no sub type is specified all sub types will be returned. | [optional] |
| **status** | **String** | Filters results by the status of the rental property. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; rental properties will be returned. | [optional] |
| **rentalownerids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to only rental properties whose RentalOwnerId matches the specified Id. | [optional] |
| **propertyids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to only rental properties units whose Rental matches the specified Id. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;RentalMessage&gt;**](RentalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_features_by_rental_property_id

> <RentalFeaturesMessage> get_features_by_rental_property_id(property_id)

Retrieve all amenities

Retrieve all the amenities for a rental property.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalPropertiesApi.new
property_id = 56 # Integer | 

begin
  # Retrieve all amenities
  result = api_instance.get_features_by_rental_property_id(property_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_features_by_rental_property_id: #{e}"
end
```

#### Using the get_features_by_rental_property_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalFeaturesMessage>, Integer, Hash)> get_features_by_rental_property_id_with_http_info(property_id)

```ruby
begin
  # Retrieve all amenities
  data, status_code, headers = api_instance.get_features_by_rental_property_id_with_http_info(property_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalFeaturesMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_features_by_rental_property_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** |  |  |

### Return type

[**RentalFeaturesMessage**](RentalFeaturesMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_by_id

> <RentalMessage> get_rental_by_id(property_id)

Retrieve a property

Retrieve a specific rental property.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalPropertiesApi.new
property_id = 56 # Integer | The rental property identifier.

begin
  # Retrieve a property
  result = api_instance.get_rental_by_id(property_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_rental_by_id: #{e}"
end
```

#### Using the get_rental_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalMessage>, Integer, Hash)> get_rental_by_id_with_http_info(property_id)

```ruby
begin
  # Retrieve a property
  data, status_code, headers = api_instance.get_rental_by_id_with_http_info(property_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_rental_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** | The rental property identifier. |  |

### Return type

[**RentalMessage**](RentalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_note_by_note_id

> <NoteMessage> get_rental_note_by_note_id(property_id, note_id)

Retrieve a note

Retrieves a note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalPropertiesApi.new
property_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
  result = api_instance.get_rental_note_by_note_id(property_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_rental_note_by_note_id: #{e}"
end
```

#### Using the get_rental_note_by_note_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_rental_note_by_note_id_with_http_info(property_id, note_id)

```ruby
begin
  # Retrieve a note
  data, status_code, headers = api_instance.get_rental_note_by_note_id_with_http_info(property_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_rental_note_by_note_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rental_notes

> <Array<NoteMessage>> get_rental_notes(property_id, opts)

Retrieve all notes

Retrieves all notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::RentalPropertiesApi.new
property_id = 56 # Integer | 
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
  result = api_instance.get_rental_notes(property_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_rental_notes: #{e}"
end
```

#### Using the get_rental_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_rental_notes_with_http_info(property_id, opts)

```ruby
begin
  # Retrieve all notes
  data, status_code, headers = api_instance.get_rental_notes_with_http_info(property_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_rental_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** |  |  |
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


## get_rental_preferred_vendors

> <Array<RentalPreferredVendorMessage>> get_rental_preferred_vendors(property_id, opts)

Retrieve all preferred vendors

Retrieves all preferred vendors.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`              <br /><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`

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

api_instance = Buildium::RentalPropertiesApi.new
property_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all preferred vendors
  result = api_instance.get_rental_preferred_vendors(property_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_rental_preferred_vendors: #{e}"
end
```

#### Using the get_rental_preferred_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentalPreferredVendorMessage>>, Integer, Hash)> get_rental_preferred_vendors_with_http_info(property_id, opts)

```ruby
begin
  # Retrieve all preferred vendors
  data, status_code, headers = api_instance.get_rental_preferred_vendors_with_http_info(property_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentalPreferredVendorMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->get_rental_preferred_vendors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;RentalPreferredVendorMessage&gt;**](RentalPreferredVendorMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rental_features

> <RentalFeaturesMessage> update_rental_features(property_id, rental_features_put_message)

Update amenities

Updates the amenities for a rental property.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalPropertiesApi.new
property_id = 56 # Integer | 
rental_features_put_message = Buildium::RentalFeaturesPutMessage.new # RentalFeaturesPutMessage | 

begin
  # Update amenities
  result = api_instance.update_rental_features(property_id, rental_features_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->update_rental_features: #{e}"
end
```

#### Using the update_rental_features_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalFeaturesMessage>, Integer, Hash)> update_rental_features_with_http_info(property_id, rental_features_put_message)

```ruby
begin
  # Update amenities
  data, status_code, headers = api_instance.update_rental_features_with_http_info(property_id, rental_features_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalFeaturesMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->update_rental_features_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** |  |  |
| **rental_features_put_message** | [**RentalFeaturesPutMessage**](RentalFeaturesPutMessage.md) |  |  |

### Return type

[**RentalFeaturesMessage**](RentalFeaturesMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rental_preferred_vendors

> <Array<RentalPreferredVendorMessage>> update_rental_preferred_vendors(property_id, rental_preferred_vendor_put_message)

Update preferred vendors

Updates preferred vendors.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View` `Edit`

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

api_instance = Buildium::RentalPropertiesApi.new
property_id = 56 # Integer | 
rental_preferred_vendor_put_message = Buildium::RentalPreferredVendorPutMessage.new({vendor_ids: [37]}) # RentalPreferredVendorPutMessage | 

begin
  # Update preferred vendors
  result = api_instance.update_rental_preferred_vendors(property_id, rental_preferred_vendor_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->update_rental_preferred_vendors: #{e}"
end
```

#### Using the update_rental_preferred_vendors_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentalPreferredVendorMessage>>, Integer, Hash)> update_rental_preferred_vendors_with_http_info(property_id, rental_preferred_vendor_put_message)

```ruby
begin
  # Update preferred vendors
  data, status_code, headers = api_instance.update_rental_preferred_vendors_with_http_info(property_id, rental_preferred_vendor_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentalPreferredVendorMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->update_rental_preferred_vendors_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** |  |  |
| **rental_preferred_vendor_put_message** | [**RentalPreferredVendorPutMessage**](RentalPreferredVendorPutMessage.md) |  |  |

### Return type

[**Array&lt;RentalPreferredVendorMessage&gt;**](RentalPreferredVendorMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rental_property

> <RentalMessage> update_rental_property(property_id, rental_property_put_message)

Update a property

Updates a rental property.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalPropertiesApi.new
property_id = 56 # Integer | 
rental_property_put_message = Buildium::RentalPropertyPutMessage.new({name: 'name_example', address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'}), rental_sub_type: 'CondoTownhome', operating_bank_account_id: 37}) # RentalPropertyPutMessage | 

begin
  # Update a property
  result = api_instance.update_rental_property(property_id, rental_property_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->update_rental_property: #{e}"
end
```

#### Using the update_rental_property_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentalMessage>, Integer, Hash)> update_rental_property_with_http_info(property_id, rental_property_put_message)

```ruby
begin
  # Update a property
  data, status_code, headers = api_instance.update_rental_property_with_http_info(property_id, rental_property_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentalMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->update_rental_property_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** |  |  |
| **rental_property_put_message** | [**RentalPropertyPutMessage**](RentalPropertyPutMessage.md) |  |  |

### Return type

[**RentalMessage**](RentalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rental_property_note

> <NoteMessage> update_rental_property_note(property_id, note_id, note_put_message)

Update a note

Updates a note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::RentalPropertiesApi.new
property_id = 56 # Integer | 
note_id = 56 # Integer | 
note_put_message = Buildium::NotePutMessage.new({note: 'note_example'}) # NotePutMessage | 

begin
  # Update a note
  result = api_instance.update_rental_property_note(property_id, note_id, note_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->update_rental_property_note: #{e}"
end
```

#### Using the update_rental_property_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_rental_property_note_with_http_info(property_id, note_id, note_put_message)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_rental_property_note_with_http_info(property_id, note_id, note_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalPropertiesApi->update_rental_property_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **property_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **note_put_message** | [**NotePutMessage**](NotePutMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

