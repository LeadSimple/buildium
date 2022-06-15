# Buildium::AccountingApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bill**](AccountingApi.md#create_bill) | **POST** /v1/bills | Create a bill |
| [**create_budget**](AccountingApi.md#create_budget) | **POST** /v1/budgets | Create a budget |
| [**get_all_gl_accounts**](AccountingApi.md#get_all_gl_accounts) | **GET** /v1/glaccounts | Retrieve all general ledger accounts |
| [**get_all_transactions**](AccountingApi.md#get_all_transactions) | **GET** /v1/generalledger/transactions | Retrieve all general ledger transactions |
| [**get_bill_by_id**](AccountingApi.md#get_bill_by_id) | **GET** /v1/bills/{billId} | Retrieve a bill |
| [**get_bill_payment_by_id**](AccountingApi.md#get_bill_payment_by_id) | **GET** /v1/bills/{billId}/payments/{paymentId} | Retrieve a bill payment |
| [**get_bill_payments**](AccountingApi.md#get_bill_payments) | **GET** /v1/bills/{billId}/payments | Retrieve all bill payments |
| [**get_bills_async**](AccountingApi.md#get_bills_async) | **GET** /v1/bills | Retrieve all bills |
| [**get_budget_by_id**](AccountingApi.md#get_budget_by_id) | **GET** /v1/budgets/{budgetId} | Retrieve a budget |
| [**get_budgets**](AccountingApi.md#get_budgets) | **GET** /v1/budgets | Retrieve all budgets |
| [**get_gl_account_balances**](AccountingApi.md#get_gl_account_balances) | **GET** /v1/glaccounts/balances | Retrieve all general ledger account balances |
| [**get_gl_account_by_id**](AccountingApi.md#get_gl_account_by_id) | **GET** /v1/glaccounts/{glAccountId} | Retrieve a general ledger account |
| [**get_transaction_by_id**](AccountingApi.md#get_transaction_by_id) | **GET** /v1/generalledger/transactions/{transactionId} | Retrieve a general ledger transaction |
| [**update_bill**](AccountingApi.md#update_bill) | **PUT** /v1/bills/{billId} | Update a bill |
| [**update_budget**](AccountingApi.md#update_budget) | **PUT** /v1/budgets/{budgetId} | Update a budget |


## create_bill

> <BillMessage> create_bill(bill_post_message)

Create a bill

Creates a bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit`

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

api_instance = Buildium::AccountingApi.new
bill_post_message = Buildium::BillPostMessage.new({date: Date.today, due_date: Date.today, vendor_id: 37, lines: [Buildium::BillLinePostMessage.new({accounting_entity: Buildium::AccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'}), gl_account_id: 37, amount: 3.56})]}) # BillPostMessage | 

begin
  # Create a bill
  result = api_instance.create_bill(bill_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->create_bill: #{e}"
end
```

#### Using the create_bill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillMessage>, Integer, Hash)> create_bill_with_http_info(bill_post_message)

```ruby
begin
  # Create a bill
  data, status_code, headers = api_instance.create_bill_with_http_info(bill_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->create_bill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_post_message** | [**BillPostMessage**](BillPostMessage.md) |  |  |

### Return type

[**BillMessage**](BillMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_budget

> <BudgetMessage> create_budget(budget_post_message)

Create a budget

Creates a budget.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Budgets</span> - `View` `Edit`

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

api_instance = Buildium::AccountingApi.new
budget_post_message = Buildium::BudgetPostMessage.new({name: 'name_example', property_id: 37, start_month: 'January', fiscal_year: 37, details: [Buildium::BudgetDetailsSaveMessage.new({gl_account_id: 37, monthly_amounts: Buildium::BudgetMonthlyAmountsSaveMessage.new({january: 3.56, february: 3.56, march: 3.56, april: 3.56, may: 3.56, june: 3.56, july: 3.56, august: 3.56, september: 3.56, october: 3.56, november: 3.56, december: 3.56})})]}) # BudgetPostMessage | 

begin
  # Create a budget
  result = api_instance.create_budget(budget_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->create_budget: #{e}"
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
  puts "Error when calling AccountingApi->create_budget_with_http_info: #{e}"
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


## get_all_gl_accounts

> <Array<GLAccountMessage>> get_all_gl_accounts(opts)

Retrieve all general ledger accounts

Retrieves a list of general ledger accounts.<br /><br />General ledger accounts are used to categorize transactions for accounting purposes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; General Ledger Accounts</span> - `View`

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

api_instance = Buildium::AccountingApi.new
opts = {
  accounttypes: ['Asset'], # Array<String> | Filters results by the specified general ledger account types.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all general ledger accounts
  result = api_instance.get_all_gl_accounts(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_all_gl_accounts: #{e}"
end
```

#### Using the get_all_gl_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GLAccountMessage>>, Integer, Hash)> get_all_gl_accounts_with_http_info(opts)

```ruby
begin
  # Retrieve all general ledger accounts
  data, status_code, headers = api_instance.get_all_gl_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GLAccountMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_all_gl_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounttypes** | [**Array&lt;String&gt;**](String.md) | Filters results by the specified general ledger account types. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;GLAccountMessage&gt;**](GLAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_transactions

> <Array<GeneralLedgerTransactionMessage>> get_all_transactions(startdate, enddate, glaccountids, opts)

Retrieve all general ledger transactions

Retrieves a list of general ledger transactions.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; General Ledger Transactions</span> - `View`

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

api_instance = Buildium::AccountingApi.new
startdate = Date.parse('2013-10-20') # Date | Filters results to any transaction whose date is greater than or equal to the specified value.
enddate = Date.parse('2013-10-20') # Date | Filters results to any transaction whose date is less than or equal to the specified value.
glaccountids = [37] # Array<Integer> | Filters results to transactions whose general ledger account belongs to the specified set of general ledger account ids.
opts = {
  selectionentityid: 56, # Integer | Filters results to any transaction containing journal lines for an entity associated with the specified entity id value. The id must be of the type specified in SelectionEntityType.
  selectionentitytype: 'Rental', # String | Specifies the type of entity that SelectionEntityId refers to.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all general ledger transactions
  result = api_instance.get_all_transactions(startdate, enddate, glaccountids, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_all_transactions: #{e}"
end
```

#### Using the get_all_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GeneralLedgerTransactionMessage>>, Integer, Hash)> get_all_transactions_with_http_info(startdate, enddate, glaccountids, opts)

```ruby
begin
  # Retrieve all general ledger transactions
  data, status_code, headers = api_instance.get_all_transactions_with_http_info(startdate, enddate, glaccountids, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GeneralLedgerTransactionMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_all_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **startdate** | **Date** | Filters results to any transaction whose date is greater than or equal to the specified value. |  |
| **enddate** | **Date** | Filters results to any transaction whose date is less than or equal to the specified value. |  |
| **glaccountids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to transactions whose general ledger account belongs to the specified set of general ledger account ids. |  |
| **selectionentityid** | **Integer** | Filters results to any transaction containing journal lines for an entity associated with the specified entity id value. The id must be of the type specified in SelectionEntityType. | [optional] |
| **selectionentitytype** | **String** | Specifies the type of entity that SelectionEntityId refers to. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;GeneralLedgerTransactionMessage&gt;**](GeneralLedgerTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bill_by_id

> <BillMessage> get_bill_by_id(bill_id)

Retrieve a bill

Retrieves a single bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::AccountingApi.new
bill_id = 56 # Integer | 

begin
  # Retrieve a bill
  result = api_instance.get_bill_by_id(bill_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_bill_by_id: #{e}"
end
```

#### Using the get_bill_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillMessage>, Integer, Hash)> get_bill_by_id_with_http_info(bill_id)

```ruby
begin
  # Retrieve a bill
  data, status_code, headers = api_instance.get_bill_by_id_with_http_info(bill_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_bill_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |

### Return type

[**BillMessage**](BillMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bill_payment_by_id

> <BillPaymentMessage> get_bill_payment_by_id(bill_id, payment_id)

Retrieve a bill payment

Retrieves specific bill payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::AccountingApi.new
bill_id = 56 # Integer | 
payment_id = 56 # Integer | 

begin
  # Retrieve a bill payment
  result = api_instance.get_bill_payment_by_id(bill_id, payment_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_bill_payment_by_id: #{e}"
end
```

#### Using the get_bill_payment_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillPaymentMessage>, Integer, Hash)> get_bill_payment_by_id_with_http_info(bill_id, payment_id)

```ruby
begin
  # Retrieve a bill payment
  data, status_code, headers = api_instance.get_bill_payment_by_id_with_http_info(bill_id, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillPaymentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_bill_payment_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **payment_id** | **Integer** |  |  |

### Return type

[**BillPaymentMessage**](BillPaymentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bill_payments

> <Array<BillPaymentMessage>> get_bill_payments(bill_id, opts)

Retrieve all bill payments

Retrieves a list of bill payments for a specific bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::AccountingApi.new
bill_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all bill payments
  result = api_instance.get_bill_payments(bill_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_bill_payments: #{e}"
end
```

#### Using the get_bill_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BillPaymentMessage>>, Integer, Hash)> get_bill_payments_with_http_info(bill_id, opts)

```ruby
begin
  # Retrieve all bill payments
  data, status_code, headers = api_instance.get_bill_payments_with_http_info(bill_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BillPaymentMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_bill_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BillPaymentMessage&gt;**](BillPaymentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bills_async

> <Array<BillMessage>> get_bills_async(opts)

Retrieve all bills

Retrieves a list of bills.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`

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

api_instance = Buildium::AccountingApi.new
opts = {
  entityid: 56, # Integer | Filters results to any bill containing line items associated with the specified entity identifier. This filter is used in conjunction with the `EntityType` field which must be set to the type of entity this identifier references.
  entitytype: 'Rental', # String | Specifies the type of entity that `EntityId` refers to. This field is required if `EntityId` is specified.
  vendorid: 56, # Integer | Filters results to bills associated with a specific vendor.
  referencenumber: 'referencenumber_example', # String | Filters results to bills whose reference number contains the specified value.
  paidstatus: 'Paid', # String | Filters results by the bill's paid status. If no status is specified, bills with any status will be returned.
  frompaiddate: Date.parse('2013-10-20'), # Date | Filters results to any bill whose paid date is greater than or equal to the specified value.
  topaiddate: Date.parse('2013-10-20'), # Date | Filters results to any bill whose paid date is less than or equal to the specified value.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all bills
  result = api_instance.get_bills_async(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_bills_async: #{e}"
end
```

#### Using the get_bills_async_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BillMessage>>, Integer, Hash)> get_bills_async_with_http_info(opts)

```ruby
begin
  # Retrieve all bills
  data, status_code, headers = api_instance.get_bills_async_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BillMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_bills_async_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entityid** | **Integer** | Filters results to any bill containing line items associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references. | [optional] |
| **entitytype** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified. | [optional] |
| **vendorid** | **Integer** | Filters results to bills associated with a specific vendor. | [optional] |
| **referencenumber** | **String** | Filters results to bills whose reference number contains the specified value. | [optional] |
| **paidstatus** | **String** | Filters results by the bill&#39;s paid status. If no status is specified, bills with any status will be returned. | [optional] |
| **frompaiddate** | **Date** | Filters results to any bill whose paid date is greater than or equal to the specified value. | [optional] |
| **topaiddate** | **Date** | Filters results to any bill whose paid date is less than or equal to the specified value. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BillMessage&gt;**](BillMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_budget_by_id

> <BudgetMessage> get_budget_by_id(budget_id)

Retrieve a budget

Retrieves a budget.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Budgets</span> - `View`

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

api_instance = Buildium::AccountingApi.new
budget_id = 56 # Integer | 

begin
  # Retrieve a budget
  result = api_instance.get_budget_by_id(budget_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_budget_by_id: #{e}"
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
  puts "Error when calling AccountingApi->get_budget_by_id_with_http_info: #{e}"
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

api_instance = Buildium::AccountingApi.new
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
  puts "Error when calling AccountingApi->get_budgets: #{e}"
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
  puts "Error when calling AccountingApi->get_budgets_with_http_info: #{e}"
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


## get_gl_account_balances

> <Array<GLAccountBalanceMessage>> get_gl_account_balances(accountingbasis, asofdate, opts)

Retrieve all general ledger account balances

Retrieves all general ledger account balances as of a given date. The response includes the total balance of each account along with the subtotals for any accounting entities (company, associations or rental properties) that have transactions assigned to the account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; General Ledger Accounts</span> - `View`

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

api_instance = Buildium::AccountingApi.new
accountingbasis = 'Accrual' # String | The methodology in which revenues and expenses are recognized when calculating the balances. Specifying `Cash` calculates balances based on when money changes hands. Specifying `Accrual` calculates balances based on the period in which the transaction originally happened.
asofdate = Date.parse('2013-10-20') # Date | Indicates the end date through which the balances will be calculated. This will include all transactions in your account until this specified date.
opts = {
  entitytype: 'Association', # String | Specifies the type of entity that `EntityId` field refers to.
  entityid: 56, # Integer | Filters transactions used in calculating the general ledger account balances to only those containing journal lines for with the specified entity id value. The entity id specified must be of the type specified in `EntityType`.
  glaccountids: [37], # Array<Integer> | Filters results to the specified set of general ledger account identifiers.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all general ledger account balances
  result = api_instance.get_gl_account_balances(accountingbasis, asofdate, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_gl_account_balances: #{e}"
end
```

#### Using the get_gl_account_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GLAccountBalanceMessage>>, Integer, Hash)> get_gl_account_balances_with_http_info(accountingbasis, asofdate, opts)

```ruby
begin
  # Retrieve all general ledger account balances
  data, status_code, headers = api_instance.get_gl_account_balances_with_http_info(accountingbasis, asofdate, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GLAccountBalanceMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_gl_account_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountingbasis** | **String** | The methodology in which revenues and expenses are recognized when calculating the balances. Specifying &#x60;Cash&#x60; calculates balances based on when money changes hands. Specifying &#x60;Accrual&#x60; calculates balances based on the period in which the transaction originally happened. |  |
| **asofdate** | **Date** | Indicates the end date through which the balances will be calculated. This will include all transactions in your account until this specified date. |  |
| **entitytype** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; field refers to. | [optional] |
| **entityid** | **Integer** | Filters transactions used in calculating the general ledger account balances to only those containing journal lines for with the specified entity id value. The entity id specified must be of the type specified in &#x60;EntityType&#x60;. | [optional] |
| **glaccountids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to the specified set of general ledger account identifiers. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;GLAccountBalanceMessage&gt;**](GLAccountBalanceMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_gl_account_by_id

> <GLAccountMessage> get_gl_account_by_id(gl_account_id)

Retrieve a general ledger account

Retrieves a specific general ledger account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; General Ledger Accounts</span> - `View`

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

api_instance = Buildium::AccountingApi.new
gl_account_id = 56 # Integer | The general ledger account identifier.

begin
  # Retrieve a general ledger account
  result = api_instance.get_gl_account_by_id(gl_account_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_gl_account_by_id: #{e}"
end
```

#### Using the get_gl_account_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GLAccountMessage>, Integer, Hash)> get_gl_account_by_id_with_http_info(gl_account_id)

```ruby
begin
  # Retrieve a general ledger account
  data, status_code, headers = api_instance.get_gl_account_by_id_with_http_info(gl_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GLAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_gl_account_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | The general ledger account identifier. |  |

### Return type

[**GLAccountMessage**](GLAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_transaction_by_id

> <GeneralLedgerTransactionMessage> get_transaction_by_id(transaction_id)

Retrieve a general ledger transaction

Retrieves a specific general ledger transaction.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; General Ledger Transactions</span> - `View`

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

api_instance = Buildium::AccountingApi.new
transaction_id = 56 # Integer | The general ledger transaction identifier.

begin
  # Retrieve a general ledger transaction
  result = api_instance.get_transaction_by_id(transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_transaction_by_id: #{e}"
end
```

#### Using the get_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralLedgerTransactionMessage>, Integer, Hash)> get_transaction_by_id_with_http_info(transaction_id)

```ruby
begin
  # Retrieve a general ledger transaction
  data, status_code, headers = api_instance.get_transaction_by_id_with_http_info(transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralLedgerTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->get_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **transaction_id** | **Integer** | The general ledger transaction identifier. |  |

### Return type

[**GeneralLedgerTransactionMessage**](GeneralLedgerTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_bill

> <BillMessage> update_bill(bill_id, bill_put_message)

Update a bill

Use this operation to update any of the writable fields of an existing bill resource. When updating this resource keep the following in mind: <br /><ul><li>Writable fields omitted from the request or that do not have a value in the request message are set to `NULL`. If you do not want to update the field, submit the original field value.</li><li>When a bill has an existing payment any edits to the line items that change the total bill amount must result in the new total bill amount being equal to or greater than the amount paid.</li><li>When adding a new line item leave the `LineItem.Id` field empty.</li></ul><br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit`

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

api_instance = Buildium::AccountingApi.new
bill_id = 56 # Integer | 
bill_put_message = Buildium::BillPutMessage.new({date: Date.today, due_date: Date.today, vendor_id: 37}) # BillPutMessage | 

begin
  # Update a bill
  result = api_instance.update_bill(bill_id, bill_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->update_bill: #{e}"
end
```

#### Using the update_bill_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillMessage>, Integer, Hash)> update_bill_with_http_info(bill_id, bill_put_message)

```ruby
begin
  # Update a bill
  data, status_code, headers = api_instance.update_bill_with_http_info(bill_id, bill_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->update_bill_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_id** | **Integer** |  |  |
| **bill_put_message** | [**BillPutMessage**](BillPutMessage.md) |  |  |

### Return type

[**BillMessage**](BillMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_budget

> <BudgetMessage> update_budget(budget_id, budget_put_message)

Update a budget

Updates a budget.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Budgets</span> - `View` `Edit`

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

api_instance = Buildium::AccountingApi.new
budget_id = 56 # Integer | 
budget_put_message = Buildium::BudgetPutMessage.new({name: 'name_example', details: [Buildium::BudgetDetailsSaveMessage.new({gl_account_id: 37, monthly_amounts: Buildium::BudgetMonthlyAmountsSaveMessage.new({january: 3.56, february: 3.56, march: 3.56, april: 3.56, may: 3.56, june: 3.56, july: 3.56, august: 3.56, september: 3.56, october: 3.56, november: 3.56, december: 3.56})})]}) # BudgetPutMessage | 

begin
  # Update a budget
  result = api_instance.update_budget(budget_id, budget_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AccountingApi->update_budget: #{e}"
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
  puts "Error when calling AccountingApi->update_budget_with_http_info: #{e}"
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

