# Buildium::ClientLeadsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_client_leads**](ClientLeadsApi.md#get_client_leads) | **GET** /v1/clientleads | Retrieve all client leads |
| [**get_prospective_client**](ClientLeadsApi.md#get_prospective_client) | **GET** /v1/clientleads/{clientLeadId} | Retrieve a client lead |


## get_client_leads

> <Array<ClientLeadMessage>> get_client_leads(opts)

Retrieve all client leads

Retrieves all client leads              <br /><br />              Note: When using the `orderby` query string parameter, the only supported options are DateReceived.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration > All Property Management</span> - `View`

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

api_instance = Buildium::ClientLeadsApi.new
opts = {
  leadstatuses: ['Unknown'], # Array<String> | Filters results to any client leads that are in one of the given statuses.
  propertytypes: ['SingleHomeUpToThreeHundredThousand'], # Array<String> | Filters results to any client leads that have a property in one of the given property types.
  datereceivedfrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any client leads that were received on or after the specified date. The value must be formatted as YYYY-MM-DD.
  datereceivedto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any client leads that were received on or before the specified date. The value must be formatted as YYYY-MM-DD.
  includecreditedleads: true, # Boolean | This will also return client leads that were credited. By default credited leads will not be returned.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all client leads
  result = api_instance.get_client_leads(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ClientLeadsApi->get_client_leads: #{e}"
end
```

#### Using the get_client_leads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ClientLeadMessage>>, Integer, Hash)> get_client_leads_with_http_info(opts)

```ruby
begin
  # Retrieve all client leads
  data, status_code, headers = api_instance.get_client_leads_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ClientLeadMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ClientLeadsApi->get_client_leads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **leadstatuses** | [**Array&lt;String&gt;**](String.md) | Filters results to any client leads that are in one of the given statuses. | [optional] |
| **propertytypes** | [**Array&lt;String&gt;**](String.md) | Filters results to any client leads that have a property in one of the given property types. | [optional] |
| **datereceivedfrom** | **Time** | Filters results to any client leads that were received on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **datereceivedto** | **Time** | Filters results to any client leads that were received on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **includecreditedleads** | **Boolean** | This will also return client leads that were credited. By default credited leads will not be returned. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;ClientLeadMessage&gt;**](ClientLeadMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_prospective_client

> <ClientLeadMessage> get_prospective_client(client_lead_id)

Retrieve a client lead

Retrieves a specific client lead              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration > All Property Management</span> - `View`

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

api_instance = Buildium::ClientLeadsApi.new
client_lead_id = 56 # Integer | 

begin
  # Retrieve a client lead
  result = api_instance.get_prospective_client(client_lead_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ClientLeadsApi->get_prospective_client: #{e}"
end
```

#### Using the get_prospective_client_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ClientLeadMessage>, Integer, Hash)> get_prospective_client_with_http_info(client_lead_id)

```ruby
begin
  # Retrieve a client lead
  data, status_code, headers = api_instance.get_prospective_client_with_http_info(client_lead_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ClientLeadMessage>
rescue Buildium::ApiError => e
  puts "Error when calling ClientLeadsApi->get_prospective_client_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_lead_id** | **Integer** |  |  |

### Return type

[**ClientLeadMessage**](ClientLeadMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

