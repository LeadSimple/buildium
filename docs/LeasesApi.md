# Buildium::LeasesApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_lease**](LeasesApi.md#create_lease) | **POST** /v1/leases | Create a lease |
| [**create_lease_auto_allocated_payment**](LeasesApi.md#create_lease_auto_allocated_payment) | **POST** /v1/leases/{leaseId}/autoallocatedpayments | Create a lease ledger payment with automatic allocations |
| [**create_lease_charge_recurring_transaction**](LeasesApi.md#create_lease_charge_recurring_transaction) | **POST** /v1/leases/{leaseId}/recurringcharges | Create a recurring charge |
| [**create_lease_credit**](LeasesApi.md#create_lease_credit) | **POST** /v1/leases/{leaseId}/credits | Create a credit |
| [**create_lease_credit_recurring_transaction**](LeasesApi.md#create_lease_credit_recurring_transaction) | **POST** /v1/leases/{leaseId}/recurringcredits | Create a recurring credit |
| [**create_lease_ledger_charge**](LeasesApi.md#create_lease_ledger_charge) | **POST** /v1/leases/{leaseId}/charges | Create a charge |
| [**create_lease_ledger_deposit_withholding**](LeasesApi.md#create_lease_ledger_deposit_withholding) | **POST** /v1/leases/{leaseId}/applieddeposits | Create a deposit withholding |
| [**create_lease_ledger_refund**](LeasesApi.md#create_lease_ledger_refund) | **POST** /v1/leases/{leaseId}/refunds | Create a refund |
| [**create_lease_note**](LeasesApi.md#create_lease_note) | **POST** /v1/leases/{leaseId}/notes | Create a note |
| [**create_lease_recurring_payment**](LeasesApi.md#create_lease_recurring_payment) | **POST** /v1/leases/{leaseId}/recurringpayments | Create a recurring payment |
| [**create_lease_renewal**](LeasesApi.md#create_lease_renewal) | **POST** /v1/leases/{leaseId}/renewals | Create a lease renewal |
| [**create_lease_reverse_payment**](LeasesApi.md#create_lease_reverse_payment) | **POST** /v1/leases/{leaseId}/reversepayments | Create a payment reversal |
| [**create_move_out_data**](LeasesApi.md#create_move_out_data) | **POST** /v1/leases/{leaseId}/moveouts | Create a move out |
| [**create_payment**](LeasesApi.md#create_payment) | **POST** /v1/leases/{leaseId}/payments | Create a payment |
| [**get_all_lease_renewals**](LeasesApi.md#get_all_lease_renewals) | **GET** /v1/leases/{leaseId}/renewals | Retrieve renewal history for a lease. |
| [**get_all_lease_renewals_for_all_properties**](LeasesApi.md#get_all_lease_renewals_for_all_properties) | **GET** /v1/leases/renewals | Retrieve all lease renewals |
| [**get_lease_by_id**](LeasesApi.md#get_lease_by_id) | **GET** /v1/leases/{leaseId} | Retrieve a lease |
| [**get_lease_charge_recurring_transaction_by_id**](LeasesApi.md#get_lease_charge_recurring_transaction_by_id) | **GET** /v1/leases/{leaseId}/recurringcharges/{transactionId} | Retrieve a recurring charge |
| [**get_lease_epay_settings_by_id**](LeasesApi.md#get_lease_epay_settings_by_id) | **GET** /v1/leases/{leaseId}/epaysettings | Retrieve ePay settings |
| [**get_lease_ledger_refund_by_id**](LeasesApi.md#get_lease_ledger_refund_by_id) | **GET** /v1/leases/{leaseId}/refunds/{refundId} | Retrieve a refund |
| [**get_lease_ledger_transaction_by_id**](LeasesApi.md#get_lease_ledger_transaction_by_id) | **GET** /v1/leases/{leaseId}/transactions/{transactionId} | Retrieve a lease transaction |
| [**get_lease_ledgers**](LeasesApi.md#get_lease_ledgers) | **GET** /v1/leases/{leaseId}/transactions | Retrieve all lease transactions |
| [**get_lease_move_out_data_by_tenant_id**](LeasesApi.md#get_lease_move_out_data_by_tenant_id) | **GET** /v1/leases/{leaseId}/moveouts/{tenantId} | Retrieve a move out |
| [**get_lease_move_out_information_by_id**](LeasesApi.md#get_lease_move_out_information_by_id) | **GET** /v1/leases/{leaseId}/moveouts | Retrieve all move outs |
| [**get_lease_note_by_note_id**](LeasesApi.md#get_lease_note_by_note_id) | **GET** /v1/leases/{leaseId}/notes/{noteId} | Retrieve a note |
| [**get_lease_notes**](LeasesApi.md#get_lease_notes) | **GET** /v1/leases/{leaseId}/notes | Retrieve all notes |
| [**get_lease_outstanding_balances**](LeasesApi.md#get_lease_outstanding_balances) | **GET** /v1/leases/outstandingbalances | Retrieve all outstanding balances |
| [**get_lease_recurring_credit_by_id**](LeasesApi.md#get_lease_recurring_credit_by_id) | **GET** /v1/leases/{leaseId}/recurringcredits/{transactionId} | Retrieve a recurring credit |
| [**get_lease_recurring_transactions**](LeasesApi.md#get_lease_recurring_transactions) | **GET** /v1/leases/{leaseId}/recurringtransactions | Retrieve all recurring transactions |
| [**get_lease_renewal_by_id**](LeasesApi.md#get_lease_renewal_by_id) | **GET** /v1/leases/{leaseId}/renewals/{renewalId} | Retrieve a renewal history item for a lease. |
| [**get_leases**](LeasesApi.md#get_leases) | **GET** /v1/leases | Retrieve all leases |
| [**get_recurring_lease_payments_by_id**](LeasesApi.md#get_recurring_lease_payments_by_id) | **GET** /v1/leases/{leaseId}/recurringpayments/{paymentId} | Retrieve a recurring payment |
| [**get_rent**](LeasesApi.md#get_rent) | **GET** /v1/leases/{leaseId}/rent | Retrieve all rent schedules |
| [**get_rent_by_id**](LeasesApi.md#get_rent_by_id) | **GET** /v1/leases/{leaseId}/rent/{rentId} | Retrieve a rent schedule |
| [**get_renters_insurance_policies**](LeasesApi.md#get_renters_insurance_policies) | **GET** /v1/leases/{leaseId}/rentersinsurance | Retrieve all insurance policies |
| [**get_renters_insurance_policy_by_id**](LeasesApi.md#get_renters_insurance_policy_by_id) | **GET** /v1/leases/{leaseId}/rentersinsurance/{policyId} | Retrieve an insurance policy |
| [**undo_tenant_moveout**](LeasesApi.md#undo_tenant_moveout) | **DELETE** /v1/leases/{leaseId}/moveouts/{tenantId} | Delete a move out |
| [**update_lease**](LeasesApi.md#update_lease) | **PUT** /v1/leases/{leaseId} | Update a lease |
| [**update_lease_charge**](LeasesApi.md#update_lease_charge) | **PUT** /v1/leases/{leaseId}/charges/{chargeId} | Update a charge |
| [**update_lease_epay_settings**](LeasesApi.md#update_lease_epay_settings) | **PUT** /v1/leases/{leaseId}/epaysettings | Update ePay settings |
| [**update_lease_note**](LeasesApi.md#update_lease_note) | **PUT** /v1/leases/{leaseId}/notes/{noteId} | Update a note |


## create_lease

> <LeaseMessage> create_lease(lease_post_message)

Create a lease

Creates a signed lease.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`  <br /><h4>Optional Permissions:</h4><br /><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View` In order to add tenants to the lease using the ApplicantIds property, you must have this permission.

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

api_instance = Buildium::LeasesApi.new
lease_post_message = Buildium::LeasePostMessage.new({lease_type: 'Fixed', unit_id: 37, lease_from_date: Date.today, send_welcome_email: false}) # LeasePostMessage | 

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


## create_lease_auto_allocated_payment

> <LeaseTransactionMessage> create_lease_auto_allocated_payment(lease_id, lease_auto_allocated_payment_post_message)

Create a lease ledger payment with automatic allocations

Creates a payment on the lease ledger. Note that the recorded payment will be automatically allocated to the general ledger accounts based on the payment allocation settings. These settings can be found under the Settings &gt; Application Settings &gt; Residents page in your account. If you'd like to specify the GL accounts the payment should apply to, please use the <a href=\"#operation/CreatePayment\">Create a payment</a> endpoint.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
lease_auto_allocated_payment_post_message = Buildium::LeaseAutoAllocatedPaymentPostMessage.new({date: Date.today, payment_method: 'Check', send_email_receipt: false, total_amount: 3.56}) # LeaseAutoAllocatedPaymentPostMessage | 

begin
  # Create a lease ledger payment with automatic allocations
  result = api_instance.create_lease_auto_allocated_payment(lease_id, lease_auto_allocated_payment_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_auto_allocated_payment: #{e}"
end
```

#### Using the create_lease_auto_allocated_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> create_lease_auto_allocated_payment_with_http_info(lease_id, lease_auto_allocated_payment_post_message)

```ruby
begin
  # Create a lease ledger payment with automatic allocations
  data, status_code, headers = api_instance.create_lease_auto_allocated_payment_with_http_info(lease_id, lease_auto_allocated_payment_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_auto_allocated_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **lease_auto_allocated_payment_post_message** | [**LeaseAutoAllocatedPaymentPostMessage**](LeaseAutoAllocatedPaymentPostMessage.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_charge_recurring_transaction

> <LeaseChargeRecurringTransactionMessage> create_lease_charge_recurring_transaction(lease_id, charge_recurring_transaction_post_message)

Create a recurring charge

Creates a recurring charge transaction that will post automatically on the specified lease ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
charge_recurring_transaction_post_message = Buildium::ChargeRecurringTransactionPostMessage.new({gl_account_id: 37, amount: 3.56, first_occurrence_date: Date.today, post_days_in_advance: 37, frequency: 'Monthly'}) # ChargeRecurringTransactionPostMessage | 

begin
  # Create a recurring charge
  result = api_instance.create_lease_charge_recurring_transaction(lease_id, charge_recurring_transaction_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_charge_recurring_transaction: #{e}"
end
```

#### Using the create_lease_charge_recurring_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseChargeRecurringTransactionMessage>, Integer, Hash)> create_lease_charge_recurring_transaction_with_http_info(lease_id, charge_recurring_transaction_post_message)

```ruby
begin
  # Create a recurring charge
  data, status_code, headers = api_instance.create_lease_charge_recurring_transaction_with_http_info(lease_id, charge_recurring_transaction_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseChargeRecurringTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_charge_recurring_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **charge_recurring_transaction_post_message** | [**ChargeRecurringTransactionPostMessage**](ChargeRecurringTransactionPostMessage.md) |  |  |

### Return type

[**LeaseChargeRecurringTransactionMessage**](LeaseChargeRecurringTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_credit

> <LeaseTransactionMessage> create_lease_credit(lease_id, lease_ledger_credit_post_message)

Create a credit

Creates a lease ledger credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | The lease unique identifier.
lease_ledger_credit_post_message = Buildium::LeaseLedgerCreditPostMessage.new({date: Date.today, credit_type: 'WaiveUnpaid', lines: [Buildium::LeaseLedgerCreditLinePostMessage.new({amount: 3.56, gl_account_id: 37})]}) # LeaseLedgerCreditPostMessage | 

begin
  # Create a credit
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
  # Create a credit
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
| **lease_id** | **Integer** | The lease unique identifier. |  |
| **lease_ledger_credit_post_message** | [**LeaseLedgerCreditPostMessage**](LeaseLedgerCreditPostMessage.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_credit_recurring_transaction

> <LeaseRecurringCreditMessage> create_lease_credit_recurring_transaction(lease_id, credit_recurring_transaction_post_message)

Create a recurring credit

Creates a recurring credit transaction on the specified lease ledger.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
credit_recurring_transaction_post_message = Buildium::CreditRecurringTransactionPostMessage.new({credit_type: 'WaiveUnpaid', post_days_in_advance: 37, frequency: 'Monthly', first_occurrence_date: Date.today}) # CreditRecurringTransactionPostMessage | 

begin
  # Create a recurring credit
  result = api_instance.create_lease_credit_recurring_transaction(lease_id, credit_recurring_transaction_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_credit_recurring_transaction: #{e}"
end
```

#### Using the create_lease_credit_recurring_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRecurringCreditMessage>, Integer, Hash)> create_lease_credit_recurring_transaction_with_http_info(lease_id, credit_recurring_transaction_post_message)

```ruby
begin
  # Create a recurring credit
  data, status_code, headers = api_instance.create_lease_credit_recurring_transaction_with_http_info(lease_id, credit_recurring_transaction_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRecurringCreditMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_credit_recurring_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **credit_recurring_transaction_post_message** | [**CreditRecurringTransactionPostMessage**](CreditRecurringTransactionPostMessage.md) |  |  |

### Return type

[**LeaseRecurringCreditMessage**](LeaseRecurringCreditMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_ledger_charge

> <Array<LeaseTransactionMessage>> create_lease_ledger_charge(lease_id, lease_charge_post_message)

Create a charge

Creates a charge transaction on a specific lease ledger.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
lease_charge_post_message = Buildium::LeaseChargePostMessage.new # LeaseChargePostMessage | 

begin
  # Create a charge
  result = api_instance.create_lease_ledger_charge(lease_id, lease_charge_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_ledger_charge: #{e}"
end
```

#### Using the create_lease_ledger_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseTransactionMessage>>, Integer, Hash)> create_lease_ledger_charge_with_http_info(lease_id, lease_charge_post_message)

```ruby
begin
  # Create a charge
  data, status_code, headers = api_instance.create_lease_ledger_charge_with_http_info(lease_id, lease_charge_post_message)
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
| **lease_charge_post_message** | [**LeaseChargePostMessage**](LeaseChargePostMessage.md) |  |  |

### Return type

[**Array&lt;LeaseTransactionMessage&gt;**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_ledger_deposit_withholding

> <LeaseTransactionMessage> create_lease_ledger_deposit_withholding(lease_id, lease_ledger_deposit_withholding_post_message)

Create a deposit withholding

Withholds a resident deposit by reallocating the funds from a liability account to an income account to cover an expense(s).             <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease Ledger</span> - `View` `Edit`             <span class=\"permissionBlock\">Accounting &gt; General Ledger Accounts</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
lease_ledger_deposit_withholding_post_message = Buildium::LeaseLedgerDepositWithholdingPostMessage.new({entry_date: Date.today, deposit_liability_gl_account_id: 37}) # LeaseLedgerDepositWithholdingPostMessage | 

begin
  # Create a deposit withholding
  result = api_instance.create_lease_ledger_deposit_withholding(lease_id, lease_ledger_deposit_withholding_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_ledger_deposit_withholding: #{e}"
end
```

#### Using the create_lease_ledger_deposit_withholding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> create_lease_ledger_deposit_withholding_with_http_info(lease_id, lease_ledger_deposit_withholding_post_message)

```ruby
begin
  # Create a deposit withholding
  data, status_code, headers = api_instance.create_lease_ledger_deposit_withholding_with_http_info(lease_id, lease_ledger_deposit_withholding_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_ledger_deposit_withholding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **lease_ledger_deposit_withholding_post_message** | [**LeaseLedgerDepositWithholdingPostMessage**](LeaseLedgerDepositWithholdingPostMessage.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_ledger_refund

> <LeaseLedgerRefundMessage> create_lease_ledger_refund(lease_id, lease_ledger_refund_post_message)

Create a refund

Creates a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
lease_ledger_refund_post_message = Buildium::LeaseLedgerRefundPostMessage.new({date: Date.today, payee_user_ids: [37], bank_account_id: 37, address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'}), lines: [Buildium::LeaseLedgerRefundLinePostMessage.new({amount: 3.56, gl_account_id: 37})]}) # LeaseLedgerRefundPostMessage | 

begin
  # Create a refund
  result = api_instance.create_lease_ledger_refund(lease_id, lease_ledger_refund_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_ledger_refund: #{e}"
end
```

#### Using the create_lease_ledger_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseLedgerRefundMessage>, Integer, Hash)> create_lease_ledger_refund_with_http_info(lease_id, lease_ledger_refund_post_message)

```ruby
begin
  # Create a refund
  data, status_code, headers = api_instance.create_lease_ledger_refund_with_http_info(lease_id, lease_ledger_refund_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseLedgerRefundMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_ledger_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **lease_ledger_refund_post_message** | [**LeaseLedgerRefundPostMessage**](LeaseLedgerRefundPostMessage.md) |  |  |

### Return type

[**LeaseLedgerRefundMessage**](LeaseLedgerRefundMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_note

> <NoteMessage> create_lease_note(lease_id, note_post_message)

Create a note

Creates a lease note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create a note
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
  # Create a note
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


## create_lease_recurring_payment

> <LeaseRecurringPaymentMessage> create_lease_recurring_payment(lease_id, payment_recurring_transaction_post_message)

Create a recurring payment

Creates a recurring payment that will post automatically on the specified lease ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease Transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
payment_recurring_transaction_post_message = Buildium::PaymentRecurringTransactionPostMessage.new({payment_method: 'Check', first_occurrence_date: Date.today, post_days_in_advance: 37, frequency: 'Monthly'}) # PaymentRecurringTransactionPostMessage | 

begin
  # Create a recurring payment
  result = api_instance.create_lease_recurring_payment(lease_id, payment_recurring_transaction_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_recurring_payment: #{e}"
end
```

#### Using the create_lease_recurring_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRecurringPaymentMessage>, Integer, Hash)> create_lease_recurring_payment_with_http_info(lease_id, payment_recurring_transaction_post_message)

```ruby
begin
  # Create a recurring payment
  data, status_code, headers = api_instance.create_lease_recurring_payment_with_http_info(lease_id, payment_recurring_transaction_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRecurringPaymentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_recurring_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **payment_recurring_transaction_post_message** | [**PaymentRecurringTransactionPostMessage**](PaymentRecurringTransactionPostMessage.md) |  |  |

### Return type

[**LeaseRecurringPaymentMessage**](LeaseRecurringPaymentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_renewal

> <LeaseRenewalMessage> create_lease_renewal(lease_id, lease_renewal_post_message)

Create a lease renewal

Creates a lease renewal.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
lease_renewal_post_message = Buildium::LeaseRenewalPostMessage.new({lease_type: 'Fixed', rent: Buildium::LeaseRentPostMessage.new({cycle: 'Monthly', charges: [Buildium::LeaseRentChargePostMessage.new({amount: 3.56, gl_account_id: 37, next_due_date: Date.today})]}), send_welcome_email: false}) # LeaseRenewalPostMessage | 

begin
  # Create a lease renewal
  result = api_instance.create_lease_renewal(lease_id, lease_renewal_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_renewal: #{e}"
end
```

#### Using the create_lease_renewal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRenewalMessage>, Integer, Hash)> create_lease_renewal_with_http_info(lease_id, lease_renewal_post_message)

```ruby
begin
  # Create a lease renewal
  data, status_code, headers = api_instance.create_lease_renewal_with_http_info(lease_id, lease_renewal_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRenewalMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_renewal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **lease_renewal_post_message** | [**LeaseRenewalPostMessage**](LeaseRenewalPostMessage.md) |  |  |

### Return type

[**LeaseRenewalMessage**](LeaseRenewalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_lease_reverse_payment

> <LeaseTransactionMessage> create_lease_reverse_payment(lease_id, lease_ledger_reverse_payment_post_message)

Create a payment reversal

Reverses a lease ledger payment. Note, this action can only be taken on a payment that has been deposited.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | The lease unique identifier.
lease_ledger_reverse_payment_post_message = Buildium::LeaseLedgerReversePaymentPostMessage.new({entry_date: Date.today, payment_transaction_id: 37}) # LeaseLedgerReversePaymentPostMessage | 

begin
  # Create a payment reversal
  result = api_instance.create_lease_reverse_payment(lease_id, lease_ledger_reverse_payment_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_reverse_payment: #{e}"
end
```

#### Using the create_lease_reverse_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> create_lease_reverse_payment_with_http_info(lease_id, lease_ledger_reverse_payment_post_message)

```ruby
begin
  # Create a payment reversal
  data, status_code, headers = api_instance.create_lease_reverse_payment_with_http_info(lease_id, lease_ledger_reverse_payment_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_lease_reverse_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** | The lease unique identifier. |  |
| **lease_ledger_reverse_payment_post_message** | [**LeaseLedgerReversePaymentPostMessage**](LeaseLedgerReversePaymentPostMessage.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_move_out_data

> <LeaseMoveOutDataMessage> create_move_out_data(lease_id, lease_move_out_data_post_message)

Create a move out

Creates move out data for a single tenant on a given lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
lease_move_out_data_post_message = Buildium::LeaseMoveOutDataPostMessage.new({tenant_id: 37, move_out_date: Date.today}) # LeaseMoveOutDataPostMessage | 

begin
  # Create a move out
  result = api_instance.create_move_out_data(lease_id, lease_move_out_data_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_move_out_data: #{e}"
end
```

#### Using the create_move_out_data_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseMoveOutDataMessage>, Integer, Hash)> create_move_out_data_with_http_info(lease_id, lease_move_out_data_post_message)

```ruby
begin
  # Create a move out
  data, status_code, headers = api_instance.create_move_out_data_with_http_info(lease_id, lease_move_out_data_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseMoveOutDataMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->create_move_out_data_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **lease_move_out_data_post_message** | [**LeaseMoveOutDataPostMessage**](LeaseMoveOutDataPostMessage.md) |  |  |

### Return type

[**LeaseMoveOutDataMessage**](LeaseMoveOutDataMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_payment

> <LeaseTransactionMessage> create_payment(lease_id, lease_ledger_payment_post_message)

Create a payment

Creates a lease ledger payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | The lease unique identifier.
lease_ledger_payment_post_message = Buildium::LeaseLedgerPaymentPostMessage.new({date: Date.today, payment_method: 'Check', send_email_receipt: false, lines: [Buildium::LeaseLedgerPaymentLineSaveMessage.new({amount: 3.56, gl_account_id: 37})]}) # LeaseLedgerPaymentPostMessage | 

begin
  # Create a payment
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
  # Create a payment
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


## get_all_lease_renewals

> <Array<LeaseRenewalMessage>> get_all_lease_renewals(lease_id, opts)

Retrieve renewal history for a lease.

Retrieves renewal history for a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve renewal history for a lease.
  result = api_instance.get_all_lease_renewals(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_all_lease_renewals: #{e}"
end
```

#### Using the get_all_lease_renewals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseRenewalMessage>>, Integer, Hash)> get_all_lease_renewals_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve renewal history for a lease.
  data, status_code, headers = api_instance.get_all_lease_renewals_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseRenewalMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_all_lease_renewals_with_http_info: #{e}"
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

[**Array&lt;LeaseRenewalMessage&gt;**](LeaseRenewalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_lease_renewals_for_all_properties

> <Array<LeaseRenewalMessage>> get_all_lease_renewals_for_all_properties(esignaturestatuses, opts)

Retrieve all lease renewals

Retrieves all lease renewals.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
esignaturestatuses = ['Unknown'] # Array<String> | Filters result to any lease renewal with an esignature status that matches the given statuses.
opts = {
  propertyids: [37], # Array<Integer> | Filters results to only include leases whose unit belongs to the specified set of property ids.
  rentalownerids: [37], # Array<Integer> | Filters results to any lease whose unit belongs to a property with rental owner in the specified set of rental owner ids.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all lease renewals
  result = api_instance.get_all_lease_renewals_for_all_properties(esignaturestatuses, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_all_lease_renewals_for_all_properties: #{e}"
end
```

#### Using the get_all_lease_renewals_for_all_properties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseRenewalMessage>>, Integer, Hash)> get_all_lease_renewals_for_all_properties_with_http_info(esignaturestatuses, opts)

```ruby
begin
  # Retrieve all lease renewals
  data, status_code, headers = api_instance.get_all_lease_renewals_for_all_properties_with_http_info(esignaturestatuses, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseRenewalMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_all_lease_renewals_for_all_properties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **esignaturestatuses** | [**Array&lt;String&gt;**](String.md) | Filters result to any lease renewal with an esignature status that matches the given statuses. |  |
| **propertyids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to only include leases whose unit belongs to the specified set of property ids. | [optional] |
| **rentalownerids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any lease whose unit belongs to a property with rental owner in the specified set of rental owner ids. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;LeaseRenewalMessage&gt;**](LeaseRenewalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_by_id

> <LeaseMessage> get_lease_by_id(lease_id)

Retrieve a lease

Retrieves a specific lease.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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


## get_lease_charge_recurring_transaction_by_id

> <LeaseChargeRecurringTransactionMessage> get_lease_charge_recurring_transaction_by_id(lease_id, transaction_id)

Retrieve a recurring charge

Retrieves a recurring charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
transaction_id = 56 # Integer | 

begin
  # Retrieve a recurring charge
  result = api_instance.get_lease_charge_recurring_transaction_by_id(lease_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_charge_recurring_transaction_by_id: #{e}"
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
  puts "Error when calling LeasesApi->get_lease_charge_recurring_transaction_by_id_with_http_info: #{e}"
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


## get_lease_epay_settings_by_id

> <EPaySettingsMessage> get_lease_epay_settings_by_id(lease_id)

Retrieve ePay settings

Retrieves ePay settings for a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 

begin
  # Retrieve ePay settings
  result = api_instance.get_lease_epay_settings_by_id(lease_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_epay_settings_by_id: #{e}"
end
```

#### Using the get_lease_epay_settings_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EPaySettingsMessage>, Integer, Hash)> get_lease_epay_settings_by_id_with_http_info(lease_id)

```ruby
begin
  # Retrieve ePay settings
  data, status_code, headers = api_instance.get_lease_epay_settings_by_id_with_http_info(lease_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EPaySettingsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_epay_settings_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |

### Return type

[**EPaySettingsMessage**](EPaySettingsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_ledger_refund_by_id

> <LeaseLedgerRefundMessage> get_lease_ledger_refund_by_id(lease_id, refund_id)

Retrieve a refund

Retrieves a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
refund_id = 56 # Integer | 

begin
  # Retrieve a refund
  result = api_instance.get_lease_ledger_refund_by_id(lease_id, refund_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_ledger_refund_by_id: #{e}"
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
  puts "Error when calling LeasesApi->get_lease_ledger_refund_by_id_with_http_info: #{e}"
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

Retrieves a specific lease transaction.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease Transactions</span> - `View`

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


## get_lease_move_out_data_by_tenant_id

> <LeaseMoveOutDataMessage> get_lease_move_out_data_by_tenant_id(lease_id, tenant_id)

Retrieve a move out

Retrieves move out data for a single tenant on a given lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`              <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
tenant_id = 56 # Integer | 

begin
  # Retrieve a move out
  result = api_instance.get_lease_move_out_data_by_tenant_id(lease_id, tenant_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_move_out_data_by_tenant_id: #{e}"
end
```

#### Using the get_lease_move_out_data_by_tenant_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseMoveOutDataMessage>, Integer, Hash)> get_lease_move_out_data_by_tenant_id_with_http_info(lease_id, tenant_id)

```ruby
begin
  # Retrieve a move out
  data, status_code, headers = api_instance.get_lease_move_out_data_by_tenant_id_with_http_info(lease_id, tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseMoveOutDataMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_move_out_data_by_tenant_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **tenant_id** | **Integer** |  |  |

### Return type

[**LeaseMoveOutDataMessage**](LeaseMoveOutDataMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_move_out_information_by_id

> <Array<LeaseMoveOutDataMessage>> get_lease_move_out_information_by_id(lease_id, opts)

Retrieve all move outs

Retrieves a list of move out dates for a given lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`              <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all move outs
  result = api_instance.get_lease_move_out_information_by_id(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_move_out_information_by_id: #{e}"
end
```

#### Using the get_lease_move_out_information_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseMoveOutDataMessage>>, Integer, Hash)> get_lease_move_out_information_by_id_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all move outs
  data, status_code, headers = api_instance.get_lease_move_out_information_by_id_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseMoveOutDataMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_move_out_information_by_id_with_http_info: #{e}"
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

[**Array&lt;LeaseMoveOutDataMessage&gt;**](LeaseMoveOutDataMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lease_note_by_note_id

> <NoteMessage> get_lease_note_by_note_id(lease_id, note_id)

Retrieve a note

Retrieves a lease note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
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
  # Retrieve a note
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

Retrieve all notes

Retrieves all lease notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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
  # Retrieve all notes
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
  # Retrieve all notes
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

Retrieve all outstanding balances

Retrieves a list of lease outstanding balances.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Outstanding Balances</span> - `View`

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
  # Retrieve all outstanding balances
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
  # Retrieve all outstanding balances
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


## get_lease_recurring_credit_by_id

> <LeaseRecurringCreditMessage> get_lease_recurring_credit_by_id(lease_id, transaction_id)

Retrieve a recurring credit

Retrieves a recurring credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
transaction_id = 56 # Integer | 

begin
  # Retrieve a recurring credit
  result = api_instance.get_lease_recurring_credit_by_id(lease_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_recurring_credit_by_id: #{e}"
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
  puts "Error when calling LeasesApi->get_lease_recurring_credit_by_id_with_http_info: #{e}"
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

Retrieves all recurring transactions.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`

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

api_instance = Buildium::LeasesApi.new
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
  puts "Error when calling LeasesApi->get_lease_recurring_transactions: #{e}"
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
  puts "Error when calling LeasesApi->get_lease_recurring_transactions_with_http_info: #{e}"
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


## get_lease_renewal_by_id

> <LeaseRenewalMessage> get_lease_renewal_by_id(lease_id, renewal_id)

Retrieve a renewal history item for a lease.

Retrieves a renewal history item for a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
renewal_id = 56 # Integer | 

begin
  # Retrieve a renewal history item for a lease.
  result = api_instance.get_lease_renewal_by_id(lease_id, renewal_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_renewal_by_id: #{e}"
end
```

#### Using the get_lease_renewal_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRenewalMessage>, Integer, Hash)> get_lease_renewal_by_id_with_http_info(lease_id, renewal_id)

```ruby
begin
  # Retrieve a renewal history item for a lease.
  data, status_code, headers = api_instance.get_lease_renewal_by_id_with_http_info(lease_id, renewal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRenewalMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_lease_renewal_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **renewal_id** | **Integer** |  |  |

### Return type

[**LeaseRenewalMessage**](LeaseRenewalMessage.md)

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
  lastupdatedfrom: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any leases that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  lastupdatedto: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Filters results to any leases that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
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
| **lastupdatedfrom** | **Time** | Filters results to any leases that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
| **lastupdatedto** | **Time** | Filters results to any leases that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ. | [optional] |
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


## get_recurring_lease_payments_by_id

> <LeaseRecurringPaymentMessage> get_recurring_lease_payments_by_id(lease_id, payment_id)

Retrieve a recurring payment

Retrieves a recurring payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease Transactions</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
payment_id = 56 # Integer | 

begin
  # Retrieve a recurring payment
  result = api_instance.get_recurring_lease_payments_by_id(lease_id, payment_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_recurring_lease_payments_by_id: #{e}"
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
  puts "Error when calling LeasesApi->get_recurring_lease_payments_by_id_with_http_info: #{e}"
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


## get_rent

> <Array<LeaseRentMessage>> get_rent(lease_id, opts)

Retrieve all rent schedules

The rent schedule provides details (dollar amount, day of the month, etc) of the recurring charges that are applied to the lease ledger each rent cycle. A lease may have more than one rent schedule associated with it if the rent terms change within the duration of the lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all rent schedules
  result = api_instance.get_rent(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_rent: #{e}"
end
```

#### Using the get_rent_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<LeaseRentMessage>>, Integer, Hash)> get_rent_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all rent schedules
  data, status_code, headers = api_instance.get_rent_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<LeaseRentMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_rent_with_http_info: #{e}"
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

[**Array&lt;LeaseRentMessage&gt;**](LeaseRentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rent_by_id

> <LeaseRentMessage> get_rent_by_id(lease_id, rent_id)

Retrieve a rent schedule

Retrieves a specific rent schedule for a lease. The rent schedule provides details (dollar amount, day of the month, etc) of the recurring charges that are applied to the lease ledger each rent cycle.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
rent_id = 56 # Integer | 

begin
  # Retrieve a rent schedule
  result = api_instance.get_rent_by_id(lease_id, rent_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_rent_by_id: #{e}"
end
```

#### Using the get_rent_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseRentMessage>, Integer, Hash)> get_rent_by_id_with_http_info(lease_id, rent_id)

```ruby
begin
  # Retrieve a rent schedule
  data, status_code, headers = api_instance.get_rent_by_id_with_http_info(lease_id, rent_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseRentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_rent_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **rent_id** | **Integer** |  |  |

### Return type

[**LeaseRentMessage**](LeaseRentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_renters_insurance_policies

> <Array<RentersInsurancePolicyMessage>> get_renters_insurance_policies(lease_id, opts)

Retrieve all insurance policies

Retrieves all renters insurance policies for a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all insurance policies
  result = api_instance.get_renters_insurance_policies(lease_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_renters_insurance_policies: #{e}"
end
```

#### Using the get_renters_insurance_policies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RentersInsurancePolicyMessage>>, Integer, Hash)> get_renters_insurance_policies_with_http_info(lease_id, opts)

```ruby
begin
  # Retrieve all insurance policies
  data, status_code, headers = api_instance.get_renters_insurance_policies_with_http_info(lease_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RentersInsurancePolicyMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_renters_insurance_policies_with_http_info: #{e}"
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

[**Array&lt;RentersInsurancePolicyMessage&gt;**](RentersInsurancePolicyMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_renters_insurance_policy_by_id

> <RentersInsurancePolicyMessage> get_renters_insurance_policy_by_id(lease_id, policy_id)

Retrieve an insurance policy

Retrieves a renters insurance policy.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
policy_id = 56 # Integer | 

begin
  # Retrieve an insurance policy
  result = api_instance.get_renters_insurance_policy_by_id(lease_id, policy_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_renters_insurance_policy_by_id: #{e}"
end
```

#### Using the get_renters_insurance_policy_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RentersInsurancePolicyMessage>, Integer, Hash)> get_renters_insurance_policy_by_id_with_http_info(lease_id, policy_id)

```ruby
begin
  # Retrieve an insurance policy
  data, status_code, headers = api_instance.get_renters_insurance_policy_by_id_with_http_info(lease_id, policy_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RentersInsurancePolicyMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->get_renters_insurance_policy_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **policy_id** | **Integer** |  |  |

### Return type

[**RentersInsurancePolicyMessage**](RentersInsurancePolicyMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## undo_tenant_moveout

> undo_tenant_moveout(lease_id, tenant_id)

Delete a move out

Deletes move out data for a tenant on a given lease.              <br /><br /><h4>Required Permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
tenant_id = 56 # Integer | 

begin
  # Delete a move out
  api_instance.undo_tenant_moveout(lease_id, tenant_id)
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->undo_tenant_moveout: #{e}"
end
```

#### Using the undo_tenant_moveout_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> undo_tenant_moveout_with_http_info(lease_id, tenant_id)

```ruby
begin
  # Delete a move out
  data, status_code, headers = api_instance.undo_tenant_moveout_with_http_info(lease_id, tenant_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->undo_tenant_moveout_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **tenant_id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_lease

> <LeaseMessage> update_lease(lease_id, lease_put_message)

Update a lease

Update a signed lease.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`

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


## update_lease_charge

> <LeaseTransactionMessage> update_lease_charge(lease_id, charge_id, lease_charge_put_message)

Update a charge

Updates a charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
charge_id = 56 # Integer | 
lease_charge_put_message = Buildium::LeaseChargePutMessage.new({date: Date.today, lines: [Buildium::LeaseChargeLineSaveMessage.new({amount: 3.56, gl_account_id: 37})]}) # LeaseChargePutMessage | 

begin
  # Update a charge
  result = api_instance.update_lease_charge(lease_id, charge_id, lease_charge_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_charge: #{e}"
end
```

#### Using the update_lease_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeaseTransactionMessage>, Integer, Hash)> update_lease_charge_with_http_info(lease_id, charge_id, lease_charge_put_message)

```ruby
begin
  # Update a charge
  data, status_code, headers = api_instance.update_lease_charge_with_http_info(lease_id, charge_id, lease_charge_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeaseTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **charge_id** | **Integer** |  |  |
| **lease_charge_put_message** | [**LeaseChargePutMessage**](LeaseChargePutMessage.md) |  |  |

### Return type

[**LeaseTransactionMessage**](LeaseTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_epay_settings

> <EPaySettingsMessage> update_lease_epay_settings(lease_id, e_pay_settings_put_message)

Update ePay settings

Updates ePay settings for a lease              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
e_pay_settings_put_message = Buildium::EPaySettingsPutMessage.new({eft_payments: Buildium::EFTPaymentsPutMessage.new({payments_enabled: false}), credit_card_payments: Buildium::CCPaymentsPutMessage.new({payments_enabled: false}), offline_payments: Buildium::OfflinePaymentsPutMessage.new({display_info_in_resident_center: false, display_company_address: false})}) # EPaySettingsPutMessage | 

begin
  # Update ePay settings
  result = api_instance.update_lease_epay_settings(lease_id, e_pay_settings_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_epay_settings: #{e}"
end
```

#### Using the update_lease_epay_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EPaySettingsMessage>, Integer, Hash)> update_lease_epay_settings_with_http_info(lease_id, e_pay_settings_put_message)

```ruby
begin
  # Update ePay settings
  data, status_code, headers = api_instance.update_lease_epay_settings_with_http_info(lease_id, e_pay_settings_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EPaySettingsMessage>
rescue Buildium::ApiError => e
  puts "Error when calling LeasesApi->update_lease_epay_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **lease_id** | **Integer** |  |  |
| **e_pay_settings_put_message** | [**EPaySettingsPutMessage**](EPaySettingsPutMessage.md) |  |  |

### Return type

[**EPaySettingsMessage**](EPaySettingsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_lease_note

> <NoteMessage> update_lease_note(lease_id, note_id, note_put_message)

Update a note

Updates a lease note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`

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

api_instance = Buildium::LeasesApi.new
lease_id = 56 # Integer | 
note_id = 56 # Integer | 
note_put_message = Buildium::NotePutMessage.new({note: 'note_example'}) # NotePutMessage | 

begin
  # Update a note
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
  # Update a note
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

