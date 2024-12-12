# Buildium::OwnershipAccountTransactionsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_ownership_account_auto_allocated_payment**](OwnershipAccountTransactionsApi.md#create_ownership_account_auto_allocated_payment) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/autoallocatedpayments | Create a payment (auto allocated) |
| [**create_ownership_account_credit**](OwnershipAccountTransactionsApi.md#create_ownership_account_credit) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/credits | Create a credit |
| [**create_ownership_account_credit_recurring_transaction**](OwnershipAccountTransactionsApi.md#create_ownership_account_credit_recurring_transaction) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcredits | Create a recurring credit |
| [**create_ownership_account_deposit_withholding**](OwnershipAccountTransactionsApi.md#create_ownership_account_deposit_withholding) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/applieddeposits | Create a deposit withholding |
| [**create_ownership_account_ledger_charge**](OwnershipAccountTransactionsApi.md#create_ownership_account_ledger_charge) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/charges | Create a charge |
| [**create_ownership_account_ledger_payment**](OwnershipAccountTransactionsApi.md#create_ownership_account_ledger_payment) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/payments | Create a payment |
| [**create_ownership_account_recurring_payment**](OwnershipAccountTransactionsApi.md#create_ownership_account_recurring_payment) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringpayments | Create a recurring payment |
| [**create_ownership_account_refund**](OwnershipAccountTransactionsApi.md#create_ownership_account_refund) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/refunds | Create a refund |
| [**create_ownership_accounts_charge_recurring_transaction**](OwnershipAccountTransactionsApi.md#create_ownership_accounts_charge_recurring_transaction) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcharges | Create a recurring charge |
| [**get_all_ownership_account_charges**](OwnershipAccountTransactionsApi.md#get_all_ownership_account_charges) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/charges | Retrieve all charges |
| [**get_association_recurring_transaction**](OwnershipAccountTransactionsApi.md#get_association_recurring_transaction) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringtransactions | Retrieve all recurring transactions |
| [**get_ownership_account_charge_by_id**](OwnershipAccountTransactionsApi.md#get_ownership_account_charge_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/charges/{chargeId} | Retrieve a charge |
| [**get_ownership_account_ledger**](OwnershipAccountTransactionsApi.md#get_ownership_account_ledger) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/transactions | Retrieve all transactions |
| [**get_ownership_account_outstanding_balances**](OwnershipAccountTransactionsApi.md#get_ownership_account_outstanding_balances) | **GET** /v1/associations/ownershipaccounts/outstandingbalances | Retrieve all outstanding balances |
| [**get_ownership_account_recurring_credit_by_id**](OwnershipAccountTransactionsApi.md#get_ownership_account_recurring_credit_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcredits/{transactionId} | Retrieve a recurring credit |
| [**get_ownership_account_refund_by_id**](OwnershipAccountTransactionsApi.md#get_ownership_account_refund_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/refunds/{refundId} | Retrieve a refund |
| [**get_ownership_account_transaction_by_id**](OwnershipAccountTransactionsApi.md#get_ownership_account_transaction_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/transactions/{transactionId} | Retrieve a transaction |
| [**get_ownership_accounts_charge_recurring_transaction_by_id**](OwnershipAccountTransactionsApi.md#get_ownership_accounts_charge_recurring_transaction_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcharges/{transactionId} | Retrieve a recurring charge |
| [**get_recurring_ownership_account_payments_by_id**](OwnershipAccountTransactionsApi.md#get_recurring_ownership_account_payments_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringpayments/{paymentId} | Retrieve a recurring payment |
| [**update_ownership_account_charge**](OwnershipAccountTransactionsApi.md#update_ownership_account_charge) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId}/charges/{chargeId} | Update a charge |
| [**update_ownership_account_deposit_withholding**](OwnershipAccountTransactionsApi.md#update_ownership_account_deposit_withholding) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId}/applieddeposits/{depositId} | Update a deposit withholding |
| [**update_ownership_account_ledger_payment**](OwnershipAccountTransactionsApi.md#update_ownership_account_ledger_payment) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId}/payments/{paymentId} | Update a payment |


## create_ownership_account_auto_allocated_payment

> <OwnershipAccountTransactionMessage> create_ownership_account_auto_allocated_payment(ownership_account_id, create_ownership_account_auto_allocated_payment_request)

Create a payment (auto allocated)

Creates a payment on the ownership account ledger. Note that the recorded payment will be automatically allocated to the general ledger accounts based on the payment allocation settings. These settings can be found under the Settings > Application Settings > Residents page in your account. If you'd like to specify the general ledger accounts the payment should apply to, please use the <a href=\"#operation/CreateOwnershipAccountLedgerPayment\">Create a payment</a> endpoint.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
create_ownership_account_auto_allocated_payment_request = Buildium::CreateOwnershipAccountAutoAllocatedPaymentRequest.new({date: Date.today, payment_method: 'Check', send_email_receipt: false, total_amount: 3.56}) # CreateOwnershipAccountAutoAllocatedPaymentRequest | 

begin
  # Create a payment (auto allocated)
  result = api_instance.create_ownership_account_auto_allocated_payment(ownership_account_id, create_ownership_account_auto_allocated_payment_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_auto_allocated_payment: #{e}"
end
```

#### Using the create_ownership_account_auto_allocated_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> create_ownership_account_auto_allocated_payment_with_http_info(ownership_account_id, create_ownership_account_auto_allocated_payment_request)

```ruby
begin
  # Create a payment (auto allocated)
  data, status_code, headers = api_instance.create_ownership_account_auto_allocated_payment_with_http_info(ownership_account_id, create_ownership_account_auto_allocated_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_auto_allocated_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **create_ownership_account_auto_allocated_payment_request** | [**CreateOwnershipAccountAutoAllocatedPaymentRequest**](CreateOwnershipAccountAutoAllocatedPaymentRequest.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_credit

> <OwnershipAccountTransactionMessage> create_ownership_account_credit(ownership_account_id, create_ownership_account_credit_request)

Create a credit

Creates a ledger credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
create_ownership_account_credit_request = Buildium::CreateOwnershipAccountCreditRequest.new({date: Date.today, credit_type: 'WaiveUnpaid', lines: [Buildium::OwnershipAccountCreditLinePostMessage.new({amount: 3.56, gl_account_id: 37})]}) # CreateOwnershipAccountCreditRequest | 

begin
  # Create a credit
  result = api_instance.create_ownership_account_credit(ownership_account_id, create_ownership_account_credit_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_credit: #{e}"
end
```

#### Using the create_ownership_account_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> create_ownership_account_credit_with_http_info(ownership_account_id, create_ownership_account_credit_request)

```ruby
begin
  # Create a credit
  data, status_code, headers = api_instance.create_ownership_account_credit_with_http_info(ownership_account_id, create_ownership_account_credit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **create_ownership_account_credit_request** | [**CreateOwnershipAccountCreditRequest**](CreateOwnershipAccountCreditRequest.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_credit_recurring_transaction

> <OwnershipAccountRecurringCreditMessage> create_ownership_account_credit_recurring_transaction(ownership_account_id, create_ownership_account_credit_recurring_transaction_request)

Create a recurring credit

Creates a recurring credit transaction that will post automatically on the specified ownership account ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
create_ownership_account_credit_recurring_transaction_request = Buildium::CreateOwnershipAccountCreditRecurringTransactionRequest.new({credit_type: 'WaiveUnpaid', post_days_in_advance: 37, frequency: 'Monthly', first_occurrence_date: Date.today}) # CreateOwnershipAccountCreditRecurringTransactionRequest | 

begin
  # Create a recurring credit
  result = api_instance.create_ownership_account_credit_recurring_transaction(ownership_account_id, create_ownership_account_credit_recurring_transaction_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_credit_recurring_transaction: #{e}"
end
```

#### Using the create_ownership_account_credit_recurring_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountRecurringCreditMessage>, Integer, Hash)> create_ownership_account_credit_recurring_transaction_with_http_info(ownership_account_id, create_ownership_account_credit_recurring_transaction_request)

```ruby
begin
  # Create a recurring credit
  data, status_code, headers = api_instance.create_ownership_account_credit_recurring_transaction_with_http_info(ownership_account_id, create_ownership_account_credit_recurring_transaction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountRecurringCreditMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_credit_recurring_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **create_ownership_account_credit_recurring_transaction_request** | [**CreateOwnershipAccountCreditRecurringTransactionRequest**](CreateOwnershipAccountCreditRecurringTransactionRequest.md) |  |  |

### Return type

[**OwnershipAccountRecurringCreditMessage**](OwnershipAccountRecurringCreditMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_deposit_withholding

> <OwnershipAccountTransactionMessage> create_ownership_account_deposit_withholding(ownership_account_id, create_ownership_account_deposit_withholding_request)

Create a deposit withholding

Withholds an association owner deposit by reallocating the funds from a liability account to an income account to cover an expense(s).              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View` `Edit`              <span class=\"permissionBlock\">Accounting > General Ledger Accounts</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
create_ownership_account_deposit_withholding_request = Buildium::CreateOwnershipAccountDepositWithholdingRequest.new({entry_date: Date.today, deposit_liability_gl_account_id: 37}) # CreateOwnershipAccountDepositWithholdingRequest | 

begin
  # Create a deposit withholding
  result = api_instance.create_ownership_account_deposit_withholding(ownership_account_id, create_ownership_account_deposit_withholding_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_deposit_withholding: #{e}"
end
```

#### Using the create_ownership_account_deposit_withholding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> create_ownership_account_deposit_withholding_with_http_info(ownership_account_id, create_ownership_account_deposit_withholding_request)

```ruby
begin
  # Create a deposit withholding
  data, status_code, headers = api_instance.create_ownership_account_deposit_withholding_with_http_info(ownership_account_id, create_ownership_account_deposit_withholding_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_deposit_withholding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **create_ownership_account_deposit_withholding_request** | [**CreateOwnershipAccountDepositWithholdingRequest**](CreateOwnershipAccountDepositWithholdingRequest.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_ledger_charge

> <OwnershipAccountTransactionMessage> create_ownership_account_ledger_charge(ownership_account_id, create_ownership_account_ledger_charge_request)

Create a charge

Creates a ledger charge.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Accounting > Bills</span> - `View` `Edit` In order to associate the charge to a bill using the BillId property, you must have this permission.

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | The ownership account identifier.
create_ownership_account_ledger_charge_request = Buildium::CreateOwnershipAccountLedgerChargeRequest.new({date: Date.today, lines: [Buildium::OwnershipAccountLedgerChargeLinesSaveMessage.new({amount: 3.56, gl_account_id: 37})]}) # CreateOwnershipAccountLedgerChargeRequest | 

begin
  # Create a charge
  result = api_instance.create_ownership_account_ledger_charge(ownership_account_id, create_ownership_account_ledger_charge_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_ledger_charge: #{e}"
end
```

#### Using the create_ownership_account_ledger_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> create_ownership_account_ledger_charge_with_http_info(ownership_account_id, create_ownership_account_ledger_charge_request)

```ruby
begin
  # Create a charge
  data, status_code, headers = api_instance.create_ownership_account_ledger_charge_with_http_info(ownership_account_id, create_ownership_account_ledger_charge_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_ledger_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** | The ownership account identifier. |  |
| **create_ownership_account_ledger_charge_request** | [**CreateOwnershipAccountLedgerChargeRequest**](CreateOwnershipAccountLedgerChargeRequest.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_ledger_payment

> <OwnershipAccountTransactionMessage> create_ownership_account_ledger_payment(ownership_account_id, create_ownership_account_ledger_payment_request)

Create a payment

Creates a ledger payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
create_ownership_account_ledger_payment_request = Buildium::CreateOwnershipAccountLedgerPaymentRequest.new({date: Date.today, payment_method: 'Check', send_email_receipt: false, lines: [Buildium::OwnershipAccountLedgerPaymentLineSaveMessage.new({amount: 3.56, gl_account_id: 37})]}) # CreateOwnershipAccountLedgerPaymentRequest | 

begin
  # Create a payment
  result = api_instance.create_ownership_account_ledger_payment(ownership_account_id, create_ownership_account_ledger_payment_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_ledger_payment: #{e}"
end
```

#### Using the create_ownership_account_ledger_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> create_ownership_account_ledger_payment_with_http_info(ownership_account_id, create_ownership_account_ledger_payment_request)

```ruby
begin
  # Create a payment
  data, status_code, headers = api_instance.create_ownership_account_ledger_payment_with_http_info(ownership_account_id, create_ownership_account_ledger_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_ledger_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **create_ownership_account_ledger_payment_request** | [**CreateOwnershipAccountLedgerPaymentRequest**](CreateOwnershipAccountLedgerPaymentRequest.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_recurring_payment

> <OwnershipAccountRecurringPaymentMessage> create_ownership_account_recurring_payment(ownership_account_id, create_ownership_account_recurring_payment_request)

Create a recurring payment

Creates a recurring payment that will post automatically on the specified ownership account ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
create_ownership_account_recurring_payment_request = Buildium::CreateOwnershipAccountRecurringPaymentRequest.new({payment_method: 'Check', first_occurrence_date: Date.today, post_days_in_advance: 37, frequency: 'Monthly'}) # CreateOwnershipAccountRecurringPaymentRequest | 

begin
  # Create a recurring payment
  result = api_instance.create_ownership_account_recurring_payment(ownership_account_id, create_ownership_account_recurring_payment_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_recurring_payment: #{e}"
end
```

#### Using the create_ownership_account_recurring_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountRecurringPaymentMessage>, Integer, Hash)> create_ownership_account_recurring_payment_with_http_info(ownership_account_id, create_ownership_account_recurring_payment_request)

```ruby
begin
  # Create a recurring payment
  data, status_code, headers = api_instance.create_ownership_account_recurring_payment_with_http_info(ownership_account_id, create_ownership_account_recurring_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountRecurringPaymentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_recurring_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **create_ownership_account_recurring_payment_request** | [**CreateOwnershipAccountRecurringPaymentRequest**](CreateOwnershipAccountRecurringPaymentRequest.md) |  |  |

### Return type

[**OwnershipAccountRecurringPaymentMessage**](OwnershipAccountRecurringPaymentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_refund

> <OwnershipAccountRefundMessage> create_ownership_account_refund(ownership_account_id, create_ownership_account_refund_request)

Create a refund

Creates a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
create_ownership_account_refund_request = Buildium::CreateOwnershipAccountRefundRequest.new({date: Date.today, payee_user_ids: [37], bank_account_id: 37, address: Buildium::LeaseLedgerRefundPostMessageAddress.new({address_line1: 'address_line1_example', country: 'Afghanistan'}), lines: [Buildium::OwnershipAccountRefundLinesPostMessage.new({amount: 3.56, gl_account_id: 37})]}) # CreateOwnershipAccountRefundRequest | 

begin
  # Create a refund
  result = api_instance.create_ownership_account_refund(ownership_account_id, create_ownership_account_refund_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_refund: #{e}"
end
```

#### Using the create_ownership_account_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountRefundMessage>, Integer, Hash)> create_ownership_account_refund_with_http_info(ownership_account_id, create_ownership_account_refund_request)

```ruby
begin
  # Create a refund
  data, status_code, headers = api_instance.create_ownership_account_refund_with_http_info(ownership_account_id, create_ownership_account_refund_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountRefundMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_account_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **create_ownership_account_refund_request** | [**CreateOwnershipAccountRefundRequest**](CreateOwnershipAccountRefundRequest.md) |  |  |

### Return type

[**OwnershipAccountRefundMessage**](OwnershipAccountRefundMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_accounts_charge_recurring_transaction

> <OwnershipAccountChargeRecurringTransactionMessage> create_ownership_accounts_charge_recurring_transaction(ownership_account_id, create_ownership_accounts_charge_recurring_transaction_request)

Create a recurring charge

Creates a recurring charge transaction that will post automatically on the specified ownership account ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
create_ownership_accounts_charge_recurring_transaction_request = Buildium::CreateOwnershipAccountsChargeRecurringTransactionRequest.new({gl_account_id: 37, amount: 3.56, first_occurrence_date: Date.today, post_days_in_advance: 37, frequency: 'Monthly'}) # CreateOwnershipAccountsChargeRecurringTransactionRequest | 

begin
  # Create a recurring charge
  result = api_instance.create_ownership_accounts_charge_recurring_transaction(ownership_account_id, create_ownership_accounts_charge_recurring_transaction_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_accounts_charge_recurring_transaction: #{e}"
end
```

#### Using the create_ownership_accounts_charge_recurring_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountChargeRecurringTransactionMessage>, Integer, Hash)> create_ownership_accounts_charge_recurring_transaction_with_http_info(ownership_account_id, create_ownership_accounts_charge_recurring_transaction_request)

```ruby
begin
  # Create a recurring charge
  data, status_code, headers = api_instance.create_ownership_accounts_charge_recurring_transaction_with_http_info(ownership_account_id, create_ownership_accounts_charge_recurring_transaction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountChargeRecurringTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->create_ownership_accounts_charge_recurring_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **create_ownership_accounts_charge_recurring_transaction_request** | [**CreateOwnershipAccountsChargeRecurringTransactionRequest**](CreateOwnershipAccountsChargeRecurringTransactionRequest.md) |  |  |

### Return type

[**OwnershipAccountChargeRecurringTransactionMessage**](OwnershipAccountChargeRecurringTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_ownership_account_charges

> <Array<OwnershipAccountLedgerChargeMessage>> get_all_ownership_account_charges(ownership_account_id, opts)

Retrieve all charges

Retrieves all ledger charges for a specific ownership account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
opts = {
  transactiondatefrom: Date.parse('2013-10-20'), # Date | Filters results to any lease transaction whose start date is greater than or equal to the specified value.
  transactiondateto: Date.parse('2013-10-20'), # Date | Filters results to any lease transaction whose end date is less than or equal to the specified value.
  billids: [37], # Array<Integer> | Filters results to any charge that has been associated to the indicated bill ids.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all charges
  result = api_instance.get_all_ownership_account_charges(ownership_account_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_all_ownership_account_charges: #{e}"
end
```

#### Using the get_all_ownership_account_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OwnershipAccountLedgerChargeMessage>>, Integer, Hash)> get_all_ownership_account_charges_with_http_info(ownership_account_id, opts)

```ruby
begin
  # Retrieve all charges
  data, status_code, headers = api_instance.get_all_ownership_account_charges_with_http_info(ownership_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OwnershipAccountLedgerChargeMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_all_ownership_account_charges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **transactiondatefrom** | **Date** | Filters results to any lease transaction whose start date is greater than or equal to the specified value. | [optional] |
| **transactiondateto** | **Date** | Filters results to any lease transaction whose end date is less than or equal to the specified value. | [optional] |
| **billids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any charge that has been associated to the indicated bill ids. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;OwnershipAccountLedgerChargeMessage&gt;**](OwnershipAccountLedgerChargeMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_recurring_transaction

> <Array<RecurringTransactionMessage>> get_association_recurring_transaction(ownership_account_id, opts)

Retrieve all recurring transactions

Retrieves all recurring transactions for an ownership account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all recurring transactions
  result = api_instance.get_association_recurring_transaction(ownership_account_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_association_recurring_transaction: #{e}"
end
```

#### Using the get_association_recurring_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RecurringTransactionMessage>>, Integer, Hash)> get_association_recurring_transaction_with_http_info(ownership_account_id, opts)

```ruby
begin
  # Retrieve all recurring transactions
  data, status_code, headers = api_instance.get_association_recurring_transaction_with_http_info(ownership_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RecurringTransactionMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_association_recurring_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;RecurringTransactionMessage&gt;**](RecurringTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ownership_account_charge_by_id

> <OwnershipAccountLedgerChargeMessage> get_ownership_account_charge_by_id(ownership_account_id, charge_id)

Retrieve a charge

Retrieves a specific ownership account ledger charge.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | The ownership account identifier.
charge_id = 56 # Integer | 

begin
  # Retrieve a charge
  result = api_instance.get_ownership_account_charge_by_id(ownership_account_id, charge_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_charge_by_id: #{e}"
end
```

#### Using the get_ownership_account_charge_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountLedgerChargeMessage>, Integer, Hash)> get_ownership_account_charge_by_id_with_http_info(ownership_account_id, charge_id)

```ruby
begin
  # Retrieve a charge
  data, status_code, headers = api_instance.get_ownership_account_charge_by_id_with_http_info(ownership_account_id, charge_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountLedgerChargeMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_charge_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** | The ownership account identifier. |  |
| **charge_id** | **Integer** |  |  |

### Return type

[**OwnershipAccountLedgerChargeMessage**](OwnershipAccountLedgerChargeMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ownership_account_ledger

> <Array<OwnershipAccountTransactionMessage>> get_ownership_account_ledger(ownership_account_id, opts)

Retrieve all transactions

Retrieves all ledger transactions for a specific ownership account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | The ownership account identifier.
opts = {
  transactiondatefrom: Date.parse('2013-10-20'), # Date | Filters results to any lease transaction whose start date is greater than or equal to the specified value.
  transactiondateto: Date.parse('2013-10-20'), # Date | Filters results to any lease transaction whose end date is less than or equal to the specified value.
  transactiontypes: ['Bill'], # Array<String> | Filters results to any lease transaction whose lease transaction type matches the specified status. If no type is specified, lease transactions with any type will be returned.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all transactions
  result = api_instance.get_ownership_account_ledger(ownership_account_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_ledger: #{e}"
end
```

#### Using the get_ownership_account_ledger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OwnershipAccountTransactionMessage>>, Integer, Hash)> get_ownership_account_ledger_with_http_info(ownership_account_id, opts)

```ruby
begin
  # Retrieve all transactions
  data, status_code, headers = api_instance.get_ownership_account_ledger_with_http_info(ownership_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OwnershipAccountTransactionMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_ledger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** | The ownership account identifier. |  |
| **transactiondatefrom** | **Date** | Filters results to any lease transaction whose start date is greater than or equal to the specified value. | [optional] |
| **transactiondateto** | **Date** | Filters results to any lease transaction whose end date is less than or equal to the specified value. | [optional] |
| **transactiontypes** | [**Array&lt;String&gt;**](String.md) | Filters results to any lease transaction whose lease transaction type matches the specified status. If no type is specified, lease transactions with any type will be returned. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;OwnershipAccountTransactionMessage&gt;**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ownership_account_outstanding_balances

> <Array<OwnershipAccountOutstandingBalanceMessage>> get_ownership_account_outstanding_balances(opts)

Retrieve all outstanding balances

Retrieves a list of ownership account outstanding balances.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Outstanding Balances</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
opts = {
  associationid: 56, # Integer | Association unique identifier
  ownershipaccountstatuses: ['Active'], # Array<String> | List of ownership account statuses
  ownershipaccountids: [37], # Array<Integer> | List of ownership account ids
  pastdueemail: 'NoEmailAddress', # String | Status of notification of outstanding balances
  balanceduration: 'TotalBalance', # String | Duration of outstanding balances
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all outstanding balances
  result = api_instance.get_ownership_account_outstanding_balances(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_outstanding_balances: #{e}"
end
```

#### Using the get_ownership_account_outstanding_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OwnershipAccountOutstandingBalanceMessage>>, Integer, Hash)> get_ownership_account_outstanding_balances_with_http_info(opts)

```ruby
begin
  # Retrieve all outstanding balances
  data, status_code, headers = api_instance.get_ownership_account_outstanding_balances_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OwnershipAccountOutstandingBalanceMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_outstanding_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **associationid** | **Integer** | Association unique identifier | [optional] |
| **ownershipaccountstatuses** | [**Array&lt;String&gt;**](String.md) | List of ownership account statuses | [optional] |
| **ownershipaccountids** | [**Array&lt;Integer&gt;**](Integer.md) | List of ownership account ids | [optional] |
| **pastdueemail** | **String** | Status of notification of outstanding balances | [optional] |
| **balanceduration** | **String** | Duration of outstanding balances | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;OwnershipAccountOutstandingBalanceMessage&gt;**](OwnershipAccountOutstandingBalanceMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ownership_account_recurring_credit_by_id

> <OwnershipAccountRecurringCreditMessage> get_ownership_account_recurring_credit_by_id(ownership_account_id, transaction_id)

Retrieve a recurring credit

Retrieves a recurring credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
transaction_id = 56 # Integer | 

begin
  # Retrieve a recurring credit
  result = api_instance.get_ownership_account_recurring_credit_by_id(ownership_account_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_recurring_credit_by_id: #{e}"
end
```

#### Using the get_ownership_account_recurring_credit_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountRecurringCreditMessage>, Integer, Hash)> get_ownership_account_recurring_credit_by_id_with_http_info(ownership_account_id, transaction_id)

```ruby
begin
  # Retrieve a recurring credit
  data, status_code, headers = api_instance.get_ownership_account_recurring_credit_by_id_with_http_info(ownership_account_id, transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountRecurringCreditMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_recurring_credit_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **transaction_id** | **Integer** |  |  |

### Return type

[**OwnershipAccountRecurringCreditMessage**](OwnershipAccountRecurringCreditMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ownership_account_refund_by_id

> <OwnershipAccountRefundMessage> get_ownership_account_refund_by_id(ownership_account_id, refund_id)

Retrieve a refund

Retrieves a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
refund_id = 56 # Integer | 

begin
  # Retrieve a refund
  result = api_instance.get_ownership_account_refund_by_id(ownership_account_id, refund_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_refund_by_id: #{e}"
end
```

#### Using the get_ownership_account_refund_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountRefundMessage>, Integer, Hash)> get_ownership_account_refund_by_id_with_http_info(ownership_account_id, refund_id)

```ruby
begin
  # Retrieve a refund
  data, status_code, headers = api_instance.get_ownership_account_refund_by_id_with_http_info(ownership_account_id, refund_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountRefundMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_refund_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **refund_id** | **Integer** |  |  |

### Return type

[**OwnershipAccountRefundMessage**](OwnershipAccountRefundMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ownership_account_transaction_by_id

> <OwnershipAccountTransactionMessage> get_ownership_account_transaction_by_id(ownership_account_id, transaction_id)

Retrieve a transaction

Retrieves a specific ownership account ledger transaction.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | The ownership account identifier.
transaction_id = 56 # Integer | The transaction identifier.

begin
  # Retrieve a transaction
  result = api_instance.get_ownership_account_transaction_by_id(ownership_account_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_transaction_by_id: #{e}"
end
```

#### Using the get_ownership_account_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> get_ownership_account_transaction_by_id_with_http_info(ownership_account_id, transaction_id)

```ruby
begin
  # Retrieve a transaction
  data, status_code, headers = api_instance.get_ownership_account_transaction_by_id_with_http_info(ownership_account_id, transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_account_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** | The ownership account identifier. |  |
| **transaction_id** | **Integer** | The transaction identifier. |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ownership_accounts_charge_recurring_transaction_by_id

> <OwnershipAccountChargeRecurringTransactionMessage> get_ownership_accounts_charge_recurring_transaction_by_id(ownership_account_id, transaction_id)

Retrieve a recurring charge

Retrieves a recurring charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
transaction_id = 56 # Integer | 

begin
  # Retrieve a recurring charge
  result = api_instance.get_ownership_accounts_charge_recurring_transaction_by_id(ownership_account_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_accounts_charge_recurring_transaction_by_id: #{e}"
end
```

#### Using the get_ownership_accounts_charge_recurring_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountChargeRecurringTransactionMessage>, Integer, Hash)> get_ownership_accounts_charge_recurring_transaction_by_id_with_http_info(ownership_account_id, transaction_id)

```ruby
begin
  # Retrieve a recurring charge
  data, status_code, headers = api_instance.get_ownership_accounts_charge_recurring_transaction_by_id_with_http_info(ownership_account_id, transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountChargeRecurringTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_ownership_accounts_charge_recurring_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **transaction_id** | **Integer** |  |  |

### Return type

[**OwnershipAccountChargeRecurringTransactionMessage**](OwnershipAccountChargeRecurringTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_recurring_ownership_account_payments_by_id

> <OwnershipAccountRecurringPaymentMessage> get_recurring_ownership_account_payments_by_id(ownership_account_id, payment_id)

Retrieve a recurring payment

Retrieves a recurring payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
payment_id = 56 # Integer | 

begin
  # Retrieve a recurring payment
  result = api_instance.get_recurring_ownership_account_payments_by_id(ownership_account_id, payment_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_recurring_ownership_account_payments_by_id: #{e}"
end
```

#### Using the get_recurring_ownership_account_payments_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountRecurringPaymentMessage>, Integer, Hash)> get_recurring_ownership_account_payments_by_id_with_http_info(ownership_account_id, payment_id)

```ruby
begin
  # Retrieve a recurring payment
  data, status_code, headers = api_instance.get_recurring_ownership_account_payments_by_id_with_http_info(ownership_account_id, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountRecurringPaymentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->get_recurring_ownership_account_payments_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **payment_id** | **Integer** |  |  |

### Return type

[**OwnershipAccountRecurringPaymentMessage**](OwnershipAccountRecurringPaymentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_ownership_account_charge

> <OwnershipAccountTransactionMessage> update_ownership_account_charge(ownership_account_id, charge_id, update_ownership_account_charge_request)

Update a charge

Updates a charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View` `Edit`              <br />

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | The ownership account identifier.
charge_id = 56 # Integer | The charge identifier.
update_ownership_account_charge_request = Buildium::UpdateOwnershipAccountChargeRequest.new({date: Date.today, lines: [Buildium::OwnershipAccountLedgerChargeLinesPutMessage.new({amount: 3.56, gl_account_id: 37})]}) # UpdateOwnershipAccountChargeRequest | 

begin
  # Update a charge
  result = api_instance.update_ownership_account_charge(ownership_account_id, charge_id, update_ownership_account_charge_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->update_ownership_account_charge: #{e}"
end
```

#### Using the update_ownership_account_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> update_ownership_account_charge_with_http_info(ownership_account_id, charge_id, update_ownership_account_charge_request)

```ruby
begin
  # Update a charge
  data, status_code, headers = api_instance.update_ownership_account_charge_with_http_info(ownership_account_id, charge_id, update_ownership_account_charge_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->update_ownership_account_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** | The ownership account identifier. |  |
| **charge_id** | **Integer** | The charge identifier. |  |
| **update_ownership_account_charge_request** | [**UpdateOwnershipAccountChargeRequest**](UpdateOwnershipAccountChargeRequest.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ownership_account_deposit_withholding

> <OwnershipAccountTransactionMessage> update_ownership_account_deposit_withholding(ownership_account_id, deposit_id, update_ownership_account_deposit_withholding_request)

Update a deposit withholding

Updates an ownership account deposit withholding.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View` `Edit`              <span class=\"permissionBlock\">Accounting > General Ledger Accounts</span> - `View`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
deposit_id = 56 # Integer | 
update_ownership_account_deposit_withholding_request = Buildium::UpdateOwnershipAccountDepositWithholdingRequest.new({entry_date: Date.today, deposit_liability_gl_account_id: 37}) # UpdateOwnershipAccountDepositWithholdingRequest | 

begin
  # Update a deposit withholding
  result = api_instance.update_ownership_account_deposit_withholding(ownership_account_id, deposit_id, update_ownership_account_deposit_withholding_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->update_ownership_account_deposit_withholding: #{e}"
end
```

#### Using the update_ownership_account_deposit_withholding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> update_ownership_account_deposit_withholding_with_http_info(ownership_account_id, deposit_id, update_ownership_account_deposit_withholding_request)

```ruby
begin
  # Update a deposit withholding
  data, status_code, headers = api_instance.update_ownership_account_deposit_withholding_with_http_info(ownership_account_id, deposit_id, update_ownership_account_deposit_withholding_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->update_ownership_account_deposit_withholding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **deposit_id** | **Integer** |  |  |
| **update_ownership_account_deposit_withholding_request** | [**UpdateOwnershipAccountDepositWithholdingRequest**](UpdateOwnershipAccountDepositWithholdingRequest.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ownership_account_ledger_payment

> <OwnershipAccountTransactionMessage> update_ownership_account_ledger_payment(ownership_account_id, payment_id, update_ownership_account_ledger_payment_request)

Update a payment

Updates a ledger payment. Each line item must have a unique general ledger account identifier. PaymentMethod, Date, Memo, and the total Amount cannot be changed for payments with a PaymentMethod of `BuildiumEFT`, `BuildiumCC` or `RetailCash`.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::OwnershipAccountTransactionsApi.new
ownership_account_id = 56 # Integer | 
payment_id = 56 # Integer | 
update_ownership_account_ledger_payment_request = Buildium::UpdateOwnershipAccountLedgerPaymentRequest.new({date: Date.today, payment_method: 'Check', lines: [Buildium::OwnershipAccountLedgerPaymentLineSaveMessage.new({amount: 3.56, gl_account_id: 37})]}) # UpdateOwnershipAccountLedgerPaymentRequest | 

begin
  # Update a payment
  result = api_instance.update_ownership_account_ledger_payment(ownership_account_id, payment_id, update_ownership_account_ledger_payment_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->update_ownership_account_ledger_payment: #{e}"
end
```

#### Using the update_ownership_account_ledger_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> update_ownership_account_ledger_payment_with_http_info(ownership_account_id, payment_id, update_ownership_account_ledger_payment_request)

```ruby
begin
  # Update a payment
  data, status_code, headers = api_instance.update_ownership_account_ledger_payment_with_http_info(ownership_account_id, payment_id, update_ownership_account_ledger_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling OwnershipAccountTransactionsApi->update_ownership_account_ledger_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **payment_id** | **Integer** |  |  |
| **update_ownership_account_ledger_payment_request** | [**UpdateOwnershipAccountLedgerPaymentRequest**](UpdateOwnershipAccountLedgerPaymentRequest.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

