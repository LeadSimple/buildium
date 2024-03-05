# Buildium::CommunicationsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_announcement**](CommunicationsApi.md#create_announcement) | **POST** /v1/communications/announcements | Create an announcement |
| [**create_email**](CommunicationsApi.md#create_email) | **POST** /v1/communications/emails | Send an email |
| [**create_phone_log**](CommunicationsApi.md#create_phone_log) | **POST** /v1/communications/phonelogs | Create a phone log |
| [**expire_announcement**](CommunicationsApi.md#expire_announcement) | **POST** /v1/communications/announcements/{announcementId}/expirationrequest | Expire an announcement |
| [**get_all_announcements**](CommunicationsApi.md#get_all_announcements) | **GET** /v1/communications/announcements | Retrieve all announcements |
| [**get_announcement_by_id**](CommunicationsApi.md#get_announcement_by_id) | **GET** /v1/communications/announcements/{announcementId} | Retrieve an announcement |
| [**get_announcement_properties**](CommunicationsApi.md#get_announcement_properties) | **GET** /v1/communications/announcements/{announcementId}/properties | Retrieve all announcement properties |
| [**get_email_by_id**](CommunicationsApi.md#get_email_by_id) | **GET** /v1/communications/emails/{emailId} | Retrieve an email |
| [**get_email_recipients**](CommunicationsApi.md#get_email_recipients) | **GET** /v1/communications/emails/{emailId}/recipients | Retrieve all email recipients |
| [**get_emails**](CommunicationsApi.md#get_emails) | **GET** /v1/communications/emails | Retrieve all emails |
| [**get_mailing_templates**](CommunicationsApi.md#get_mailing_templates) | **GET** /v1/communications/templates | Retrieve all communication templates |
| [**get_mailing_templates_by_id**](CommunicationsApi.md#get_mailing_templates_by_id) | **GET** /v1/communications/templates/{templateId} | Retrieve a communication template |
| [**get_phone_log_by_id**](CommunicationsApi.md#get_phone_log_by_id) | **GET** /v1/communications/phonelogs/{phoneLogId} | Retrieve a phone log |
| [**get_phone_logs**](CommunicationsApi.md#get_phone_logs) | **GET** /v1/communications/phonelogs | Retrieve all phone logs |
| [**update_phone_log**](CommunicationsApi.md#update_phone_log) | **PUT** /v1/communications/phonelogs/{phoneLogId} | Update a phone log |


## create_announcement

> <AnnouncementMessage> create_announcement(announcement_post_message)

Create an announcement

Creates and publishes an announcement.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Announcements</span> - `View` `Edit`

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

api_instance = Buildium::CommunicationsApi.new
announcement_post_message = Buildium::AnnouncementPostMessage.new({subject: 'subject_example', body: 'body_example', notify_association_tenants: false, include_alternate_email: false, property_ids: [37]}) # AnnouncementPostMessage | 

begin
  # Create an announcement
  result = api_instance.create_announcement(announcement_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->create_announcement: #{e}"
end
```

#### Using the create_announcement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnnouncementMessage>, Integer, Hash)> create_announcement_with_http_info(announcement_post_message)

```ruby
begin
  # Create an announcement
  data, status_code, headers = api_instance.create_announcement_with_http_info(announcement_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnnouncementMessage>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->create_announcement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **announcement_post_message** | [**AnnouncementPostMessage**](AnnouncementPostMessage.md) |  |  |

### Return type

[**AnnouncementMessage**](AnnouncementMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_email

> create_email(email_post_message)

Send an email

Sends an email to one or more recipients using the specified email template.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communication &gt; Emails</span> - `View` `Edit`

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

api_instance = Buildium::CommunicationsApi.new
email_post_message = Buildium::EmailPostMessage.new({template_id: 37, subject: 'subject_example', include_alternate_emails: false, exclude_delinquent_recipients: false, include_association_tenants: false}) # EmailPostMessage | 

begin
  # Send an email
  api_instance.create_email(email_post_message)
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->create_email: #{e}"
end
```

#### Using the create_email_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_email_with_http_info(email_post_message)

```ruby
begin
  # Send an email
  data, status_code, headers = api_instance.create_email_with_http_info(email_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->create_email_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_post_message** | [**EmailPostMessage**](EmailPostMessage.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_phone_log

> <PhoneLogMessage> create_phone_log(phone_log_post_message)

Create a phone log

Creates a phone log.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Timelines (Phone Logs)</span> - `View` `Edit`

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

api_instance = Buildium::CommunicationsApi.new
phone_log_post_message = Buildium::PhoneLogPostMessage.new({participant: Buildium::PhoneLogParticipantPostMessage.new({entity_type: 'Vendor', entity_id: 37}), subject: 'subject_example', description: 'description_example', call_date_time: Time.now}) # PhoneLogPostMessage | 

begin
  # Create a phone log
  result = api_instance.create_phone_log(phone_log_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->create_phone_log: #{e}"
end
```

#### Using the create_phone_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PhoneLogMessage>, Integer, Hash)> create_phone_log_with_http_info(phone_log_post_message)

```ruby
begin
  # Create a phone log
  data, status_code, headers = api_instance.create_phone_log_with_http_info(phone_log_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PhoneLogMessage>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->create_phone_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_log_post_message** | [**PhoneLogPostMessage**](PhoneLogPostMessage.md) |  |  |

### Return type

[**PhoneLogMessage**](PhoneLogMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## expire_announcement

> expire_announcement(announcement_id)

Expire an announcement

Removes the announcement from the Resident Center immediately.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Announcements</span> - `View` `Edit`

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

api_instance = Buildium::CommunicationsApi.new
announcement_id = 56 # Integer | 

begin
  # Expire an announcement
  api_instance.expire_announcement(announcement_id)
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->expire_announcement: #{e}"
end
```

#### Using the expire_announcement_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> expire_announcement_with_http_info(announcement_id)

```ruby
begin
  # Expire an announcement
  data, status_code, headers = api_instance.expire_announcement_with_http_info(announcement_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->expire_announcement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **announcement_id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_announcements

> <Array<AnnouncementMessage>> get_all_announcements(opts)

Retrieve all announcements

Retrieves all announcements.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Announcements</span> - `View`

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

api_instance = Buildium::CommunicationsApi.new
opts = {
  announcementdatefrom: Date.parse('2013-10-20'), # Date | Filters results to any announcements created on or after the specified date. The value must be formatted as YYYY-MM-DD.
  announcementdateto: Date.parse('2013-10-20'), # Date | Filters results to any announcements created on or before the specified date. The value must be formatted as YYYY-MM-DD.
  entityid: 56, # Integer | Filters results to any announcement associated with the specified entity id value. The value must be of the type specified in the `EntityType` field.
  entitytype: 'Rental', # String | Specifies the type of entity that the `EntityId` field refers to. This field is required if the `EntityId` field is provided.
  senderid: 56, # Integer | Unique identifier of the user that published the announcement.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all announcements
  result = api_instance.get_all_announcements(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_all_announcements: #{e}"
end
```

#### Using the get_all_announcements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AnnouncementMessage>>, Integer, Hash)> get_all_announcements_with_http_info(opts)

```ruby
begin
  # Retrieve all announcements
  data, status_code, headers = api_instance.get_all_announcements_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AnnouncementMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_all_announcements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **announcementdatefrom** | **Date** | Filters results to any announcements created on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **announcementdateto** | **Date** | Filters results to any announcements created on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **entityid** | **Integer** | Filters results to any announcement associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field. | [optional] |
| **entitytype** | **String** | Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is provided. | [optional] |
| **senderid** | **Integer** | Unique identifier of the user that published the announcement. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;AnnouncementMessage&gt;**](AnnouncementMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_announcement_by_id

> <AnnouncementMessage> get_announcement_by_id(announcement_id)

Retrieve an announcement

Retrieves an announcement.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Announcements</span> - `View`

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

api_instance = Buildium::CommunicationsApi.new
announcement_id = 56 # Integer | 

begin
  # Retrieve an announcement
  result = api_instance.get_announcement_by_id(announcement_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_announcement_by_id: #{e}"
end
```

#### Using the get_announcement_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AnnouncementMessage>, Integer, Hash)> get_announcement_by_id_with_http_info(announcement_id)

```ruby
begin
  # Retrieve an announcement
  data, status_code, headers = api_instance.get_announcement_by_id_with_http_info(announcement_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AnnouncementMessage>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_announcement_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **announcement_id** | **Integer** |  |  |

### Return type

[**AnnouncementMessage**](AnnouncementMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_announcement_properties

> <Array<PropertyMessage>> get_announcement_properties(announcement_id, opts)

Retrieve all announcement properties

Retrieves a list of association and/or rental properties whose residents received the announcement. An empty response collection indicates that the announcement was sent to all properties at the time of its creation.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Announcements</span> - `View`

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

api_instance = Buildium::CommunicationsApi.new
announcement_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all announcement properties
  result = api_instance.get_announcement_properties(announcement_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_announcement_properties: #{e}"
end
```

#### Using the get_announcement_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PropertyMessage>>, Integer, Hash)> get_announcement_properties_with_http_info(announcement_id, opts)

```ruby
begin
  # Retrieve all announcement properties
  data, status_code, headers = api_instance.get_announcement_properties_with_http_info(announcement_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PropertyMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_announcement_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **announcement_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;PropertyMessage&gt;**](PropertyMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_by_id

> <EmailMessage> get_email_by_id(email_id)

Retrieve an email

Retrieves the content of an email. To retrieve the recipients of the email see the [Retrieve all email recipients](#tag/Communications/operation/GetEmailRecipients) endpoint.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Emails</span> - `View`

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

api_instance = Buildium::CommunicationsApi.new
email_id = 56 # Integer | 

begin
  # Retrieve an email
  result = api_instance.get_email_by_id(email_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_email_by_id: #{e}"
end
```

#### Using the get_email_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EmailMessage>, Integer, Hash)> get_email_by_id_with_http_info(email_id)

```ruby
begin
  # Retrieve an email
  data, status_code, headers = api_instance.get_email_by_id_with_http_info(email_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EmailMessage>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_email_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_id** | **Integer** |  |  |

### Return type

[**EmailMessage**](EmailMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_email_recipients

> <Array<EmailRecipientMessage>> get_email_recipients(email_id, opts)

Retrieve all email recipients

Retrieves all email recipients.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Email</span> - `View`              <br /><h4>Optional Permissions:</h4><br />              The following permissions are optional, but results with a missing permission will be filtered out.              <span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View` In order to retrieve recipients that are Vendors, you must have this permission.              <span class=\"permissionBlock\">Administration &gt; Users</span> - `View` In order to see recipients that are Staff, you must have this permission.

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

api_instance = Buildium::CommunicationsApi.new
email_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all email recipients
  result = api_instance.get_email_recipients(email_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_email_recipients: #{e}"
end
```

#### Using the get_email_recipients_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<EmailRecipientMessage>>, Integer, Hash)> get_email_recipients_with_http_info(email_id, opts)

```ruby
begin
  # Retrieve all email recipients
  data, status_code, headers = api_instance.get_email_recipients_with_http_info(email_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<EmailRecipientMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_email_recipients_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;EmailRecipientMessage&gt;**](EmailRecipientMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_emails

> <Array<EmailMessage>> get_emails(sentdatetimefrom, sentdatetimeto, opts)

Retrieve all emails

Retrieves all emails.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communication &gt; Emails</span> - `View`

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

api_instance = Buildium::CommunicationsApi.new
sentdatetimefrom = Time.parse('2013-10-20T19:20:30+01:00') # Time | Filters results to any emails whose sent date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days.
sentdatetimeto = Time.parse('2013-10-20T19:20:30+01:00') # Time | Filters results to any emails whose sent date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days.
opts = {
  subject: 'subject_example', # String | Filters results to any email whose subject *contains* the specified value.
  recipientnameoremail: 'recipientnameoremail_example', # String | Filters results to any email with a recipient whose name or email address *contains* the specified value.
  senderuserid: 56, # Integer | Filters results to only emails that were sent by the specified user identifier.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all emails
  result = api_instance.get_emails(sentdatetimefrom, sentdatetimeto, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_emails: #{e}"
end
```

#### Using the get_emails_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<EmailMessage>>, Integer, Hash)> get_emails_with_http_info(sentdatetimefrom, sentdatetimeto, opts)

```ruby
begin
  # Retrieve all emails
  data, status_code, headers = api_instance.get_emails_with_http_info(sentdatetimefrom, sentdatetimeto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<EmailMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_emails_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sentdatetimefrom** | **Time** | Filters results to any emails whose sent date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days. |  |
| **sentdatetimeto** | **Time** | Filters results to any emails whose sent date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days. |  |
| **subject** | **String** | Filters results to any email whose subject *contains* the specified value. | [optional] |
| **recipientnameoremail** | **String** | Filters results to any email with a recipient whose name or email address *contains* the specified value. | [optional] |
| **senderuserid** | **Integer** | Filters results to only emails that were sent by the specified user identifier. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;EmailMessage&gt;**](EmailMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mailing_templates

> <Array<MailingTemplateMessage>> get_mailing_templates(opts)

Retrieve all communication templates

Retrieves all mailing and email templates. A template is a tool in Buildium that allows you to create \"mail merge\" templates for emails and postal mailings to easily send common messages to residents, rental owners and vendors.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Mailing Templates</span> - `View`              <br /><h4>Optional Permissions:</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`              <br /><span class=\"permissionBlock\">Rentals &gt; Property Rental owners</span> - `View`              <br /><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`              <br /><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View`

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

api_instance = Buildium::CommunicationsApi.new
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all communication templates
  result = api_instance.get_mailing_templates(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_mailing_templates: #{e}"
end
```

#### Using the get_mailing_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MailingTemplateMessage>>, Integer, Hash)> get_mailing_templates_with_http_info(opts)

```ruby
begin
  # Retrieve all communication templates
  data, status_code, headers = api_instance.get_mailing_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MailingTemplateMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_mailing_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;MailingTemplateMessage&gt;**](MailingTemplateMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mailing_templates_by_id

> <MailingTemplateMessage> get_mailing_templates_by_id(template_id)

Retrieve a communication template

Retrieves a communication template. A template is a tool in Buildium that allows you to create \"mail merge\" templates for emails and postal mailings to easily send common messages to residents, rental owners and vendors.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Mailing Templates</span> - `View`              <br /><h4>Optional Permissions:</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`              <br /><span class=\"permissionBlock\">Rentals &gt; Property Rental owners</span> - `View`              <br /><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`              <br /><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View`

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

api_instance = Buildium::CommunicationsApi.new
template_id = 56 # Integer | 

begin
  # Retrieve a communication template
  result = api_instance.get_mailing_templates_by_id(template_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_mailing_templates_by_id: #{e}"
end
```

#### Using the get_mailing_templates_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MailingTemplateMessage>, Integer, Hash)> get_mailing_templates_by_id_with_http_info(template_id)

```ruby
begin
  # Retrieve a communication template
  data, status_code, headers = api_instance.get_mailing_templates_by_id_with_http_info(template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MailingTemplateMessage>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_mailing_templates_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** |  |  |

### Return type

[**MailingTemplateMessage**](MailingTemplateMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_phone_log_by_id

> <PhoneLogMessage> get_phone_log_by_id(phone_log_id)

Retrieve a phone log

Retrieves a specific phone log.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Timelines (Phone Logs)</span> - `View`

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

api_instance = Buildium::CommunicationsApi.new
phone_log_id = 56 # Integer | The phone log identifier

begin
  # Retrieve a phone log
  result = api_instance.get_phone_log_by_id(phone_log_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_phone_log_by_id: #{e}"
end
```

#### Using the get_phone_log_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PhoneLogMessage>, Integer, Hash)> get_phone_log_by_id_with_http_info(phone_log_id)

```ruby
begin
  # Retrieve a phone log
  data, status_code, headers = api_instance.get_phone_log_by_id_with_http_info(phone_log_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PhoneLogMessage>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_phone_log_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_log_id** | **Integer** | The phone log identifier |  |

### Return type

[**PhoneLogMessage**](PhoneLogMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_phone_logs

> <Array<PhoneLogMessage>> get_phone_logs(opts)

Retrieve all phone logs

Retrieves all phone logs.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Timelines (Phone Logs)</span> - `View`

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

api_instance = Buildium::CommunicationsApi.new
opts = {
  fromdate: Date.parse('2013-10-20'), # Date | Filters results to any phone log whose call date is greater than or equal to the specified value.
  todate: Date.parse('2013-10-20'), # Date | Filters results to any phone log whose call date is less than or equal to the specified value.
  loggedbystaffuserids: [37], # Array<Integer> | Filters results to any phone log that was logged by staff user(s).
  subject: 'subject_example', # String | Filters results to any phone log whose subject *contains* the specified value.
  participantentityid: 56, # Integer | Filters results to any phone logs that match the participant identifier. Note, if a value is provided in this field the `ParticipantEntityType` must also be provided.
  participantentitytype: 'Vendor', # String | Filters results to any phone log with the specified participant type. This field is required if a value is provided for the `ParticipantEntityId` field.
  unitagreementid: 56, # Integer | Filters results to any phone log with the specified unit agreement identifier. Note, if a value is provided in this field the `UnitAgreementType` must also be provided.
  unitagreementtype: 'Lease', # String | Filters results to any phone log with the specified unit agreement type. This field is required if a value is provided for the `UnitAgreementId` field.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all phone logs
  result = api_instance.get_phone_logs(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_phone_logs: #{e}"
end
```

#### Using the get_phone_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PhoneLogMessage>>, Integer, Hash)> get_phone_logs_with_http_info(opts)

```ruby
begin
  # Retrieve all phone logs
  data, status_code, headers = api_instance.get_phone_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PhoneLogMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->get_phone_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fromdate** | **Date** | Filters results to any phone log whose call date is greater than or equal to the specified value. | [optional] |
| **todate** | **Date** | Filters results to any phone log whose call date is less than or equal to the specified value. | [optional] |
| **loggedbystaffuserids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any phone log that was logged by staff user(s). | [optional] |
| **subject** | **String** | Filters results to any phone log whose subject *contains* the specified value. | [optional] |
| **participantentityid** | **Integer** | Filters results to any phone logs that match the participant identifier. Note, if a value is provided in this field the &#x60;ParticipantEntityType&#x60; must also be provided. | [optional] |
| **participantentitytype** | **String** | Filters results to any phone log with the specified participant type. This field is required if a value is provided for the &#x60;ParticipantEntityId&#x60; field. | [optional] |
| **unitagreementid** | **Integer** | Filters results to any phone log with the specified unit agreement identifier. Note, if a value is provided in this field the &#x60;UnitAgreementType&#x60; must also be provided. | [optional] |
| **unitagreementtype** | **String** | Filters results to any phone log with the specified unit agreement type. This field is required if a value is provided for the &#x60;UnitAgreementId&#x60; field. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;PhoneLogMessage&gt;**](PhoneLogMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_phone_log

> <PhoneLogMessage> update_phone_log(phone_log_id, phone_log_put_message)

Update a phone log

Update a phone log  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Timelines (Phone Logs)</span> - `View` `Edit`

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

api_instance = Buildium::CommunicationsApi.new
phone_log_id = 56 # Integer | The phone log identifier.
phone_log_put_message = Buildium::PhoneLogPutMessage.new({subject: 'subject_example', description: 'description_example', call_date_time: Time.now}) # PhoneLogPutMessage | 

begin
  # Update a phone log
  result = api_instance.update_phone_log(phone_log_id, phone_log_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->update_phone_log: #{e}"
end
```

#### Using the update_phone_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PhoneLogMessage>, Integer, Hash)> update_phone_log_with_http_info(phone_log_id, phone_log_put_message)

```ruby
begin
  # Update a phone log
  data, status_code, headers = api_instance.update_phone_log_with_http_info(phone_log_id, phone_log_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PhoneLogMessage>
rescue Buildium::ApiError => e
  puts "Error when calling CommunicationsApi->update_phone_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_log_id** | **Integer** | The phone log identifier. |  |
| **phone_log_put_message** | [**PhoneLogPutMessage**](PhoneLogPutMessage.md) |  |  |

### Return type

[**PhoneLogMessage**](PhoneLogMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

