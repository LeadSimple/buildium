# Buildium::AdministrationApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account_info**](AdministrationApi.md#get_account_info) | **GET** /v1/administration/account | Retrieve account info |
| [**get_accounting_lock_period_settings**](AdministrationApi.md#get_accounting_lock_period_settings) | **GET** /v1/administration/accountinglockperiod | Retrieve accounting lock periods |
| [**get_all_user_roles**](AdministrationApi.md#get_all_user_roles) | **GET** /v1/userroles | Retrieve all user roles |
| [**get_all_users**](AdministrationApi.md#get_all_users) | **GET** /v1/users | Retrieve all users |
| [**get_global_partial_payment_settings**](AdministrationApi.md#get_global_partial_payment_settings) | **GET** /v1/administration/residentsettings/partialpaymentsettings | Retrieve the partial payment settings for residents |
| [**get_user_by_id**](AdministrationApi.md#get_user_by_id) | **GET** /v1/users/{userId} | Retrieve a user |
| [**get_user_role_by_id**](AdministrationApi.md#get_user_role_by_id) | **GET** /v1/userroles/{userRoleId} | Retrieve a user role |
| [**patch_global_partial_payment_settings**](AdministrationApi.md#patch_global_partial_payment_settings) | **PATCH** /v1/administration/residentsettings/partialpaymentsettings | Update the partial payment settings for residents |


## get_account_info

> <AccountInfoMessage> get_account_info

Retrieve account info

Retrieves information related to the Buildium account.   <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration > Account Information</span> - `View`

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

api_instance = Buildium::AdministrationApi.new

begin
  # Retrieve account info
  result = api_instance.get_account_info
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_account_info: #{e}"
end
```

#### Using the get_account_info_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountInfoMessage>, Integer, Hash)> get_account_info_with_http_info

```ruby
begin
  # Retrieve account info
  data, status_code, headers = api_instance.get_account_info_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountInfoMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_account_info_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AccountInfoMessage**](AccountInfoMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_accounting_lock_period_settings

> <AccountingLockPeriodMessage> get_accounting_lock_period_settings

Retrieve accounting lock periods

Retrieves accounting lock periods.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration > Application Settings</span> - `View`

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

api_instance = Buildium::AdministrationApi.new

begin
  # Retrieve accounting lock periods
  result = api_instance.get_accounting_lock_period_settings
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_accounting_lock_period_settings: #{e}"
end
```

#### Using the get_accounting_lock_period_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountingLockPeriodMessage>, Integer, Hash)> get_accounting_lock_period_settings_with_http_info

```ruby
begin
  # Retrieve accounting lock periods
  data, status_code, headers = api_instance.get_accounting_lock_period_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountingLockPeriodMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_accounting_lock_period_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**AccountingLockPeriodMessage**](AccountingLockPeriodMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_user_roles

> <Array<UserRoleMessage>> get_all_user_roles(opts)

Retrieve all user roles

Retrieves a list of user roles.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration > User Roles</span> - `View`

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

api_instance = Buildium::AdministrationApi.new
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all user roles
  result = api_instance.get_all_user_roles(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_all_user_roles: #{e}"
end
```

#### Using the get_all_user_roles_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserRoleMessage>>, Integer, Hash)> get_all_user_roles_with_http_info(opts)

```ruby
begin
  # Retrieve all user roles
  data, status_code, headers = api_instance.get_all_user_roles_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserRoleMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_all_user_roles_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;UserRoleMessage&gt;**](UserRoleMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_users

> <Array<UserMessage>> get_all_users(opts)

Retrieve all users

Retrieves a list of users.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration > Users</span> - `View`

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

api_instance = Buildium::AdministrationApi.new
opts = {
  roleids: [37], # Array<Integer> | Describes the role of the user.
  usertypes: ['Staff'], # Array<String> | Describes the user type of the user.
  status: 'Inactive', # String | Filters results by the status of the user. If no status is specified both `active` and `inactive` staff members will be returned.
  name: 'name_example', # String | Filters results to only records whose name *contains* the specified value.
  email: 'email_example', # String | Filters results to only records whose email *contains* the specified value.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all users
  result = api_instance.get_all_users(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_all_users: #{e}"
end
```

#### Using the get_all_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserMessage>>, Integer, Hash)> get_all_users_with_http_info(opts)

```ruby
begin
  # Retrieve all users
  data, status_code, headers = api_instance.get_all_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_all_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **roleids** | [**Array&lt;Integer&gt;**](Integer.md) | Describes the role of the user. | [optional] |
| **usertypes** | [**Array&lt;String&gt;**](String.md) | Describes the user type of the user. | [optional] |
| **status** | **String** | Filters results by the status of the user. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; staff members will be returned. | [optional] |
| **name** | **String** | Filters results to only records whose name *contains* the specified value. | [optional] |
| **email** | **String** | Filters results to only records whose email *contains* the specified value. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;UserMessage&gt;**](UserMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_global_partial_payment_settings

> <PartialPaymentSettingsMessage> get_global_partial_payment_settings

Retrieve the partial payment settings for residents

Retrieves the partial payment settings for residents.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration > Application Settings</span> - `View`

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

api_instance = Buildium::AdministrationApi.new

begin
  # Retrieve the partial payment settings for residents
  result = api_instance.get_global_partial_payment_settings
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_global_partial_payment_settings: #{e}"
end
```

#### Using the get_global_partial_payment_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartialPaymentSettingsMessage>, Integer, Hash)> get_global_partial_payment_settings_with_http_info

```ruby
begin
  # Retrieve the partial payment settings for residents
  data, status_code, headers = api_instance.get_global_partial_payment_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartialPaymentSettingsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_global_partial_payment_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**PartialPaymentSettingsMessage**](PartialPaymentSettingsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_by_id

> <UserMessage> get_user_by_id(user_id)

Retrieve a user

Retrieve a specific user.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration > Users</span> - `View`

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

api_instance = Buildium::AdministrationApi.new
user_id = 56 # Integer | The user identifier.

begin
  # Retrieve a user
  result = api_instance.get_user_by_id(user_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_user_by_id: #{e}"
end
```

#### Using the get_user_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserMessage>, Integer, Hash)> get_user_by_id_with_http_info(user_id)

```ruby
begin
  # Retrieve a user
  data, status_code, headers = api_instance.get_user_by_id_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_user_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The user identifier. |  |

### Return type

[**UserMessage**](UserMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_role_by_id

> <UserRoleMessage> get_user_role_by_id(user_role_id)

Retrieve a user role

Retrieve a specific user role.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration > User Roles</span> - `View`

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

api_instance = Buildium::AdministrationApi.new
user_role_id = 56 # Integer | The user role identifier.

begin
  # Retrieve a user role
  result = api_instance.get_user_role_by_id(user_role_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_user_role_by_id: #{e}"
end
```

#### Using the get_user_role_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserRoleMessage>, Integer, Hash)> get_user_role_by_id_with_http_info(user_role_id)

```ruby
begin
  # Retrieve a user role
  data, status_code, headers = api_instance.get_user_role_by_id_with_http_info(user_role_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserRoleMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->get_user_role_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_role_id** | **Integer** | The user role identifier. |  |

### Return type

[**UserRoleMessage**](UserRoleMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_global_partial_payment_settings

> <PartialPaymentSettingsMessage> patch_global_partial_payment_settings(patch_global_partial_payment_settings_request)

Update the partial payment settings for residents

Updates the partial payment settings for residents.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration > Application Settings</span> - `View` `Edit`

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

api_instance = Buildium::AdministrationApi.new
patch_global_partial_payment_settings_request = Buildium::PatchGlobalPartialPaymentSettingsRequest.new # PatchGlobalPartialPaymentSettingsRequest | <span>Represents the structure of the data that can be provided to a <a target=\"_blank\" href=\"https://datatracker.ietf.org/doc/html/rfc6902\">JSON patch document</a> as path values via <a target=\"_blank\" href=\"https://datatracker.ietf.org/doc/html/rfc6901/\">JSON pointer</a> syntax.</span>

begin
  # Update the partial payment settings for residents
  result = api_instance.patch_global_partial_payment_settings(patch_global_partial_payment_settings_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->patch_global_partial_payment_settings: #{e}"
end
```

#### Using the patch_global_partial_payment_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PartialPaymentSettingsMessage>, Integer, Hash)> patch_global_partial_payment_settings_with_http_info(patch_global_partial_payment_settings_request)

```ruby
begin
  # Update the partial payment settings for residents
  data, status_code, headers = api_instance.patch_global_partial_payment_settings_with_http_info(patch_global_partial_payment_settings_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PartialPaymentSettingsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AdministrationApi->patch_global_partial_payment_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **patch_global_partial_payment_settings_request** | [**PatchGlobalPartialPaymentSettingsRequest**](PatchGlobalPartialPaymentSettingsRequest.md) | &lt;span&gt;Represents the structure of the data that can be provided to a &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://datatracker.ietf.org/doc/html/rfc6902\&quot;&gt;JSON patch document&lt;/a&gt; as path values via &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://datatracker.ietf.org/doc/html/rfc6901/\&quot;&gt;JSON pointer&lt;/a&gt; syntax.&lt;/span&gt; |  |

### Return type

[**PartialPaymentSettingsMessage**](PartialPaymentSettingsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json, application/json-patch+json
- **Accept**: application/json

