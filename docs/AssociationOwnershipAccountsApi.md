# Buildium::AssociationOwnershipAccountsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_association_ownership_account**](AssociationOwnershipAccountsApi.md#create_association_ownership_account) | **POST** /v1/associations/ownershipaccounts | Create an ownership account |
| [**create_association_ownership_account_note**](AssociationOwnershipAccountsApi.md#create_association_ownership_account_note) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes | Create a note |
| [**create_ownership_account_credit**](AssociationOwnershipAccountsApi.md#create_ownership_account_credit) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/credits | Create a ledger credit |
| [**create_ownership_account_credit_recurring_transaction**](AssociationOwnershipAccountsApi.md#create_ownership_account_credit_recurring_transaction) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcredits | Create a recurring credit |
| [**create_ownership_account_deposit_withholding**](AssociationOwnershipAccountsApi.md#create_ownership_account_deposit_withholding) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/applieddeposits | Create a deposit withholding |
| [**create_ownership_account_ledger_charge**](AssociationOwnershipAccountsApi.md#create_ownership_account_ledger_charge) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/charges | Create a ledger charge |
| [**create_ownership_account_ledger_payment**](AssociationOwnershipAccountsApi.md#create_ownership_account_ledger_payment) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/payments | Create a ledger payment |
| [**create_ownership_account_recurring_payment**](AssociationOwnershipAccountsApi.md#create_ownership_account_recurring_payment) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringpayments | Create a recurring payment |
| [**create_ownership_account_refund**](AssociationOwnershipAccountsApi.md#create_ownership_account_refund) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/refunds | Create a refund |
| [**create_ownership_accounts_charge_recurring_transaction**](AssociationOwnershipAccountsApi.md#create_ownership_accounts_charge_recurring_transaction) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcharges | Create a recurring charge |
| [**get_all_ownership_accounts**](AssociationOwnershipAccountsApi.md#get_all_ownership_accounts) | **GET** /v1/associations/ownershipaccounts | Retrieve all ownership accounts |
| [**get_association_ownership_account_note_by_note_id**](AssociationOwnershipAccountsApi.md#get_association_ownership_account_note_by_note_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes/{noteId} | Retrieve a note |
| [**get_association_ownership_account_notes**](AssociationOwnershipAccountsApi.md#get_association_ownership_account_notes) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes | Retrieve all notes |
| [**get_association_recurring_transaction**](AssociationOwnershipAccountsApi.md#get_association_recurring_transaction) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringtransactions | Retrieve all recurring transactions |
| [**get_ownership_account_by_id**](AssociationOwnershipAccountsApi.md#get_ownership_account_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId} | Retrieve an ownership account |
| [**get_ownership_account_ledger**](AssociationOwnershipAccountsApi.md#get_ownership_account_ledger) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/transactions | Retrieve ownership account transactions |
| [**get_ownership_account_outstanding_balances**](AssociationOwnershipAccountsApi.md#get_ownership_account_outstanding_balances) | **GET** /v1/associations/ownershipaccounts/outstandingbalances | Retrieve all outstanding balances |
| [**get_ownership_account_recurring_credit_by_id**](AssociationOwnershipAccountsApi.md#get_ownership_account_recurring_credit_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcredits/{transactionId} | Retrieve a recurring credit |
| [**get_ownership_account_refund_by_id**](AssociationOwnershipAccountsApi.md#get_ownership_account_refund_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/refunds/{refundId} | Retrieve a refund |
| [**get_ownership_account_transaction_by_id**](AssociationOwnershipAccountsApi.md#get_ownership_account_transaction_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/transactions/{transactionId} | Retrieve an ownership account transaction |
| [**get_ownership_accounts_charge_recurring_transaction_by_id**](AssociationOwnershipAccountsApi.md#get_ownership_accounts_charge_recurring_transaction_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcharges/{transactionId} | Retrieve a recurring charge |
| [**get_recurring_ownership_account_payments_by_id**](AssociationOwnershipAccountsApi.md#get_recurring_ownership_account_payments_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringpayments/{paymentId} | Retrieve a recurring payment |
| [**update_association_ownership_account**](AssociationOwnershipAccountsApi.md#update_association_ownership_account) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId} | Update an ownership account |
| [**update_association_ownership_account_note**](AssociationOwnershipAccountsApi.md#update_association_ownership_account_note) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes/{noteId} | Update a note |
| [**update_ownership_account_charge**](AssociationOwnershipAccountsApi.md#update_ownership_account_charge) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId}/charges/{chargeId} | Update a charge |


## create_association_ownership_account

> <AssociationOwnershipAccountMessage> create_association_ownership_account(association_ownership_account_post_message)

Create an ownership account

Creates an ownership account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership accounts</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations &gt; Owners</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
association_ownership_account_post_message = Buildium::AssociationOwnershipAccountPostMessage.new({unit_id: 37, date_of_purchase: Date.today, send_welcome_email: false, replace_existing_ownership_account: false}) # AssociationOwnershipAccountPostMessage | 

begin
  # Create an ownership account
  result = api_instance.create_association_ownership_account(association_ownership_account_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_association_ownership_account: #{e}"
end
```

#### Using the create_association_ownership_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnershipAccountMessage>, Integer, Hash)> create_association_ownership_account_with_http_info(association_ownership_account_post_message)

```ruby
begin
  # Create an ownership account
  data, status_code, headers = api_instance.create_association_ownership_account_with_http_info(association_ownership_account_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationOwnershipAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_association_ownership_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_ownership_account_post_message** | [**AssociationOwnershipAccountPostMessage**](AssociationOwnershipAccountPostMessage.md) |  |  |

### Return type

[**AssociationOwnershipAccountMessage**](AssociationOwnershipAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_association_ownership_account_note

> <NoteMessage> create_association_ownership_account_note(ownership_account_id, note_post_message)

Create a note

Creates a new ownership account note.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership accounts</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
note_post_message = Buildium::NotePostMessage.new({note: 'note_example'}) # NotePostMessage | 

begin
  # Create a note
  result = api_instance.create_association_ownership_account_note(ownership_account_id, note_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_association_ownership_account_note: #{e}"
end
```

#### Using the create_association_ownership_account_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> create_association_ownership_account_note_with_http_info(ownership_account_id, note_post_message)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_association_ownership_account_note_with_http_info(ownership_account_id, note_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_association_ownership_account_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **note_post_message** | [**NotePostMessage**](NotePostMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_credit

> <OwnershipAccountTransactionMessage> create_ownership_account_credit(ownership_account_id, ownership_account_credit_post_message)

Create a ledger credit

Creates a ledger credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
ownership_account_credit_post_message = Buildium::OwnershipAccountCreditPostMessage.new({date: Date.today, credit_type: 'WaiveUnpaid', lines: [Buildium::OwnershipAccountCreditLinePostMessage.new({amount: 3.56, gl_account_id: 37})]}) # OwnershipAccountCreditPostMessage | 

begin
  # Create a ledger credit
  result = api_instance.create_ownership_account_credit(ownership_account_id, ownership_account_credit_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_credit: #{e}"
end
```

#### Using the create_ownership_account_credit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> create_ownership_account_credit_with_http_info(ownership_account_id, ownership_account_credit_post_message)

```ruby
begin
  # Create a ledger credit
  data, status_code, headers = api_instance.create_ownership_account_credit_with_http_info(ownership_account_id, ownership_account_credit_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_credit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **ownership_account_credit_post_message** | [**OwnershipAccountCreditPostMessage**](OwnershipAccountCreditPostMessage.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_credit_recurring_transaction

> <OwnershipAccountRecurringCreditMessage> create_ownership_account_credit_recurring_transaction(ownership_account_id, credit_recurring_transaction_post_message)

Create a recurring credit

Creates a recurring credit transaction that will post automatically on the specified ownership account ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
credit_recurring_transaction_post_message = Buildium::CreditRecurringTransactionPostMessage.new({credit_type: 'WaiveUnpaid', post_days_in_advance: 37, frequency: 'Monthly', first_occurrence_date: Date.today}) # CreditRecurringTransactionPostMessage | 

begin
  # Create a recurring credit
  result = api_instance.create_ownership_account_credit_recurring_transaction(ownership_account_id, credit_recurring_transaction_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_credit_recurring_transaction: #{e}"
end
```

#### Using the create_ownership_account_credit_recurring_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountRecurringCreditMessage>, Integer, Hash)> create_ownership_account_credit_recurring_transaction_with_http_info(ownership_account_id, credit_recurring_transaction_post_message)

```ruby
begin
  # Create a recurring credit
  data, status_code, headers = api_instance.create_ownership_account_credit_recurring_transaction_with_http_info(ownership_account_id, credit_recurring_transaction_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountRecurringCreditMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_credit_recurring_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **credit_recurring_transaction_post_message** | [**CreditRecurringTransactionPostMessage**](CreditRecurringTransactionPostMessage.md) |  |  |

### Return type

[**OwnershipAccountRecurringCreditMessage**](OwnershipAccountRecurringCreditMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_deposit_withholding

> <OwnershipAccountTransactionMessage> create_ownership_account_deposit_withholding(ownership_account_id, ownership_account_deposit_withholding_post_message)

Create a deposit withholding

Withholds an association owner deposit by reallocating the funds from a liability account to an income account to cover an expense(s).              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`              <span class=\"permissionBlock\">Accounting &gt; General Ledger Accounts</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
ownership_account_deposit_withholding_post_message = Buildium::OwnershipAccountDepositWithholdingPostMessage.new({entry_date: Date.today, deposit_liability_gl_account_id: 37}) # OwnershipAccountDepositWithholdingPostMessage | 

begin
  # Create a deposit withholding
  result = api_instance.create_ownership_account_deposit_withholding(ownership_account_id, ownership_account_deposit_withholding_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_deposit_withholding: #{e}"
end
```

#### Using the create_ownership_account_deposit_withholding_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> create_ownership_account_deposit_withholding_with_http_info(ownership_account_id, ownership_account_deposit_withholding_post_message)

```ruby
begin
  # Create a deposit withholding
  data, status_code, headers = api_instance.create_ownership_account_deposit_withholding_with_http_info(ownership_account_id, ownership_account_deposit_withholding_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_deposit_withholding_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **ownership_account_deposit_withholding_post_message** | [**OwnershipAccountDepositWithholdingPostMessage**](OwnershipAccountDepositWithholdingPostMessage.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_ledger_charge

> <OwnershipAccountTransactionMessage> create_ownership_account_ledger_charge(ownership_account_id, ownership_account_ledger_charge_post_message)

Create a ledger charge

Creates a ledger charge.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`  <br />

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | The ownership account identifier.
ownership_account_ledger_charge_post_message = Buildium::OwnershipAccountLedgerChargePostMessage.new({date: Date.today, lines: [Buildium::OwnershipAccountLedgerChargeLinesSaveMessage.new({amount: 3.56, gl_account_id: 37})]}) # OwnershipAccountLedgerChargePostMessage | 

begin
  # Create a ledger charge
  result = api_instance.create_ownership_account_ledger_charge(ownership_account_id, ownership_account_ledger_charge_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_ledger_charge: #{e}"
end
```

#### Using the create_ownership_account_ledger_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> create_ownership_account_ledger_charge_with_http_info(ownership_account_id, ownership_account_ledger_charge_post_message)

```ruby
begin
  # Create a ledger charge
  data, status_code, headers = api_instance.create_ownership_account_ledger_charge_with_http_info(ownership_account_id, ownership_account_ledger_charge_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_ledger_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** | The ownership account identifier. |  |
| **ownership_account_ledger_charge_post_message** | [**OwnershipAccountLedgerChargePostMessage**](OwnershipAccountLedgerChargePostMessage.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_ledger_payment

> <OwnershipAccountTransactionMessage> create_ownership_account_ledger_payment(ownership_account_id, ownership_account_ledger_payment_post_message)

Create a ledger payment

Creates a ledger payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
ownership_account_ledger_payment_post_message = Buildium::OwnershipAccountLedgerPaymentPostMessage.new({date: Date.today, payment_method: 'Check', send_email_receipt: false, lines: [Buildium::OwnershipAccountLedgerPaymentLineSaveMessage.new({amount: 3.56, gl_account_id: 37})]}) # OwnershipAccountLedgerPaymentPostMessage | 

begin
  # Create a ledger payment
  result = api_instance.create_ownership_account_ledger_payment(ownership_account_id, ownership_account_ledger_payment_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_ledger_payment: #{e}"
end
```

#### Using the create_ownership_account_ledger_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> create_ownership_account_ledger_payment_with_http_info(ownership_account_id, ownership_account_ledger_payment_post_message)

```ruby
begin
  # Create a ledger payment
  data, status_code, headers = api_instance.create_ownership_account_ledger_payment_with_http_info(ownership_account_id, ownership_account_ledger_payment_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_ledger_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **ownership_account_ledger_payment_post_message** | [**OwnershipAccountLedgerPaymentPostMessage**](OwnershipAccountLedgerPaymentPostMessage.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_recurring_payment

> <OwnershipAccountRecurringPaymentMessage> create_ownership_account_recurring_payment(ownership_account_id, payment_recurring_transaction_post_message)

Create a recurring payment

Creates a recurring payment that will post automatically on the specified ownership account ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
payment_recurring_transaction_post_message = Buildium::PaymentRecurringTransactionPostMessage.new({payment_method: 'Check', first_occurrence_date: Date.today, post_days_in_advance: 37, frequency: 'Monthly'}) # PaymentRecurringTransactionPostMessage | 

begin
  # Create a recurring payment
  result = api_instance.create_ownership_account_recurring_payment(ownership_account_id, payment_recurring_transaction_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_recurring_payment: #{e}"
end
```

#### Using the create_ownership_account_recurring_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountRecurringPaymentMessage>, Integer, Hash)> create_ownership_account_recurring_payment_with_http_info(ownership_account_id, payment_recurring_transaction_post_message)

```ruby
begin
  # Create a recurring payment
  data, status_code, headers = api_instance.create_ownership_account_recurring_payment_with_http_info(ownership_account_id, payment_recurring_transaction_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountRecurringPaymentMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_recurring_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **payment_recurring_transaction_post_message** | [**PaymentRecurringTransactionPostMessage**](PaymentRecurringTransactionPostMessage.md) |  |  |

### Return type

[**OwnershipAccountRecurringPaymentMessage**](OwnershipAccountRecurringPaymentMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_account_refund

> <OwnershipAccountRefundMessage> create_ownership_account_refund(ownership_account_id, ownership_account_refund_post_message)

Create a refund

Creates a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
ownership_account_refund_post_message = Buildium::OwnershipAccountRefundPostMessage.new({date: Date.today, payee_user_ids: [37], bank_account_id: 37, address: Buildium::SaveAddressMessage.new({address_line1: 'address_line1_example', country: 'UnitedStates'}), lines: [Buildium::OwnershipAccountRefundLinesPostMessage.new({amount: 3.56, gl_account_id: 37})]}) # OwnershipAccountRefundPostMessage | 

begin
  # Create a refund
  result = api_instance.create_ownership_account_refund(ownership_account_id, ownership_account_refund_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_refund: #{e}"
end
```

#### Using the create_ownership_account_refund_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountRefundMessage>, Integer, Hash)> create_ownership_account_refund_with_http_info(ownership_account_id, ownership_account_refund_post_message)

```ruby
begin
  # Create a refund
  data, status_code, headers = api_instance.create_ownership_account_refund_with_http_info(ownership_account_id, ownership_account_refund_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountRefundMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_account_refund_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **ownership_account_refund_post_message** | [**OwnershipAccountRefundPostMessage**](OwnershipAccountRefundPostMessage.md) |  |  |

### Return type

[**OwnershipAccountRefundMessage**](OwnershipAccountRefundMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_ownership_accounts_charge_recurring_transaction

> <OwnershipAccountChargeRecurringTransactionMessage> create_ownership_accounts_charge_recurring_transaction(ownership_account_id, charge_recurring_transaction_post_message)

Create a recurring charge

Creates a recurring charge transaction that will post automatically on the specified ownership account ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
charge_recurring_transaction_post_message = Buildium::ChargeRecurringTransactionPostMessage.new({gl_account_id: 37, amount: 3.56, first_occurrence_date: Date.today, post_days_in_advance: 37, frequency: 'Monthly'}) # ChargeRecurringTransactionPostMessage | 

begin
  # Create a recurring charge
  result = api_instance.create_ownership_accounts_charge_recurring_transaction(ownership_account_id, charge_recurring_transaction_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_accounts_charge_recurring_transaction: #{e}"
end
```

#### Using the create_ownership_accounts_charge_recurring_transaction_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountChargeRecurringTransactionMessage>, Integer, Hash)> create_ownership_accounts_charge_recurring_transaction_with_http_info(ownership_account_id, charge_recurring_transaction_post_message)

```ruby
begin
  # Create a recurring charge
  data, status_code, headers = api_instance.create_ownership_accounts_charge_recurring_transaction_with_http_info(ownership_account_id, charge_recurring_transaction_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountChargeRecurringTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->create_ownership_accounts_charge_recurring_transaction_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **charge_recurring_transaction_post_message** | [**ChargeRecurringTransactionPostMessage**](ChargeRecurringTransactionPostMessage.md) |  |  |

### Return type

[**OwnershipAccountChargeRecurringTransactionMessage**](OwnershipAccountChargeRecurringTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_ownership_accounts

> <Array<AssociationOwnershipAccountMessage>> get_all_ownership_accounts(opts)

Retrieve all ownership accounts

Retrieves a list of ownership accounts.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership accounts</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
opts = {
  associationids: [37], # Array<Integer> | Filters results to any ownership accounts who belong to the specified set of association ids.
  unitorowner: 'unitorowner_example', # String | Filters results to any association whose unit or owner *contains* the specified value.
  datefrom: Date.parse('2013-10-20'), # Date | Filters results to any ownership account whose start date is greater than or equal to the specified value.
  dateto: Date.parse('2013-10-20'), # Date | Filters results to any ownership account whose start date is less than or equal to the specified value.
  status: ['Active'], # Array<String> | Filters results by the status of the association. If no status is specified, `active`, `past` and `future` associations will be returned.
  delinquencystatuses: ['NoDelinquency'], # Array<String> | Filters results by the delinquency status of the ownership account. If no status is specified, ownership accounts of any delinquency status will be returned.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all ownership accounts
  result = api_instance.get_all_ownership_accounts(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_all_ownership_accounts: #{e}"
end
```

#### Using the get_all_ownership_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AssociationOwnershipAccountMessage>>, Integer, Hash)> get_all_ownership_accounts_with_http_info(opts)

```ruby
begin
  # Retrieve all ownership accounts
  data, status_code, headers = api_instance.get_all_ownership_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AssociationOwnershipAccountMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_all_ownership_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **associationids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any ownership accounts who belong to the specified set of association ids. | [optional] |
| **unitorowner** | **String** | Filters results to any association whose unit or owner *contains* the specified value. | [optional] |
| **datefrom** | **Date** | Filters results to any ownership account whose start date is greater than or equal to the specified value. | [optional] |
| **dateto** | **Date** | Filters results to any ownership account whose start date is less than or equal to the specified value. | [optional] |
| **status** | [**Array&lt;String&gt;**](String.md) | Filters results by the status of the association. If no status is specified, &#x60;active&#x60;, &#x60;past&#x60; and &#x60;future&#x60; associations will be returned. | [optional] |
| **delinquencystatuses** | [**Array&lt;String&gt;**](String.md) | Filters results by the delinquency status of the ownership account. If no status is specified, ownership accounts of any delinquency status will be returned. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;AssociationOwnershipAccountMessage&gt;**](AssociationOwnershipAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_ownership_account_note_by_note_id

> <NoteMessage> get_association_ownership_account_note_by_note_id(ownership_account_id, note_id)

Retrieve a note

Retrieves an ownership account note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; OwnershipAccounts</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
note_id = 56 # Integer | 

begin
  # Retrieve a note
  result = api_instance.get_association_ownership_account_note_by_note_id(ownership_account_id, note_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_association_ownership_account_note_by_note_id: #{e}"
end
```

#### Using the get_association_ownership_account_note_by_note_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> get_association_ownership_account_note_by_note_id_with_http_info(ownership_account_id, note_id)

```ruby
begin
  # Retrieve a note
  data, status_code, headers = api_instance.get_association_ownership_account_note_by_note_id_with_http_info(ownership_account_id, note_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_association_ownership_account_note_by_note_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_association_ownership_account_notes

> <Array<NoteMessage>> get_association_ownership_account_notes(ownership_account_id, opts)

Retrieve all notes

Retrieves notes for an ownership account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; OwnershipAccounts</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
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
  result = api_instance.get_association_ownership_account_notes(ownership_account_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_association_ownership_account_notes: #{e}"
end
```

#### Using the get_association_ownership_account_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<NoteMessage>>, Integer, Hash)> get_association_ownership_account_notes_with_http_info(ownership_account_id, opts)

```ruby
begin
  # Retrieve all notes
  data, status_code, headers = api_instance.get_association_ownership_account_notes_with_http_info(ownership_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<NoteMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_association_ownership_account_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
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


## get_association_recurring_transaction

> <Array<RecurringTransactionMessage>> get_association_recurring_transaction(ownership_account_id, opts)

Retrieve all recurring transactions

Retrieves all recurring transactions for an ownership account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
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
  puts "Error when calling AssociationOwnershipAccountsApi->get_association_recurring_transaction: #{e}"
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
  puts "Error when calling AssociationOwnershipAccountsApi->get_association_recurring_transaction_with_http_info: #{e}"
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


## get_ownership_account_by_id

> <AssociationOwnershipAccountMessage> get_ownership_account_by_id(ownership_account_id)

Retrieve an ownership account

Retrieves a specific ownership account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership accounts</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | The ownership account identifier.

begin
  # Retrieve an ownership account
  result = api_instance.get_ownership_account_by_id(ownership_account_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_by_id: #{e}"
end
```

#### Using the get_ownership_account_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnershipAccountMessage>, Integer, Hash)> get_ownership_account_by_id_with_http_info(ownership_account_id)

```ruby
begin
  # Retrieve an ownership account
  data, status_code, headers = api_instance.get_ownership_account_by_id_with_http_info(ownership_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationOwnershipAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** | The ownership account identifier. |  |

### Return type

[**AssociationOwnershipAccountMessage**](AssociationOwnershipAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ownership_account_ledger

> <Array<OwnershipAccountTransactionMessage>> get_ownership_account_ledger(ownership_account_id, opts)

Retrieve ownership account transactions

Retrieves all transactions for a specific ownership account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
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
  # Retrieve ownership account transactions
  result = api_instance.get_ownership_account_ledger(ownership_account_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_ledger: #{e}"
end
```

#### Using the get_ownership_account_ledger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<OwnershipAccountTransactionMessage>>, Integer, Hash)> get_ownership_account_ledger_with_http_info(ownership_account_id, opts)

```ruby
begin
  # Retrieve ownership account transactions
  data, status_code, headers = api_instance.get_ownership_account_ledger_with_http_info(ownership_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<OwnershipAccountTransactionMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_ledger_with_http_info: #{e}"
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

Retrieves a list of ownership account outstanding balances.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Outstanding Balances</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
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
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_outstanding_balances: #{e}"
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
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_outstanding_balances_with_http_info: #{e}"
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

Retrieves a recurring credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
transaction_id = 56 # Integer | 

begin
  # Retrieve a recurring credit
  result = api_instance.get_ownership_account_recurring_credit_by_id(ownership_account_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_recurring_credit_by_id: #{e}"
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
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_recurring_credit_by_id_with_http_info: #{e}"
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

Retrieves a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
refund_id = 56 # Integer | 

begin
  # Retrieve a refund
  result = api_instance.get_ownership_account_refund_by_id(ownership_account_id, refund_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_refund_by_id: #{e}"
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
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_refund_by_id_with_http_info: #{e}"
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

Retrieve an ownership account transaction

Retrieves a single ownership account transaction.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | The ownership account identifier.
transaction_id = 56 # Integer | The transaction identifier.

begin
  # Retrieve an ownership account transaction
  result = api_instance.get_ownership_account_transaction_by_id(ownership_account_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_transaction_by_id: #{e}"
end
```

#### Using the get_ownership_account_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> get_ownership_account_transaction_by_id_with_http_info(ownership_account_id, transaction_id)

```ruby
begin
  # Retrieve an ownership account transaction
  data, status_code, headers = api_instance.get_ownership_account_transaction_by_id_with_http_info(ownership_account_id, transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_account_transaction_by_id_with_http_info: #{e}"
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

Retrieves a recurring charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
transaction_id = 56 # Integer | 

begin
  # Retrieve a recurring charge
  result = api_instance.get_ownership_accounts_charge_recurring_transaction_by_id(ownership_account_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_accounts_charge_recurring_transaction_by_id: #{e}"
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
  puts "Error when calling AssociationOwnershipAccountsApi->get_ownership_accounts_charge_recurring_transaction_by_id_with_http_info: #{e}"
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

Retrieves a recurring payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
payment_id = 56 # Integer | 

begin
  # Retrieve a recurring payment
  result = api_instance.get_recurring_ownership_account_payments_by_id(ownership_account_id, payment_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->get_recurring_ownership_account_payments_by_id: #{e}"
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
  puts "Error when calling AssociationOwnershipAccountsApi->get_recurring_ownership_account_payments_by_id_with_http_info: #{e}"
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


## update_association_ownership_account

> <AssociationOwnershipAccountMessage> update_association_ownership_account(ownership_account_id, association_ownership_account_put_message)

Update an ownership account

Updates an ownership account.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership accounts</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
association_ownership_account_put_message = Buildium::AssociationOwnershipAccountPutMessage.new({date_of_purchase: Date.today}) # AssociationOwnershipAccountPutMessage | 

begin
  # Update an ownership account
  result = api_instance.update_association_ownership_account(ownership_account_id, association_ownership_account_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->update_association_ownership_account: #{e}"
end
```

#### Using the update_association_ownership_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AssociationOwnershipAccountMessage>, Integer, Hash)> update_association_ownership_account_with_http_info(ownership_account_id, association_ownership_account_put_message)

```ruby
begin
  # Update an ownership account
  data, status_code, headers = api_instance.update_association_ownership_account_with_http_info(ownership_account_id, association_ownership_account_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AssociationOwnershipAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->update_association_ownership_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **association_ownership_account_put_message** | [**AssociationOwnershipAccountPutMessage**](AssociationOwnershipAccountPutMessage.md) |  |  |

### Return type

[**AssociationOwnershipAccountMessage**](AssociationOwnershipAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_association_ownership_account_note

> <NoteMessage> update_association_ownership_account_note(ownership_account_id, note_id, note_put_message)

Update a note

Updates an association ownership account note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership Accounts</span> - `View` `Edit`

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | 
note_id = 56 # Integer | 
note_put_message = Buildium::NotePutMessage.new({note: 'note_example'}) # NotePutMessage | 

begin
  # Update a note
  result = api_instance.update_association_ownership_account_note(ownership_account_id, note_id, note_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->update_association_ownership_account_note: #{e}"
end
```

#### Using the update_association_ownership_account_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteMessage>, Integer, Hash)> update_association_ownership_account_note_with_http_info(ownership_account_id, note_id, note_put_message)

```ruby
begin
  # Update a note
  data, status_code, headers = api_instance.update_association_ownership_account_note_with_http_info(ownership_account_id, note_id, note_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->update_association_ownership_account_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** |  |  |
| **note_id** | **Integer** |  |  |
| **note_put_message** | [**NotePutMessage**](NotePutMessage.md) |  |  |

### Return type

[**NoteMessage**](NoteMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ownership_account_charge

> <OwnershipAccountTransactionMessage> update_ownership_account_charge(ownership_account_id, charge_id, ownership_account_ledger_charge_put_message)

Update a charge

Updates a charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`              <br />

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

api_instance = Buildium::AssociationOwnershipAccountsApi.new
ownership_account_id = 56 # Integer | The ownership account identifier.
charge_id = 56 # Integer | The charge identifier.
ownership_account_ledger_charge_put_message = Buildium::OwnershipAccountLedgerChargePutMessage.new({date: Date.today, lines: [Buildium::OwnershipAccountLedgerChargeLinesPutMessage.new({amount: 3.56, gl_account_id: 37})]}) # OwnershipAccountLedgerChargePutMessage | 

begin
  # Update a charge
  result = api_instance.update_ownership_account_charge(ownership_account_id, charge_id, ownership_account_ledger_charge_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->update_ownership_account_charge: #{e}"
end
```

#### Using the update_ownership_account_charge_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OwnershipAccountTransactionMessage>, Integer, Hash)> update_ownership_account_charge_with_http_info(ownership_account_id, charge_id, ownership_account_ledger_charge_put_message)

```ruby
begin
  # Update a charge
  data, status_code, headers = api_instance.update_ownership_account_charge_with_http_info(ownership_account_id, charge_id, ownership_account_ledger_charge_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OwnershipAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling AssociationOwnershipAccountsApi->update_ownership_account_charge_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ownership_account_id** | **Integer** | The ownership account identifier. |  |
| **charge_id** | **Integer** | The charge identifier. |  |
| **ownership_account_ledger_charge_put_message** | [**OwnershipAccountLedgerChargePutMessage**](OwnershipAccountLedgerChargePutMessage.md) |  |  |

### Return type

[**OwnershipAccountTransactionMessage**](OwnershipAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

