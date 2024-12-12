# Buildium::LeasesApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_lease**](LeasesApi.md#create_lease) | **POST** /v1/leases | Create a lease |
| [**create_lease_note**](LeasesApi.md#create_lease_note) | **POST** /v1/leases/{leaseId}/notes | Create a note |
| [**create_lease_renewal**](LeasesApi.md#create_lease_renewal) | **POST** /v1/leases/{leaseId}/renewals | Create a lease renewal |
| [**create_move_out_data**](LeasesApi.md#create_move_out_data) | **POST** /v1/leases/{leaseId}/moveouts | Create a move out |
| [**create_rent_schedule**](LeasesApi.md#create_rent_schedule) | **POST** /v1/leases/{leaseId}/rent | Create a rent schedule |
| [**get_all_lease_renewals**](LeasesApi.md#get_all_lease_renewals) | **GET** /v1/leases/{leaseId}/renewals | Retrieve all renewals |
| [**get_all_lease_renewals_for_all_properties**](LeasesApi.md#get_all_lease_renewals_for_all_properties) | **GET** /v1/leases/renewals | Retrieve all upcoming renewals |
| [**get_lease_by_id**](LeasesApi.md#get_lease_by_id) | **GET** /v1/leases/{leaseId} | Retrieve a lease |
| [**get_lease_epay_settings_by_id**](LeasesApi.md#get_lease_epay_settings_by_id) | **GET** /v1/leases/{leaseId}/epaysettings | Retrieve ePay settings |
| [**get_lease_move_out_data_by_tenant_id**](LeasesApi.md#get_lease_move_out_data_by_tenant_id) | **GET** /v1/leases/{leaseId}/moveouts/{tenantId} | Retrieve a move out |
| [**get_lease_move_out_information_by_id**](LeasesApi.md#get_lease_move_out_information_by_id) | **GET** /v1/leases/{leaseId}/moveouts | Retrieve all move outs |
| [**get_lease_note_by_note_id**](LeasesApi.md#get_lease_note_by_note_id) | **GET** /v1/leases/{leaseId}/notes/{noteId} | Retrieve a note |
| [**get_lease_notes**](LeasesApi.md#get_lease_notes) | **GET** /v1/leases/{leaseId}/notes | Retrieve all notes |
| [**get_lease_partial_payment_settings**](LeasesApi.md#get_lease_partial_payment_settings) | **GET** /v1/leases/{leaseId}/partialpaymentsettings | Retrieve all partial payment settings for a lease |
| [**get_lease_renewal_by_id**](LeasesApi.md#get_lease_renewal_by_id) | **GET** /v1/leases/{leaseId}/renewals/{renewalId} | Retrieve a renewal |
| [**get_leases**](LeasesApi.md#get_leases) | **GET** /v1/leases | Retrieve all leases |
| [**get_rent**](LeasesApi.md#get_rent) | **GET** /v1/leases/{leaseId}/rent | Retrieve all rent schedules |
| [**get_rent_by_id**](LeasesApi.md#get_rent_by_id) | **GET** /v1/leases/{leaseId}/rent/{rentId} | Retrieve a rent schedule |
| [**get_renters_insurance_policies**](LeasesApi.md#get_renters_insurance_policies) | **GET** /v1/leases/{leaseId}/rentersinsurance | Retrieve all insurance policies |
| [**get_renters_insurance_policy_by_id**](LeasesApi.md#get_renters_insurance_policy_by_id) | **GET** /v1/leases/{leaseId}/rentersinsurance/{policyId} | Retrieve an insurance policy |
| [**patch_lease_partial_payment_settings**](LeasesApi.md#patch_lease_partial_payment_settings) | **PATCH** /v1/leases/{leaseId}/partialpaymentsettings | Update partial payment settings for a lease |
| [**undo_tenant_moveout**](LeasesApi.md#undo_tenant_moveout) | **DELETE** /v1/leases/{leaseId}/moveouts/{tenantId} | Delete a move out |
| [**update_lease**](LeasesApi.md#update_lease) | **PUT** /v1/leases/{leaseId} | Update a lease |
| [**update_lease_epay_settings**](LeasesApi.md#update_lease_epay_settings) | **PUT** /v1/leases/{leaseId}/epaysettings | Update ePay settings |
| [**update_lease_note**](LeasesApi.md#update_lease_note) | **PUT** /v1/leases/{leaseId}/notes/{noteId} | Update a note |
| [**update_rent_schedule**](LeasesApi.md#update_rent_schedule) | **PUT** /v1/leases/{leaseId}/rent/{rentId} | Update a rent schedule |


## create_lease

> <LeaseMessage> create_lease(create_lease_request)

Create a lease

Creates a signed lease.  <br /><br /><span class=\"permissionBlock\">Rentals > Leases</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Rentals > Tenants</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View` `Edit`  <br /><h4>Optional Permissions:</h4><br /><span class=\"permissionBlock\">Rentals > Applicants</span> - `View` In order to add tenants to the lease using the ApplicantIds property, you must have this permission.

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

api_instance = Buildium::LeasesApi.new
create_lease_request = Buildium::CreateLeaseRequest.new({lease_type: 'Fixed', unit_id: 37, lease_from_date: Date.today, send_welcome_email: false}) # CreateLeaseRequest | 

begin
  # Create a lease
  result = api_instance.create_lease(create_lease_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease: #{e}"
end
```

#### Using the create_lease_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseMessage>, Integer, Hash)> create_lease_with_http_info(create_lease_request)

```ruby
begin
  # Create a lease
  data, status_code, headers = api_instance.create_lease_with_http_info(create_lease_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_lease_request** | [**CreateLeaseRequest**](CreateLeaseRequest.md) |  |  |

### Return type

[**LeaseMessage**](LeaseMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_note

> <NoteMessage> create_lease_note(lease_id, create_lease_note_request)

Create a note

Creates a lease note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
create_lease_note_request = Buildium::CreateLeaseNoteRequest.new({note: 'note_example'}) # CreateLeaseNoteRequest | 

begin
  # Create a note
  result = api_instance.create_lease_note(lease_id, create_lease_note_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_note: #{e}"
end
```

#### Using the create_lease_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_lease_note_with_http_info(lease_id, create_lease_note_request)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_lease_note_with_http_info(lease_id, create_lease_note_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **create_lease_note_request** | [**CreateLeaseNoteRequest**](CreateLeaseNoteRequest.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_renewal

> <LeaseRenewalMessage> create_lease_renewal(lease_id, create_lease_renewal_request)

Create a lease renewal

Creates a lease renewal.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
create_lease_renewal_request = Buildium::CreateLeaseRenewalRequest.new({lease_type: 'Fixed', rent: Buildium::LeaseRenewalPostMessageRent.new({cycle: 'Monthly', charges: [Buildium::LeaseRentChargePostMessage.new({amount: 3.56, gl_account_id: 37, next_due_date: Date.today})]}), send_welcome_email: false}) # CreateLeaseRenewalRequest | 

begin
  # Create a lease renewal
  result = api_instance.create_lease_renewal(lease_id, create_lease_renewal_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_renewal: #{e}"
end
```

#### Using the create_lease_renewal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRenewalMessage>, Integer, Hash)> create_lease_renewal_with_http_info(lease_id, create_lease_renewal_request)

```ruby
begin
  # Create a lease renewal
  data, status_code, headers = api_instance.create_lease_renewal_with_http_info(lease_id, create_lease_renewal_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRenewalMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_renewal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **create_lease_renewal_request** | [**CreateLeaseRenewalRequest**](CreateLeaseRenewalRequest.md) |  |  |

### Return type

[**LeaseRenewalMessage**](LeaseRenewalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_move_out_data

> <LeaseMoveOutDataMessage> create_move_out_data(lease_id, create_move_out_data_request)

Create a move out

Creates move out data for a single tenant on a given lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Rentals > Tenants</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
create_move_out_data_request = Buildium::CreateMoveOutDataRequest.new({tenant_id: 37, move_out_date: Date.today}) # CreateMoveOutDataRequest | 

begin
  # Create a move out
  result = api_instance.create_move_out_data(lease_id, create_move_out_data_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_move_out_data: #{e}"
end
```

#### Using the create_move_out_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseMoveOutDataMessage>, Integer, Hash)> create_move_out_data_with_http_info(lease_id, create_move_out_data_request)

```ruby
begin
  # Create a move out
  data, status_code, headers = api_instance.create_move_out_data_with_http_info(lease_id, create_move_out_data_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseMoveOutDataMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_move_out_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **create_move_out_data_request** | [**CreateMoveOutDataRequest**](CreateMoveOutDataRequest.md) |  |  |

### Return type

[**LeaseMoveOutDataMessage**](LeaseMoveOutDataMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_rent_schedule

> <LeaseRentMessage> create_rent_schedule(lease_id, create_rent_schedule_request)

Create a rent schedule

Creates a rent schedule.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease Transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
create_rent_schedule_request = Buildium::CreateRentScheduleRequest.new({rent_cycle: 'Monthly', backdate_charges: false, charges: [Buildium::RentScheduleChargePostMessage.new({gl_account_id: 37, amount: 3.56, next_due_date: Date.today})]}) # CreateRentScheduleRequest | 

begin
  # Create a rent schedule
  result = api_instance.create_rent_schedule(lease_id, create_rent_schedule_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_rent_schedule: #{e}"
end
```

#### Using the create_rent_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRentMessage>, Integer, Hash)> create_rent_schedule_with_http_info(lease_id, create_rent_schedule_request)

```ruby
begin
  # Create a rent schedule
  data, status_code, headers = api_instance.create_rent_schedule_with_http_info(lease_id, create_rent_schedule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_rent_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **create_rent_schedule_request** | [**CreateRentScheduleRequest**](CreateRentScheduleRequest.md) |  |  |

### Return type

[**LeaseRentMessage**](LeaseRentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_lease_renewals

> <Array<LeaseRenewalMessage>> get_all_lease_renewals(lease_id, opts)

Retrieve all renewals

Retrieves all renewals for a specific a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all renewals
  result = api_instance.get_all_lease_renewals(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_all_lease_renewals: #{e}"
end
```

#### Using the get_all_lease_renewals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseRenewalMessage>>, Integer, Hash)> get_all_lease_renewals_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all renewals
  data, status_code, headers = api_instance.get_all_lease_renewals_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseRenewalMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_all_lease_renewals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;LeaseRenewalMessage&gt;**](LeaseRenewalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_lease_renewals_for_all_properties

> <Array<LeaseRenewalMessage>> get_all_lease_renewals_for_all_properties(esignaturestatuses, opts)

Retrieve all upcoming renewals

Retrieves all upcoming lease renewals across all rental properties.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
esignaturestatuses = ['Unknown'] # Array<String> | Filters result to any lease renewal with an esignature status that matches the given statuses.
opts = {
  propertyids: [37], # Array<Integer> | Filters results to only include leases whose unit belongs to the specified set of property ids.
  rentalownerids: [37], # Array<Integer> | Filters results to any lease whose unit belongs to a property with rental owner in the specified set of rental owner ids.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all upcoming renewals
  result = api_instance.get_all_lease_renewals_for_all_properties(esignaturestatuses, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_all_lease_renewals_for_all_properties: #{e}"
end
```

#### Using the get_all_lease_renewals_for_all_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseRenewalMessage>>, Integer, Hash)> get_all_lease_renewals_for_all_properties_with_http_info(esignaturestatuses, opts)

```ruby
begin
  # Retrieve all upcoming renewals
  data, status_code, headers = api_instance.get_all_lease_renewals_for_all_properties_with_http_info(esignaturestatuses, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseRenewalMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_all_lease_renewals_for_all_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **esignaturestatuses** | [**Array&lt;String&gt;**](String.md) | Filters result to any lease renewal with an esignature status that matches the given statuses. |  |
| **propertyids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to only include leases whose unit belongs to the specified set of property ids. | [optional] |
| **rentalownerids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any lease whose unit belongs to a property with rental owner in the specified set of rental owner ids. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;LeaseRenewalMessage&gt;**](LeaseRenewalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_by_id

> <LeaseMessage> get_lease_by_id(lease_id)

Retrieve a lease

Retrieves a specific lease.  <br /><br /><span class=\"permissionBlock\">Rentals > Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | The lease identifier.

begin
  # Retrieve a lease
  result = api_instance.get_lease_by_id(lease_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_by_id: #{e}"
end
```

#### Using the get_lease_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseMessage>, Integer, Hash)> get_lease_by_id_with_http_info(lease_id)

```ruby
begin
  # Retrieve a lease
  data, status_code, headers = api_instance.get_lease_by_id_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | The lease identifier. |  |

### Return type

[**LeaseMessage**](LeaseMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_epay_settings_by_id

> <EPaySettingsMessage> get_lease_epay_settings_by_id(lease_id)

Retrieve ePay settings

Retrieves ePay settings for a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 

begin
  # Retrieve ePay settings
  result = api_instance.get_lease_epay_settings_by_id(lease_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_epay_settings_by_id: #{e}"
end
```

#### Using the get_lease_epay_settings_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EPaySettingsMessage>, Integer, Hash)> get_lease_epay_settings_by_id_with_http_info(lease_id)

```ruby
begin
  # Retrieve ePay settings
  data, status_code, headers = api_instance.get_lease_epay_settings_by_id_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EPaySettingsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_epay_settings_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |

### Return type

[**EPaySettingsMessage**](EPaySettingsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_move_out_data_by_tenant_id

> <LeaseMoveOutDataMessage> get_lease_move_out_data_by_tenant_id(lease_id, tenant_id)

Retrieve a move out

Retrieves move out data for a single tenant on a given lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View`              <br /><span class=\"permissionBlock\">Rentals > Tenants</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
tenant_id = 56 # Integer | 

begin
  # Retrieve a move out
  result = api_instance.get_lease_move_out_data_by_tenant_id(lease_id, tenant_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_move_out_data_by_tenant_id: #{e}"
end
```

#### Using the get_lease_move_out_data_by_tenant_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseMoveOutDataMessage>, Integer, Hash)> get_lease_move_out_data_by_tenant_id_with_http_info(lease_id, tenant_id)

```ruby
begin
  # Retrieve a move out
  data, status_code, headers = api_instance.get_lease_move_out_data_by_tenant_id_with_http_info(lease_id, tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseMoveOutDataMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_move_out_data_by_tenant_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **tenant_id** | **Integer** |  |  |

### Return type

[**LeaseMoveOutDataMessage**](LeaseMoveOutDataMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_move_out_information_by_id

> <Array<LeaseMoveOutDataMessage>> get_lease_move_out_information_by_id(lease_id, opts)

Retrieve all move outs

Retrieves a list of move out dates for a given lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View`              <br /><span class=\"permissionBlock\">Rentals > Tenants</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all move outs
  result = api_instance.get_lease_move_out_information_by_id(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_move_out_information_by_id: #{e}"
end
```

#### Using the get_lease_move_out_information_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseMoveOutDataMessage>>, Integer, Hash)> get_lease_move_out_information_by_id_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all move outs
  data, status_code, headers = api_instance.get_lease_move_out_information_by_id_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseMoveOutDataMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_move_out_information_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;LeaseMoveOutDataMessage&gt;**](LeaseMoveOutDataMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_note_by_note_id

> <NoteMessage> get_lease_note_by_note_id(lease_id, note_id)

Retrieve a note

Retrieves a lease note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
  result = api_instance.get_lease_note_by_note_id(lease_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_note_by_note_id: #{e}"
end
```

#### Using the get_lease_note_by_note_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_lease_note_by_note_id_with_http_info(lease_id, note_id)

```ruby
begin
  # Retrieve a note
  data, status_code, headers = api_instance.get_lease_note_by_note_id_with_http_info(lease_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_note_by_note_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_notes

> <Array<NoteMessage>> get_lease_notes(lease_id, opts)

Retrieve all notes

Retrieves all lease notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
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
  result = api_instance.get_lease_notes(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_notes: #{e}"
end
```

#### Using the get_lease_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_lease_notes_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all notes
  data, status_code, headers = api_instance.get_lease_notes_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
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


## get_lease_partial_payment_settings

> <PartialPaymentSettingsMessage> get_lease_partial_payment_settings(lease_id)

Retrieve all partial payment settings for a lease

Retrieves partial payment settings for a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 

begin
  # Retrieve all partial payment settings for a lease
  result = api_instance.get_lease_partial_payment_settings(lease_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_partial_payment_settings: #{e}"
end
```

#### Using the get_lease_partial_payment_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartialPaymentSettingsMessage>, Integer, Hash)> get_lease_partial_payment_settings_with_http_info(lease_id)

```ruby
begin
  # Retrieve all partial payment settings for a lease
  data, status_code, headers = api_instance.get_lease_partial_payment_settings_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartialPaymentSettingsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_partial_payment_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |

### Return type

[**PartialPaymentSettingsMessage**](PartialPaymentSettingsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_renewal_by_id

> <LeaseRenewalMessage> get_lease_renewal_by_id(lease_id, renewal_id)

Retrieve a renewal

Retrieves a specific renewal for a given lease.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
renewal_id = 56 # Integer | 

begin
  # Retrieve a renewal
  result = api_instance.get_lease_renewal_by_id(lease_id, renewal_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_renewal_by_id: #{e}"
end
```

#### Using the get_lease_renewal_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRenewalMessage>, Integer, Hash)> get_lease_renewal_by_id_with_http_info(lease_id, renewal_id)

```ruby
begin
  # Retrieve a renewal
  data, status_code, headers = api_instance.get_lease_renewal_by_id_with_http_info(lease_id, renewal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRenewalMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_renewal_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **renewal_id** | **Integer** |  |  |

### Return type

[**LeaseRenewalMessage**](LeaseRenewalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_leases

> <Array<LeaseMessage>> get_leases(opts)

Retrieve all leases

Retrieves a list of leases.  <br /><br /><span class=\"permissionBlock\">Rentals > Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
opts = {
  propertyids: [37], # Array<Integer> | Filters results to any lease whose unit belongs to the specified set of property ids.
  rentalownerids: [37], # Array<Integer> | Filters results to any lease whose unit belongs to a property with a rental owner in the specified set of rental owner ids.
  unitnumber: 'unitnumber_example', # String | Filters results to any lease whose unit number *contains* the specified value.
  tenantname: 'tenantname_example', # String | Filters results to any lease whose current tenants' names *contain* the specified value.
  leasedatefrom: Date.parse('2013-10-20'), # Date | Filters results to any lease whose start date is greater than or equal to the specified value.
  leasedateto: Date.parse('2013-10-20'), # Date | Filters results to any lease whose end date is less than or equal to the specified value.
  leasetypes: ['None'], # Array<String> | Filters results to any lease whose lease type matches the specified status. If no type is specified, leases with any type will be returned.
  leasestatuses: ['Active'], # Array<String> | Filters results to any lease whose lease term matches the specified status. If no status is specified, leases with any lease term status will be returned.
  createddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any lease whose created date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  createddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any lease whose created date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  lastupdatedfrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any leases that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  lastupdatedto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any leases that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all leases
  result = api_instance.get_leases(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_leases: #{e}"
end
```

#### Using the get_leases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseMessage>>, Integer, Hash)> get_leases_with_http_info(opts)

```ruby
begin
  # Retrieve all leases
  data, status_code, headers = api_instance.get_leases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_leases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **propertyids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any lease whose unit belongs to the specified set of property ids. | [optional] |
| **rentalownerids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any lease whose unit belongs to a property with a rental owner in the specified set of rental owner ids. | [optional] |
| **unitnumber** | **String** | Filters results to any lease whose unit number *contains* the specified value. | [optional] |
| **tenantname** | **String** | Filters results to any lease whose current tenants&#39; names *contain* the specified value. | [optional] |
| **leasedatefrom** | **Date** | Filters results to any lease whose start date is greater than or equal to the specified value. | [optional] |
| **leasedateto** | **Date** | Filters results to any lease whose end date is less than or equal to the specified value. | [optional] |
| **leasetypes** | [**Array&lt;String&gt;**](String.md) | Filters results to any lease whose lease type matches the specified status. If no type is specified, leases with any type will be returned. | [optional] |
| **leasestatuses** | [**Array&lt;String&gt;**](String.md) | Filters results to any lease whose lease term matches the specified status. If no status is specified, leases with any lease term status will be returned. | [optional] |
| **createddatetimefrom** | **Time** | Filters results to any lease whose created date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS. | [optional] |
| **createddatetimeto** | **Time** | Filters results to any lease whose created date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS. | [optional] |
| **lastupdatedfrom** | **Time** | Filters results to any leases that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **lastupdatedto** | **Time** | Filters results to any leases that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;LeaseMessage&gt;**](LeaseMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rent

> <Array<LeaseRentMessage>> get_rent(lease_id, opts)

Retrieve all rent schedules

The rent schedule provides details (dollar amount, day of the month, etc) of the recurring charges that are applied to the lease ledger each rent cycle. A lease may have more than one rent schedule associated with it if the rent terms change within the duration of the lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all rent schedules
  result = api_instance.get_rent(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_rent: #{e}"
end
```

#### Using the get_rent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseRentMessage>>, Integer, Hash)> get_rent_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all rent schedules
  data, status_code, headers = api_instance.get_rent_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseRentMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_rent_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;LeaseRentMessage&gt;**](LeaseRentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rent_by_id

> <LeaseRentMessage> get_rent_by_id(lease_id, rent_id)

Retrieve a rent schedule

Retrieves a specific rent schedule for a lease. The rent schedule provides details (dollar amount, day of the month, etc) of the recurring charges that are applied to the lease ledger each rent cycle.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
rent_id = 56 # Integer | 

begin
  # Retrieve a rent schedule
  result = api_instance.get_rent_by_id(lease_id, rent_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_rent_by_id: #{e}"
end
```

#### Using the get_rent_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRentMessage>, Integer, Hash)> get_rent_by_id_with_http_info(lease_id, rent_id)

```ruby
begin
  # Retrieve a rent schedule
  data, status_code, headers = api_instance.get_rent_by_id_with_http_info(lease_id, rent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_rent_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **rent_id** | **Integer** |  |  |

### Return type

[**LeaseRentMessage**](LeaseRentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_renters_insurance_policies

> <Array<RentersInsurancePolicyMessage>> get_renters_insurance_policies(lease_id, opts)

Retrieve all insurance policies

Retrieves all renters insurance policies for a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all insurance policies
  result = api_instance.get_renters_insurance_policies(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_renters_insurance_policies: #{e}"
end
```

#### Using the get_renters_insurance_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentersInsurancePolicyMessage>>, Integer, Hash)> get_renters_insurance_policies_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all insurance policies
  data, status_code, headers = api_instance.get_renters_insurance_policies_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentersInsurancePolicyMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_renters_insurance_policies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;RentersInsurancePolicyMessage&gt;**](RentersInsurancePolicyMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_renters_insurance_policy_by_id

> <RentersInsurancePolicyMessage> get_renters_insurance_policy_by_id(lease_id, policy_id)

Retrieve an insurance policy

Retrieves a renters insurance policy.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
policy_id = 56 # Integer | 

begin
  # Retrieve an insurance policy
  result = api_instance.get_renters_insurance_policy_by_id(lease_id, policy_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_renters_insurance_policy_by_id: #{e}"
end
```

#### Using the get_renters_insurance_policy_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentersInsurancePolicyMessage>, Integer, Hash)> get_renters_insurance_policy_by_id_with_http_info(lease_id, policy_id)

```ruby
begin
  # Retrieve an insurance policy
  data, status_code, headers = api_instance.get_renters_insurance_policy_by_id_with_http_info(lease_id, policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentersInsurancePolicyMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_renters_insurance_policy_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **policy_id** | **Integer** |  |  |

### Return type

[**RentersInsurancePolicyMessage**](RentersInsurancePolicyMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_lease_partial_payment_settings

> <PartialPaymentSettingsMessage> patch_lease_partial_payment_settings(lease_id, patch_global_partial_payment_settings_request)

Update partial payment settings for a lease

Updates partial payment settings for a lease.              <br /><br /><h4>Required Permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View` `Edit`              <span class=\"permissionBlock\">Administration > Application Settings</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
patch_global_partial_payment_settings_request = Buildium::PatchGlobalPartialPaymentSettingsRequest.new # PatchGlobalPartialPaymentSettingsRequest | <span>Represents the structure of the data that can be provided to a <a target=\"_blank\" href=\"https://datatracker.ietf.org/doc/html/rfc6902\">JSON patch document</a> as path values via <a target=\"_blank\" href=\"https://datatracker.ietf.org/doc/html/rfc6901/\">JSON pointer</a> syntax.</span>

begin
  # Update partial payment settings for a lease
  result = api_instance.patch_lease_partial_payment_settings(lease_id, patch_global_partial_payment_settings_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->patch_lease_partial_payment_settings: #{e}"
end
```

#### Using the patch_lease_partial_payment_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartialPaymentSettingsMessage>, Integer, Hash)> patch_lease_partial_payment_settings_with_http_info(lease_id, patch_global_partial_payment_settings_request)

```ruby
begin
  # Update partial payment settings for a lease
  data, status_code, headers = api_instance.patch_lease_partial_payment_settings_with_http_info(lease_id, patch_global_partial_payment_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartialPaymentSettingsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->patch_lease_partial_payment_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **patch_global_partial_payment_settings_request** | [**PatchGlobalPartialPaymentSettingsRequest**](PatchGlobalPartialPaymentSettingsRequest.md) | &lt;span&gt;Represents the structure of the data that can be provided to a &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://datatracker.ietf.org/doc/html/rfc6902\&quot;&gt;JSON patch document&lt;/a&gt; as path values via &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://datatracker.ietf.org/doc/html/rfc6901/\&quot;&gt;JSON pointer&lt;/a&gt; syntax.&lt;/span&gt; |  |

### Return type

[**PartialPaymentSettingsMessage**](PartialPaymentSettingsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json, application/json-patch+json
- **Accept**: application/json


## undo_tenant_moveout

> undo_tenant_moveout(lease_id, tenant_id)

Delete a move out

Deletes move out data for a tenant on a given lease.              <br /><br /><h4>Required Permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Rentals > Tenants</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
tenant_id = 56 # Integer | 

begin
  # Delete a move out
  api_instance.undo_tenant_moveout(lease_id, tenant_id)
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->undo_tenant_moveout: #{e}"
end
```

#### Using the undo_tenant_moveout_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> undo_tenant_moveout_with_http_info(lease_id, tenant_id)

```ruby
begin
  # Delete a move out
  data, status_code, headers = api_instance.undo_tenant_moveout_with_http_info(lease_id, tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->undo_tenant_moveout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **tenant_id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_lease

> <LeaseMessage> update_lease(lease_id, update_lease_request)

Update a lease

Update a signed lease.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><span class=\"permissionBlock\">Rentals > Leases</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
update_lease_request = Buildium::UpdateLeaseRequest.new({lease_type: 'Fixed', unit_id: 37, lease_from_date: Date.today, is_eviction_pending: false}) # UpdateLeaseRequest | 

begin
  # Update a lease
  result = api_instance.update_lease(lease_id, update_lease_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease: #{e}"
end
```

#### Using the update_lease_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseMessage>, Integer, Hash)> update_lease_with_http_info(lease_id, update_lease_request)

```ruby
begin
  # Update a lease
  data, status_code, headers = api_instance.update_lease_with_http_info(lease_id, update_lease_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **update_lease_request** | [**UpdateLeaseRequest**](UpdateLeaseRequest.md) |  |  |

### Return type

[**LeaseMessage**](LeaseMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_epay_settings

> <EPaySettingsMessage> update_lease_epay_settings(lease_id, update_e_pay_settings_for_association_request)

Update ePay settings

Updates ePay settings for a lease              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
update_e_pay_settings_for_association_request = Buildium::UpdateEPaySettingsForAssociationRequest.new({eft_payments: Buildium::EPaySettingsPutMessageEFTPayments.new({payments_enabled: false}), credit_card_payments: Buildium::EPaySettingsPutMessageCreditCardPayments.new({payments_enabled: false}), offline_payments: Buildium::EPaySettingsPutMessageOfflinePayments.new({display_info_in_resident_center: false, display_company_address: false})}) # UpdateEPaySettingsForAssociationRequest | 

begin
  # Update ePay settings
  result = api_instance.update_lease_epay_settings(lease_id, update_e_pay_settings_for_association_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_epay_settings: #{e}"
end
```

#### Using the update_lease_epay_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EPaySettingsMessage>, Integer, Hash)> update_lease_epay_settings_with_http_info(lease_id, update_e_pay_settings_for_association_request)

```ruby
begin
  # Update ePay settings
  data, status_code, headers = api_instance.update_lease_epay_settings_with_http_info(lease_id, update_e_pay_settings_for_association_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EPaySettingsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_epay_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **update_e_pay_settings_for_association_request** | [**UpdateEPaySettingsForAssociationRequest**](UpdateEPaySettingsForAssociationRequest.md) |  |  |

### Return type

[**EPaySettingsMessage**](EPaySettingsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_note

> <NoteMessage> update_lease_note(lease_id, note_id, update_lease_note_request)

Update a note

Updates a lease note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Leases</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
note_id = 56 # Integer | 
update_lease_note_request = Buildium::UpdateLeaseNoteRequest.new({note: 'note_example'}) # UpdateLeaseNoteRequest | 

begin
  # Update a note
  result = api_instance.update_lease_note(lease_id, note_id, update_lease_note_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_note: #{e}"
end
```

#### Using the update_lease_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_lease_note_with_http_info(lease_id, note_id, update_lease_note_request)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_lease_note_with_http_info(lease_id, note_id, update_lease_note_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **update_lease_note_request** | [**UpdateLeaseNoteRequest**](UpdateLeaseNoteRequest.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_rent_schedule

> <LeaseRentMessage> update_rent_schedule(lease_id, rent_id, update_rent_schedule_request)

Update a rent schedule

Updates a rent schedule.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease Transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
rent_id = 56 # Integer | 
update_rent_schedule_request = Buildium::UpdateRentScheduleRequest.new({rent_cycle: 'Monthly', backdate_charges: false, charges: [Buildium::RentScheduleChargePutMessage.new({gl_account_id: 37, amount: 3.56, next_due_date: Date.today})]}) # UpdateRentScheduleRequest | 

begin
  # Update a rent schedule
  result = api_instance.update_rent_schedule(lease_id, rent_id, update_rent_schedule_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_rent_schedule: #{e}"
end
```

#### Using the update_rent_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRentMessage>, Integer, Hash)> update_rent_schedule_with_http_info(lease_id, rent_id, update_rent_schedule_request)

```ruby
begin
  # Update a rent schedule
  data, status_code, headers = api_instance.update_rent_schedule_with_http_info(lease_id, rent_id, update_rent_schedule_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_rent_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **rent_id** | **Integer** |  |  |
| **update_rent_schedule_request** | [**UpdateRentScheduleRequest**](UpdateRentScheduleRequest.md) |  |  |

### Return type

[**LeaseRentMessage**](LeaseRentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

