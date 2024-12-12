# Buildium::LeaseTransactionsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_lease_auto_allocated_payment**](LeaseTransactionsApi.md#create_lease_auto_allocated_payment) | **POST** /v1/leases/{leaseId}/autoallocatedpayments | Create a payment (auto allocated) |
| [**create_lease_charge_recurring_transaction**](LeaseTransactionsApi.md#create_lease_charge_recurring_transaction) | **POST** /v1/leases/{leaseId}/recurringcharges | Create a recurring charge |
| [**create_lease_credit**](LeaseTransactionsApi.md#create_lease_credit) | **POST** /v1/leases/{leaseId}/credits | Create a credit |
| [**create_lease_credit_recurring_transaction**](LeaseTransactionsApi.md#create_lease_credit_recurring_transaction) | **POST** /v1/leases/{leaseId}/recurringcredits | Create a recurring credit |
| [**create_lease_ledger_charge**](LeaseTransactionsApi.md#create_lease_ledger_charge) | **POST** /v1/leases/{leaseId}/charges | Create a charge |
| [**create_lease_ledger_deposit_withholding**](LeaseTransactionsApi.md#create_lease_ledger_deposit_withholding) | **POST** /v1/leases/{leaseId}/applieddeposits | Create a deposit withholding |
| [**create_lease_ledger_refund**](LeaseTransactionsApi.md#create_lease_ledger_refund) | **POST** /v1/leases/{leaseId}/refunds | Create a refund |
| [**create_lease_recurring_payment**](LeaseTransactionsApi.md#create_lease_recurring_payment) | **POST** /v1/leases/{leaseId}/recurringpayments | Create a recurring payment |
| [**create_lease_reverse_payment**](LeaseTransactionsApi.md#create_lease_reverse_payment) | **POST** /v1/leases/{leaseId}/reversepayments | Create a payment reversal |
| [**create_payment**](LeaseTransactionsApi.md#create_payment) | **POST** /v1/leases/{leaseId}/payments | Create a payment |
| [**get_all_charges**](LeaseTransactionsApi.md#get_all_charges) | **GET** /v1/leases/{leaseId}/charges | Retrieve all charges |
| [**get_charge_by_id**](LeaseTransactionsApi.md#get_charge_by_id) | **GET** /v1/leases/{leaseId}/charges/{chargeId} | Retrieve a charge |
| [**get_lease_charge_recurring_transaction_by_id**](LeaseTransactionsApi.md#get_lease_charge_recurring_transaction_by_id) | **GET** /v1/leases/{leaseId}/recurringcharges/{transactionId} | Retrieve a recurring charge |
| [**get_lease_ledger_refund_by_id**](LeaseTransactionsApi.md#get_lease_ledger_refund_by_id) | **GET** /v1/leases/{leaseId}/refunds/{refundId} | Retrieve a refund |
| [**get_lease_ledger_transaction_by_id**](LeaseTransactionsApi.md#get_lease_ledger_transaction_by_id) | **GET** /v1/leases/{leaseId}/transactions/{transactionId} | Retrieve a lease transaction |
| [**get_lease_ledgers**](LeaseTransactionsApi.md#get_lease_ledgers) | **GET** /v1/leases/{leaseId}/transactions | Retrieve all lease transactions |
| [**get_lease_outstanding_balances**](LeaseTransactionsApi.md#get_lease_outstanding_balances) | **GET** /v1/leases/outstandingbalances | Retrieve all outstanding balances |
| [**get_lease_recurring_credit_by_id**](LeaseTransactionsApi.md#get_lease_recurring_credit_by_id) | **GET** /v1/leases/{leaseId}/recurringcredits/{transactionId} | Retrieve a recurring credit |
| [**get_lease_recurring_transactions**](LeaseTransactionsApi.md#get_lease_recurring_transactions) | **GET** /v1/leases/{leaseId}/recurringtransactions | Retrieve all recurring transactions |
| [**get_recurring_lease_payments_by_id**](LeaseTransactionsApi.md#get_recurring_lease_payments_by_id) | **GET** /v1/leases/{leaseId}/recurringpayments/{paymentId} | Retrieve a recurring payment |
| [**update_deposit_withholding**](LeaseTransactionsApi.md#update_deposit_withholding) | **PUT** /v1/leases/{leaseId}/applieddeposits/{depositId} | Update a deposit withholding |
| [**update_lease_charge**](LeaseTransactionsApi.md#update_lease_charge) | **PUT** /v1/leases/{leaseId}/charges/{chargeId} | Update a charge |
| [**update_lease_ledger_payment**](LeaseTransactionsApi.md#update_lease_ledger_payment) | **PUT** /v1/leases/{leaseId}/payments/{paymentId} | Update a payment |


## create_lease_auto_allocated_payment

> <LeaseTransactionMessage> create_lease_auto_allocated_payment(lease_id, create_lease_auto_allocated_payment_request)

Create a payment (auto allocated)

Creates a payment on the lease ledger. Note that the recorded payment will be automatically allocated to the general ledger accounts based on the payment allocation settings. These settings can be found under the Settings > Application Settings > Residents page in your account. If you'd like to specify the GL accounts the payment should apply to, please use the <a href=\"#operation/CreatePayment\">Create a payment</a> endpoint.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
create_lease_auto_allocated_payment_request = Buildium::CreateLeaseAutoAllocatedPaymentRequest.new({date: Date.today, payment_method: 'Check', send_email_receipt: false, total_amount: 3.56}) # CreateLeaseAutoAllocatedPaymentRequest | 

begin
  # Create a payment (auto allocated)
  result = api_instance.create_lease_auto_allocated_payment(lease_id, create_lease_auto_allocated_payment_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_auto_allocated_payment: #{e}"
end
```

#### Using the create_lease_auto_allocated_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> create_lease_auto_allocated_payment_with_http_info(lease_id, create_lease_auto_allocated_payment_request)

```ruby
begin
  # Create a payment (auto allocated)
  data, status_code, headers = api_instance.create_lease_auto_allocated_payment_with_http_info(lease_id, create_lease_auto_allocated_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_auto_allocated_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **create_lease_auto_allocated_payment_request** | [**CreateLeaseAutoAllocatedPaymentRequest**](CreateLeaseAutoAllocatedPaymentRequest.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_charge_recurring_transaction

> <LeaseChargeRecurringTransactionMessage> create_lease_charge_recurring_transaction(lease_id, create_ownership_accounts_charge_recurring_transaction_request)

Create a recurring charge

Creates a recurring charge transaction that will post automatically on the specified lease ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
create_ownership_accounts_charge_recurring_transaction_request = Buildium::CreateOwnershipAccountsChargeRecurringTransactionRequest.new({gl_account_id: 37, amount: 3.56, first_occurrence_date: Date.today, post_days_in_advance: 37, frequency: 'Monthly'}) # CreateOwnershipAccountsChargeRecurringTransactionRequest | 

begin
  # Create a recurring charge
  result = api_instance.create_lease_charge_recurring_transaction(lease_id, create_ownership_accounts_charge_recurring_transaction_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_charge_recurring_transaction: #{e}"
end
```

#### Using the create_lease_charge_recurring_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseChargeRecurringTransactionMessage>, Integer, Hash)> create_lease_charge_recurring_transaction_with_http_info(lease_id, create_ownership_accounts_charge_recurring_transaction_request)

```ruby
begin
  # Create a recurring charge
  data, status_code, headers = api_instance.create_lease_charge_recurring_transaction_with_http_info(lease_id, create_ownership_accounts_charge_recurring_transaction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseChargeRecurringTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_charge_recurring_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **create_ownership_accounts_charge_recurring_transaction_request** | [**CreateOwnershipAccountsChargeRecurringTransactionRequest**](CreateOwnershipAccountsChargeRecurringTransactionRequest.md) |  |  |

### Return type

[**LeaseChargeRecurringTransactionMessage**](LeaseChargeRecurringTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_credit

> <LeaseTransactionMessage> create_lease_credit(lease_id, create_lease_credit_request)

Create a credit

Creates a lease ledger credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | The lease unique identifier.
create_lease_credit_request = Buildium::CreateLeaseCreditRequest.new({date: Date.today, credit_type: 'WaiveUnpaid', lines: [Buildium::LeaseLedgerCreditLinePostMessage.new({amount: 3.56, gl_account_id: 37})]}) # CreateLeaseCreditRequest | 

begin
  # Create a credit
  result = api_instance.create_lease_credit(lease_id, create_lease_credit_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_credit: #{e}"
end
```

#### Using the create_lease_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> create_lease_credit_with_http_info(lease_id, create_lease_credit_request)

```ruby
begin
  # Create a credit
  data, status_code, headers = api_instance.create_lease_credit_with_http_info(lease_id, create_lease_credit_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | The lease unique identifier. |  |
| **create_lease_credit_request** | [**CreateLeaseCreditRequest**](CreateLeaseCreditRequest.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_credit_recurring_transaction

> <LeaseRecurringCreditMessage> create_lease_credit_recurring_transaction(lease_id, create_ownership_account_credit_recurring_transaction_request)

Create a recurring credit

Creates a recurring credit transaction on the specified lease ledger.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
create_ownership_account_credit_recurring_transaction_request = Buildium::CreateOwnershipAccountCreditRecurringTransactionRequest.new({credit_type: 'WaiveUnpaid', post_days_in_advance: 37, frequency: 'Monthly', first_occurrence_date: Date.today}) # CreateOwnershipAccountCreditRecurringTransactionRequest | 

begin
  # Create a recurring credit
  result = api_instance.create_lease_credit_recurring_transaction(lease_id, create_ownership_account_credit_recurring_transaction_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_credit_recurring_transaction: #{e}"
end
```

#### Using the create_lease_credit_recurring_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRecurringCreditMessage>, Integer, Hash)> create_lease_credit_recurring_transaction_with_http_info(lease_id, create_ownership_account_credit_recurring_transaction_request)

```ruby
begin
  # Create a recurring credit
  data, status_code, headers = api_instance.create_lease_credit_recurring_transaction_with_http_info(lease_id, create_ownership_account_credit_recurring_transaction_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRecurringCreditMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_credit_recurring_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **create_ownership_account_credit_recurring_transaction_request** | [**CreateOwnershipAccountCreditRecurringTransactionRequest**](CreateOwnershipAccountCreditRecurringTransactionRequest.md) |  |  |

### Return type

[**LeaseRecurringCreditMessage**](LeaseRecurringCreditMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_ledger_charge

> <Array<LeaseTransactionMessage>> create_lease_ledger_charge(lease_id, create_lease_ledger_charge_request)

Create a charge

Creates a charge transaction on a specific lease ledger.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Accounting > Bills</span> - `View` `Edit` In order to associate the charge to a bill using the BillId property, you must have this permission.

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
create_lease_ledger_charge_request = Buildium::CreateLeaseLedgerChargeRequest.new # CreateLeaseLedgerChargeRequest | 

begin
  # Create a charge
  result = api_instance.create_lease_ledger_charge(lease_id, create_lease_ledger_charge_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_ledger_charge: #{e}"
end
```

#### Using the create_lease_ledger_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseTransactionMessage>>, Integer, Hash)> create_lease_ledger_charge_with_http_info(lease_id, create_lease_ledger_charge_request)

```ruby
begin
  # Create a charge
  data, status_code, headers = api_instance.create_lease_ledger_charge_with_http_info(lease_id, create_lease_ledger_charge_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseTransactionMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_ledger_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **create_lease_ledger_charge_request** | [**CreateLeaseLedgerChargeRequest**](CreateLeaseLedgerChargeRequest.md) |  |  |

### Return type

[**Array&lt;LeaseTransactionMessage&gt;**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_ledger_deposit_withholding

> <LeaseTransactionMessage> create_lease_ledger_deposit_withholding(lease_id, create_lease_ledger_deposit_withholding_request)

Create a deposit withholding

Withholds a resident deposit by reallocating the funds from a liability account to an income account to cover an expense(s).             <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease Ledger</span> - `View` `Edit`             <br /><span class=\"permissionBlock\">Accounting > General Ledger Accounts</span> - `View`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
create_lease_ledger_deposit_withholding_request = Buildium::CreateLeaseLedgerDepositWithholdingRequest.new({entry_date: Date.today, deposit_liability_gl_account_id: 37}) # CreateLeaseLedgerDepositWithholdingRequest | 

begin
  # Create a deposit withholding
  result = api_instance.create_lease_ledger_deposit_withholding(lease_id, create_lease_ledger_deposit_withholding_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_ledger_deposit_withholding: #{e}"
end
```

#### Using the create_lease_ledger_deposit_withholding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> create_lease_ledger_deposit_withholding_with_http_info(lease_id, create_lease_ledger_deposit_withholding_request)

```ruby
begin
  # Create a deposit withholding
  data, status_code, headers = api_instance.create_lease_ledger_deposit_withholding_with_http_info(lease_id, create_lease_ledger_deposit_withholding_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_ledger_deposit_withholding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **create_lease_ledger_deposit_withholding_request** | [**CreateLeaseLedgerDepositWithholdingRequest**](CreateLeaseLedgerDepositWithholdingRequest.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_ledger_refund

> <LeaseLedgerRefundMessage> create_lease_ledger_refund(lease_id, create_lease_ledger_refund_request)

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
create_lease_ledger_refund_request = Buildium::CreateLeaseLedgerRefundRequest.new({date: Date.today, payee_user_ids: [37], bank_account_id: 37, address: Buildium::LeaseLedgerRefundPostMessageAddress.new({address_line1: 'address_line1_example', country: 'Afghanistan'}), lines: [Buildium::LeaseLedgerRefundLinePostMessage.new({amount: 3.56, gl_account_id: 37})]}) # CreateLeaseLedgerRefundRequest | 

begin
  # Create a refund
  result = api_instance.create_lease_ledger_refund(lease_id, create_lease_ledger_refund_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_ledger_refund: #{e}"
end
```

#### Using the create_lease_ledger_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseLedgerRefundMessage>, Integer, Hash)> create_lease_ledger_refund_with_http_info(lease_id, create_lease_ledger_refund_request)

```ruby
begin
  # Create a refund
  data, status_code, headers = api_instance.create_lease_ledger_refund_with_http_info(lease_id, create_lease_ledger_refund_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseLedgerRefundMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_ledger_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **create_lease_ledger_refund_request** | [**CreateLeaseLedgerRefundRequest**](CreateLeaseLedgerRefundRequest.md) |  |  |

### Return type

[**LeaseLedgerRefundMessage**](LeaseLedgerRefundMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_recurring_payment

> <LeaseRecurringPaymentMessage> create_lease_recurring_payment(lease_id, create_ownership_account_recurring_payment_request)

Create a recurring payment

Creates a recurring payment that will post automatically on the specified lease ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease Transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
create_ownership_account_recurring_payment_request = Buildium::CreateOwnershipAccountRecurringPaymentRequest.new({payment_method: 'Check', first_occurrence_date: Date.today, post_days_in_advance: 37, frequency: 'Monthly'}) # CreateOwnershipAccountRecurringPaymentRequest | 

begin
  # Create a recurring payment
  result = api_instance.create_lease_recurring_payment(lease_id, create_ownership_account_recurring_payment_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_recurring_payment: #{e}"
end
```

#### Using the create_lease_recurring_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRecurringPaymentMessage>, Integer, Hash)> create_lease_recurring_payment_with_http_info(lease_id, create_ownership_account_recurring_payment_request)

```ruby
begin
  # Create a recurring payment
  data, status_code, headers = api_instance.create_lease_recurring_payment_with_http_info(lease_id, create_ownership_account_recurring_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRecurringPaymentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_recurring_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **create_ownership_account_recurring_payment_request** | [**CreateOwnershipAccountRecurringPaymentRequest**](CreateOwnershipAccountRecurringPaymentRequest.md) |  |  |

### Return type

[**LeaseRecurringPaymentMessage**](LeaseRecurringPaymentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_reverse_payment

> <LeaseTransactionMessage> create_lease_reverse_payment(lease_id, create_lease_reverse_payment_request)

Create a payment reversal

Reverses a lease ledger payment. Note, this action can only be taken on a payment that has been deposited.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | The lease unique identifier.
create_lease_reverse_payment_request = Buildium::CreateLeaseReversePaymentRequest.new({entry_date: Date.today, payment_transaction_id: 37}) # CreateLeaseReversePaymentRequest | 

begin
  # Create a payment reversal
  result = api_instance.create_lease_reverse_payment(lease_id, create_lease_reverse_payment_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_reverse_payment: #{e}"
end
```

#### Using the create_lease_reverse_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> create_lease_reverse_payment_with_http_info(lease_id, create_lease_reverse_payment_request)

```ruby
begin
  # Create a payment reversal
  data, status_code, headers = api_instance.create_lease_reverse_payment_with_http_info(lease_id, create_lease_reverse_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_lease_reverse_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | The lease unique identifier. |  |
| **create_lease_reverse_payment_request** | [**CreateLeaseReversePaymentRequest**](CreateLeaseReversePaymentRequest.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_payment

> <LeaseTransactionMessage> create_payment(lease_id, create_payment_request)

Create a payment

Creates a lease ledger payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | The lease unique identifier.
create_payment_request = Buildium::CreatePaymentRequest.new({date: Date.today, payment_method: 'Check', send_email_receipt: false, lines: [Buildium::LeaseLedgerPaymentLineSaveMessage.new({amount: 3.56, gl_account_id: 37})]}) # CreatePaymentRequest | 

begin
  # Create a payment
  result = api_instance.create_payment(lease_id, create_payment_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_payment: #{e}"
end
```

#### Using the create_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> create_payment_with_http_info(lease_id, create_payment_request)

```ruby
begin
  # Create a payment
  data, status_code, headers = api_instance.create_payment_with_http_info(lease_id, create_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->create_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | The lease unique identifier. |  |
| **create_payment_request** | [**CreatePaymentRequest**](CreatePaymentRequest.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_charges

> <Array<LeaseChargeMessage>> get_all_charges(lease_id, opts)

Retrieve all charges

Retrieves all the charges for a specific lease.  <br /><br /><h4>Required permissions(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
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
  result = api_instance.get_all_charges(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_all_charges: #{e}"
end
```

#### Using the get_all_charges_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseChargeMessage>>, Integer, Hash)> get_all_charges_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all charges
  data, status_code, headers = api_instance.get_all_charges_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseChargeMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_all_charges_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **transactiondatefrom** | **Date** | Filters results to any lease transaction whose start date is greater than or equal to the specified value. | [optional] |
| **transactiondateto** | **Date** | Filters results to any lease transaction whose end date is less than or equal to the specified value. | [optional] |
| **billids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any charge that has been associated to the indicated bill ids. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;LeaseChargeMessage&gt;**](LeaseChargeMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_charge_by_id

> <LeaseChargeMessage> get_charge_by_id(lease_id, charge_id)

Retrieve a charge

Retrieves a specific lease charge.  <br /><br /><h4>Required permissions(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
charge_id = 56 # Integer | 

begin
  # Retrieve a charge
  result = api_instance.get_charge_by_id(lease_id, charge_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_charge_by_id: #{e}"
end
```

#### Using the get_charge_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseChargeMessage>, Integer, Hash)> get_charge_by_id_with_http_info(lease_id, charge_id)

```ruby
begin
  # Retrieve a charge
  data, status_code, headers = api_instance.get_charge_by_id_with_http_info(lease_id, charge_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseChargeMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_charge_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **charge_id** | **Integer** |  |  |

### Return type

[**LeaseChargeMessage**](LeaseChargeMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_charge_recurring_transaction_by_id

> <LeaseChargeRecurringTransactionMessage> get_lease_charge_recurring_transaction_by_id(lease_id, transaction_id)

Retrieve a recurring charge

Retrieves a recurring charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
transaction_id = 56 # Integer | 

begin
  # Retrieve a recurring charge
  result = api_instance.get_lease_charge_recurring_transaction_by_id(lease_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_lease_charge_recurring_transaction_by_id: #{e}"
end
```

#### Using the get_lease_charge_recurring_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseChargeRecurringTransactionMessage>, Integer, Hash)> get_lease_charge_recurring_transaction_by_id_with_http_info(lease_id, transaction_id)

```ruby
begin
  # Retrieve a recurring charge
  data, status_code, headers = api_instance.get_lease_charge_recurring_transaction_by_id_with_http_info(lease_id, transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseChargeRecurringTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_lease_charge_recurring_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **transaction_id** | **Integer** |  |  |

### Return type

[**LeaseChargeRecurringTransactionMessage**](LeaseChargeRecurringTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_ledger_refund_by_id

> <LeaseLedgerRefundMessage> get_lease_ledger_refund_by_id(lease_id, refund_id)

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
refund_id = 56 # Integer | 

begin
  # Retrieve a refund
  result = api_instance.get_lease_ledger_refund_by_id(lease_id, refund_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_lease_ledger_refund_by_id: #{e}"
end
```

#### Using the get_lease_ledger_refund_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseLedgerRefundMessage>, Integer, Hash)> get_lease_ledger_refund_by_id_with_http_info(lease_id, refund_id)

```ruby
begin
  # Retrieve a refund
  data, status_code, headers = api_instance.get_lease_ledger_refund_by_id_with_http_info(lease_id, refund_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseLedgerRefundMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_lease_ledger_refund_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **refund_id** | **Integer** |  |  |

### Return type

[**LeaseLedgerRefundMessage**](LeaseLedgerRefundMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_ledger_transaction_by_id

> <LeaseTransactionMessage> get_lease_ledger_transaction_by_id(lease_id, transaction_id)

Retrieve a lease transaction

Retrieves a specific lease transaction.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease Transactions</span> - `View`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
transaction_id = 56 # Integer | 

begin
  # Retrieve a lease transaction
  result = api_instance.get_lease_ledger_transaction_by_id(lease_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_lease_ledger_transaction_by_id: #{e}"
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
  puts "Error when calling LeaseTransactionsApi->get_lease_ledger_transaction_by_id_with_http_info: #{e}"
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

Retrieves all the transactions for a specific lease.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View`

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

api_instance = Buildium::LeaseTransactionsApi.new
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
  puts "Error when calling LeaseTransactionsApi->get_lease_ledgers: #{e}"
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
  puts "Error when calling LeaseTransactionsApi->get_lease_ledgers_with_http_info: #{e}"
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


## get_lease_outstanding_balances

> <Array<LeaseOutstandingBalanceMessage>> get_lease_outstanding_balances(opts)

Retrieve all outstanding balances

Retrieves a list of leases that have outstanding balances. Leases with a zero or credit balance will not be returned in the results.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Outstanding Balances</span> - `View`

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

api_instance = Buildium::LeaseTransactionsApi.new
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
  # Retrieve all outstanding balances
  result = api_instance.get_lease_outstanding_balances(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_lease_outstanding_balances: #{e}"
end
```

#### Using the get_lease_outstanding_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseOutstandingBalanceMessage>>, Integer, Hash)> get_lease_outstanding_balances_with_http_info(opts)

```ruby
begin
  # Retrieve all outstanding balances
  data, status_code, headers = api_instance.get_lease_outstanding_balances_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseOutstandingBalanceMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_lease_outstanding_balances_with_http_info: #{e}"
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


## get_lease_recurring_credit_by_id

> <LeaseRecurringCreditMessage> get_lease_recurring_credit_by_id(lease_id, transaction_id)

Retrieve a recurring credit

Retrieves a recurring credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
transaction_id = 56 # Integer | 

begin
  # Retrieve a recurring credit
  result = api_instance.get_lease_recurring_credit_by_id(lease_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_lease_recurring_credit_by_id: #{e}"
end
```

#### Using the get_lease_recurring_credit_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRecurringCreditMessage>, Integer, Hash)> get_lease_recurring_credit_by_id_with_http_info(lease_id, transaction_id)

```ruby
begin
  # Retrieve a recurring credit
  data, status_code, headers = api_instance.get_lease_recurring_credit_by_id_with_http_info(lease_id, transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRecurringCreditMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_lease_recurring_credit_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **transaction_id** | **Integer** |  |  |

### Return type

[**LeaseRecurringCreditMessage**](LeaseRecurringCreditMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_recurring_transactions

> <Array<RecurringTransactionMessage>> get_lease_recurring_transactions(lease_id, opts)

Retrieve all recurring transactions

Retrieves all recurring transactions for a given lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all recurring transactions
  result = api_instance.get_lease_recurring_transactions(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_lease_recurring_transactions: #{e}"
end
```

#### Using the get_lease_recurring_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RecurringTransactionMessage>>, Integer, Hash)> get_lease_recurring_transactions_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all recurring transactions
  data, status_code, headers = api_instance.get_lease_recurring_transactions_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RecurringTransactionMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_lease_recurring_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
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


## get_recurring_lease_payments_by_id

> <LeaseRecurringPaymentMessage> get_recurring_lease_payments_by_id(lease_id, payment_id)

Retrieve a recurring payment

Retrieves a recurring payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease Transactions</span> - `View`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
payment_id = 56 # Integer | 

begin
  # Retrieve a recurring payment
  result = api_instance.get_recurring_lease_payments_by_id(lease_id, payment_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_recurring_lease_payments_by_id: #{e}"
end
```

#### Using the get_recurring_lease_payments_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRecurringPaymentMessage>, Integer, Hash)> get_recurring_lease_payments_by_id_with_http_info(lease_id, payment_id)

```ruby
begin
  # Retrieve a recurring payment
  data, status_code, headers = api_instance.get_recurring_lease_payments_by_id_with_http_info(lease_id, payment_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRecurringPaymentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->get_recurring_lease_payments_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **payment_id** | **Integer** |  |  |

### Return type

[**LeaseRecurringPaymentMessage**](LeaseRecurringPaymentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_deposit_withholding

> <LeaseTransactionMessage> update_deposit_withholding(lease_id, deposit_id, update_deposit_withholding_request)

Update a deposit withholding

Updates a resident deposit withholding.              <br /><br /><h4>Required permission(s):</h4><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease Ledger</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Accounting > General Ledger Accounts</span> - `View`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
deposit_id = 56 # Integer | 
update_deposit_withholding_request = Buildium::UpdateDepositWithholdingRequest.new({entry_date: Date.today, deposit_liability_gl_account_id: 37}) # UpdateDepositWithholdingRequest | 

begin
  # Update a deposit withholding
  result = api_instance.update_deposit_withholding(lease_id, deposit_id, update_deposit_withholding_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->update_deposit_withholding: #{e}"
end
```

#### Using the update_deposit_withholding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> update_deposit_withholding_with_http_info(lease_id, deposit_id, update_deposit_withholding_request)

```ruby
begin
  # Update a deposit withholding
  data, status_code, headers = api_instance.update_deposit_withholding_with_http_info(lease_id, deposit_id, update_deposit_withholding_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->update_deposit_withholding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **deposit_id** | **Integer** |  |  |
| **update_deposit_withholding_request** | [**UpdateDepositWithholdingRequest**](UpdateDepositWithholdingRequest.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_charge

> <LeaseTransactionMessage> update_lease_charge(lease_id, charge_id, update_lease_charge_request)

Update a charge

Updates a charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
charge_id = 56 # Integer | 
update_lease_charge_request = Buildium::UpdateLeaseChargeRequest.new({date: Date.today, lines: [Buildium::LeaseChargeLineSaveMessage.new({amount: 3.56, gl_account_id: 37})]}) # UpdateLeaseChargeRequest | 

begin
  # Update a charge
  result = api_instance.update_lease_charge(lease_id, charge_id, update_lease_charge_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->update_lease_charge: #{e}"
end
```

#### Using the update_lease_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> update_lease_charge_with_http_info(lease_id, charge_id, update_lease_charge_request)

```ruby
begin
  # Update a charge
  data, status_code, headers = api_instance.update_lease_charge_with_http_info(lease_id, charge_id, update_lease_charge_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->update_lease_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **charge_id** | **Integer** |  |  |
| **update_lease_charge_request** | [**UpdateLeaseChargeRequest**](UpdateLeaseChargeRequest.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_ledger_payment

> <LeaseTransactionMessage> update_lease_ledger_payment(lease_id, payment_id, update_lease_ledger_payment_request)

Update a payment

Updates a ledger payment. Each line item must have a unique general ledger account identifier. PaymentMethod, Date, Memo, and the total Amount cannot be changed for payments with a PaymentMethod of `BuildiumEFT`, `BuildiumCC` or `RetailCash`.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeaseTransactionsApi.new
lease_id = 56 # Integer | 
payment_id = 56 # Integer | 
update_lease_ledger_payment_request = Buildium::UpdateLeaseLedgerPaymentRequest.new({date: Date.today, payment_method: 'Check', lines: [Buildium::LeaseLedgerPaymentLineSaveMessage.new({amount: 3.56, gl_account_id: 37})]}) # UpdateLeaseLedgerPaymentRequest | 

begin
  # Update a payment
  result = api_instance.update_lease_ledger_payment(lease_id, payment_id, update_lease_ledger_payment_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->update_lease_ledger_payment: #{e}"
end
```

#### Using the update_lease_ledger_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> update_lease_ledger_payment_with_http_info(lease_id, payment_id, update_lease_ledger_payment_request)

```ruby
begin
  # Update a payment
  data, status_code, headers = api_instance.update_lease_ledger_payment_with_http_info(lease_id, payment_id, update_lease_ledger_payment_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeaseTransactionsApi->update_lease_ledger_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **payment_id** | **Integer** |  |  |
| **update_lease_ledger_payment_request** | [**UpdateLeaseLedgerPaymentRequest**](UpdateLeaseLedgerPaymentRequest.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

