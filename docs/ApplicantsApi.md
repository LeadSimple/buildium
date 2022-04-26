# Buildium::ApplicantsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_applicant**](ApplicantsApi.md#create_applicant) | **POST** /v1/applicants | Create an applicant |
| [**create_applicant_group**](ApplicantsApi.md#create_applicant_group) | **POST** /v1/applicants/groups | Create an applicant group |
| [**create_applicant_note**](ApplicantsApi.md#create_applicant_note) | **POST** /v1/applicants/{applicantId}/notes | Create an applicant note |
| [**create_application_group_note**](ApplicantsApi.md#create_application_group_note) | **POST** /v1/applicants/groups/{applicantGroupId}/notes | Create an applicant group note |
| [**get_all_applicant_notes**](ApplicantsApi.md#get_all_applicant_notes) | **GET** /v1/applicants/{applicantId}/notes | Retrieve all applicant notes |
| [**get_applicant_by_id**](ApplicantsApi.md#get_applicant_by_id) | **GET** /v1/applicants/{applicantId} | Retrieve an applicant |
| [**get_applicant_group_by_id**](ApplicantsApi.md#get_applicant_group_by_id) | **GET** /v1/applicants/groups/{applicantGroupId} | Retrieve an applicant group |
| [**get_applicant_group_note_by_note_id**](ApplicantsApi.md#get_applicant_group_note_by_note_id) | **GET** /v1/applicants/groups/{applicantGroupId}/notes/{noteId} | Retrieve an applicant group note |
| [**get_applicant_group_notes**](ApplicantsApi.md#get_applicant_group_notes) | **GET** /v1/applicants/groups/{applicantGroupId}/notes | Retrieve all applicant group notes |
| [**get_applicant_groups**](ApplicantsApi.md#get_applicant_groups) | **GET** /v1/applicants/groups | Retrieve all applicant groups |
| [**get_applicant_note_by_id**](ApplicantsApi.md#get_applicant_note_by_id) | **GET** /v1/applicants/{applicantId}/notes/{noteId} | Retrieve an applicant note |
| [**get_applicants**](ApplicantsApi.md#get_applicants) | **GET** /v1/applicants | Retrieve all applicants |
| [**get_application_for_applicant_by_id**](ApplicantsApi.md#get_application_for_applicant_by_id) | **GET** /v1/applicants/{applicantId}/applications/{applicationId} | Retrieve an application |
| [**get_applications_for_applicant**](ApplicantsApi.md#get_applications_for_applicant) | **GET** /v1/applicants/{applicantId}/applications | Retrieve all applications |
| [**update_applicant**](ApplicantsApi.md#update_applicant) | **PUT** /v1/applicants/{applicantId} | Update an applicant |
| [**update_applicant_group**](ApplicantsApi.md#update_applicant_group) | **PUT** /v1/applicants/groups/{applicantGroupId} | Update an applicant group |
| [**update_application**](ApplicantsApi.md#update_application) | **PUT** /v1/applicants/{applicantId}/applications/{applicationId} | Update an application |
| [**update_application_group_note**](ApplicantsApi.md#update_application_group_note) | **PUT** /v1/applicants/groups/{applicantGroupId}/notes/{noteId} | Update an applicant group note |


## create_applicant

> <ApplicantMessage> create_applicant(applicant_post_message)

Create an applicant

Creates an applicant.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View` `Edit`

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

api_instance = Buildium::ApplicantsApi.new
applicant_post_message = Buildium::ApplicantPostMessage.new({first_name: 'first_name_example', last_name: 'last_name_example', send_rental_application_email: false}) # ApplicantPostMessage | 

begin
  # Create an applicant
  result = api_instance.create_applicant(applicant_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->create_applicant: #{e}"
end
```

#### Using the create_applicant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicantMessage>, Integer, Hash)> create_applicant_with_http_info(applicant_post_message)

```ruby
begin
  # Create an applicant
  data, status_code, headers = api_instance.create_applicant_with_http_info(applicant_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicantMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->create_applicant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_post_message** | [**ApplicantPostMessage**](ApplicantPostMessage.md) |  |  |

### Return type

[**ApplicantMessage**](ApplicantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_applicant_group

> <ApplicantGroupMessage> create_applicant_group(applicant_group_post_message)

Create an applicant group

Creates an applicant group.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View` `Edit`

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

api_instance = Buildium::ApplicantsApi.new
applicant_group_post_message = Buildium::ApplicantGroupPostMessage.new({applicant_ids: [37]}) # ApplicantGroupPostMessage | 

begin
  # Create an applicant group
  result = api_instance.create_applicant_group(applicant_group_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->create_applicant_group: #{e}"
end
```

#### Using the create_applicant_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicantGroupMessage>, Integer, Hash)> create_applicant_group_with_http_info(applicant_group_post_message)

```ruby
begin
  # Create an applicant group
  data, status_code, headers = api_instance.create_applicant_group_with_http_info(applicant_group_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicantGroupMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->create_applicant_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_group_post_message** | [**ApplicantGroupPostMessage**](ApplicantGroupPostMessage.md) |  |  |

### Return type

[**ApplicantGroupMessage**](ApplicantGroupMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_applicant_note

> <NoteMessage> create_applicant_note(applicant_id, note_post_message)

Create an applicant note

Creates an applicant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> -  `View` `Edit`

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

api_instance = Buildium::ApplicantsApi.new
applicant_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create an applicant note
  result = api_instance.create_applicant_note(applicant_id, note_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->create_applicant_note: #{e}"
end
```

#### Using the create_applicant_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_applicant_note_with_http_info(applicant_id, note_post_message)

```ruby
begin
  # Create an applicant note
  data, status_code, headers = api_instance.create_applicant_note_with_http_info(applicant_id, note_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->create_applicant_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_id** | **Integer** |  |  |
| **note_post_message** | [**NotePostMessage**](NotePostMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_application_group_note

> <NoteMessage> create_application_group_note(applicant_group_id, note_post_message)

Create an applicant group note

Creates an applicant group note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View` `Edit`

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

api_instance = Buildium::ApplicantsApi.new
applicant_group_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create an applicant group note
  result = api_instance.create_application_group_note(applicant_group_id, note_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->create_application_group_note: #{e}"
end
```

#### Using the create_application_group_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_application_group_note_with_http_info(applicant_group_id, note_post_message)

```ruby
begin
  # Create an applicant group note
  data, status_code, headers = api_instance.create_application_group_note_with_http_info(applicant_group_id, note_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->create_application_group_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_group_id** | **Integer** |  |  |
| **note_post_message** | [**NotePostMessage**](NotePostMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_applicant_notes

> <Array<NoteMessage>> get_all_applicant_notes(applicant_id, opts)

Retrieve all applicant notes

Retrieves all applicant notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View`

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

api_instance = Buildium::ApplicantsApi.new
applicant_id = 56 # Integer | 
opts = {
  updateddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  updateddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  lastupdatedbyuserid: 56, # Integer | Filters results to only notes that were last updated by the specified user identifier.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all applicant notes
  result = api_instance.get_all_applicant_notes(applicant_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_all_applicant_notes: #{e}"
end
```

#### Using the get_all_applicant_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_all_applicant_notes_with_http_info(applicant_id, opts)

```ruby
begin
  # Retrieve all applicant notes
  data, status_code, headers = api_instance.get_all_applicant_notes_with_http_info(applicant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_all_applicant_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_id** | **Integer** |  |  |
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


## get_applicant_by_id

> <ApplicantMessage> get_applicant_by_id(applicant_id)

Retrieve an applicant

Retrieves an applicant.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View`

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

api_instance = Buildium::ApplicantsApi.new
applicant_id = 56 # Integer | 

begin
  # Retrieve an applicant
  result = api_instance.get_applicant_by_id(applicant_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_by_id: #{e}"
end
```

#### Using the get_applicant_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicantMessage>, Integer, Hash)> get_applicant_by_id_with_http_info(applicant_id)

```ruby
begin
  # Retrieve an applicant
  data, status_code, headers = api_instance.get_applicant_by_id_with_http_info(applicant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicantMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_id** | **Integer** |  |  |

### Return type

[**ApplicantMessage**](ApplicantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_applicant_group_by_id

> <ApplicantGroupMessage> get_applicant_group_by_id(applicant_group_id)

Retrieve an applicant group

Retrieves an applicant group.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View`

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

api_instance = Buildium::ApplicantsApi.new
applicant_group_id = 56 # Integer | 

begin
  # Retrieve an applicant group
  result = api_instance.get_applicant_group_by_id(applicant_group_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_group_by_id: #{e}"
end
```

#### Using the get_applicant_group_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicantGroupMessage>, Integer, Hash)> get_applicant_group_by_id_with_http_info(applicant_group_id)

```ruby
begin
  # Retrieve an applicant group
  data, status_code, headers = api_instance.get_applicant_group_by_id_with_http_info(applicant_group_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicantGroupMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_group_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_group_id** | **Integer** |  |  |

### Return type

[**ApplicantGroupMessage**](ApplicantGroupMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_applicant_group_note_by_note_id

> <NoteMessage> get_applicant_group_note_by_note_id(applicant_group_id, note_id)

Retrieve an applicant group note

Retrieves an applicant group note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View`

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

api_instance = Buildium::ApplicantsApi.new
applicant_group_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve an applicant group note
  result = api_instance.get_applicant_group_note_by_note_id(applicant_group_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_group_note_by_note_id: #{e}"
end
```

#### Using the get_applicant_group_note_by_note_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_applicant_group_note_by_note_id_with_http_info(applicant_group_id, note_id)

```ruby
begin
  # Retrieve an applicant group note
  data, status_code, headers = api_instance.get_applicant_group_note_by_note_id_with_http_info(applicant_group_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_group_note_by_note_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_group_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_applicant_group_notes

> <Array<NoteMessage>> get_applicant_group_notes(applicant_group_id, opts)

Retrieve all applicant group notes

Retrieves all applicant group notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View`

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

api_instance = Buildium::ApplicantsApi.new
applicant_group_id = 56 # Integer | 
opts = {
  updateddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  updateddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  lastupdatedbyuserid: 56, # Integer | Filters results to only notes that were last updated by the specified user identifier.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all applicant group notes
  result = api_instance.get_applicant_group_notes(applicant_group_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_group_notes: #{e}"
end
```

#### Using the get_applicant_group_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_applicant_group_notes_with_http_info(applicant_group_id, opts)

```ruby
begin
  # Retrieve all applicant group notes
  data, status_code, headers = api_instance.get_applicant_group_notes_with_http_info(applicant_group_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_group_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_group_id** | **Integer** |  |  |
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


## get_applicant_groups

> <Array<ApplicantGroupMessage>> get_applicant_groups(opts)

Retrieve all applicant groups

Retrieves all applicant groups.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View`

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

api_instance = Buildium::ApplicantsApi.new
opts = {
  entitytype: 'Rental', # String | Filters results to any applicant groups associated with the specified entity identifier. This filter is used in conjunction with the `EntityType` field which must be set to the type of entity this identifier references.
  entityid: 56, # Integer | Specifies the type of entity that `EntityId` refers to. This field is required if `EntityId` is specified.
  applicationgroupstatuses: ['Undecided'], # Array<String> | Filters results by the applicant group status. If no status is specified, applicant groups in any status will be returned.
  unitids: [37], # Array<Integer> | Filters results to applicant groups associated to any of the specified rental property unit identifiers.
  name: 'name_example', # String | Filters results to applicant groups that includes applicants whose name *contains* the specified value.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all applicant groups
  result = api_instance.get_applicant_groups(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_groups: #{e}"
end
```

#### Using the get_applicant_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApplicantGroupMessage>>, Integer, Hash)> get_applicant_groups_with_http_info(opts)

```ruby
begin
  # Retrieve all applicant groups
  data, status_code, headers = api_instance.get_applicant_groups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApplicantGroupMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entitytype** | **String** | Filters results to any applicant groups associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references. | [optional] |
| **entityid** | **Integer** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified. | [optional] |
| **applicationgroupstatuses** | [**Array&lt;String&gt;**](String.md) | Filters results by the applicant group status. If no status is specified, applicant groups in any status will be returned. | [optional] |
| **unitids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to applicant groups associated to any of the specified rental property unit identifiers. | [optional] |
| **name** | **String** | Filters results to applicant groups that includes applicants whose name *contains* the specified value. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;ApplicantGroupMessage&gt;**](ApplicantGroupMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_applicant_note_by_id

> <NoteMessage> get_applicant_note_by_id(applicant_id, note_id)

Retrieve an applicant note

Retrieves an applicant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View`

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

api_instance = Buildium::ApplicantsApi.new
applicant_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve an applicant note
  result = api_instance.get_applicant_note_by_id(applicant_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_note_by_id: #{e}"
end
```

#### Using the get_applicant_note_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_applicant_note_by_id_with_http_info(applicant_id, note_id)

```ruby
begin
  # Retrieve an applicant note
  data, status_code, headers = api_instance.get_applicant_note_by_id_with_http_info(applicant_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicant_note_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_applicants

> <Array<ApplicantMessage>> get_applicants(opts)

Retrieve all applicants

Retrieves all applicants.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View`

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

api_instance = Buildium::ApplicantsApi.new
opts = {
  entityid: 56, # Integer | Filters results to any applicant associated with the specified entity identifier. This filter is used in conjunction with the `EntityType` field which must be set to the type of entity this identifier references.
  entitytype: 'Rental', # String | Specifies the type of entity that `EntityId` refers to. This field is required if `EntityId` is specified.
  applicationstatuses: ['Undecided'], # Array<String> | Filters results by the applicant application status. If no status is specified, applicants with an application in any status will be returned.
  unitids: [37], # Array<Integer> | Filters results to applicants associated to any of the specified rental property unit identifiers.
  name: 'name_example', # String | Filters results to applicants whose name *contains* the specified value.
  email: 'email_example', # String | Filters results to applicants whose email *contains* the specified value
  applicationsubmittedstartdate: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any applicant who submitted an application on or after the date specified.
  applicationsubmittedenddate: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any applicant who submitted an application on or prior to the date specified.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all applicants
  result = api_instance.get_applicants(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicants: #{e}"
end
```

#### Using the get_applicants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApplicantMessage>>, Integer, Hash)> get_applicants_with_http_info(opts)

```ruby
begin
  # Retrieve all applicants
  data, status_code, headers = api_instance.get_applicants_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApplicantMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applicants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entityid** | **Integer** | Filters results to any applicant associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references. | [optional] |
| **entitytype** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified. | [optional] |
| **applicationstatuses** | [**Array&lt;String&gt;**](String.md) | Filters results by the applicant application status. If no status is specified, applicants with an application in any status will be returned. | [optional] |
| **unitids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to applicants associated to any of the specified rental property unit identifiers. | [optional] |
| **name** | **String** | Filters results to applicants whose name *contains* the specified value. | [optional] |
| **email** | **String** | Filters results to applicants whose email *contains* the specified value | [optional] |
| **applicationsubmittedstartdate** | **Time** | Filters results to any applicant who submitted an application on or after the date specified. | [optional] |
| **applicationsubmittedenddate** | **Time** | Filters results to any applicant who submitted an application on or prior to the date specified. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;ApplicantMessage&gt;**](ApplicantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_application_for_applicant_by_id

> <ApplicationMessage> get_application_for_applicant_by_id(applicant_id, application_id)

Retrieve an application

Retrieves an application.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `Read`

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

api_instance = Buildium::ApplicantsApi.new
applicant_id = 56 # Integer | 
application_id = 56 # Integer | 

begin
  # Retrieve an application
  result = api_instance.get_application_for_applicant_by_id(applicant_id, application_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_application_for_applicant_by_id: #{e}"
end
```

#### Using the get_application_for_applicant_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationMessage>, Integer, Hash)> get_application_for_applicant_by_id_with_http_info(applicant_id, application_id)

```ruby
begin
  # Retrieve an application
  data, status_code, headers = api_instance.get_application_for_applicant_by_id_with_http_info(applicant_id, application_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_application_for_applicant_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_id** | **Integer** |  |  |
| **application_id** | **Integer** |  |  |

### Return type

[**ApplicationMessage**](ApplicationMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_applications_for_applicant

> <Array<ApplicationMessage>> get_applications_for_applicant(applicant_id, opts)

Retrieve all applications

Retrieves all the applications for a given applicant.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `Read`

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

api_instance = Buildium::ApplicantsApi.new
applicant_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all applications
  result = api_instance.get_applications_for_applicant(applicant_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applications_for_applicant: #{e}"
end
```

#### Using the get_applications_for_applicant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ApplicationMessage>>, Integer, Hash)> get_applications_for_applicant_with_http_info(applicant_id, opts)

```ruby
begin
  # Retrieve all applications
  data, status_code, headers = api_instance.get_applications_for_applicant_with_http_info(applicant_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ApplicationMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->get_applications_for_applicant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;ApplicationMessage&gt;**](ApplicationMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_applicant

> <ApplicantMessage> update_applicant(applicant_id, applicant_put_message)

Update an applicant

Updates an applicant.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View` `Edit`

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

api_instance = Buildium::ApplicantsApi.new
applicant_id = 56 # Integer | 
applicant_put_message = Buildium::ApplicantPutMessage.new({first_name: 'first_name_example', last_name: 'last_name_example'}) # ApplicantPutMessage | 

begin
  # Update an applicant
  result = api_instance.update_applicant(applicant_id, applicant_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->update_applicant: #{e}"
end
```

#### Using the update_applicant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicantMessage>, Integer, Hash)> update_applicant_with_http_info(applicant_id, applicant_put_message)

```ruby
begin
  # Update an applicant
  data, status_code, headers = api_instance.update_applicant_with_http_info(applicant_id, applicant_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicantMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->update_applicant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_id** | **Integer** |  |  |
| **applicant_put_message** | [**ApplicantPutMessage**](ApplicantPutMessage.md) |  |  |

### Return type

[**ApplicantMessage**](ApplicantMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_applicant_group

> <ApplicantGroupMessage> update_applicant_group(applicant_group_id, applicant_group_put_message)

Update an applicant group

Updates an applicant group.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View` `Edit`

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

api_instance = Buildium::ApplicantsApi.new
applicant_group_id = 56 # Integer | 
applicant_group_put_message = Buildium::ApplicantGroupPutMessage.new({applicant_group_status: 'Undecided', applicant_ids: [37]}) # ApplicantGroupPutMessage | 

begin
  # Update an applicant group
  result = api_instance.update_applicant_group(applicant_group_id, applicant_group_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->update_applicant_group: #{e}"
end
```

#### Using the update_applicant_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicantGroupMessage>, Integer, Hash)> update_applicant_group_with_http_info(applicant_group_id, applicant_group_put_message)

```ruby
begin
  # Update an applicant group
  data, status_code, headers = api_instance.update_applicant_group_with_http_info(applicant_group_id, applicant_group_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicantGroupMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->update_applicant_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_group_id** | **Integer** |  |  |
| **applicant_group_put_message** | [**ApplicantGroupPutMessage**](ApplicantGroupPutMessage.md) |  |  |

### Return type

[**ApplicantGroupMessage**](ApplicantGroupMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_application

> <ApplicationMessage> update_application(applicant_id, application_id, application_put_message)

Update an application

Updates a rental application.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `Edit`

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

api_instance = Buildium::ApplicantsApi.new
applicant_id = 56 # Integer | 
application_id = 56 # Integer | 
application_put_message = Buildium::ApplicationPutMessage.new({application_status: 'Undecided'}) # ApplicationPutMessage | 

begin
  # Update an application
  result = api_instance.update_application(applicant_id, application_id, application_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->update_application: #{e}"
end
```

#### Using the update_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationMessage>, Integer, Hash)> update_application_with_http_info(applicant_id, application_id, application_put_message)

```ruby
begin
  # Update an application
  data, status_code, headers = api_instance.update_application_with_http_info(applicant_id, application_id, application_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->update_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_id** | **Integer** |  |  |
| **application_id** | **Integer** |  |  |
| **application_put_message** | [**ApplicationPutMessage**](ApplicationPutMessage.md) |  |  |

### Return type

[**ApplicationMessage**](ApplicationMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_application_group_note

> <NoteMessage> update_application_group_note(applicant_group_id, note_id, note_put_message)

Update an applicant group note

Updates an applicant group note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View` `Edit`

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

api_instance = Buildium::ApplicantsApi.new
applicant_group_id = 56 # Integer | 
note_id = 56 # Integer | 
note_put_message = Buildium::NotePutMessage.new({note: 'note_example'}) # NotePutMessage | 

begin
  # Update an applicant group note
  result = api_instance.update_application_group_note(applicant_group_id, note_id, note_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->update_application_group_note: #{e}"
end
```

#### Using the update_application_group_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_application_group_note_with_http_info(applicant_group_id, note_id, note_put_message)

```ruby
begin
  # Update an applicant group note
  data, status_code, headers = api_instance.update_application_group_note_with_http_info(applicant_group_id, note_id, note_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ApplicantsApi->update_application_group_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicant_group_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **note_put_message** | [**NotePutMessage**](NotePutMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

