# Buildium::AssociationTenantsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_association_tenant**](AssociationTenantsApi.md#create_association_tenant) | **POST** /v1/associations/tenants | Create a tenant |
| [**create_association_tenant_note**](AssociationTenantsApi.md#create_association_tenant_note) | **POST** /v1/associations/tenants/{tenantId}/notes | Create a note |
| [**get_association_tenant_by_id**](AssociationTenantsApi.md#get_association_tenant_by_id) | **GET** /v1/associations/tenants/{tenantId} | Retrieve a tenant |
| [**get_association_tenant_note_by_id**](AssociationTenantsApi.md#get_association_tenant_note_by_id) | **GET** /v1/associations/tenants/{tenantId}/notes/{noteId} | Retrieve a note |
| [**get_association_tenant_notes**](AssociationTenantsApi.md#get_association_tenant_notes) | **GET** /v1/associations/tenants/{tenantId}/notes | Retrieve all notes |
| [**get_association_tenants**](AssociationTenantsApi.md#get_association_tenants) | **GET** /v1/associations/tenants | Retrieve all tenants |
| [**update_association_tenant**](AssociationTenantsApi.md#update_association_tenant) | **PUT** /v1/associations/tenants/{tenantId} | Update a tenant |
| [**update_association_tenant_note**](AssociationTenantsApi.md#update_association_tenant_note) | **PUT** /v1/associations/tenants/{tenantId}/notes/{noteId} | Update a note |


## create_association_tenant

> <AssociationTenantMessage> create_association_tenant(association_tenant_post_message)

Create a tenant

Creates an association tenant.    <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationTenantsApi.new
association_tenant_post_message = Buildium::AssociationTenantPostMessage.new({first_name: 'first_name_example', last_name: 'last_name_example', primary_address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'}), ownership_account_id: 37}) # AssociationTenantPostMessage | 

begin
  # Create a tenant
  result = api_instance.create_association_tenant(association_tenant_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->create_association_tenant: #{e}"
end
```

#### Using the create_association_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationTenantMessage>, Integer, Hash)> create_association_tenant_with_http_info(association_tenant_post_message)

```ruby
begin
  # Create a tenant
  data, status_code, headers = api_instance.create_association_tenant_with_http_info(association_tenant_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationTenantMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->create_association_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_tenant_post_message** | [**AssociationTenantPostMessage**](AssociationTenantPostMessage.md) |  |  |

### Return type

[**AssociationTenantMessage**](AssociationTenantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_association_tenant_note

> <NoteMessage> create_association_tenant_note(tenant_id, note_post_message)

Create a note

Creates an association tenant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationTenantsApi.new
tenant_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create a note
  result = api_instance.create_association_tenant_note(tenant_id, note_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->create_association_tenant_note: #{e}"
end
```

#### Using the create_association_tenant_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_association_tenant_note_with_http_info(tenant_id, note_post_message)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_association_tenant_note_with_http_info(tenant_id, note_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->create_association_tenant_note_with_http_info: #{e}"
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


## get_association_tenant_by_id

> <AssociationTenantMessage> get_association_tenant_by_id(tenant_id)

Retrieve a tenant

Retrieves a specific association tenant.    <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationTenantsApi.new
tenant_id = 56 # Integer | The tenant identifier.

begin
  # Retrieve a tenant
  result = api_instance.get_association_tenant_by_id(tenant_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->get_association_tenant_by_id: #{e}"
end
```

#### Using the get_association_tenant_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationTenantMessage>, Integer, Hash)> get_association_tenant_by_id_with_http_info(tenant_id)

```ruby
begin
  # Retrieve a tenant
  data, status_code, headers = api_instance.get_association_tenant_by_id_with_http_info(tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationTenantMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->get_association_tenant_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** | The tenant identifier. |  |

### Return type

[**AssociationTenantMessage**](AssociationTenantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_tenant_note_by_id

> <NoteMessage> get_association_tenant_note_by_id(tenant_id, note_id)

Retrieve a note

Retrieves an association tenant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationTenantsApi.new
tenant_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
  result = api_instance.get_association_tenant_note_by_id(tenant_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->get_association_tenant_note_by_id: #{e}"
end
```

#### Using the get_association_tenant_note_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_association_tenant_note_by_id_with_http_info(tenant_id, note_id)

```ruby
begin
  # Retrieve a note
  data, status_code, headers = api_instance.get_association_tenant_note_by_id_with_http_info(tenant_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->get_association_tenant_note_by_id_with_http_info: #{e}"
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


## get_association_tenant_notes

> <Array<NoteMessage>> get_association_tenant_notes(tenant_id, opts)

Retrieve all notes

Retrieves all association tenant notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationTenantsApi.new
tenant_id = 56 # Integer | 
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
  result = api_instance.get_association_tenant_notes(tenant_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->get_association_tenant_notes: #{e}"
end
```

#### Using the get_association_tenant_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_association_tenant_notes_with_http_info(tenant_id, opts)

```ruby
begin
  # Retrieve all notes
  data, status_code, headers = api_instance.get_association_tenant_notes_with_http_info(tenant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->get_association_tenant_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** |  |  |
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


## get_association_tenants

> <Array<AssociationTenantMessage>> get_association_tenants(opts)

Retrieve all tenants

Retrieves a list of association tenants.    <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`

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

api_instance = Buildium::AssociationTenantsApi.new
opts = {
  name: 'name_example', # String | Filters results to only records whose name *contains* the specified value.
  phone: 'phone_example', # String | Filters results to only records whose phone number *contains* the specified value.
  email: 'email_example', # String | Filters results to only records whose email *contains* the specified value.
  associationids: [37], # Array<Integer> | Filters results to only records that belong to the specified set of association identifiers.
  statuses: ['Active'], # Array<String> | Filters results to only records whose status is equal to the specified value.
  createddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were created before this date. Must be formatted as `YYYY-MM-DD`.
  createddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to only records that were created after this date. Must be formatted as `YYYY-MM-DD`.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all tenants
  result = api_instance.get_association_tenants(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->get_association_tenants: #{e}"
end
```

#### Using the get_association_tenants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssociationTenantMessage>>, Integer, Hash)> get_association_tenants_with_http_info(opts)

```ruby
begin
  # Retrieve all tenants
  data, status_code, headers = api_instance.get_association_tenants_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssociationTenantMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->get_association_tenants_with_http_info: #{e}"
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
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;AssociationTenantMessage&gt;**](AssociationTenantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_association_tenant

> <AssociationTenantMessage> update_association_tenant(tenant_id, association_tenant_put_message)

Update a tenant

Updates an association tenant.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationTenantsApi.new
tenant_id = 56 # Integer | The identifier of the association tenant to update.
association_tenant_put_message = Buildium::AssociationTenantPutMessage.new({first_name: 'first_name_example', last_name: 'last_name_example', primary_address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'})}) # AssociationTenantPutMessage | 

begin
  # Update a tenant
  result = api_instance.update_association_tenant(tenant_id, association_tenant_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->update_association_tenant: #{e}"
end
```

#### Using the update_association_tenant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationTenantMessage>, Integer, Hash)> update_association_tenant_with_http_info(tenant_id, association_tenant_put_message)

```ruby
begin
  # Update a tenant
  data, status_code, headers = api_instance.update_association_tenant_with_http_info(tenant_id, association_tenant_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationTenantMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->update_association_tenant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tenant_id** | **Integer** | The identifier of the association tenant to update. |  |
| **association_tenant_put_message** | [**AssociationTenantPutMessage**](AssociationTenantPutMessage.md) |  |  |

### Return type

[**AssociationTenantMessage**](AssociationTenantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_association_tenant_note

> <NoteMessage> update_association_tenant_note(tenant_id, note_id, note_put_message)

Update a note

Updates an association tenant note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`

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

api_instance = Buildium::AssociationTenantsApi.new
tenant_id = 56 # Integer | 
note_id = 56 # Integer | 
note_put_message = Buildium::NotePutMessage.new({note: 'note_example'}) # NotePutMessage | 

begin
  # Update a note
  result = api_instance.update_association_tenant_note(tenant_id, note_id, note_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->update_association_tenant_note: #{e}"
end
```

#### Using the update_association_tenant_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_association_tenant_note_with_http_info(tenant_id, note_id, note_put_message)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_association_tenant_note_with_http_info(tenant_id, note_id, note_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationTenantsApi->update_association_tenant_note_with_http_info: #{e}"
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

