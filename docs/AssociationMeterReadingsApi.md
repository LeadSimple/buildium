# Buildium::AssociationMeterReadingsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_meter_reading_details_for_association**](AssociationMeterReadingsApi.md#delete_meter_reading_details_for_association) | **DELETE** /v1/associations/{associationId}/meterreadings/summary | Delete meter reading details for a given date |
| [**get_association_meter_reading_details_async**](AssociationMeterReadingsApi.md#get_association_meter_reading_details_async) | **GET** /v1/associations/{associationId}/meterreadings/summary | Retrieve all meter reading details |
| [**get_meter_readings_for_association**](AssociationMeterReadingsApi.md#get_meter_readings_for_association) | **GET** /v1/associations/{associationId}/meterreadings | Retrieve all meter readings |
| [**upsert_association_meter_reading_details_async**](AssociationMeterReadingsApi.md#upsert_association_meter_reading_details_async) | **PUT** /v1/associations/{associationId}/meterreadings/summary | Create/Update meter reading details |


## delete_meter_reading_details_for_association

> delete_meter_reading_details_for_association(association_id, readingdate, metertype)

Delete meter reading details for a given date

Delete meter reading details for an association for a given date.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit` `Delete`

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

api_instance = Buildium::AssociationMeterReadingsApi.new
association_id = 56 # Integer | 
readingdate = Date.parse('2013-10-20') # Date | Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD.
metertype = 'Electric' # String | Filters results to the specified meter type.

begin
  # Delete meter reading details for a given date
  api_instance.delete_meter_reading_details_for_association(association_id, readingdate, metertype)
rescue Buildium::ApiError => e
  puts "Error when calling AssociationMeterReadingsApi->delete_meter_reading_details_for_association: #{e}"
end
```

#### Using the delete_meter_reading_details_for_association_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_meter_reading_details_for_association_with_http_info(association_id, readingdate, metertype)

```ruby
begin
  # Delete meter reading details for a given date
  data, status_code, headers = api_instance.delete_meter_reading_details_for_association_with_http_info(association_id, readingdate, metertype)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling AssociationMeterReadingsApi->delete_meter_reading_details_for_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **readingdate** | **Date** | Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD. |  |
| **metertype** | **String** | Filters results to the specified meter type. |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_meter_reading_details_async

> <MeterReadingDetailsMessage> get_association_meter_reading_details_async(association_id, readingdate, metertype)

Retrieve all meter reading details

Retrieves all meter reading details for an association.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`

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

api_instance = Buildium::AssociationMeterReadingsApi.new
association_id = 56 # Integer | 
readingdate = Date.parse('2013-10-20') # Date | Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD.
metertype = 'Electric' # String | Filters results to the specified meter type.

begin
  # Retrieve all meter reading details
  result = api_instance.get_association_meter_reading_details_async(association_id, readingdate, metertype)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationMeterReadingsApi->get_association_meter_reading_details_async: #{e}"
end
```

#### Using the get_association_meter_reading_details_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MeterReadingDetailsMessage>, Integer, Hash)> get_association_meter_reading_details_async_with_http_info(association_id, readingdate, metertype)

```ruby
begin
  # Retrieve all meter reading details
  data, status_code, headers = api_instance.get_association_meter_reading_details_async_with_http_info(association_id, readingdate, metertype)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MeterReadingDetailsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationMeterReadingsApi->get_association_meter_reading_details_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **readingdate** | **Date** | Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD. |  |
| **metertype** | **String** | Filters results to the specified meter type. |  |

### Return type

[**MeterReadingDetailsMessage**](MeterReadingDetailsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_meter_readings_for_association

> <Array<MeterReadingMessage>> get_meter_readings_for_association(association_id, readingdatefrom, readingdateto, opts)

Retrieve all meter readings

Retrieves all meter readings for an association.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`

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

api_instance = Buildium::AssociationMeterReadingsApi.new
association_id = 56 # Integer | 
readingdatefrom = Date.parse('2013-10-20') # Date | Filters results to any meter readings whose entry date that is greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD. The maximum date range is 365 days.
readingdateto = Date.parse('2013-10-20') # Date | Filters results to any meter readings whose entry date is less than or equal to the specified value. The value must be formatted as YYYY-MM-DD. The maximum date range is 365 days.
opts = {
  metertypes: ['Electric'], # Array<String> | Filters results to the specified meter types.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all meter readings
  result = api_instance.get_meter_readings_for_association(association_id, readingdatefrom, readingdateto, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationMeterReadingsApi->get_meter_readings_for_association: #{e}"
end
```

#### Using the get_meter_readings_for_association_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<MeterReadingMessage>>, Integer, Hash)> get_meter_readings_for_association_with_http_info(association_id, readingdatefrom, readingdateto, opts)

```ruby
begin
  # Retrieve all meter readings
  data, status_code, headers = api_instance.get_meter_readings_for_association_with_http_info(association_id, readingdatefrom, readingdateto, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<MeterReadingMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationMeterReadingsApi->get_meter_readings_for_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **readingdatefrom** | **Date** | Filters results to any meter readings whose entry date that is greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD. The maximum date range is 365 days. |  |
| **readingdateto** | **Date** | Filters results to any meter readings whose entry date is less than or equal to the specified value. The value must be formatted as YYYY-MM-DD. The maximum date range is 365 days. |  |
| **metertypes** | [**Array&lt;String&gt;**](String.md) | Filters results to the specified meter types. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;MeterReadingMessage&gt;**](MeterReadingMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## upsert_association_meter_reading_details_async

> <MeterReadingDetailsMessage> upsert_association_meter_reading_details_async(association_id, meter_reading_details_put_message, opts)

Create/Update meter reading details

This endpoint can be used to both create and update a meter reading detail for an association.              <ul><li>There can only be one meter reading detail for a given combination of MeterType and ReadingDate for an association</li><li>If you are updating an existing meter reading detail, use the query parameters to specify the existing meter reading detail to update.</li><li>If you are creating a new meter reading detail, do not pass any query parameters.</li><li>When adding a new item to the Details array, leave out the `Id` field.</li><li>When updating an existing item in the Details array, the `Id` field of the existing item must be included.</li></ul><br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`

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

api_instance = Buildium::AssociationMeterReadingsApi.new
association_id = 56 # Integer | 
meter_reading_details_put_message = Buildium::MeterReadingDetailsPutMessage.new({reading_date: Date.today, meter_type: 'Electric', details: [Buildium::MeterReadingDetailPutMessage.new({unit_id: 37, prior_value: 37, value: 37})]}) # MeterReadingDetailsPutMessage | 
opts = {
  readingdate: Date.parse('2013-10-20'), # Date | Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD.
  metertype: 'Electric' # String | Filters results to the specified meter type.
}

begin
  # Create/Update meter reading details
  result = api_instance.upsert_association_meter_reading_details_async(association_id, meter_reading_details_put_message, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationMeterReadingsApi->upsert_association_meter_reading_details_async: #{e}"
end
```

#### Using the upsert_association_meter_reading_details_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MeterReadingDetailsMessage>, Integer, Hash)> upsert_association_meter_reading_details_async_with_http_info(association_id, meter_reading_details_put_message, opts)

```ruby
begin
  # Create/Update meter reading details
  data, status_code, headers = api_instance.upsert_association_meter_reading_details_async_with_http_info(association_id, meter_reading_details_put_message, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MeterReadingDetailsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationMeterReadingsApi->upsert_association_meter_reading_details_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_id** | **Integer** |  |  |
| **meter_reading_details_put_message** | [**MeterReadingDetailsPutMessage**](MeterReadingDetailsPutMessage.md) |  |  |
| **readingdate** | **Date** | Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD. | [optional] |
| **metertype** | **String** | Filters results to the specified meter type. | [optional] |

### Return type

[**MeterReadingDetailsMessage**](MeterReadingDetailsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

