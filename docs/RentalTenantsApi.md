# Buildium::RentalTenantsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rental_tenant**](RentalTenantsApi.md#create_rental_tenant) | **POST** /v1/leases/tenants | Create a tenant |
| [**create_tenant_note**](RentalTenantsApi.md#create_tenant_note) | **POST** /v1/leases/tenants/{tenantId}/notes | Create a note |
| [**get_all_tenant_notes**](RentalTenantsApi.md#get_all_tenant_notes) | **GET** /v1/leases/tenants/{tenantId}/notes | Retrieve all notes |
| [**get_all_tenants**](RentalTenantsApi.md#get_all_tenants) | **GET** /v1/leases/tenants | Retrieve all tenants |
| [**get_tenant_by_id**](RentalTenantsApi.md#get_tenant_by_id) | **GET** /v1/leases/tenants/{tenantId} | Retrieve a tenant |
| [**get_tenant_note_by_id**](RentalTenantsApi.md#get_tenant_note_by_id) | **GET** /v1/leases/tenants/{tenantId}/notes/{noteId} | Retrieve a note |
| [**update_lease_tenant_note**](RentalTenantsApi.md#update_lease_tenant_note) | **PUT** /v1/leases/tenants/{tenantId}/notes/{noteId} | Update a note |
| [**update_rental_tenant**](RentalTenantsApi.md#update_rental_tenant) | **PUT** /v1/leases/tenants/{tenantId} | Update a tenant |


## create_rental_tenant

> <TenantMessage> create_rental_tenant(rental_tenant_post_message)

Create a tenant

Creates a rental tenant.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`

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

api_instance = Buildium::RentalTenantsApi.new
rental_tenant_post_message = Buildium::RentalTenantPostMessage.new({lease_id: 37, first_name: 'first_name_example', last_name: 'last_name_example', address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'})}) # RentalTenantPostMessage | 

begin
  # Create a tenant
  result = api_instance.create_rental_tenant(rental_tenant_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->create_rental_tenant: #{e}"
end
```

#### Using the create_rental_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantMessage>, Integer, Hash)> create_rental_tenant_with_http_info(rental_tenant_post_message)

```ruby
begin
  # Create a tenant
  data, status_code, headers = api_instance.create_rental_tenant_with_http_info(rental_tenant_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->create_rental_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rental_tenant_post_message** | [**RentalTenantPostMessage**](RentalTenantPostMessage.md) |  |  |

### Return type

[**TenantMessage**](TenantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_tenant_note

> <NoteMessage> create_tenant_note(tenant_id, note_post_message)

Create a note

Creates a tenant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`

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

api_instance = Buildium::RentalTenantsApi.new
tenant_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create a note
  result = api_instance.create_tenant_note(tenant_id, note_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->create_tenant_note: #{e}"
end
```

#### Using the create_tenant_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_tenant_note_with_http_info(tenant_id, note_post_message)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_tenant_note_with_http_info(tenant_id, note_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->create_tenant_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** |  |  |
| **note_post_message** | [**NotePostMessage**](NotePostMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_tenant_notes

> <Array<NoteMessage>> get_all_tenant_notes(tenant_id, opts)

Retrieve all notes

Retrieves all tenant notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`

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

api_instance = Buildium::RentalTenantsApi.new
tenant_id = 56 # Integer | The tenant identifier.
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
  result = api_instance.get_all_tenant_notes(tenant_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->get_all_tenant_notes: #{e}"
end
```

#### Using the get_all_tenant_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_all_tenant_notes_with_http_info(tenant_id, opts)

```ruby
begin
  # Retrieve all notes
  data, status_code, headers = api_instance.get_all_tenant_notes_with_http_info(tenant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->get_all_tenant_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** | The tenant identifier. |  |
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


## get_all_tenants

> <Array<TenantMessage>> get_all_tenants(opts)

Retrieve all tenants

Retrieves a list of tenants.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`

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

api_instance = Buildium::RentalTenantsApi.new
opts = {
  buildingstatuses: ['Active'], # Array<String> | Filters results by the status of the rental property the tenants are associated with. If no status is specified tenants in either `active` and `inactive` rental properties will be returned.
  leasetermstatuses: ['Active'], # Array<String> | Filters results to any tenant whose lease term matches the specified status.  If no status is specified tenants with any lease terms status will be returned.
  unitnumber: 'unitnumber_example', # String | Filters results to any tenant whose unit number *contains* the specified value.
  name: 'name_example', # String | Filters results to any tenant whose name *contains* the specified value.
  phone: 'phone_example', # String | Filters results to any tenant whose phone number *contains* the specified value.
  email: 'email_example', # String | Filters results to any tenant whose email *contains* the specified value.
  propertyids: [37], # Array<Integer> | Filters results to tenants whose rental unit belongs to the specified set of property ids.
  rentalownerids: [37], # Array<Integer> | Filters results to tenants whose rental unit belongs to a property with a rental owner in the specified set of rental owner ids.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all tenants
  result = api_instance.get_all_tenants(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->get_all_tenants: #{e}"
end
```

#### Using the get_all_tenants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<TenantMessage>>, Integer, Hash)> get_all_tenants_with_http_info(opts)

```ruby
begin
  # Retrieve all tenants
  data, status_code, headers = api_instance.get_all_tenants_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<TenantMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->get_all_tenants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **buildingstatuses** | [**Array&lt;String&gt;**](String.md) | Filters results by the status of the rental property the tenants are associated with. If no status is specified tenants in either &#x60;active&#x60; and &#x60;inactive&#x60; rental properties will be returned. | [optional] |
| **leasetermstatuses** | [**Array&lt;String&gt;**](String.md) | Filters results to any tenant whose lease term matches the specified status.  If no status is specified tenants with any lease terms status will be returned. | [optional] |
| **unitnumber** | **String** | Filters results to any tenant whose unit number *contains* the specified value. | [optional] |
| **name** | **String** | Filters results to any tenant whose name *contains* the specified value. | [optional] |
| **phone** | **String** | Filters results to any tenant whose phone number *contains* the specified value. | [optional] |
| **email** | **String** | Filters results to any tenant whose email *contains* the specified value. | [optional] |
| **propertyids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to tenants whose rental unit belongs to the specified set of property ids. | [optional] |
| **rentalownerids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to tenants whose rental unit belongs to a property with a rental owner in the specified set of rental owner ids. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;TenantMessage&gt;**](TenantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_by_id

> <TenantMessage> get_tenant_by_id(tenant_id)

Retrieve a tenant

Retrieve a specific tenant.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`

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

api_instance = Buildium::RentalTenantsApi.new
tenant_id = 56 # Integer | The tenant identifier.

begin
  # Retrieve a tenant
  result = api_instance.get_tenant_by_id(tenant_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->get_tenant_by_id: #{e}"
end
```

#### Using the get_tenant_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantMessage>, Integer, Hash)> get_tenant_by_id_with_http_info(tenant_id)

```ruby
begin
  # Retrieve a tenant
  data, status_code, headers = api_instance.get_tenant_by_id_with_http_info(tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->get_tenant_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** | The tenant identifier. |  |

### Return type

[**TenantMessage**](TenantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tenant_note_by_id

> <NoteMessage> get_tenant_note_by_id(tenant_id, note_id)

Retrieve a note

Retrieves a tenant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`

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

api_instance = Buildium::RentalTenantsApi.new
tenant_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
  result = api_instance.get_tenant_note_by_id(tenant_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->get_tenant_note_by_id: #{e}"
end
```

#### Using the get_tenant_note_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_tenant_note_by_id_with_http_info(tenant_id, note_id)

```ruby
begin
  # Retrieve a note
  data, status_code, headers = api_instance.get_tenant_note_by_id_with_http_info(tenant_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->get_tenant_note_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_lease_tenant_note

> <NoteMessage> update_lease_tenant_note(tenant_id, note_id, note_put_message)

Update a note

Updates a tenant note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`

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

api_instance = Buildium::RentalTenantsApi.new
tenant_id = 56 # Integer | 
note_id = 56 # Integer | 
note_put_message = Buildium::NotePutMessage.new({note: 'note_example'}) # NotePutMessage | 

begin
  # Update a note
  result = api_instance.update_lease_tenant_note(tenant_id, note_id, note_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->update_lease_tenant_note: #{e}"
end
```

#### Using the update_lease_tenant_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_lease_tenant_note_with_http_info(tenant_id, note_id, note_put_message)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_lease_tenant_note_with_http_info(tenant_id, note_id, note_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->update_lease_tenant_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **note_put_message** | [**NotePutMessage**](NotePutMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rental_tenant

> <TenantMessage> update_rental_tenant(tenant_id, rental_tenant_put_message)

Update a tenant

Updates a rental tenant.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`

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

api_instance = Buildium::RentalTenantsApi.new
tenant_id = 56 # Integer | 
rental_tenant_put_message = Buildium::RentalTenantPutMessage.new({first_name: 'first_name_example', last_name: 'last_name_example', address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'})}) # RentalTenantPutMessage | 

begin
  # Update a tenant
  result = api_instance.update_rental_tenant(tenant_id, rental_tenant_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->update_rental_tenant: #{e}"
end
```

#### Using the update_rental_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TenantMessage>, Integer, Hash)> update_rental_tenant_with_http_info(tenant_id, rental_tenant_put_message)

```ruby
begin
  # Update a tenant
  data, status_code, headers = api_instance.update_rental_tenant_with_http_info(tenant_id, rental_tenant_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TenantMessage>
rescue Buildium::ApiError => e
  puts "Error when calling RentalTenantsApi->update_rental_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** |  |  |
| **rental_tenant_put_message** | [**RentalTenantPutMessage**](RentalTenantPutMessage.md) |  |  |

### Return type

[**TenantMessage**](TenantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

