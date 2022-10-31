# Buildium::WorkOrdersApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_work_order**](WorkOrdersApi.md#create_work_order) | **POST** /v1/workorders | Create a work order |
| [**get_all_work_orders**](WorkOrdersApi.md#get_all_work_orders) | **GET** /v1/workorders | Retrieve all work orders |
| [**get_work_order_by_id**](WorkOrdersApi.md#get_work_order_by_id) | **GET** /v1/workorders/{workOrderId} | Retrieve a work order |
| [**update_work_order**](WorkOrdersApi.md#update_work_order) | **PUT** /v1/workorders/{workOrderId} | Update a work order |


## create_work_order

> <WorkOrderMessage> create_work_order(work_order_post_message)

Create a work order

Creates a work order.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Work Orders</span> - `View` `Edit`

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

api_instance = Buildium::WorkOrdersApi.new
work_order_post_message = Buildium::WorkOrderPostMessage.new({entry_allowed: 'Unknown', vendor_id: 37}) # WorkOrderPostMessage | 

begin
  # Create a work order
  result = api_instance.create_work_order(work_order_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling WorkOrdersApi->create_work_order: #{e}"
end
```

#### Using the create_work_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkOrderMessage>, Integer, Hash)> create_work_order_with_http_info(work_order_post_message)

```ruby
begin
  # Create a work order
  data, status_code, headers = api_instance.create_work_order_with_http_info(work_order_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkOrderMessage>
rescue Buildium::ApiError => e
  puts "Error when calling WorkOrdersApi->create_work_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_post_message** | [**WorkOrderPostMessage**](WorkOrderPostMessage.md) |  |  |

### Return type

[**WorkOrderMessage**](WorkOrderMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_work_orders

> <Array<WorkOrderMessage>> get_all_work_orders(opts)

Retrieve all work orders

Retrieves a list of work orders.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Work Orders</span> - `View`

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

api_instance = Buildium::WorkOrdersApi.new
opts = {
  entitytype: 'Rental', # String | Specifies the type of entity that the `EntityId` field refers to. This field is required if the `EntityId` field is populated.
  entityid: 56, # Integer | Filters results to any work order associated with the specified entity id value. The value must be of the type specified in the `EntityType` field.
  statuses: ['New'], # Array<String> | Filters results by the status of the task associated with the work order. If no status is specified, work orders with any status will be returned.
  type: 'ContactRequest', # String | Filters results to any work order with an associated task with the task type specified.
  unitid: 56, # Integer | Filters results to any work order associated with the unit identifier.
  unitagreementid: 56, # Integer | Filters results to any work order associated with the unit agreement identifier specified.
  lastupdatedfrom: Date.parse('2013-10-20'), # Date | Filters results to any work orders were updated on or after the specified date. The value must be formatted as YYYY-MM-DD.
  lastupdatedto: Date.parse('2013-10-20'), # Date | Filters results to any work orders were updated on or before the specified date. The value must be formatted as YYYY-MM-DD.
  duedatefrom: Date.parse('2013-10-20'), # Date | Filters results to any work orders with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD.
  duedateto: Date.parse('2013-10-20'), # Date | Filters results to any work orders with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD.
  taskcategoryid: 56, # Integer | Filters results to any work orders whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned.
  priorities: ['Low'], # Array<String> | Filters results to any work orders that have been assigned to the specified staff user identifier.
  assignedtoid: 56, # Integer | Filters results to any work orders that have been assigned to the specified staff user identifier.
  vendorids: [37], # Array<Integer> | Filters results to any work orders that have been assigned to the specified vendor identifier.
  amountfrom: 1.2, # Float | Filters results to any work orders whose total amounts are equal or greater than the specified amount.
  amountto: 1.2, # Float | Filters results to any work orders whose total amounts are equal or less than the specified amount.
  isbilled: true, # Boolean | Filters results to work orders that have an associated bill.
  title: 'title_example', # String | Filters results to any work orders whose title *contains* the specified value.
  taskids: [37], # Array<Integer> | Filters results to work orders that have an associated to a task in the specified list.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all work orders
  result = api_instance.get_all_work_orders(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling WorkOrdersApi->get_all_work_orders: #{e}"
end
```

#### Using the get_all_work_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<WorkOrderMessage>>, Integer, Hash)> get_all_work_orders_with_http_info(opts)

```ruby
begin
  # Retrieve all work orders
  data, status_code, headers = api_instance.get_all_work_orders_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<WorkOrderMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling WorkOrdersApi->get_all_work_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entitytype** | **String** | Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is populated. | [optional] |
| **entityid** | **Integer** | Filters results to any work order associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field. | [optional] |
| **statuses** | [**Array&lt;String&gt;**](String.md) | Filters results by the status of the task associated with the work order. If no status is specified, work orders with any status will be returned. | [optional] |
| **type** | **String** | Filters results to any work order with an associated task with the task type specified. | [optional] |
| **unitid** | **Integer** | Filters results to any work order associated with the unit identifier. | [optional] |
| **unitagreementid** | **Integer** | Filters results to any work order associated with the unit agreement identifier specified. | [optional] |
| **lastupdatedfrom** | **Date** | Filters results to any work orders were updated on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **lastupdatedto** | **Date** | Filters results to any work orders were updated on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **duedatefrom** | **Date** | Filters results to any work orders with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **duedateto** | **Date** | Filters results to any work orders with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD. | [optional] |
| **taskcategoryid** | **Integer** | Filters results to any work orders whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned. | [optional] |
| **priorities** | [**Array&lt;String&gt;**](String.md) | Filters results to any work orders that have been assigned to the specified staff user identifier. | [optional] |
| **assignedtoid** | **Integer** | Filters results to any work orders that have been assigned to the specified staff user identifier. | [optional] |
| **vendorids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any work orders that have been assigned to the specified vendor identifier. | [optional] |
| **amountfrom** | **Float** | Filters results to any work orders whose total amounts are equal or greater than the specified amount. | [optional] |
| **amountto** | **Float** | Filters results to any work orders whose total amounts are equal or less than the specified amount. | [optional] |
| **isbilled** | **Boolean** | Filters results to work orders that have an associated bill. | [optional] |
| **title** | **String** | Filters results to any work orders whose title *contains* the specified value. | [optional] |
| **taskids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to work orders that have an associated to a task in the specified list. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;WorkOrderMessage&gt;**](WorkOrderMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_work_order_by_id

> <WorkOrderMessage> get_work_order_by_id(work_order_id)

Retrieve a work order

Retrieves a specific work order.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Work Orders</span> - `View`

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

api_instance = Buildium::WorkOrdersApi.new
work_order_id = 56 # Integer | 

begin
  # Retrieve a work order
  result = api_instance.get_work_order_by_id(work_order_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_order_by_id: #{e}"
end
```

#### Using the get_work_order_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkOrderMessage>, Integer, Hash)> get_work_order_by_id_with_http_info(work_order_id)

```ruby
begin
  # Retrieve a work order
  data, status_code, headers = api_instance.get_work_order_by_id_with_http_info(work_order_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkOrderMessage>
rescue Buildium::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_order_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_id** | **Integer** |  |  |

### Return type

[**WorkOrderMessage**](WorkOrderMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_work_order

> <WorkOrderMessage> update_work_order(work_order_id, work_order_put_message)

Update a work order

Updates a work order.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Work Orders</span> - `View` `Edit`

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

api_instance = Buildium::WorkOrdersApi.new
work_order_id = 56 # Integer | 
work_order_put_message = Buildium::WorkOrderPutMessage.new({entry_allowed: 'Unknown', vendor_id: 37}) # WorkOrderPutMessage | 

begin
  # Update a work order
  result = api_instance.update_work_order(work_order_id, work_order_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling WorkOrdersApi->update_work_order: #{e}"
end
```

#### Using the update_work_order_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkOrderMessage>, Integer, Hash)> update_work_order_with_http_info(work_order_id, work_order_put_message)

```ruby
begin
  # Update a work order
  data, status_code, headers = api_instance.update_work_order_with_http_info(work_order_id, work_order_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkOrderMessage>
rescue Buildium::ApiError => e
  puts "Error when calling WorkOrdersApi->update_work_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **work_order_id** | **Integer** |  |  |
| **work_order_put_message** | [**WorkOrderPutMessage**](WorkOrderPutMessage.md) |  |  |

### Return type

[**WorkOrderMessage**](WorkOrderMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

