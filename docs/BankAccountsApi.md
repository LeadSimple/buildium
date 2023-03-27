# Buildium::BankAccountsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_bank_account**](BankAccountsApi.md#create_bank_account) | **POST** /v1/bankaccounts | Create a bank account |
| [**create_bank_account_check**](BankAccountsApi.md#create_bank_account_check) | **POST** /v1/bankaccounts/{bankAccountId}/checks | Create a check |
| [**create_bank_account_deposit**](BankAccountsApi.md#create_bank_account_deposit) | **POST** /v1/bankaccounts/{bankAccountId}/deposits | Create a deposit |
| [**create_bank_account_transfer**](BankAccountsApi.md#create_bank_account_transfer) | **POST** /v1/bankaccounts/{bankAccountId}/transfers | Create a transfer |
| [**create_quick_deposit**](BankAccountsApi.md#create_quick_deposit) | **POST** /v1/bankaccounts/{bankAccountId}/quickdeposits | Create a quick deposit |
| [**create_withdrawal_for_bank_account**](BankAccountsApi.md#create_withdrawal_for_bank_account) | **POST** /v1/bankaccounts/{bankAccountId}/withdrawals | Create a withdrawal |
| [**get_all_bank_accounts**](BankAccountsApi.md#get_all_bank_accounts) | **GET** /v1/bankaccounts | Retrieve all bank accounts |
| [**get_all_quick_deposits**](BankAccountsApi.md#get_all_quick_deposits) | **GET** /v1/bankaccounts/{bankAccountId}/quickdeposits | Retrieve all quick deposits |
| [**get_bank_account**](BankAccountsApi.md#get_bank_account) | **GET** /v1/bankaccounts/{bankAccountId} | Retrieve a bank account |
| [**get_bank_account_checks**](BankAccountsApi.md#get_bank_account_checks) | **GET** /v1/bankaccounts/{bankAccountId}/checks | Retrieve all checks |
| [**get_bank_account_deposit_by_id**](BankAccountsApi.md#get_bank_account_deposit_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/deposits/{depositId} | Retrieve a deposit |
| [**get_bank_account_deposits**](BankAccountsApi.md#get_bank_account_deposits) | **GET** /v1/bankaccounts/{bankAccountId}/deposits | Retrieve all deposits |
| [**get_bank_account_transaction_by_id**](BankAccountsApi.md#get_bank_account_transaction_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/transactions/{transactionId} | Retrieve a transaction |
| [**get_bank_account_transactions**](BankAccountsApi.md#get_bank_account_transactions) | **GET** /v1/bankaccounts/{bankAccountId}/transactions | Retrieve all transactions |
| [**get_bank_account_transfer_by_id**](BankAccountsApi.md#get_bank_account_transfer_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/transfers/{transferId} | Retrieve a transfer |
| [**get_bank_account_transfers**](BankAccountsApi.md#get_bank_account_transfers) | **GET** /v1/bankaccounts/{bankAccountId}/transfers | Retrieve all transfers |
| [**get_bank_account_withdrawal_by_id**](BankAccountsApi.md#get_bank_account_withdrawal_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/withdrawals/{withdrawalId} | Retrieve a withdrawal |
| [**get_bank_account_withdrawals**](BankAccountsApi.md#get_bank_account_withdrawals) | **GET** /v1/bankaccounts/{bankAccountId}/withdrawals | Retrieve all withdrawals |
| [**get_check_for_bank_account**](BankAccountsApi.md#get_check_for_bank_account) | **GET** /v1/bankaccounts/{bankAccountId}/checks/{checkId} | Retrieve a check |
| [**get_quick_deposit_by_id**](BankAccountsApi.md#get_quick_deposit_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/quickdeposits/{quickDepositId} | Retrieve a quick deposit |
| [**get_undeposited_funds**](BankAccountsApi.md#get_undeposited_funds) | **GET** /v1/bankaccounts/{bankAccountId}/undepositedfunds | Retrieve all undeposited funds |
| [**update_bank_account**](BankAccountsApi.md#update_bank_account) | **PUT** /v1/bankaccounts/{bankAccountId} | Update a bank account |
| [**update_bank_account_deposit**](BankAccountsApi.md#update_bank_account_deposit) | **PUT** /v1/bankaccounts/{bankAccountId}/deposits/{depositId} | Update a deposit |
| [**update_bank_account_transfer**](BankAccountsApi.md#update_bank_account_transfer) | **PUT** /v1/bankaccounts/{bankAccountId}/transfers/{transferId} | Update a transfer |
| [**update_bank_account_withdrawal**](BankAccountsApi.md#update_bank_account_withdrawal) | **PUT** /v1/bankaccounts/{bankAccountId}/withdrawals/{withdrawalId} | Update a withdrawal |
| [**update_check_for_bank_account**](BankAccountsApi.md#update_check_for_bank_account) | **PUT** /v1/bankaccounts/{bankAccountId}/checks/{checkId} | Update a check |
| [**update_quick_deposit**](BankAccountsApi.md#update_quick_deposit) | **PUT** /v1/bankaccounts/{bankAccountId}/quickdeposits/{quickDepositId} | Update a quick deposit |


## create_bank_account

> <BankAccountMessage> create_bank_account(bank_account_post_message)

Create a bank account

Creates a bank account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Banking</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_post_message = Buildium::BankAccountPostMessage.new({name: 'name_example', bank_account_type: 'Checking', country: 'UnitedStates'}) # BankAccountPostMessage | 

begin
  # Create a bank account
  result = api_instance.create_bank_account(bank_account_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account: #{e}"
end
```

#### Using the create_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountMessage>, Integer, Hash)> create_bank_account_with_http_info(bank_account_post_message)

```ruby
begin
  # Create a bank account
  data, status_code, headers = api_instance.create_bank_account_with_http_info(bank_account_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_post_message** | [**BankAccountPostMessage**](BankAccountPostMessage.md) |  |  |

### Return type

[**BankAccountMessage**](BankAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bank_account_check

> <BankAccountCheckMessage> create_bank_account_check(bank_account_id, bank_account_check_post_message)

Create a check

Creates a check.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
bank_account_check_post_message = Buildium::BankAccountCheckPostMessage.new({payee: Buildium::BankAccountCheckPayeeSaveMessage.new({id: 37, type: 'Vendor'}), entry_date: Date.today, lines: [Buildium::BankAccountCheckLineSaveMessage.new({gl_account_id: 37, accounting_entity: Buildium::BankAccountCheckAccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'}), amount: 3.56})]}) # BankAccountCheckPostMessage | 

begin
  # Create a check
  result = api_instance.create_bank_account_check(bank_account_id, bank_account_check_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account_check: #{e}"
end
```

#### Using the create_bank_account_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountCheckMessage>, Integer, Hash)> create_bank_account_check_with_http_info(bank_account_id, bank_account_check_post_message)

```ruby
begin
  # Create a check
  data, status_code, headers = api_instance.create_bank_account_check_with_http_info(bank_account_id, bank_account_check_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountCheckMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **bank_account_check_post_message** | [**BankAccountCheckPostMessage**](BankAccountCheckPostMessage.md) |  |  |

### Return type

[**BankAccountCheckMessage**](BankAccountCheckMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bank_account_deposit

> <BankAccountDepositMessage> create_bank_account_deposit(bank_account_id, bank_account_deposit_post_message)

Create a deposit

Creates a deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
bank_account_deposit_post_message = Buildium::BankAccountDepositPostMessage.new({entry_date: Date.today}) # BankAccountDepositPostMessage | 

begin
  # Create a deposit
  result = api_instance.create_bank_account_deposit(bank_account_id, bank_account_deposit_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account_deposit: #{e}"
end
```

#### Using the create_bank_account_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountDepositMessage>, Integer, Hash)> create_bank_account_deposit_with_http_info(bank_account_id, bank_account_deposit_post_message)

```ruby
begin
  # Create a deposit
  data, status_code, headers = api_instance.create_bank_account_deposit_with_http_info(bank_account_id, bank_account_deposit_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountDepositMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **bank_account_deposit_post_message** | [**BankAccountDepositPostMessage**](BankAccountDepositPostMessage.md) |  |  |

### Return type

[**BankAccountDepositMessage**](BankAccountDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bank_account_transfer

> <BankAccountTransferMessage> create_bank_account_transfer(bank_account_id, bank_account_transfer_save_message)

Create a transfer

Creates a bank account transfer.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
bank_account_transfer_save_message = Buildium::BankAccountTransferSaveMessage.new({entry_date: Date.today, transfer_to_bank_account_id: 37, total_amount: 3.56, accounting_entity: Buildium::BankAccountTransferAccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'})}) # BankAccountTransferSaveMessage | 

begin
  # Create a transfer
  result = api_instance.create_bank_account_transfer(bank_account_id, bank_account_transfer_save_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account_transfer: #{e}"
end
```

#### Using the create_bank_account_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountTransferMessage>, Integer, Hash)> create_bank_account_transfer_with_http_info(bank_account_id, bank_account_transfer_save_message)

```ruby
begin
  # Create a transfer
  data, status_code, headers = api_instance.create_bank_account_transfer_with_http_info(bank_account_id, bank_account_transfer_save_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountTransferMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **bank_account_transfer_save_message** | [**BankAccountTransferSaveMessage**](BankAccountTransferSaveMessage.md) |  |  |

### Return type

[**BankAccountTransferMessage**](BankAccountTransferMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_quick_deposit

> <BankAccountQuickDepositMessage> create_quick_deposit(bank_account_id, bank_account_quick_deposit_save_message)

Create a quick deposit

Creates a quick deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
bank_account_quick_deposit_save_message = Buildium::BankAccountQuickDepositSaveMessage.new({entry_date: Date.today, offset_gl_account_id: 37, amount: 3.56, accounting_entity: Buildium::AccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'})}) # BankAccountQuickDepositSaveMessage | 

begin
  # Create a quick deposit
  result = api_instance.create_quick_deposit(bank_account_id, bank_account_quick_deposit_save_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_quick_deposit: #{e}"
end
```

#### Using the create_quick_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountQuickDepositMessage>, Integer, Hash)> create_quick_deposit_with_http_info(bank_account_id, bank_account_quick_deposit_save_message)

```ruby
begin
  # Create a quick deposit
  data, status_code, headers = api_instance.create_quick_deposit_with_http_info(bank_account_id, bank_account_quick_deposit_save_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountQuickDepositMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_quick_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **bank_account_quick_deposit_save_message** | [**BankAccountQuickDepositSaveMessage**](BankAccountQuickDepositSaveMessage.md) |  |  |

### Return type

[**BankAccountQuickDepositMessage**](BankAccountQuickDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_withdrawal_for_bank_account

> <BankAccountWithdrawalMessage> create_withdrawal_for_bank_account(bank_account_id, bank_account_withdrawal_save_message)

Create a withdrawal

Creates a bank account withdrawal.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
bank_account_withdrawal_save_message = Buildium::BankAccountWithdrawalSaveMessage.new({entry_date: Date.today, offset_gl_account_id: 37, amount: 3.56, accounting_entity: Buildium::AccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'})}) # BankAccountWithdrawalSaveMessage | 

begin
  # Create a withdrawal
  result = api_instance.create_withdrawal_for_bank_account(bank_account_id, bank_account_withdrawal_save_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_withdrawal_for_bank_account: #{e}"
end
```

#### Using the create_withdrawal_for_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountWithdrawalMessage>, Integer, Hash)> create_withdrawal_for_bank_account_with_http_info(bank_account_id, bank_account_withdrawal_save_message)

```ruby
begin
  # Create a withdrawal
  data, status_code, headers = api_instance.create_withdrawal_for_bank_account_with_http_info(bank_account_id, bank_account_withdrawal_save_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountWithdrawalMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_withdrawal_for_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **bank_account_withdrawal_save_message** | [**BankAccountWithdrawalSaveMessage**](BankAccountWithdrawalSaveMessage.md) |  |  |

### Return type

[**BankAccountWithdrawalMessage**](BankAccountWithdrawalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_all_bank_accounts

> <Array<BankAccountMessage>> get_all_bank_accounts(opts)

Retrieve all bank accounts

Retrieves a list of bank accounts.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
opts = {
  bankaccountstatus: 'Active', # String | Filters results by the status of the bank account. If no status is specified, bank accounts with any status will be returned.
  bankname: 'bankname_example', # String | Filters results to any bank account whose name *contains* the specified value.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all bank accounts
  result = api_instance.get_all_bank_accounts(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_all_bank_accounts: #{e}"
end
```

#### Using the get_all_bank_accounts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccountMessage>>, Integer, Hash)> get_all_bank_accounts_with_http_info(opts)

```ruby
begin
  # Retrieve all bank accounts
  data, status_code, headers = api_instance.get_all_bank_accounts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccountMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_all_bank_accounts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bankaccountstatus** | **String** | Filters results by the status of the bank account. If no status is specified, bank accounts with any status will be returned. | [optional] |
| **bankname** | **String** | Filters results to any bank account whose name *contains* the specified value. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BankAccountMessage&gt;**](BankAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_quick_deposits

> <Array<BankAccountQuickDepositMessage>> get_all_quick_deposits(bank_account_id, startdate, enddate, opts)

Retrieve all quick deposits

Retrieves all quick deposits.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
startdate = Date.parse('2013-10-20') # Date | Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
enddate = Date.parse('2013-10-20') # Date | Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all quick deposits
  result = api_instance.get_all_quick_deposits(bank_account_id, startdate, enddate, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_all_quick_deposits: #{e}"
end
```

#### Using the get_all_quick_deposits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccountQuickDepositMessage>>, Integer, Hash)> get_all_quick_deposits_with_http_info(bank_account_id, startdate, enddate, opts)

```ruby
begin
  # Retrieve all quick deposits
  data, status_code, headers = api_instance.get_all_quick_deposits_with_http_info(bank_account_id, startdate, enddate, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccountQuickDepositMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_all_quick_deposits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **startdate** | **Date** | Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **enddate** | **Date** | Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BankAccountQuickDepositMessage&gt;**](BankAccountQuickDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account

> <BankAccountMessage> get_bank_account(bank_account_id)

Retrieve a bank account

Retrieves a specific bank account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | The bank account identifier.

begin
  # Retrieve a bank account
  result = api_instance.get_bank_account(bank_account_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account: #{e}"
end
```

#### Using the get_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountMessage>, Integer, Hash)> get_bank_account_with_http_info(bank_account_id)

```ruby
begin
  # Retrieve a bank account
  data, status_code, headers = api_instance.get_bank_account_with_http_info(bank_account_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** | The bank account identifier. |  |

### Return type

[**BankAccountMessage**](BankAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_checks

> <Array<BankAccountCheckMessage>> get_bank_account_checks(bank_account_id, startdate, enddate, opts)

Retrieve all checks

Retrieves all bank account checks.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
startdate = Date.parse('2013-10-20') # Date | Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
enddate = Date.parse('2013-10-20') # Date | Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all checks
  result = api_instance.get_bank_account_checks(bank_account_id, startdate, enddate, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_checks: #{e}"
end
```

#### Using the get_bank_account_checks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccountCheckMessage>>, Integer, Hash)> get_bank_account_checks_with_http_info(bank_account_id, startdate, enddate, opts)

```ruby
begin
  # Retrieve all checks
  data, status_code, headers = api_instance.get_bank_account_checks_with_http_info(bank_account_id, startdate, enddate, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccountCheckMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_checks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **startdate** | **Date** | Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **enddate** | **Date** | Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BankAccountCheckMessage&gt;**](BankAccountCheckMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_deposit_by_id

> <BankAccountDepositMessage> get_bank_account_deposit_by_id(bank_account_id, deposit_id)

Retrieve a deposit

Retrieves a bank account deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
deposit_id = 56 # Integer | 

begin
  # Retrieve a deposit
  result = api_instance.get_bank_account_deposit_by_id(bank_account_id, deposit_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_deposit_by_id: #{e}"
end
```

#### Using the get_bank_account_deposit_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountDepositMessage>, Integer, Hash)> get_bank_account_deposit_by_id_with_http_info(bank_account_id, deposit_id)

```ruby
begin
  # Retrieve a deposit
  data, status_code, headers = api_instance.get_bank_account_deposit_by_id_with_http_info(bank_account_id, deposit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountDepositMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_deposit_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **deposit_id** | **Integer** |  |  |

### Return type

[**BankAccountDepositMessage**](BankAccountDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_deposits

> <Array<BankAccountDepositMessage>> get_bank_account_deposits(bank_account_id, startdate, enddate, opts)

Retrieve all deposits

Retrieves all bank account deposits.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
startdate = Date.parse('2013-10-20') # Date | Filters results to any deposits that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
enddate = Date.parse('2013-10-20') # Date | Filters results to any deposits that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all deposits
  result = api_instance.get_bank_account_deposits(bank_account_id, startdate, enddate, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_deposits: #{e}"
end
```

#### Using the get_bank_account_deposits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccountDepositMessage>>, Integer, Hash)> get_bank_account_deposits_with_http_info(bank_account_id, startdate, enddate, opts)

```ruby
begin
  # Retrieve all deposits
  data, status_code, headers = api_instance.get_bank_account_deposits_with_http_info(bank_account_id, startdate, enddate, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccountDepositMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_deposits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **startdate** | **Date** | Filters results to any deposits that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **enddate** | **Date** | Filters results to any deposits that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BankAccountDepositMessage&gt;**](BankAccountDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_transaction_by_id

> <BankAccountTransactionMessage> get_bank_account_transaction_by_id(bank_account_id, transaction_id)

Retrieve a transaction

Retrieves a specific bank account transaction.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Account</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
transaction_id = 56 # Integer | 

begin
  # Retrieve a transaction
  result = api_instance.get_bank_account_transaction_by_id(bank_account_id, transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_transaction_by_id: #{e}"
end
```

#### Using the get_bank_account_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountTransactionMessage>, Integer, Hash)> get_bank_account_transaction_by_id_with_http_info(bank_account_id, transaction_id)

```ruby
begin
  # Retrieve a transaction
  data, status_code, headers = api_instance.get_bank_account_transaction_by_id_with_http_info(bank_account_id, transaction_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **transaction_id** | **Integer** |  |  |

### Return type

[**BankAccountTransactionMessage**](BankAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_transactions

> <Array<BankAccountTransactionMessage>> get_bank_account_transactions(bank_account_id, startdate, enddate, opts)

Retrieve all transactions

Retrieves all bank account transactions.              <br /><br />              Note: When using the `orderby` query string parameter, the only supported parameter is `EntryDate`.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
startdate = Date.parse('2013-10-20') # Date | Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
enddate = Date.parse('2013-10-20') # Date | Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
opts = {
  selectionentityid: 56, # Integer | Filters results to any transaction containing journal lines for an entity associated with the specified entity id value. The id must be of the type specified in SelectionEntityType.
  selectionentitytype: 'Company', # String | Specifies the type of entity that SelectionEntityId refers to.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all transactions
  result = api_instance.get_bank_account_transactions(bank_account_id, startdate, enddate, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_transactions: #{e}"
end
```

#### Using the get_bank_account_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccountTransactionMessage>>, Integer, Hash)> get_bank_account_transactions_with_http_info(bank_account_id, startdate, enddate, opts)

```ruby
begin
  # Retrieve all transactions
  data, status_code, headers = api_instance.get_bank_account_transactions_with_http_info(bank_account_id, startdate, enddate, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccountTransactionMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **startdate** | **Date** | Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **enddate** | **Date** | Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **selectionentityid** | **Integer** | Filters results to any transaction containing journal lines for an entity associated with the specified entity id value. The id must be of the type specified in SelectionEntityType. | [optional] |
| **selectionentitytype** | **String** | Specifies the type of entity that SelectionEntityId refers to. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BankAccountTransactionMessage&gt;**](BankAccountTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_transfer_by_id

> <BankAccountMessage> get_bank_account_transfer_by_id(bank_account_id, transfer_id)

Retrieve a transfer

Retrieves a bank account transfer.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | The bank account identifier.
transfer_id = 56 # Integer | The transfer identifier.

begin
  # Retrieve a transfer
  result = api_instance.get_bank_account_transfer_by_id(bank_account_id, transfer_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_transfer_by_id: #{e}"
end
```

#### Using the get_bank_account_transfer_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountMessage>, Integer, Hash)> get_bank_account_transfer_by_id_with_http_info(bank_account_id, transfer_id)

```ruby
begin
  # Retrieve a transfer
  data, status_code, headers = api_instance.get_bank_account_transfer_by_id_with_http_info(bank_account_id, transfer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_transfer_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** | The bank account identifier. |  |
| **transfer_id** | **Integer** | The transfer identifier. |  |

### Return type

[**BankAccountMessage**](BankAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_transfers

> <Array<BankAccountTransferMessage>> get_bank_account_transfers(bank_account_id, startdate, enddate, opts)

Retrieve all transfers

Retrieves all bank account transfers.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
startdate = Date.parse('2013-10-20') # Date | Filters results to any transfers that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
enddate = Date.parse('2013-10-20') # Date | Filters results to any transfers that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all transfers
  result = api_instance.get_bank_account_transfers(bank_account_id, startdate, enddate, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_transfers: #{e}"
end
```

#### Using the get_bank_account_transfers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccountTransferMessage>>, Integer, Hash)> get_bank_account_transfers_with_http_info(bank_account_id, startdate, enddate, opts)

```ruby
begin
  # Retrieve all transfers
  data, status_code, headers = api_instance.get_bank_account_transfers_with_http_info(bank_account_id, startdate, enddate, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccountTransferMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_transfers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **startdate** | **Date** | Filters results to any transfers that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **enddate** | **Date** | Filters results to any transfers that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BankAccountTransferMessage&gt;**](BankAccountTransferMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_withdrawal_by_id

> <BankAccountWithdrawalMessage> get_bank_account_withdrawal_by_id(bank_account_id, withdrawal_id)

Retrieve a withdrawal

Retrieves a bank account withdrawal.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccounts</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
withdrawal_id = 56 # Integer | 

begin
  # Retrieve a withdrawal
  result = api_instance.get_bank_account_withdrawal_by_id(bank_account_id, withdrawal_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_withdrawal_by_id: #{e}"
end
```

#### Using the get_bank_account_withdrawal_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountWithdrawalMessage>, Integer, Hash)> get_bank_account_withdrawal_by_id_with_http_info(bank_account_id, withdrawal_id)

```ruby
begin
  # Retrieve a withdrawal
  data, status_code, headers = api_instance.get_bank_account_withdrawal_by_id_with_http_info(bank_account_id, withdrawal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountWithdrawalMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_withdrawal_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **withdrawal_id** | **Integer** |  |  |

### Return type

[**BankAccountWithdrawalMessage**](BankAccountWithdrawalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_withdrawals

> <Array<BankAccountWithdrawalMessage>> get_bank_account_withdrawals(bank_account_id, startdate, enddate, opts)

Retrieve all withdrawals

Retrieves all bank account withdrawals.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccounts</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
startdate = Date.parse('2013-10-20') # Date | Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
enddate = Date.parse('2013-10-20') # Date | Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all withdrawals
  result = api_instance.get_bank_account_withdrawals(bank_account_id, startdate, enddate, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_withdrawals: #{e}"
end
```

#### Using the get_bank_account_withdrawals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccountWithdrawalMessage>>, Integer, Hash)> get_bank_account_withdrawals_with_http_info(bank_account_id, startdate, enddate, opts)

```ruby
begin
  # Retrieve all withdrawals
  data, status_code, headers = api_instance.get_bank_account_withdrawals_with_http_info(bank_account_id, startdate, enddate, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccountWithdrawalMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_withdrawals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **startdate** | **Date** | Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **enddate** | **Date** | Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD. |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BankAccountWithdrawalMessage&gt;**](BankAccountWithdrawalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_check_for_bank_account

> <BankAccountCheckMessage> get_check_for_bank_account(bank_account_id, check_id)

Retrieve a check

Retrieves a bank account check.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
check_id = 56 # Integer | 

begin
  # Retrieve a check
  result = api_instance.get_check_for_bank_account(bank_account_id, check_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_check_for_bank_account: #{e}"
end
```

#### Using the get_check_for_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountCheckMessage>, Integer, Hash)> get_check_for_bank_account_with_http_info(bank_account_id, check_id)

```ruby
begin
  # Retrieve a check
  data, status_code, headers = api_instance.get_check_for_bank_account_with_http_info(bank_account_id, check_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountCheckMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_check_for_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **check_id** | **Integer** |  |  |

### Return type

[**BankAccountCheckMessage**](BankAccountCheckMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_quick_deposit_by_id

> <BankAccountQuickDepositMessage> get_quick_deposit_by_id(bank_account_id, quick_deposit_id)

Retrieve a quick deposit

Retrieves a quick deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
quick_deposit_id = 56 # Integer | 

begin
  # Retrieve a quick deposit
  result = api_instance.get_quick_deposit_by_id(bank_account_id, quick_deposit_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_quick_deposit_by_id: #{e}"
end
```

#### Using the get_quick_deposit_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountQuickDepositMessage>, Integer, Hash)> get_quick_deposit_by_id_with_http_info(bank_account_id, quick_deposit_id)

```ruby
begin
  # Retrieve a quick deposit
  data, status_code, headers = api_instance.get_quick_deposit_by_id_with_http_info(bank_account_id, quick_deposit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountQuickDepositMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_quick_deposit_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **quick_deposit_id** | **Integer** |  |  |

### Return type

[**BankAccountQuickDepositMessage**](BankAccountQuickDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_undeposited_funds

> <Array<UndepositedFundsMessage>> get_undeposited_funds(bank_account_id, opts)

Retrieve all undeposited funds

Retrieve all bank account undeposited funds.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all undeposited funds
  result = api_instance.get_undeposited_funds(bank_account_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_undeposited_funds: #{e}"
end
```

#### Using the get_undeposited_funds_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UndepositedFundsMessage>>, Integer, Hash)> get_undeposited_funds_with_http_info(bank_account_id, opts)

```ruby
begin
  # Retrieve all undeposited funds
  data, status_code, headers = api_instance.get_undeposited_funds_with_http_info(bank_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UndepositedFundsMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_undeposited_funds_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;UndepositedFundsMessage&gt;**](UndepositedFundsMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_bank_account

> <BankAccountMessage> update_bank_account(bank_account_id, bank_account_put_message)

Update a bank account

Updates a bank account.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Banking</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
bank_account_put_message = Buildium::BankAccountPutMessage.new({check_printing_info: Buildium::CheckPrintingInfoPutMessage.new({enable_remote_check_printing: false, enable_local_check_printing: false, check_layout_type: 'Voucher1StubBottomMemo1Signature'}), name: 'name_example', bank_account_type: 'Checking', country: 'UnitedStates'}) # BankAccountPutMessage | 

begin
  # Update a bank account
  result = api_instance.update_bank_account(bank_account_id, bank_account_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account: #{e}"
end
```

#### Using the update_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountMessage>, Integer, Hash)> update_bank_account_with_http_info(bank_account_id, bank_account_put_message)

```ruby
begin
  # Update a bank account
  data, status_code, headers = api_instance.update_bank_account_with_http_info(bank_account_id, bank_account_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **bank_account_put_message** | [**BankAccountPutMessage**](BankAccountPutMessage.md) |  |  |

### Return type

[**BankAccountMessage**](BankAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_bank_account_deposit

> <BankAccountDepositMessage> update_bank_account_deposit(bank_account_id, deposit_id, bank_account_deposit_put_message)

Update a deposit

Updates a deposit.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
deposit_id = 56 # Integer | 
bank_account_deposit_put_message = Buildium::BankAccountDepositPutMessage.new({entry_date: Date.today, lines: [Buildium::BankAccountDepositLineSaveMessage.new]}) # BankAccountDepositPutMessage | 

begin
  # Update a deposit
  result = api_instance.update_bank_account_deposit(bank_account_id, deposit_id, bank_account_deposit_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account_deposit: #{e}"
end
```

#### Using the update_bank_account_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountDepositMessage>, Integer, Hash)> update_bank_account_deposit_with_http_info(bank_account_id, deposit_id, bank_account_deposit_put_message)

```ruby
begin
  # Update a deposit
  data, status_code, headers = api_instance.update_bank_account_deposit_with_http_info(bank_account_id, deposit_id, bank_account_deposit_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountDepositMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **deposit_id** | **Integer** |  |  |
| **bank_account_deposit_put_message** | [**BankAccountDepositPutMessage**](BankAccountDepositPutMessage.md) |  |  |

### Return type

[**BankAccountDepositMessage**](BankAccountDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_bank_account_transfer

> <BankAccountTransferMessage> update_bank_account_transfer(bank_account_id, transfer_id, bank_account_transfer_save_message)

Update a transfer

Updates a bank account transfer.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
transfer_id = 56 # Integer | 
bank_account_transfer_save_message = Buildium::BankAccountTransferSaveMessage.new({entry_date: Date.today, transfer_to_bank_account_id: 37, total_amount: 3.56, accounting_entity: Buildium::BankAccountTransferAccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'})}) # BankAccountTransferSaveMessage | 

begin
  # Update a transfer
  result = api_instance.update_bank_account_transfer(bank_account_id, transfer_id, bank_account_transfer_save_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account_transfer: #{e}"
end
```

#### Using the update_bank_account_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountTransferMessage>, Integer, Hash)> update_bank_account_transfer_with_http_info(bank_account_id, transfer_id, bank_account_transfer_save_message)

```ruby
begin
  # Update a transfer
  data, status_code, headers = api_instance.update_bank_account_transfer_with_http_info(bank_account_id, transfer_id, bank_account_transfer_save_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountTransferMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account_transfer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **transfer_id** | **Integer** |  |  |
| **bank_account_transfer_save_message** | [**BankAccountTransferSaveMessage**](BankAccountTransferSaveMessage.md) |  |  |

### Return type

[**BankAccountTransferMessage**](BankAccountTransferMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_bank_account_withdrawal

> <BankAccountWithdrawalMessage> update_bank_account_withdrawal(bank_account_id, withdrawal_id, bank_account_withdrawal_save_message)

Update a withdrawal

Updates a bank account withdrawal.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
withdrawal_id = 56 # Integer | 
bank_account_withdrawal_save_message = Buildium::BankAccountWithdrawalSaveMessage.new({entry_date: Date.today, offset_gl_account_id: 37, amount: 3.56, accounting_entity: Buildium::AccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'})}) # BankAccountWithdrawalSaveMessage | 

begin
  # Update a withdrawal
  result = api_instance.update_bank_account_withdrawal(bank_account_id, withdrawal_id, bank_account_withdrawal_save_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account_withdrawal: #{e}"
end
```

#### Using the update_bank_account_withdrawal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountWithdrawalMessage>, Integer, Hash)> update_bank_account_withdrawal_with_http_info(bank_account_id, withdrawal_id, bank_account_withdrawal_save_message)

```ruby
begin
  # Update a withdrawal
  data, status_code, headers = api_instance.update_bank_account_withdrawal_with_http_info(bank_account_id, withdrawal_id, bank_account_withdrawal_save_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountWithdrawalMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account_withdrawal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **withdrawal_id** | **Integer** |  |  |
| **bank_account_withdrawal_save_message** | [**BankAccountWithdrawalSaveMessage**](BankAccountWithdrawalSaveMessage.md) |  |  |

### Return type

[**BankAccountWithdrawalMessage**](BankAccountWithdrawalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_check_for_bank_account

> <BankAccountCheckMessage> update_check_for_bank_account(bank_account_id, check_id, bank_account_check_put_message)

Update a check

Updates a check.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
check_id = 56 # Integer | 
bank_account_check_put_message = Buildium::BankAccountCheckPutMessage.new({payee: Buildium::BankAccountCheckPayeeSaveMessage.new({id: 37, type: 'Vendor'}), entry_date: Date.today, lines: [Buildium::BankAccountCheckLineSaveMessage.new({gl_account_id: 37, accounting_entity: Buildium::BankAccountCheckAccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'}), amount: 3.56})]}) # BankAccountCheckPutMessage | 

begin
  # Update a check
  result = api_instance.update_check_for_bank_account(bank_account_id, check_id, bank_account_check_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_check_for_bank_account: #{e}"
end
```

#### Using the update_check_for_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountCheckMessage>, Integer, Hash)> update_check_for_bank_account_with_http_info(bank_account_id, check_id, bank_account_check_put_message)

```ruby
begin
  # Update a check
  data, status_code, headers = api_instance.update_check_for_bank_account_with_http_info(bank_account_id, check_id, bank_account_check_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountCheckMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_check_for_bank_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **check_id** | **Integer** |  |  |
| **bank_account_check_put_message** | [**BankAccountCheckPutMessage**](BankAccountCheckPutMessage.md) |  |  |

### Return type

[**BankAccountCheckMessage**](BankAccountCheckMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_quick_deposit

> <BankAccountQuickDepositMessage> update_quick_deposit(bank_account_id, quick_deposit_id, bank_account_quick_deposit_save_message)

Update a quick deposit

Updates a quick deposit.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
quick_deposit_id = 56 # Integer | 
bank_account_quick_deposit_save_message = Buildium::BankAccountQuickDepositSaveMessage.new({entry_date: Date.today, offset_gl_account_id: 37, amount: 3.56, accounting_entity: Buildium::AccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'})}) # BankAccountQuickDepositSaveMessage | 

begin
  # Update a quick deposit
  result = api_instance.update_quick_deposit(bank_account_id, quick_deposit_id, bank_account_quick_deposit_save_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_quick_deposit: #{e}"
end
```

#### Using the update_quick_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountQuickDepositMessage>, Integer, Hash)> update_quick_deposit_with_http_info(bank_account_id, quick_deposit_id, bank_account_quick_deposit_save_message)

```ruby
begin
  # Update a quick deposit
  data, status_code, headers = api_instance.update_quick_deposit_with_http_info(bank_account_id, quick_deposit_id, bank_account_quick_deposit_save_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountQuickDepositMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_quick_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **quick_deposit_id** | **Integer** |  |  |
| **bank_account_quick_deposit_save_message** | [**BankAccountQuickDepositSaveMessage**](BankAccountQuickDepositSaveMessage.md) |  |  |

### Return type

[**BankAccountQuickDepositMessage**](BankAccountQuickDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

