# Buildium::ListingsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_listing_contact**](ListingsApi.md#create_listing_contact) | **POST** /v1/rentals/units/listingcontacts | Create a listing contact |
| [**delist_unit**](ListingsApi.md#delist_unit) | **DELETE** /v1/rentals/units/{unitId}/listing | Delete a listing |
| [**get_all_listing_contacts**](ListingsApi.md#get_all_listing_contacts) | **GET** /v1/rentals/units/listingcontacts | Retrieve all listing contacts |
| [**get_listing_contact_by_id**](ListingsApi.md#get_listing_contact_by_id) | **GET** /v1/rentals/units/listingcontacts/{listingContactId} | Retrieve a listing contact |
| [**get_listing_for_unit_async**](ListingsApi.md#get_listing_for_unit_async) | **GET** /v1/rentals/units/{unitId}/listing | Retrieve a listing |
| [**get_listings_async**](ListingsApi.md#get_listings_async) | **GET** /v1/rentals/units/listings | Retrieve all listings |
| [**update_listing_contact**](ListingsApi.md#update_listing_contact) | **PUT** /v1/rentals/units/listingcontacts/{listingContactId} | Update a listing contact |
| [**upsert_listings_async**](ListingsApi.md#upsert_listings_async) | **PUT** /v1/rentals/units/{unitId}/listing | Create/Update a listing |


## create_listing_contact

> <ListingContactMessage> create_listing_contact(listing_contact_save_message)

Create a listing contact

Create a listing contact. Note, at least one contact field (phone number, email or website) is required for the listing contact.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View` `Edit`

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

api_instance = Buildium::ListingsApi.new
listing_contact_save_message = Buildium::ListingContactSaveMessage.new({name: 'name_example'}) # ListingContactSaveMessage | 

begin
  # Create a listing contact
  result = api_instance.create_listing_contact(listing_contact_save_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->create_listing_contact: #{e}"
end
```

#### Using the create_listing_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingContactMessage>, Integer, Hash)> create_listing_contact_with_http_info(listing_contact_save_message)

```ruby
begin
  # Create a listing contact
  data, status_code, headers = api_instance.create_listing_contact_with_http_info(listing_contact_save_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingContactMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->create_listing_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_contact_save_message** | [**ListingContactSaveMessage**](ListingContactSaveMessage.md) |  |  |

### Return type

[**ListingContactMessage**](ListingContactMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delist_unit

> delist_unit(unit_id)

Delete a listing

Deleting a listing will immediately remove it from your Buildium public website. The listing will also be removed  from any syndicated sites within 24-48 hours.<br /><br />Listings manually created on craigslist using the Buildium  guided tool will not be removed. The listing must be removed using craigslist's tools provided in your craigslist account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View` `Edit` `Delete`

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

api_instance = Buildium::ListingsApi.new
unit_id = 56 # Integer | The rental property unit identifier.

begin
  # Delete a listing
  api_instance.delist_unit(unit_id)
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->delist_unit: #{e}"
end
```

#### Using the delist_unit_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delist_unit_with_http_info(unit_id)

```ruby
begin
  # Delete a listing
  data, status_code, headers = api_instance.delist_unit_with_http_info(unit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->delist_unit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | The rental property unit identifier. |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_listing_contacts

> <Array<ListingContactMessage>> get_all_listing_contacts(opts)

Retrieve all listing contacts

Retrieves all listing contacts.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View`

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

api_instance = Buildium::ListingsApi.new
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all listing contacts
  result = api_instance.get_all_listing_contacts(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->get_all_listing_contacts: #{e}"
end
```

#### Using the get_all_listing_contacts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ListingContactMessage>>, Integer, Hash)> get_all_listing_contacts_with_http_info(opts)

```ruby
begin
  # Retrieve all listing contacts
  data, status_code, headers = api_instance.get_all_listing_contacts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ListingContactMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->get_all_listing_contacts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;ListingContactMessage&gt;**](ListingContactMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_contact_by_id

> <ListingContactMessage> get_listing_contact_by_id(listing_contact_id)

Retrieve a listing contact

Retrieves a specific listing contact.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View`

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

api_instance = Buildium::ListingsApi.new
listing_contact_id = 56 # Integer | The listing contact identifier.

begin
  # Retrieve a listing contact
  result = api_instance.get_listing_contact_by_id(listing_contact_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->get_listing_contact_by_id: #{e}"
end
```

#### Using the get_listing_contact_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingContactMessage>, Integer, Hash)> get_listing_contact_by_id_with_http_info(listing_contact_id)

```ruby
begin
  # Retrieve a listing contact
  data, status_code, headers = api_instance.get_listing_contact_by_id_with_http_info(listing_contact_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingContactMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->get_listing_contact_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_contact_id** | **Integer** | The listing contact identifier. |  |

### Return type

[**ListingContactMessage**](ListingContactMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listing_for_unit_async

> <ListingMessage> get_listing_for_unit_async(unit_id)

Retrieve a listing

Retrieves a specific listing.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View`  <br /><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::ListingsApi.new
unit_id = 56 # Integer | The rental unit identifier.

begin
  # Retrieve a listing
  result = api_instance.get_listing_for_unit_async(unit_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->get_listing_for_unit_async: #{e}"
end
```

#### Using the get_listing_for_unit_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingMessage>, Integer, Hash)> get_listing_for_unit_async_with_http_info(unit_id)

```ruby
begin
  # Retrieve a listing
  data, status_code, headers = api_instance.get_listing_for_unit_async_with_http_info(unit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->get_listing_for_unit_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** | The rental unit identifier. |  |

### Return type

[**ListingMessage**](ListingMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_listings_async

> <Array<ListingMessage>> get_listings_async(opts)

Retrieve all listings

Retrieves all listings.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View`  <br /><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`

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

api_instance = Buildium::ListingsApi.new
opts = {
  entitytype: 'Property', # String | Specifies the type of entity that `EntityId` refers to.
  entityid: 56, # Integer | Filters results to only listings that are associated with the specified entity id value. The id must be of the type specified in `EntityType` property.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all listings
  result = api_instance.get_listings_async(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->get_listings_async: #{e}"
end
```

#### Using the get_listings_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ListingMessage>>, Integer, Hash)> get_listings_async_with_http_info(opts)

```ruby
begin
  # Retrieve all listings
  data, status_code, headers = api_instance.get_listings_async_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ListingMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->get_listings_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entitytype** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. | [optional] |
| **entityid** | **Integer** | Filters results to only listings that are associated with the specified entity id value. The id must be of the type specified in &#x60;EntityType&#x60; property. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;ListingMessage&gt;**](ListingMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_listing_contact

> <ListingContactMessage> update_listing_contact(listing_contact_id, listing_contact_save_message)

Update a listing contact

Update a listing contact. Note, at least one contact field (phone number, email or website) is required for the listing contact.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View` `Edit`

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

api_instance = Buildium::ListingsApi.new
listing_contact_id = 56 # Integer | The listing contact identifier.
listing_contact_save_message = Buildium::ListingContactSaveMessage.new({name: 'name_example'}) # ListingContactSaveMessage | 

begin
  # Update a listing contact
  result = api_instance.update_listing_contact(listing_contact_id, listing_contact_save_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->update_listing_contact: #{e}"
end
```

#### Using the update_listing_contact_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingContactMessage>, Integer, Hash)> update_listing_contact_with_http_info(listing_contact_id, listing_contact_save_message)

```ruby
begin
  # Update a listing contact
  data, status_code, headers = api_instance.update_listing_contact_with_http_info(listing_contact_id, listing_contact_save_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingContactMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->update_listing_contact_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listing_contact_id** | **Integer** | The listing contact identifier. |  |
| **listing_contact_save_message** | [**ListingContactSaveMessage**](ListingContactSaveMessage.md) |  |  |

### Return type

[**ListingContactMessage**](ListingContactMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## upsert_listings_async

> <ListingMessage> upsert_listings_async(unit_id, listing_put_message)

Create/Update a listing

This endpoint can be used to both *create* and *update* a listing. If no listing exists for the unit one will be created, otherwise the existing listing will be updated. A unit can only ever have one active listing.    <br /><br />  Upon creation the listing will post immediately to your Buildium public website, and will post to the selected syndicated sites within 24-48 hours. Updates to the listing will appear immediately in your Buildium public website and propagated to syndicated sites within 24-48 hours.   <br /><br />  Note, the listing will automatically pull in the information, features, and media that exists for the property and unit details.   <br /><br /><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`

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

api_instance = Buildium::ListingsApi.new
unit_id = 56 # Integer | 
listing_put_message = Buildium::ListingPutMessage.new({rent: 3.56, available_date: Date.today, is_managed_externally: false}) # ListingPutMessage | 

begin
  # Create/Update a listing
  result = api_instance.upsert_listings_async(unit_id, listing_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->upsert_listings_async: #{e}"
end
```

#### Using the upsert_listings_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListingMessage>, Integer, Hash)> upsert_listings_async_with_http_info(unit_id, listing_put_message)

```ruby
begin
  # Create/Update a listing
  data, status_code, headers = api_instance.upsert_listings_async_with_http_info(unit_id, listing_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListingMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ListingsApi->upsert_listings_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unit_id** | **Integer** |  |  |
| **listing_put_message** | [**ListingPutMessage**](ListingPutMessage.md) |  |  |

### Return type

[**ListingMessage**](ListingMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

