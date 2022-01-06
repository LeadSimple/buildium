# Buildium::LeasesApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_lease**](LeasesApi.md#create_lease) | **POST** /v1/leases | Create a lease |
| [**create_lease_credit**](LeasesApi.md#create_lease_credit) | **POST** /v1/leases/{leaseId}/credits | Create a ledger credit |
| [**create_lease_ledger_charge**](LeasesApi.md#create_lease_ledger_charge) | **POST** /v1/leases/{leaseId}/charges | Create a ledger charge |
| [**create_lease_note**](LeasesApi.md#create_lease_note) | **POST** /v1/leases/{leaseId}/notes | Create a lease note |
| [**create_payment**](LeasesApi.md#create_payment) | **POST** /v1/leases/{leaseId}/payments | Create a ledger payment |
| [**get_lease_by_id**](LeasesApi.md#get_lease_by_id) | **GET** /v1/leases/{leaseId} | Retrieve a lease |
| [**get_lease_ledger_transaction_by_id**](LeasesApi.md#get_lease_ledger_transaction_by_id) | **GET** /v1/leases/{leaseId}/transactions/{transactionId} | Retrieve a lease transaction |
| [**get_lease_ledgers**](LeasesApi.md#get_lease_ledgers) | **GET** /v1/leases/{leaseId}/transactions | Retrieve all lease transactions |
| [**get_lease_note_by_note_id**](LeasesApi.md#get_lease_note_by_note_id) | **GET** /v1/leases/{leaseId}/notes/{noteId} | Retrieve a lease note |
| [**get_lease_notes**](LeasesApi.md#get_lease_notes) | **GET** /v1/leases/{leaseId}/notes | Retrieve all lease notes |
| [**get_lease_outstanding_balances**](LeasesApi.md#get_lease_outstanding_balances) | **GET** /v1/leases/outstandingbalances | Retrieve all lease outstanding balances |
| [**get_leases**](LeasesApi.md#get_leases) | **GET** /v1/leases | Retrieve all leases |
| [**update_lease**](LeasesApi.md#update_lease) | **PUT** /v1/leases/{leaseId} | Update a lease |
| [**update_lease_note**](LeasesApi.md#update_lease_note) | **PUT** /v1/leases/{leaseId}/notes/{noteId} | Update a lease note |


## create_lease

> <LeaseMessage> create_lease(lease_post_message)

Create a lease

Creates a signed lease.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `Edit`  <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `Edit`  <br /><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_post_message = Buildium::LeasePostMessage.new({lease_type: 'Fixed', unit_id: 37, lease_from_date: Date.today, send_welcome_email: false, tenants: [Buildium::RentalTenantPutMessage.new({first_name: 'first_name_example', last_name: 'last_name_example', address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'})})]}) # LeasePostMessage | 

begin
  # Create a lease
  result = api_instance.create_lease(lease_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease: #{e}"
end
```

#### Using the create_lease_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseMessage>, Integer, Hash)> create_lease_with_http_info(lease_post_message)

```ruby
begin
  # Create a lease
  data, status_code, headers = api_instance.create_lease_with_http_info(lease_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_post_message** | [**LeasePostMessage**](LeasePostMessage.md) |  |  |

### Return type

[**LeaseMessage**](LeaseMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_credit

> <LeaseTransactionMessage> create_lease_credit(lease_id, lease_ledger_credit_post_message)

Create a ledger credit

Creates a lease ledger credit.

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
lease_ledger_credit_post_message = Buildium::LeaseLedgerCreditPostMessage.new({date: Date.today, credit_type: 'WaiveUnpaid', lines: [Buildium::LeaseLedgerCreditLinePostMessage.new({amount: 3.56, gl_account_id: 37})]}) # LeaseLedgerCreditPostMessage | 

begin
  # Create a ledger credit
  result = api_instance.create_lease_credit(lease_id, lease_ledger_credit_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_credit: #{e}"
end
```

#### Using the create_lease_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> create_lease_credit_with_http_info(lease_id, lease_ledger_credit_post_message)

```ruby
begin
  # Create a ledger credit
  data, status_code, headers = api_instance.create_lease_credit_with_http_info(lease_id, lease_ledger_credit_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **lease_ledger_credit_post_message** | [**LeaseLedgerCreditPostMessage**](LeaseLedgerCreditPostMessage.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_ledger_charge

> <Array<LeaseTransactionMessage>> create_lease_ledger_charge(lease_id, lease_charge_message)

Create a ledger charge

Creates a charge transaction on a specific lease ledger.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
lease_charge_message = Buildium::LeaseChargeMessage.new # LeaseChargeMessage | 

begin
  # Create a ledger charge
  result = api_instance.create_lease_ledger_charge(lease_id, lease_charge_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_ledger_charge: #{e}"
end
```

#### Using the create_lease_ledger_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseTransactionMessage>>, Integer, Hash)> create_lease_ledger_charge_with_http_info(lease_id, lease_charge_message)

```ruby
begin
  # Create a ledger charge
  data, status_code, headers = api_instance.create_lease_ledger_charge_with_http_info(lease_id, lease_charge_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseTransactionMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_ledger_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **lease_charge_message** | [**LeaseChargeMessage**](LeaseChargeMessage.md) |  |  |

### Return type

[**Array&lt;LeaseTransactionMessage&gt;**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_note

> <NoteMessage> create_lease_note(lease_id, note_post_message)

Create a lease note

Creates a lease note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create a lease note
  result = api_instance.create_lease_note(lease_id, note_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_note: #{e}"
end
```

#### Using the create_lease_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_lease_note_with_http_info(lease_id, note_post_message)

```ruby
begin
  # Create a lease note
  data, status_code, headers = api_instance.create_lease_note_with_http_info(lease_id, note_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **note_post_message** | [**NotePostMessage**](NotePostMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_payment

> <LeaseTransactionMessage> create_payment(lease_id, lease_ledger_payment_post_message)

Create a ledger payment

Creates a lease ledger payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | The lease unique identifier.
lease_ledger_payment_post_message = Buildium::LeaseLedgerPaymentPostMessage.new({date: Date.today, payment_method: 'Check', send_email_receipt: false, lines: [Buildium::LeaseLedgerPaymentLineSaveMessage.new({amount: 3.56, gl_account_id: 37})]}) # LeaseLedgerPaymentPostMessage | 

begin
  # Create a ledger payment
  result = api_instance.create_payment(lease_id, lease_ledger_payment_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_payment: #{e}"
end
```

#### Using the create_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> create_payment_with_http_info(lease_id, lease_ledger_payment_post_message)

```ruby
begin
  # Create a ledger payment
  data, status_code, headers = api_instance.create_payment_with_http_info(lease_id, lease_ledger_payment_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | The lease unique identifier. |  |
| **lease_ledger_payment_post_message** | [**LeaseLedgerPaymentPostMessage**](LeaseLedgerPaymentPostMessage.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_lease_by_id

> <LeaseMessage> get_lease_by_id(lease_id)

Retrieve a lease

Retrieves a specific lease.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | The lease identifier.

begin
  # Retrieve a lease
  result = api_instance.get_lease_by_id(lease_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_by_id: #{e}"
end
```

#### Using the get_lease_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseMessage>, Integer, Hash)> get_lease_by_id_with_http_info(lease_id)

```ruby
begin
  # Retrieve a lease
  data, status_code, headers = api_instance.get_lease_by_id_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | The lease identifier. |  |

### Return type

[**LeaseMessage**](LeaseMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_ledger_transaction_by_id

> <LeaseTransactionMessage> get_lease_ledger_transaction_by_id(lease_id, transaction_id)

Retrieve a lease transaction

Retrieves a specific lease transaction.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease Transactions</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
transaction_id = 56 # Integer | 

begin
  # Retrieve a lease transaction
  result = api_instance.get_lease_ledger_transaction_by_id(lease_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_ledger_transaction_by_id: #{e}"
end
```

#### Using the get_lease_ledger_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> get_lease_ledger_transaction_by_id_with_http_info(lease_id, transaction_id)

```ruby
begin
  # Retrieve a lease transaction
  data, status_code, headers = api_instance.get_lease_ledger_transaction_by_id_with_http_info(lease_id, transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_ledger_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **transaction_id** | **Integer** |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_ledgers

> <Array<LeaseTransactionMessage>> get_lease_ledgers(lease_id, opts)

Retrieve all lease transactions

Retrieves all the transactions for a specific lease.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
opts = {
  transactiondatefrom: Date.parse('2013-10-20'), # Date | Filters results to any lease transaction whose start date is greater than or equal to the specified value.
  transactiondateto: Date.parse('2013-10-20'), # Date | Filters results to any lease transaction whose end date is less than or equal to the specified value.
  transactiontypes: ['Bill'], # Array<String> | Filters results to any lease transaction whose lease transaction type matches the specified status. If no type is specified, lease transactions with any type will be returned.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all lease transactions
  result = api_instance.get_lease_ledgers(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_ledgers: #{e}"
end
```

#### Using the get_lease_ledgers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseTransactionMessage>>, Integer, Hash)> get_lease_ledgers_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all lease transactions
  data, status_code, headers = api_instance.get_lease_ledgers_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseTransactionMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_ledgers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **transactiondatefrom** | **Date** | Filters results to any lease transaction whose start date is greater than or equal to the specified value. | [optional] |
| **transactiondateto** | **Date** | Filters results to any lease transaction whose end date is less than or equal to the specified value. | [optional] |
| **transactiontypes** | [**Array&lt;String&gt;**](String.md) | Filters results to any lease transaction whose lease transaction type matches the specified status. If no type is specified, lease transactions with any type will be returned. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;LeaseTransactionMessage&gt;**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_note_by_note_id

> <NoteMessage> get_lease_note_by_note_id(lease_id, note_id)

Retrieve a lease note

Retrieves a lease note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a lease note
  result = api_instance.get_lease_note_by_note_id(lease_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_note_by_note_id: #{e}"
end
```

#### Using the get_lease_note_by_note_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_lease_note_by_note_id_with_http_info(lease_id, note_id)

```ruby
begin
  # Retrieve a lease note
  data, status_code, headers = api_instance.get_lease_note_by_note_id_with_http_info(lease_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_note_by_note_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_notes

> <Array<NoteMessage>> get_lease_notes(lease_id, opts)

Retrieve all lease notes

Retrieves all lease notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
opts = {
  updateddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  updateddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  lastupdatedbyuserid: 56, # Integer | Filters results to only notes that were last updated by the specified user identifier.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all lease notes
  result = api_instance.get_lease_notes(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_notes: #{e}"
end
```

#### Using the get_lease_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_lease_notes_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all lease notes
  data, status_code, headers = api_instance.get_lease_notes_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
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


## get_lease_outstanding_balances

> <Array<LeaseOutstandingBalanceMessage>> get_lease_outstanding_balances(opts)

Retrieve all lease outstanding balances

Retrieves a list of lease outstanding balances.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Outstanding Balances</span> - `View`

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

api_instance = Buildium::LeasesApi.new
opts = {
  entitytype: 'Rental', # String | 
  entityid: 56, # Integer | 
  leasestatuses: ['Active'], # Array<String> | 
  leaseids: [37], # Array<Integer> | 
  pastdueemail: 'NoEmailAddress', # String | 
  balanceduration: 'TotalBalance', # String | 
  evictionstatus: 'NotEvictionPending', # String | 
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all lease outstanding balances
  result = api_instance.get_lease_outstanding_balances(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_outstanding_balances: #{e}"
end
```

#### Using the get_lease_outstanding_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseOutstandingBalanceMessage>>, Integer, Hash)> get_lease_outstanding_balances_with_http_info(opts)

```ruby
begin
  # Retrieve all lease outstanding balances
  data, status_code, headers = api_instance.get_lease_outstanding_balances_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseOutstandingBalanceMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_outstanding_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entitytype** | **String** |  | [optional] |
| **entityid** | **Integer** |  | [optional] |
| **leasestatuses** | [**Array&lt;String&gt;**](String.md) |  | [optional] |
| **leaseids** | [**Array&lt;Integer&gt;**](Integer.md) |  | [optional] |
| **pastdueemail** | **String** |  | [optional] |
| **balanceduration** | **String** |  | [optional] |
| **evictionstatus** | **String** |  | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;LeaseOutstandingBalanceMessage&gt;**](LeaseOutstandingBalanceMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_leases

> <Array<LeaseMessage>> get_leases(opts)

Retrieve all leases

Retrieves a list of leases.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
opts = {
  propertyids: [37], # Array<Integer> | Filters results to any lease whose unit belongs to the specified set of property ids.
  rentalownerids: [37], # Array<Integer> | Filters results to any lease whose unit belongs to a property with a rental owner in the specified set of rental owner ids.
  unitnumber: 'unitnumber_example', # String | Filters results to any lease whose unit number *contains* the specified value.
  tenantname: 'tenantname_example', # String | Filters results to any lease whose current tenants' names *contain* the specified value.
  leasedatefrom: Date.parse('2013-10-20'), # Date | Filters results to any lease whose start date is greater than or equal to the specified value.
  leasedateto: Date.parse('2013-10-20'), # Date | Filters results to any lease whose end date is less than or equal to the specified value.
  leasetypes: ['None'], # Array<String> | Filters results to any lease whose lease type matches the specified status. If no type is specified, leases with any type will be returned.
  leasestatuses: ['Active'], # Array<String> | Filters results to any lease whose lease term matches the specified status. If no status is specified, leases with any lease term status will be returned.
  createddatetimefrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any lease whose created date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  createddatetimeto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any lease whose created date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all leases
  result = api_instance.get_leases(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_leases: #{e}"
end
```

#### Using the get_leases_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseMessage>>, Integer, Hash)> get_leases_with_http_info(opts)

```ruby
begin
  # Retrieve all leases
  data, status_code, headers = api_instance.get_leases_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_leases_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **propertyids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any lease whose unit belongs to the specified set of property ids. | [optional] |
| **rentalownerids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any lease whose unit belongs to a property with a rental owner in the specified set of rental owner ids. | [optional] |
| **unitnumber** | **String** | Filters results to any lease whose unit number *contains* the specified value. | [optional] |
| **tenantname** | **String** | Filters results to any lease whose current tenants&#39; names *contain* the specified value. | [optional] |
| **leasedatefrom** | **Date** | Filters results to any lease whose start date is greater than or equal to the specified value. | [optional] |
| **leasedateto** | **Date** | Filters results to any lease whose end date is less than or equal to the specified value. | [optional] |
| **leasetypes** | [**Array&lt;String&gt;**](String.md) | Filters results to any lease whose lease type matches the specified status. If no type is specified, leases with any type will be returned. | [optional] |
| **leasestatuses** | [**Array&lt;String&gt;**](String.md) | Filters results to any lease whose lease term matches the specified status. If no status is specified, leases with any lease term status will be returned. | [optional] |
| **createddatetimefrom** | **Time** | Filters results to any lease whose created date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS. | [optional] |
| **createddatetimeto** | **Time** | Filters results to any lease whose created date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;LeaseMessage&gt;**](LeaseMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_lease

> <LeaseMessage> update_lease(lease_id, lease_put_message)

Update a lease

Update a signed lease.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
lease_put_message = Buildium::LeasePutMessage.new({lease_type: 'Fixed', unit_id: 37, lease_from_date: Date.today, is_eviction_pending: false}) # LeasePutMessage | 

begin
  # Update a lease
  result = api_instance.update_lease(lease_id, lease_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease: #{e}"
end
```

#### Using the update_lease_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseMessage>, Integer, Hash)> update_lease_with_http_info(lease_id, lease_put_message)

```ruby
begin
  # Update a lease
  data, status_code, headers = api_instance.update_lease_with_http_info(lease_id, lease_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **lease_put_message** | [**LeasePutMessage**](LeasePutMessage.md) |  |  |

### Return type

[**LeaseMessage**](LeaseMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_note

> <NoteMessage> update_lease_note(lease_id, note_id, note_put_message)

Update a lease note

Updates a lease note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
note_id = 56 # Integer | 
note_put_message = Buildium::NotePutMessage.new({note: 'note_example'}) # NotePutMessage | 

begin
  # Update a lease note
  result = api_instance.update_lease_note(lease_id, note_id, note_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_note: #{e}"
end
```

#### Using the update_lease_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_lease_note_with_http_info(lease_id, note_id, note_put_message)

```ruby
begin
  # Update a lease note
  data, status_code, headers = api_instance.update_lease_note_with_http_info(lease_id, note_id, note_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **note_put_message** | [**NotePutMessage**](NotePutMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

