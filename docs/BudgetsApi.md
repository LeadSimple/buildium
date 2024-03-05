# Buildium::BudgetsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_budget**](BudgetsApi.md#create_budget) | **POST** /v1/budgets | Create a budget |
| [**get_budget_by_id**](BudgetsApi.md#get_budget_by_id) | **GET** /v1/budgets/{budgetId} | Retrieve a budget |
| [**get_budgets**](BudgetsApi.md#get_budgets) | **GET** /v1/budgets | Retrieve all budgets |
| [**update_budget**](BudgetsApi.md#update_budget) | **PUT** /v1/budgets/{budgetId} | Update a budget |


## create_budget

> <BudgetMessage> create_budget(budget_post_message)

Create a budget

Creates a budget.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Budgets</span> - `View` `Edit`

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

api_instance = Buildium::BudgetsApi.new
budget_post_message = Buildium::BudgetPostMessage.new({name: 'name_example', property_id: 37, start_month: 'January', fiscal_year: 37, details: [Buildium::BudgetDetailsSaveMessage.new({gl_account_id: 37, monthly_amounts: Buildium::BudgetMonthlyAmountsSaveMessage.new({january: 3.56, february: 3.56, march: 3.56, april: 3.56, may: 3.56, june: 3.56, july: 3.56, august: 3.56, september: 3.56, october: 3.56, november: 3.56, december: 3.56})})]}) # BudgetPostMessage | 

begin
  # Create a budget
  result = api_instance.create_budget(budget_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BudgetsApi->create_budget: #{e}"
end
```

#### Using the create_budget_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetMessage>, Integer, Hash)> create_budget_with_http_info(budget_post_message)

```ruby
begin
  # Create a budget
  data, status_code, headers = api_instance.create_budget_with_http_info(budget_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BudgetsApi->create_budget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_post_message** | [**BudgetPostMessage**](BudgetPostMessage.md) |  |  |

### Return type

[**BudgetMessage**](BudgetMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_budget_by_id

> <BudgetMessage> get_budget_by_id(budget_id)

Retrieve a budget

Retrieves a budget.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Budgets</span> - `View`

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

api_instance = Buildium::BudgetsApi.new
budget_id = 56 # Integer | 

begin
  # Retrieve a budget
  result = api_instance.get_budget_by_id(budget_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BudgetsApi->get_budget_by_id: #{e}"
end
```

#### Using the get_budget_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetMessage>, Integer, Hash)> get_budget_by_id_with_http_info(budget_id)

```ruby
begin
  # Retrieve a budget
  data, status_code, headers = api_instance.get_budget_by_id_with_http_info(budget_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BudgetsApi->get_budget_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **Integer** |  |  |

### Return type

[**BudgetMessage**](BudgetMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_budgets

> <Array<BudgetMessage>> get_budgets(opts)

Retrieve all budgets

Retrieves all budgets.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Budgets</span> - `View`

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

api_instance = Buildium::BudgetsApi.new
opts = {
  propertyids: [37], # Array<Integer> | Filters results to any budget associated to any of the specified set of property ids.
  fiscalyear: 56, # Integer | Filters results to any budgets that end in the given fiscal year. FiscalYear must be a positive number.
  name: 'name_example', # String | Filters results to any budgets whose name *contains* the specified value.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all budgets
  result = api_instance.get_budgets(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BudgetsApi->get_budgets: #{e}"
end
```

#### Using the get_budgets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BudgetMessage>>, Integer, Hash)> get_budgets_with_http_info(opts)

```ruby
begin
  # Retrieve all budgets
  data, status_code, headers = api_instance.get_budgets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BudgetMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BudgetsApi->get_budgets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **propertyids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any budget associated to any of the specified set of property ids. | [optional] |
| **fiscalyear** | **Integer** | Filters results to any budgets that end in the given fiscal year. FiscalYear must be a positive number. | [optional] |
| **name** | **String** | Filters results to any budgets whose name *contains* the specified value. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BudgetMessage&gt;**](BudgetMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_budget

> <BudgetMessage> update_budget(budget_id, budget_put_message)

Update a budget

Updates a budget.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Budgets</span> - `View` `Edit`

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

api_instance = Buildium::BudgetsApi.new
budget_id = 56 # Integer | 
budget_put_message = Buildium::BudgetPutMessage.new({name: 'name_example', details: [Buildium::BudgetDetailsSaveMessage.new({gl_account_id: 37, monthly_amounts: Buildium::BudgetMonthlyAmountsSaveMessage.new({january: 3.56, february: 3.56, march: 3.56, april: 3.56, may: 3.56, june: 3.56, july: 3.56, august: 3.56, september: 3.56, october: 3.56, november: 3.56, december: 3.56})})]}) # BudgetPutMessage | 

begin
  # Update a budget
  result = api_instance.update_budget(budget_id, budget_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BudgetsApi->update_budget: #{e}"
end
```

#### Using the update_budget_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BudgetMessage>, Integer, Hash)> update_budget_with_http_info(budget_id, budget_put_message)

```ruby
begin
  # Update a budget
  data, status_code, headers = api_instance.update_budget_with_http_info(budget_id, budget_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BudgetMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BudgetsApi->update_budget_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **Integer** |  |  |
| **budget_put_message** | [**BudgetPutMessage**](BudgetPutMessage.md) |  |  |

### Return type

[**BudgetMessage**](BudgetMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

