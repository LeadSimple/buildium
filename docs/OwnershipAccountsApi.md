# Buildium::OwnershipAccountsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_association_ownership_account**](OwnershipAccountsApi.md#create_association_ownership_account) | **POST** /v1/associations/ownershipaccounts | Create an ownership account |
| [**create_association_ownership_account_note**](OwnershipAccountsApi.md#create_association_ownership_account_note) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes | Create a note |
| [**get_all_ownership_accounts**](OwnershipAccountsApi.md#get_all_ownership_accounts) | **GET** /v1/associations/ownershipaccounts | Retrieve all ownership accounts |
| [**get_association_ownership_account_note_by_note_id**](OwnershipAccountsApi.md#get_association_ownership_account_note_by_note_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes/{noteId} | Retrieve a note |
| [**get_association_ownership_account_notes**](OwnershipAccountsApi.md#get_association_ownership_account_notes) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes | Retrieve all notes |
| [**get_ownership_account_by_id**](OwnershipAccountsApi.md#get_ownership_account_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId} | Retrieve an ownership account |
| [**get_ownership_account_partial_payment_settings**](OwnershipAccountsApi.md#get_ownership_account_partial_payment_settings) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/partialpaymentsettings | Retrieve all partial payment settings for an ownership account |
| [**patch_ownership_account_partial_payment**](OwnershipAccountsApi.md#patch_ownership_account_partial_payment) | **PATCH** /v1/associations/ownershipaccounts/{ownershipAccountId}/partialpaymentsettings | Update partial payment settings for an ownership account |
| [**update_association_ownership_account**](OwnershipAccountsApi.md#update_association_ownership_account) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId} | Update an ownership account |
| [**update_association_ownership_account_note**](OwnershipAccountsApi.md#update_association_ownership_account_note) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes/{noteId} | Update a note |


## create_association_ownership_account

> <AssociationOwnershipAccountMessage> create_association_ownership_account(create_association_ownership_account_request)

Create an ownership account

Creates an ownership account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Owners</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountsApi.new
create_association_ownership_account_request = Buildium::CreateAssociationOwnershipAccountRequest.new({unit_id: 37, date_of_purchase: Date.today, send_welcome_email: false, replace_existing_ownership_account: false}) # CreateAssociationOwnershipAccountRequest | 

begin
  # Create an ownership account
  result = api_instance.create_association_ownership_account(create_association_ownership_account_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->create_association_ownership_account: #{e}"
end
```

#### Using the create_association_ownership_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnershipAccountMessage>, Integer, Hash)> create_association_ownership_account_with_http_info(create_association_ownership_account_request)

```ruby
begin
  # Create an ownership account
  data, status_code, headers = api_instance.create_association_ownership_account_with_http_info(create_association_ownership_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationOwnershipAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->create_association_ownership_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_association_ownership_account_request** | [**CreateAssociationOwnershipAccountRequest**](CreateAssociationOwnershipAccountRequest.md) |  |  |

### Return type

[**AssociationOwnershipAccountMessage**](AssociationOwnershipAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_association_ownership_account_note

> <NoteMessage> create_association_ownership_account_note(ownership_account_id, create_lease_note_request)

Create a note

Creates a new ownership account note.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
create_lease_note_request = Buildium::CreateLeaseNoteRequest.new({note: 'note_example'}) # CreateLeaseNoteRequest | 

begin
  # Create a note
  result = api_instance.create_association_ownership_account_note(ownership_account_id, create_lease_note_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->create_association_ownership_account_note: #{e}"
end
```

#### Using the create_association_ownership_account_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_association_ownership_account_note_with_http_info(ownership_account_id, create_lease_note_request)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_association_ownership_account_note_with_http_info(ownership_account_id, create_lease_note_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->create_association_ownership_account_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **create_lease_note_request** | [**CreateLeaseNoteRequest**](CreateLeaseNoteRequest.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_ownership_accounts

> <Array<AssociationOwnershipAccountMessage>> get_all_ownership_accounts(opts)

Retrieve all ownership accounts

Retrieves a list of ownership accounts.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`

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

api_instance = Buildium::OwnershipAccountsApi.new
opts = {
  ids: [37], # Array<Integer> | Filters results to the specified set of ids.
  associationids: [37], # Array<Integer> | Filters results to any ownership accounts who belong to the specified set of association ids.
  unitorowner: 'unitorowner_example', # String | Filters results to any association whose unit or owner *contains* the specified value.
  datefrom: Date.parse('2013-10-20'), # Date | Filters results to any ownership account whose start date is greater than or equal to the specified value.
  dateto: Date.parse('2013-10-20'), # Date | Filters results to any ownership account whose start date is less than or equal to the specified value.
  status: ['Active'], # Array<String> | Filters results by the status of the association. If no status is specified, `active`, `past` and `future` associations will be returned.
  delinquencystatuses: ['NoDelinquency'], # Array<String> | Filters results by the delinquency status of the ownership account. If no status is specified, ownership accounts of any delinquency status will be returned.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all ownership accounts
  result = api_instance.get_all_ownership_accounts(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->get_all_ownership_accounts: #{e}"
end
```

#### Using the get_all_ownership_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssociationOwnershipAccountMessage>>, Integer, Hash)> get_all_ownership_accounts_with_http_info(opts)

```ruby
begin
  # Retrieve all ownership accounts
  data, status_code, headers = api_instance.get_all_ownership_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssociationOwnershipAccountMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->get_all_ownership_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to the specified set of ids. | [optional] |
| **associationids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any ownership accounts who belong to the specified set of association ids. | [optional] |
| **unitorowner** | **String** | Filters results to any association whose unit or owner *contains* the specified value. | [optional] |
| **datefrom** | **Date** | Filters results to any ownership account whose start date is greater than or equal to the specified value. | [optional] |
| **dateto** | **Date** | Filters results to any ownership account whose start date is less than or equal to the specified value. | [optional] |
| **status** | [**Array&lt;String&gt;**](String.md) | Filters results by the status of the association. If no status is specified, &#x60;active&#x60;, &#x60;past&#x60; and &#x60;future&#x60; associations will be returned. | [optional] |
| **delinquencystatuses** | [**Array&lt;String&gt;**](String.md) | Filters results by the delinquency status of the ownership account. If no status is specified, ownership accounts of any delinquency status will be returned. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;AssociationOwnershipAccountMessage&gt;**](AssociationOwnershipAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_ownership_account_note_by_note_id

> <NoteMessage> get_association_ownership_account_note_by_note_id(ownership_account_id, note_id)

Retrieve a note

Retrieves an ownership account note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > OwnershipAccounts</span> - `View`

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

api_instance = Buildium::OwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
  result = api_instance.get_association_ownership_account_note_by_note_id(ownership_account_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->get_association_ownership_account_note_by_note_id: #{e}"
end
```

#### Using the get_association_ownership_account_note_by_note_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_association_ownership_account_note_by_note_id_with_http_info(ownership_account_id, note_id)

```ruby
begin
  # Retrieve a note
  data, status_code, headers = api_instance.get_association_ownership_account_note_by_note_id_with_http_info(ownership_account_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->get_association_ownership_account_note_by_note_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_ownership_account_notes

> <Array<NoteMessage>> get_association_ownership_account_notes(ownership_account_id, opts)

Retrieve all notes

Retrieves notes for an ownership account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > OwnershipAccounts</span> - `View`

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

api_instance = Buildium::OwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
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
  result = api_instance.get_association_ownership_account_notes(ownership_account_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->get_association_ownership_account_notes: #{e}"
end
```

#### Using the get_association_ownership_account_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_association_ownership_account_notes_with_http_info(ownership_account_id, opts)

```ruby
begin
  # Retrieve all notes
  data, status_code, headers = api_instance.get_association_ownership_account_notes_with_http_info(ownership_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->get_association_ownership_account_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
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


## get_ownership_account_by_id

> <AssociationOwnershipAccountMessage> get_ownership_account_by_id(ownership_account_id)

Retrieve an ownership account

Retrieves a specific ownership account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`

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

api_instance = Buildium::OwnershipAccountsApi.new
ownership_account_id = 56 # Integer | The ownership account identifier.

begin
  # Retrieve an ownership account
  result = api_instance.get_ownership_account_by_id(ownership_account_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->get_ownership_account_by_id: #{e}"
end
```

#### Using the get_ownership_account_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnershipAccountMessage>, Integer, Hash)> get_ownership_account_by_id_with_http_info(ownership_account_id)

```ruby
begin
  # Retrieve an ownership account
  data, status_code, headers = api_instance.get_ownership_account_by_id_with_http_info(ownership_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationOwnershipAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->get_ownership_account_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** | The ownership account identifier. |  |

### Return type

[**AssociationOwnershipAccountMessage**](AssociationOwnershipAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ownership_account_partial_payment_settings

> <PartialPaymentSettingsMessage> get_ownership_account_partial_payment_settings(ownership_account_id)

Retrieve all partial payment settings for an ownership account

Retrieves partial payment settings for an ownership account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > OwnershipAccounts</span> - `View`

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

api_instance = Buildium::OwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 

begin
  # Retrieve all partial payment settings for an ownership account
  result = api_instance.get_ownership_account_partial_payment_settings(ownership_account_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->get_ownership_account_partial_payment_settings: #{e}"
end
```

#### Using the get_ownership_account_partial_payment_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartialPaymentSettingsMessage>, Integer, Hash)> get_ownership_account_partial_payment_settings_with_http_info(ownership_account_id)

```ruby
begin
  # Retrieve all partial payment settings for an ownership account
  data, status_code, headers = api_instance.get_ownership_account_partial_payment_settings_with_http_info(ownership_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartialPaymentSettingsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->get_ownership_account_partial_payment_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |

### Return type

[**PartialPaymentSettingsMessage**](PartialPaymentSettingsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_ownership_account_partial_payment

> <PartialPaymentSettingsMessage> patch_ownership_account_partial_payment(ownership_account_id, patch_global_partial_payment_settings_request)

Update partial payment settings for an ownership account

Updates partial payment settings for an ownership account.              <br /><br /><h4>Required Permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership Accounts</span> - `View` `Edit`              <span class=\"permissionBlock\">Administration > Application Settings</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
patch_global_partial_payment_settings_request = Buildium::PatchGlobalPartialPaymentSettingsRequest.new # PatchGlobalPartialPaymentSettingsRequest | <span>Represents the structure of the data that can be provided to a <a target=\"_blank\" href=\"https://datatracker.ietf.org/doc/html/rfc6902\">JSON patch document</a> as path values via <a target=\"_blank\" href=\"https://datatracker.ietf.org/doc/html/rfc6901/\">JSON pointer</a> syntax.</span>

begin
  # Update partial payment settings for an ownership account
  result = api_instance.patch_ownership_account_partial_payment(ownership_account_id, patch_global_partial_payment_settings_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->patch_ownership_account_partial_payment: #{e}"
end
```

#### Using the patch_ownership_account_partial_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartialPaymentSettingsMessage>, Integer, Hash)> patch_ownership_account_partial_payment_with_http_info(ownership_account_id, patch_global_partial_payment_settings_request)

```ruby
begin
  # Update partial payment settings for an ownership account
  data, status_code, headers = api_instance.patch_ownership_account_partial_payment_with_http_info(ownership_account_id, patch_global_partial_payment_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartialPaymentSettingsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->patch_ownership_account_partial_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **patch_global_partial_payment_settings_request** | [**PatchGlobalPartialPaymentSettingsRequest**](PatchGlobalPartialPaymentSettingsRequest.md) | &lt;span&gt;Represents the structure of the data that can be provided to a &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://datatracker.ietf.org/doc/html/rfc6902\&quot;&gt;JSON patch document&lt;/a&gt; as path values via &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://datatracker.ietf.org/doc/html/rfc6901/\&quot;&gt;JSON pointer&lt;/a&gt; syntax.&lt;/span&gt; |  |

### Return type

[**PartialPaymentSettingsMessage**](PartialPaymentSettingsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json, application/json-patch+json
- **Accept**: application/json


## update_association_ownership_account

> <AssociationOwnershipAccountMessage> update_association_ownership_account(ownership_account_id, update_association_ownership_account_request)

Update an ownership account

Updates an ownership account.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
update_association_ownership_account_request = Buildium::UpdateAssociationOwnershipAccountRequest.new({date_of_purchase: Date.today}) # UpdateAssociationOwnershipAccountRequest | 

begin
  # Update an ownership account
  result = api_instance.update_association_ownership_account(ownership_account_id, update_association_ownership_account_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->update_association_ownership_account: #{e}"
end
```

#### Using the update_association_ownership_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnershipAccountMessage>, Integer, Hash)> update_association_ownership_account_with_http_info(ownership_account_id, update_association_ownership_account_request)

```ruby
begin
  # Update an ownership account
  data, status_code, headers = api_instance.update_association_ownership_account_with_http_info(ownership_account_id, update_association_ownership_account_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationOwnershipAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->update_association_ownership_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **update_association_ownership_account_request** | [**UpdateAssociationOwnershipAccountRequest**](UpdateAssociationOwnershipAccountRequest.md) |  |  |

### Return type

[**AssociationOwnershipAccountMessage**](AssociationOwnershipAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_association_ownership_account_note

> <NoteMessage> update_association_ownership_account_note(ownership_account_id, note_id, update_lease_note_request)

Update a note

Updates an association ownership account note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership Accounts</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
note_id = 56 # Integer | 
update_lease_note_request = Buildium::UpdateLeaseNoteRequest.new({note: 'note_example'}) # UpdateLeaseNoteRequest | 

begin
  # Update a note
  result = api_instance.update_association_ownership_account_note(ownership_account_id, note_id, update_lease_note_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->update_association_ownership_account_note: #{e}"
end
```

#### Using the update_association_ownership_account_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_association_ownership_account_note_with_http_info(ownership_account_id, note_id, update_lease_note_request)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_association_ownership_account_note_with_http_info(ownership_account_id, note_id, update_lease_note_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountsApi->update_association_ownership_account_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **update_lease_note_request** | [**UpdateLeaseNoteRequest**](UpdateLeaseNoteRequest.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

