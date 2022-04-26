# Buildium::CommunicationsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_phone_log**](CommunicationsApi.md#create_phone_log) | **POST** /v1/communications/phonelogs | Create a phone log |
| [**get_phone_log_by_id**](CommunicationsApi.md#get_phone_log_by_id) | **GET** /v1/communications/phonelogs/{phoneLogId} | Retrieve a phone log |
| [**get_phone_logs**](CommunicationsApi.md#get_phone_logs) | **GET** /v1/communications/phonelogs | Retrieve all phone logs |
| [**update_phone_log**](CommunicationsApi.md#update_phone_log) | **PUT** /v1/communications/phonelogs/{phoneLogId} | Update a phone log |


## create_phone_log

> <PhoneLogMessage> create_phone_log(phone_log_post_message)

Create a phone log

Creates a phone log.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Timelines (Phone Logs)</span> - `View` `Edit`

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


## get_phone_log_by_id

> <PhoneLogMessage> get_phone_log_by_id(phone_log_id)

Retrieve a phone log

Retrieves a specific phone log.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Timelines (Phone Logs)</span> - `View`

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

