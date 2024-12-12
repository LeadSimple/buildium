# Buildium::BankAccountsApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**clear_transactions**](BankAccountsApi.md#clear_transactions) | **POST** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/cleartransactionsrequest | Clear transactions for a reconciliation |
| [**create_bank_account**](BankAccountsApi.md#create_bank_account) | **POST** /v1/bankaccounts | Create a bank account |
| [**create_bank_account_check**](BankAccountsApi.md#create_bank_account_check) | **POST** /v1/bankaccounts/{bankAccountId}/checks | Create a check |
| [**create_bank_account_deposit**](BankAccountsApi.md#create_bank_account_deposit) | **POST** /v1/bankaccounts/{bankAccountId}/deposits | Create a deposit |
| [**create_bank_account_transfer**](BankAccountsApi.md#create_bank_account_transfer) | **POST** /v1/bankaccounts/{bankAccountId}/transfers | Create a transfer |
| [**create_check_upload_file_request**](BankAccountsApi.md#create_check_upload_file_request) | **POST** /v1/bankaccounts/{bankAccountId}/checks/{checkId}/files/uploadrequests | Upload a file for a check |
| [**create_pending_reconciliations**](BankAccountsApi.md#create_pending_reconciliations) | **POST** /v1/bankaccounts/{bankAccountId}/reconciliations | Create a reconciliation |
| [**create_quick_deposit**](BankAccountsApi.md#create_quick_deposit) | **POST** /v1/bankaccounts/{bankAccountId}/quickdeposits | Create a quick deposit |
| [**create_withdrawal_for_bank_account**](BankAccountsApi.md#create_withdrawal_for_bank_account) | **POST** /v1/bankaccounts/{bankAccountId}/withdrawals | Create a withdrawal |
| [**delete_bank_account_check_file**](BankAccountsApi.md#delete_bank_account_check_file) | **DELETE** /v1/bankaccounts/{bankAccountId}/checks/{checkId}/files/{fileId} | Delete a file for a check |
| [**download_check_file**](BankAccountsApi.md#download_check_file) | **POST** /v1/bankaccounts/{bankAccountId}/checks/{checkId}/files/{fileId}/downloadrequests | Download a file for a check |
| [**finalize_reconciliation**](BankAccountsApi.md#finalize_reconciliation) | **POST** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/finalizerequest | Finalize a manual reconciliation |
| [**get_all_bank_accounts**](BankAccountsApi.md#get_all_bank_accounts) | **GET** /v1/bankaccounts | Retrieve all bank accounts |
| [**get_all_quick_deposits**](BankAccountsApi.md#get_all_quick_deposits) | **GET** /v1/bankaccounts/{bankAccountId}/quickdeposits | Retrieve all quick deposits |
| [**get_bank_account**](BankAccountsApi.md#get_bank_account) | **GET** /v1/bankaccounts/{bankAccountId} | Retrieve a bank account |
| [**get_bank_account_check_file_by_id**](BankAccountsApi.md#get_bank_account_check_file_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/checks/{checkId}/files/{fileId} | Retrieve a file for a check |
| [**get_bank_account_checks**](BankAccountsApi.md#get_bank_account_checks) | **GET** /v1/bankaccounts/{bankAccountId}/checks | Retrieve all checks |
| [**get_bank_account_deposit_by_id**](BankAccountsApi.md#get_bank_account_deposit_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/deposits/{depositId} | Retrieve a deposit |
| [**get_bank_account_deposits**](BankAccountsApi.md#get_bank_account_deposits) | **GET** /v1/bankaccounts/{bankAccountId}/deposits | Retrieve all deposits |
| [**get_bank_account_reconciliation_transactions**](BankAccountsApi.md#get_bank_account_reconciliation_transactions) | **GET** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/transactions | Retrieve all transactions for a reconciliation |
| [**get_bank_account_transaction_by_id**](BankAccountsApi.md#get_bank_account_transaction_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/transactions/{transactionId} | Retrieve a transaction |
| [**get_bank_account_transactions**](BankAccountsApi.md#get_bank_account_transactions) | **GET** /v1/bankaccounts/{bankAccountId}/transactions | Retrieve all transactions |
| [**get_bank_account_transfer_by_id**](BankAccountsApi.md#get_bank_account_transfer_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/transfers/{transferId} | Retrieve a transfer |
| [**get_bank_account_transfers**](BankAccountsApi.md#get_bank_account_transfers) | **GET** /v1/bankaccounts/{bankAccountId}/transfers | Retrieve all transfers |
| [**get_bank_account_withdrawal_by_id**](BankAccountsApi.md#get_bank_account_withdrawal_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/withdrawals/{withdrawalId} | Retrieve a withdrawal |
| [**get_bank_account_withdrawals**](BankAccountsApi.md#get_bank_account_withdrawals) | **GET** /v1/bankaccounts/{bankAccountId}/withdrawals | Retrieve all withdrawals |
| [**get_check_for_bank_account**](BankAccountsApi.md#get_check_for_bank_account) | **GET** /v1/bankaccounts/{bankAccountId}/checks/{checkId} | Retrieve a check |
| [**get_files_for_bank_account_check**](BankAccountsApi.md#get_files_for_bank_account_check) | **GET** /v1/bankaccounts/{bankAccountId}/checks/{checkId}/files | Retrieve all files for a check |
| [**get_quick_deposit_by_id**](BankAccountsApi.md#get_quick_deposit_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/quickdeposits/{quickDepositId} | Retrieve a quick deposit |
| [**get_reconciliation_balance_by_id**](BankAccountsApi.md#get_reconciliation_balance_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/balances | Retrieve a reconciliation&#39;s balance |
| [**get_reconciliation_by_id**](BankAccountsApi.md#get_reconciliation_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId} | Retrieve a reconciliation |
| [**get_reconciliations**](BankAccountsApi.md#get_reconciliations) | **GET** /v1/bankaccounts/{bankAccountId}/reconciliations | Retrieve all reconciliations |
| [**get_undeposited_funds**](BankAccountsApi.md#get_undeposited_funds) | **GET** /v1/bankaccounts/{bankAccountId}/undepositedfunds | Retrieve all undeposited funds |
| [**unclear_transactions**](BankAccountsApi.md#unclear_transactions) | **POST** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/uncleartransactionsrequest | Un-clear transactions for a reconciliation |
| [**update_bank_account**](BankAccountsApi.md#update_bank_account) | **PUT** /v1/bankaccounts/{bankAccountId} | Update a bank account |
| [**update_bank_account_deposit**](BankAccountsApi.md#update_bank_account_deposit) | **PUT** /v1/bankaccounts/{bankAccountId}/deposits/{depositId} | Update a deposit |
| [**update_bank_account_transfer**](BankAccountsApi.md#update_bank_account_transfer) | **PUT** /v1/bankaccounts/{bankAccountId}/transfers/{transferId} | Update a transfer |
| [**update_bank_account_withdrawal**](BankAccountsApi.md#update_bank_account_withdrawal) | **PUT** /v1/bankaccounts/{bankAccountId}/withdrawals/{withdrawalId} | Update a withdrawal |
| [**update_check_for_bank_account**](BankAccountsApi.md#update_check_for_bank_account) | **PUT** /v1/bankaccounts/{bankAccountId}/checks/{checkId} | Update a check |
| [**update_quick_deposit**](BankAccountsApi.md#update_quick_deposit) | **PUT** /v1/bankaccounts/{bankAccountId}/quickdeposits/{quickDepositId} | Update a quick deposit |
| [**update_reconciliation**](BankAccountsApi.md#update_reconciliation) | **PUT** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId} | Update a reconciliation |
| [**update_reconciliation_balances**](BankAccountsApi.md#update_reconciliation_balances) | **PUT** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/balances | Update a reconciliation&#39;s balance |


## clear_transactions

> clear_transactions(bank_account_id, reconciliation_id, clear_transactions_request)

Clear transactions for a reconciliation

Clears transactions for a reconciliation. Reconciliation transactions can only be cleared for bank accounts that are not linked externally.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
reconciliation_id = 56 # Integer | 
clear_transactions_request = Buildium::ClearTransactionsRequest.new({transaction_ids: [37]}) # ClearTransactionsRequest | 

begin
  # Clear transactions for a reconciliation
  api_instance.clear_transactions(bank_account_id, reconciliation_id, clear_transactions_request)
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->clear_transactions: #{e}"
end
```

#### Using the clear_transactions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> clear_transactions_with_http_info(bank_account_id, reconciliation_id, clear_transactions_request)

```ruby
begin
  # Clear transactions for a reconciliation
  data, status_code, headers = api_instance.clear_transactions_with_http_info(bank_account_id, reconciliation_id, clear_transactions_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->clear_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **reconciliation_id** | **Integer** |  |  |
| **clear_transactions_request** | [**ClearTransactionsRequest**](ClearTransactionsRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bank_account

> <BankAccountMessage> create_bank_account(create_bank_account_request)

Create a bank account

Creates a bank account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Banking</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
create_bank_account_request = Buildium::CreateBankAccountRequest.new({name: 'name_example', bank_account_type: 'Checking', country: 'Afghanistan'}) # CreateBankAccountRequest | 

begin
  # Create a bank account
  result = api_instance.create_bank_account(create_bank_account_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account: #{e}"
end
```

#### Using the create_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountMessage>, Integer, Hash)> create_bank_account_with_http_info(create_bank_account_request)

```ruby
begin
  # Create a bank account
  data, status_code, headers = api_instance.create_bank_account_with_http_info(create_bank_account_request)
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
| **create_bank_account_request** | [**CreateBankAccountRequest**](CreateBankAccountRequest.md) |  |  |

### Return type

[**BankAccountMessage**](BankAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bank_account_check

> <BankAccountCheckMessage> create_bank_account_check(bank_account_id, create_bank_account_check_request)

Create a check

Creates a check.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
create_bank_account_check_request = Buildium::CreateBankAccountCheckRequest.new({payee: Buildium::BankAccountCheckPostMessagePayee.new({id: 37, type: 'Vendor'}), entry_date: Date.today, lines: [Buildium::BankAccountCheckLineSaveMessage.new({gl_account_id: 37, accounting_entity: Buildium::BankAccountCheckLineSaveMessageAccountingEntity.new({id: 37, accounting_entity_type: 'Association'}), amount: 3.56})]}) # CreateBankAccountCheckRequest | 

begin
  # Create a check
  result = api_instance.create_bank_account_check(bank_account_id, create_bank_account_check_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account_check: #{e}"
end
```

#### Using the create_bank_account_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountCheckMessage>, Integer, Hash)> create_bank_account_check_with_http_info(bank_account_id, create_bank_account_check_request)

```ruby
begin
  # Create a check
  data, status_code, headers = api_instance.create_bank_account_check_with_http_info(bank_account_id, create_bank_account_check_request)
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
| **create_bank_account_check_request** | [**CreateBankAccountCheckRequest**](CreateBankAccountCheckRequest.md) |  |  |

### Return type

[**BankAccountCheckMessage**](BankAccountCheckMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bank_account_deposit

> <BankAccountDepositMessage> create_bank_account_deposit(bank_account_id, create_bank_account_deposit_request)

Create a deposit

Creates a deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
create_bank_account_deposit_request = Buildium::CreateBankAccountDepositRequest.new({entry_date: Date.today}) # CreateBankAccountDepositRequest | 

begin
  # Create a deposit
  result = api_instance.create_bank_account_deposit(bank_account_id, create_bank_account_deposit_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account_deposit: #{e}"
end
```

#### Using the create_bank_account_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountDepositMessage>, Integer, Hash)> create_bank_account_deposit_with_http_info(bank_account_id, create_bank_account_deposit_request)

```ruby
begin
  # Create a deposit
  data, status_code, headers = api_instance.create_bank_account_deposit_with_http_info(bank_account_id, create_bank_account_deposit_request)
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
| **create_bank_account_deposit_request** | [**CreateBankAccountDepositRequest**](CreateBankAccountDepositRequest.md) |  |  |

### Return type

[**BankAccountDepositMessage**](BankAccountDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_bank_account_transfer

> <BankAccountTransferMessage> create_bank_account_transfer(bank_account_id, create_bank_account_transfer_request)

Create a transfer

Creates a bank account transfer.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
create_bank_account_transfer_request = Buildium::CreateBankAccountTransferRequest.new({entry_date: Date.today, transfer_to_bank_account_id: 37, total_amount: 3.56, accounting_entity: Buildium::BankAccountTransferSaveMessageAccountingEntity.new({id: 37, accounting_entity_type: 'Association'})}) # CreateBankAccountTransferRequest | 

begin
  # Create a transfer
  result = api_instance.create_bank_account_transfer(bank_account_id, create_bank_account_transfer_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_bank_account_transfer: #{e}"
end
```

#### Using the create_bank_account_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountTransferMessage>, Integer, Hash)> create_bank_account_transfer_with_http_info(bank_account_id, create_bank_account_transfer_request)

```ruby
begin
  # Create a transfer
  data, status_code, headers = api_instance.create_bank_account_transfer_with_http_info(bank_account_id, create_bank_account_transfer_request)
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
| **create_bank_account_transfer_request** | [**CreateBankAccountTransferRequest**](CreateBankAccountTransferRequest.md) |  |  |

### Return type

[**BankAccountTransferMessage**](BankAccountTransferMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_check_upload_file_request

> <FileUploadTicketMessage> create_check_upload_file_request(bank_account_id, check_id, create_upload_file_request_request)

Upload a file for a check

Uploads a file and associates it to the specified check record.  <br /><br />Uploading a file requires making two API requests. Each step is outlined below.  <br /><br /><strong>Step 1 - Save file metadata</strong><br />  The first step in the file upload process is to submit the file metadata to `/v1/bankaccounts/{bankAccountId:int}/checks/{checkId:int}/files/uploadrequests`. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  <br /><br /><strong>NOTE:</strong> The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  <br /><br /><strong>Step 2 - Upload the file binary</strong><br />  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  <br />  1. Form a POST request using the value of the `BucketUrl` property as the URL.   <br /><br />  2. Set the `Content-Type` header to `multipart/form-data`.  <br /><br />  3. Copy the fields from the `FormData`  property to this request as form-data key/value pairs.  <br /><strong>NOTE:</strong> These values must added to the request form-data in the order they were received in the response.  <br /><br />  4. Lastly create a form-data key named `file` and set the value to the file binary.  <br /><strong>NOTE:</strong> This must be the last field in the form-data list.  <br /><br />This image shows what the POST request should look like if you're using Postman:  <img src=\"file-upload-example.png\" /><br /><br />  5. Send the POST request! A successful request will return with a `204 - NO CONTENT` HTTP response code. For any failure responses, please refer to <a target=\"_blank\" href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\">AWS documentation</a> on REST error responses.  <br /><br /><strong>NOTE:</strong> The file identifier is not generated in this response. To retrieve the file identifier, call `/v1/files` and pass the `PhysicalFileName` value received from the response of this endpoint into the `physicalfilenames` query parameter.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Checks</span> - `View` `Edit`  <span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for checks associated with a Company) </span>

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
check_id = 56 # Integer | 
create_upload_file_request_request = Buildium::CreateUploadFileRequestRequest.new({file_name: 'file_name_example'}) # CreateUploadFileRequestRequest | 

begin
  # Upload a file for a check
  result = api_instance.create_check_upload_file_request(bank_account_id, check_id, create_upload_file_request_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_check_upload_file_request: #{e}"
end
```

#### Using the create_check_upload_file_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileUploadTicketMessage>, Integer, Hash)> create_check_upload_file_request_with_http_info(bank_account_id, check_id, create_upload_file_request_request)

```ruby
begin
  # Upload a file for a check
  data, status_code, headers = api_instance.create_check_upload_file_request_with_http_info(bank_account_id, check_id, create_upload_file_request_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileUploadTicketMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_check_upload_file_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **check_id** | **Integer** |  |  |
| **create_upload_file_request_request** | [**CreateUploadFileRequestRequest**](CreateUploadFileRequestRequest.md) |  |  |

### Return type

[**FileUploadTicketMessage**](FileUploadTicketMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_pending_reconciliations

> <BankAccountReconciliationMessage> create_pending_reconciliations(bank_account_id, create_pending_reconciliations_request)

Create a reconciliation

Creates a reconciliation. Reconciliations can only be created for bank accounts that are not linked externally.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
create_pending_reconciliations_request = Buildium::CreatePendingReconciliationsRequest.new({statement_ending_date: Date.today, ending_balance: 3.56}) # CreatePendingReconciliationsRequest | 

begin
  # Create a reconciliation
  result = api_instance.create_pending_reconciliations(bank_account_id, create_pending_reconciliations_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_pending_reconciliations: #{e}"
end
```

#### Using the create_pending_reconciliations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountReconciliationMessage>, Integer, Hash)> create_pending_reconciliations_with_http_info(bank_account_id, create_pending_reconciliations_request)

```ruby
begin
  # Create a reconciliation
  data, status_code, headers = api_instance.create_pending_reconciliations_with_http_info(bank_account_id, create_pending_reconciliations_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountReconciliationMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_pending_reconciliations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **create_pending_reconciliations_request** | [**CreatePendingReconciliationsRequest**](CreatePendingReconciliationsRequest.md) |  |  |

### Return type

[**BankAccountReconciliationMessage**](BankAccountReconciliationMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_quick_deposit

> <BankAccountQuickDepositMessage> create_quick_deposit(bank_account_id, create_quick_deposit_request)

Create a quick deposit

Creates a quick deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
create_quick_deposit_request = Buildium::CreateQuickDepositRequest.new({entry_date: Date.today, offset_gl_account_id: 37, amount: 3.56, accounting_entity: Buildium::BankAccountQuickDepositSaveMessageAccountingEntity.new({id: 37, accounting_entity_type: 'Association'})}) # CreateQuickDepositRequest | 

begin
  # Create a quick deposit
  result = api_instance.create_quick_deposit(bank_account_id, create_quick_deposit_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_quick_deposit: #{e}"
end
```

#### Using the create_quick_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountQuickDepositMessage>, Integer, Hash)> create_quick_deposit_with_http_info(bank_account_id, create_quick_deposit_request)

```ruby
begin
  # Create a quick deposit
  data, status_code, headers = api_instance.create_quick_deposit_with_http_info(bank_account_id, create_quick_deposit_request)
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
| **create_quick_deposit_request** | [**CreateQuickDepositRequest**](CreateQuickDepositRequest.md) |  |  |

### Return type

[**BankAccountQuickDepositMessage**](BankAccountQuickDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_withdrawal_for_bank_account

> <BankAccountWithdrawalMessage> create_withdrawal_for_bank_account(bank_account_id, create_withdrawal_for_bank_account_request)

Create a withdrawal

Creates a bank account withdrawal.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
create_withdrawal_for_bank_account_request = Buildium::CreateWithdrawalForBankAccountRequest.new({entry_date: Date.today, offset_gl_account_id: 37, amount: 3.56, accounting_entity: Buildium::BankAccountWithdrawalSaveMessageAccountingEntity.new({id: 37, accounting_entity_type: 'Association'})}) # CreateWithdrawalForBankAccountRequest | 

begin
  # Create a withdrawal
  result = api_instance.create_withdrawal_for_bank_account(bank_account_id, create_withdrawal_for_bank_account_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->create_withdrawal_for_bank_account: #{e}"
end
```

#### Using the create_withdrawal_for_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountWithdrawalMessage>, Integer, Hash)> create_withdrawal_for_bank_account_with_http_info(bank_account_id, create_withdrawal_for_bank_account_request)

```ruby
begin
  # Create a withdrawal
  data, status_code, headers = api_instance.create_withdrawal_for_bank_account_with_http_info(bank_account_id, create_withdrawal_for_bank_account_request)
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
| **create_withdrawal_for_bank_account_request** | [**CreateWithdrawalForBankAccountRequest**](CreateWithdrawalForBankAccountRequest.md) |  |  |

### Return type

[**BankAccountWithdrawalMessage**](BankAccountWithdrawalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_bank_account_check_file

> delete_bank_account_check_file(bank_account_id, check_id, file_id)

Delete a file for a check

Deletes a file for a check              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccounts</span> - `View` `Edit` `Delete`              <br /><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for checks associated with a Company) </span>

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
check_id = 56 # Integer | 
file_id = 56 # Integer | 

begin
  # Delete a file for a check
  api_instance.delete_bank_account_check_file(bank_account_id, check_id, file_id)
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->delete_bank_account_check_file: #{e}"
end
```

#### Using the delete_bank_account_check_file_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_bank_account_check_file_with_http_info(bank_account_id, check_id, file_id)

```ruby
begin
  # Delete a file for a check
  data, status_code, headers = api_instance.delete_bank_account_check_file_with_http_info(bank_account_id, check_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->delete_bank_account_check_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **check_id** | **Integer** |  |  |
| **file_id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## download_check_file

> <FileDownloadMessage> download_check_file(bank_account_id, check_id, file_id)

Download a file for a check

Downloads a specific file associated to the check.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View`              <br /><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for checks associated with a Company) </span>

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
check_id = 56 # Integer | 
file_id = 56 # Integer | 

begin
  # Download a file for a check
  result = api_instance.download_check_file(bank_account_id, check_id, file_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->download_check_file: #{e}"
end
```

#### Using the download_check_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FileDownloadMessage>, Integer, Hash)> download_check_file_with_http_info(bank_account_id, check_id, file_id)

```ruby
begin
  # Download a file for a check
  data, status_code, headers = api_instance.download_check_file_with_http_info(bank_account_id, check_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FileDownloadMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->download_check_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **check_id** | **Integer** |  |  |
| **file_id** | **Integer** |  |  |

### Return type

[**FileDownloadMessage**](FileDownloadMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## finalize_reconciliation

> finalize_reconciliation(bank_account_id, reconciliation_id)

Finalize a manual reconciliation

Finalizes a manual reconciliation. Reconciliations can only be finalized for bank accounts that are not linked externally.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
reconciliation_id = 56 # Integer | 

begin
  # Finalize a manual reconciliation
  api_instance.finalize_reconciliation(bank_account_id, reconciliation_id)
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->finalize_reconciliation: #{e}"
end
```

#### Using the finalize_reconciliation_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> finalize_reconciliation_with_http_info(bank_account_id, reconciliation_id)

```ruby
begin
  # Finalize a manual reconciliation
  data, status_code, headers = api_instance.finalize_reconciliation_with_http_info(bank_account_id, reconciliation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->finalize_reconciliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **reconciliation_id** | **Integer** |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_bank_accounts

> <Array<BankAccountMessage>> get_all_bank_accounts(opts)

Retrieve all bank accounts

Retrieves a list of bank accounts.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
opts = {
  bankaccountstatus: 'Active', # String | Filters results by the status of the bank account. If no status is specified, bank accounts with any status will be returned.
  bankname: 'bankname_example', # String | Filters results to any bank account whose name *contains* the specified value.
  routingnumbers: ['inner_example'], # Array<String> | Filters results to any bank accounts whose routing number *contains* the specified value.
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
| **routingnumbers** | [**Array&lt;String&gt;**](String.md) | Filters results to any bank accounts whose routing number *contains* the specified value. | [optional] |
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

Retrieves all quick deposits.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View`

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

Retrieves a specific bank account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View`

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


## get_bank_account_check_file_by_id

> <BankAccountCheckFileMessage> get_bank_account_check_file_by_id(bank_account_id, check_id, file_id)

Retrieve a file for a check

Retrieves the metadata for a specific file associated with the specified check.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View`              <br /><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for checks associated with a Company) </span>

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
check_id = 56 # Integer | 
file_id = 56 # Integer | 

begin
  # Retrieve a file for a check
  result = api_instance.get_bank_account_check_file_by_id(bank_account_id, check_id, file_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_check_file_by_id: #{e}"
end
```

#### Using the get_bank_account_check_file_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountCheckFileMessage>, Integer, Hash)> get_bank_account_check_file_by_id_with_http_info(bank_account_id, check_id, file_id)

```ruby
begin
  # Retrieve a file for a check
  data, status_code, headers = api_instance.get_bank_account_check_file_by_id_with_http_info(bank_account_id, check_id, file_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountCheckFileMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_check_file_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **check_id** | **Integer** |  |  |
| **file_id** | **Integer** |  |  |

### Return type

[**BankAccountCheckFileMessage**](BankAccountCheckFileMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_checks

> <Array<BankAccountCheckMessage>> get_bank_account_checks(bank_account_id, startdate, enddate, opts)

Retrieve all checks

Retrieves all bank account checks.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View`              <br /><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for checks associated with a Company) </span>

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

Retrieves a bank account deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View`              <br /><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for deposits associated with a Company) </span>

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

Retrieves all bank account deposits.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View`              <br /><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for deposits associated with a Company) </span>

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


## get_bank_account_reconciliation_transactions

> <Array<BankAccountReconciliationTransactionMessage>> get_bank_account_reconciliation_transactions(bank_account_id, reconciliation_id, opts)

Retrieve all transactions for a reconciliation

Retrieves all transactions, both cleared and uncleared, up to the Statement Ending Date of the related reconciliation. This is true for pending and completed reconciliations. Transactions can only be retrieved for bank accounts that are not linked externally.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
reconciliation_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all transactions for a reconciliation
  result = api_instance.get_bank_account_reconciliation_transactions(bank_account_id, reconciliation_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_reconciliation_transactions: #{e}"
end
```

#### Using the get_bank_account_reconciliation_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccountReconciliationTransactionMessage>>, Integer, Hash)> get_bank_account_reconciliation_transactions_with_http_info(bank_account_id, reconciliation_id, opts)

```ruby
begin
  # Retrieve all transactions for a reconciliation
  data, status_code, headers = api_instance.get_bank_account_reconciliation_transactions_with_http_info(bank_account_id, reconciliation_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccountReconciliationTransactionMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_bank_account_reconciliation_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **reconciliation_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BankAccountReconciliationTransactionMessage&gt;**](BankAccountReconciliationTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_bank_account_transaction_by_id

> <BankAccountTransactionMessage> get_bank_account_transaction_by_id(bank_account_id, transaction_id)

Retrieve a transaction

Retrieves a specific bank account transaction.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Account</span> - `View`

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

Retrieves all bank account transactions.              <br /><br />              Note: When using the `orderby` query string parameter, the only supported parameter is `EntryDate`.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View`

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

Retrieves a bank account transfer.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View`

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

Retrieves all bank account transfers.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View`

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

Retrieves a bank account withdrawal.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccounts</span> - `View`

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

Retrieves all bank account withdrawals.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccounts</span> - `View`

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

Retrieves a bank account check.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View`              <br /><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for checks associated with a Company) </span>

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


## get_files_for_bank_account_check

> <Array<BankAccountCheckFileMessage>> get_files_for_bank_account_check(bank_account_id, check_id, opts)

Retrieve all files for a check

Retrieves the metadata for all files associated to the specified check.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View`              <br /><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for checks associated with a Company) </span>

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
check_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all files for a check
  result = api_instance.get_files_for_bank_account_check(bank_account_id, check_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_files_for_bank_account_check: #{e}"
end
```

#### Using the get_files_for_bank_account_check_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccountCheckFileMessage>>, Integer, Hash)> get_files_for_bank_account_check_with_http_info(bank_account_id, check_id, opts)

```ruby
begin
  # Retrieve all files for a check
  data, status_code, headers = api_instance.get_files_for_bank_account_check_with_http_info(bank_account_id, check_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccountCheckFileMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_files_for_bank_account_check_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **check_id** | **Integer** |  |  |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;BankAccountCheckFileMessage&gt;**](BankAccountCheckFileMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_quick_deposit_by_id

> <BankAccountQuickDepositMessage> get_quick_deposit_by_id(bank_account_id, quick_deposit_id)

Retrieve a quick deposit

Retrieves a quick deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View`

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


## get_reconciliation_balance_by_id

> <BankAccountReconciliationBalanceMessage> get_reconciliation_balance_by_id(bank_account_id, reconciliation_id)

Retrieve a reconciliation's balance

Retrieves a bank account reconciliation's balance. Reconciliation balances can only be retrieved for bank accounts that are not linked externally.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
reconciliation_id = 56 # Integer | 

begin
  # Retrieve a reconciliation's balance
  result = api_instance.get_reconciliation_balance_by_id(bank_account_id, reconciliation_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_reconciliation_balance_by_id: #{e}"
end
```

#### Using the get_reconciliation_balance_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountReconciliationBalanceMessage>, Integer, Hash)> get_reconciliation_balance_by_id_with_http_info(bank_account_id, reconciliation_id)

```ruby
begin
  # Retrieve a reconciliation's balance
  data, status_code, headers = api_instance.get_reconciliation_balance_by_id_with_http_info(bank_account_id, reconciliation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountReconciliationBalanceMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_reconciliation_balance_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **reconciliation_id** | **Integer** |  |  |

### Return type

[**BankAccountReconciliationBalanceMessage**](BankAccountReconciliationBalanceMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reconciliation_by_id

> <BankAccountReconciliationMessage> get_reconciliation_by_id(bank_account_id, reconciliation_id)

Retrieve a reconciliation

Retrieves a bank account reconciliation. Reconciliations can only be retrieved for bank accounts that are not linked externally.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
reconciliation_id = 56 # Integer | 

begin
  # Retrieve a reconciliation
  result = api_instance.get_reconciliation_by_id(bank_account_id, reconciliation_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_reconciliation_by_id: #{e}"
end
```

#### Using the get_reconciliation_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountReconciliationMessage>, Integer, Hash)> get_reconciliation_by_id_with_http_info(bank_account_id, reconciliation_id)

```ruby
begin
  # Retrieve a reconciliation
  data, status_code, headers = api_instance.get_reconciliation_by_id_with_http_info(bank_account_id, reconciliation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountReconciliationMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_reconciliation_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **reconciliation_id** | **Integer** |  |  |

### Return type

[**BankAccountReconciliationMessage**](BankAccountReconciliationMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reconciliations

> <Array<BankAccountReconciliationMessage>> get_reconciliations(bank_account_id, opts)

Retrieve all reconciliations

Retrieves all bank account reconciliations. Reconciliations can only be retrieved for bank accounts that are not linked externally.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
opts = {
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all reconciliations
  result = api_instance.get_reconciliations(bank_account_id, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_reconciliations: #{e}"
end
```

#### Using the get_reconciliations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BankAccountReconciliationMessage>>, Integer, Hash)> get_reconciliations_with_http_info(bank_account_id, opts)

```ruby
begin
  # Retrieve all reconciliations
  data, status_code, headers = api_instance.get_reconciliations_with_http_info(bank_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BankAccountReconciliationMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->get_reconciliations_with_http_info: #{e}"
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

[**Array&lt;BankAccountReconciliationMessage&gt;**](BankAccountReconciliationMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_undeposited_funds

> <Array<UndepositedFundsMessage>> get_undeposited_funds(bank_account_id, opts)

Retrieve all undeposited funds

Retrieve all bank account undeposited funds.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View`

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


## unclear_transactions

> unclear_transactions(bank_account_id, reconciliation_id, unclear_transactions_request)

Un-clear transactions for a reconciliation

Un-clears transactions for a reconciliation. Reconciliation transactions can only be un-cleared for bank accounts that are not linked externally.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
reconciliation_id = 56 # Integer | 
unclear_transactions_request = Buildium::UnclearTransactionsRequest.new({transaction_ids: [37]}) # UnclearTransactionsRequest | 

begin
  # Un-clear transactions for a reconciliation
  api_instance.unclear_transactions(bank_account_id, reconciliation_id, unclear_transactions_request)
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->unclear_transactions: #{e}"
end
```

#### Using the unclear_transactions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> unclear_transactions_with_http_info(bank_account_id, reconciliation_id, unclear_transactions_request)

```ruby
begin
  # Un-clear transactions for a reconciliation
  data, status_code, headers = api_instance.unclear_transactions_with_http_info(bank_account_id, reconciliation_id, unclear_transactions_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->unclear_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **reconciliation_id** | **Integer** |  |  |
| **unclear_transactions_request** | [**UnclearTransactionsRequest**](UnclearTransactionsRequest.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_bank_account

> <BankAccountMessage> update_bank_account(bank_account_id, update_bank_account_request)

Update a bank account

Updates a bank account.;              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Banking</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
update_bank_account_request = Buildium::UpdateBankAccountRequest.new({check_printing_info: Buildium::BankAccountPutMessageCheckPrintingInfo.new({enable_remote_check_printing: false, enable_local_check_printing: false, check_layout_type: 'Voucher1StubBottomMemo1Signature'}), name: 'name_example', bank_account_type: 'Checking', country: 'Afghanistan'}) # UpdateBankAccountRequest | 

begin
  # Update a bank account
  result = api_instance.update_bank_account(bank_account_id, update_bank_account_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account: #{e}"
end
```

#### Using the update_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountMessage>, Integer, Hash)> update_bank_account_with_http_info(bank_account_id, update_bank_account_request)

```ruby
begin
  # Update a bank account
  data, status_code, headers = api_instance.update_bank_account_with_http_info(bank_account_id, update_bank_account_request)
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
| **update_bank_account_request** | [**UpdateBankAccountRequest**](UpdateBankAccountRequest.md) |  |  |

### Return type

[**BankAccountMessage**](BankAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_bank_account_deposit

> <BankAccountDepositMessage> update_bank_account_deposit(bank_account_id, deposit_id, update_bank_account_deposit_request)

Update a deposit

Updates a deposit.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
deposit_id = 56 # Integer | 
update_bank_account_deposit_request = Buildium::UpdateBankAccountDepositRequest.new({entry_date: Date.today, lines: [Buildium::BankAccountDepositLineSaveMessage.new]}) # UpdateBankAccountDepositRequest | 

begin
  # Update a deposit
  result = api_instance.update_bank_account_deposit(bank_account_id, deposit_id, update_bank_account_deposit_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account_deposit: #{e}"
end
```

#### Using the update_bank_account_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountDepositMessage>, Integer, Hash)> update_bank_account_deposit_with_http_info(bank_account_id, deposit_id, update_bank_account_deposit_request)

```ruby
begin
  # Update a deposit
  data, status_code, headers = api_instance.update_bank_account_deposit_with_http_info(bank_account_id, deposit_id, update_bank_account_deposit_request)
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
| **update_bank_account_deposit_request** | [**UpdateBankAccountDepositRequest**](UpdateBankAccountDepositRequest.md) |  |  |

### Return type

[**BankAccountDepositMessage**](BankAccountDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_bank_account_transfer

> <BankAccountTransferMessage> update_bank_account_transfer(bank_account_id, transfer_id, create_bank_account_transfer_request)

Update a transfer

Updates a bank account transfer.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
transfer_id = 56 # Integer | 
create_bank_account_transfer_request = Buildium::CreateBankAccountTransferRequest.new({entry_date: Date.today, transfer_to_bank_account_id: 37, total_amount: 3.56, accounting_entity: Buildium::BankAccountTransferSaveMessageAccountingEntity.new({id: 37, accounting_entity_type: 'Association'})}) # CreateBankAccountTransferRequest | 

begin
  # Update a transfer
  result = api_instance.update_bank_account_transfer(bank_account_id, transfer_id, create_bank_account_transfer_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account_transfer: #{e}"
end
```

#### Using the update_bank_account_transfer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountTransferMessage>, Integer, Hash)> update_bank_account_transfer_with_http_info(bank_account_id, transfer_id, create_bank_account_transfer_request)

```ruby
begin
  # Update a transfer
  data, status_code, headers = api_instance.update_bank_account_transfer_with_http_info(bank_account_id, transfer_id, create_bank_account_transfer_request)
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
| **create_bank_account_transfer_request** | [**CreateBankAccountTransferRequest**](CreateBankAccountTransferRequest.md) |  |  |

### Return type

[**BankAccountTransferMessage**](BankAccountTransferMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_bank_account_withdrawal

> <BankAccountWithdrawalMessage> update_bank_account_withdrawal(bank_account_id, withdrawal_id, create_withdrawal_for_bank_account_request)

Update a withdrawal

Updates a bank account withdrawal.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
withdrawal_id = 56 # Integer | 
create_withdrawal_for_bank_account_request = Buildium::CreateWithdrawalForBankAccountRequest.new({entry_date: Date.today, offset_gl_account_id: 37, amount: 3.56, accounting_entity: Buildium::BankAccountWithdrawalSaveMessageAccountingEntity.new({id: 37, accounting_entity_type: 'Association'})}) # CreateWithdrawalForBankAccountRequest | 

begin
  # Update a withdrawal
  result = api_instance.update_bank_account_withdrawal(bank_account_id, withdrawal_id, create_withdrawal_for_bank_account_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_bank_account_withdrawal: #{e}"
end
```

#### Using the update_bank_account_withdrawal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountWithdrawalMessage>, Integer, Hash)> update_bank_account_withdrawal_with_http_info(bank_account_id, withdrawal_id, create_withdrawal_for_bank_account_request)

```ruby
begin
  # Update a withdrawal
  data, status_code, headers = api_instance.update_bank_account_withdrawal_with_http_info(bank_account_id, withdrawal_id, create_withdrawal_for_bank_account_request)
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
| **create_withdrawal_for_bank_account_request** | [**CreateWithdrawalForBankAccountRequest**](CreateWithdrawalForBankAccountRequest.md) |  |  |

### Return type

[**BankAccountWithdrawalMessage**](BankAccountWithdrawalMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_check_for_bank_account

> <BankAccountCheckMessage> update_check_for_bank_account(bank_account_id, check_id, update_check_for_bank_account_request)

Update a check

Updates a check.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
check_id = 56 # Integer | 
update_check_for_bank_account_request = Buildium::UpdateCheckForBankAccountRequest.new({payee: Buildium::BankAccountCheckPostMessagePayee.new({id: 37, type: 'Vendor'}), entry_date: Date.today, lines: [Buildium::BankAccountCheckLineSaveMessage.new({gl_account_id: 37, accounting_entity: Buildium::BankAccountCheckLineSaveMessageAccountingEntity.new({id: 37, accounting_entity_type: 'Association'}), amount: 3.56})]}) # UpdateCheckForBankAccountRequest | 

begin
  # Update a check
  result = api_instance.update_check_for_bank_account(bank_account_id, check_id, update_check_for_bank_account_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_check_for_bank_account: #{e}"
end
```

#### Using the update_check_for_bank_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountCheckMessage>, Integer, Hash)> update_check_for_bank_account_with_http_info(bank_account_id, check_id, update_check_for_bank_account_request)

```ruby
begin
  # Update a check
  data, status_code, headers = api_instance.update_check_for_bank_account_with_http_info(bank_account_id, check_id, update_check_for_bank_account_request)
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
| **update_check_for_bank_account_request** | [**UpdateCheckForBankAccountRequest**](UpdateCheckForBankAccountRequest.md) |  |  |

### Return type

[**BankAccountCheckMessage**](BankAccountCheckMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_quick_deposit

> <BankAccountQuickDepositMessage> update_quick_deposit(bank_account_id, quick_deposit_id, create_quick_deposit_request)

Update a quick deposit

Updates a quick deposit.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > Bank Accounts</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
quick_deposit_id = 56 # Integer | 
create_quick_deposit_request = Buildium::CreateQuickDepositRequest.new({entry_date: Date.today, offset_gl_account_id: 37, amount: 3.56, accounting_entity: Buildium::BankAccountQuickDepositSaveMessageAccountingEntity.new({id: 37, accounting_entity_type: 'Association'})}) # CreateQuickDepositRequest | 

begin
  # Update a quick deposit
  result = api_instance.update_quick_deposit(bank_account_id, quick_deposit_id, create_quick_deposit_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_quick_deposit: #{e}"
end
```

#### Using the update_quick_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountQuickDepositMessage>, Integer, Hash)> update_quick_deposit_with_http_info(bank_account_id, quick_deposit_id, create_quick_deposit_request)

```ruby
begin
  # Update a quick deposit
  data, status_code, headers = api_instance.update_quick_deposit_with_http_info(bank_account_id, quick_deposit_id, create_quick_deposit_request)
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
| **create_quick_deposit_request** | [**CreateQuickDepositRequest**](CreateQuickDepositRequest.md) |  |  |

### Return type

[**BankAccountQuickDepositMessage**](BankAccountQuickDepositMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_reconciliation

> <BankAccountReconciliationMessage> update_reconciliation(bank_account_id, reconciliation_id, update_reconciliation_request)

Update a reconciliation

Updates a reconciliation. Reconciliations can only be updated for bank accounts that are not linked externally.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
reconciliation_id = 56 # Integer | 
update_reconciliation_request = Buildium::UpdateReconciliationRequest.new({statement_ending_date: Date.today}) # UpdateReconciliationRequest | 

begin
  # Update a reconciliation
  result = api_instance.update_reconciliation(bank_account_id, reconciliation_id, update_reconciliation_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_reconciliation: #{e}"
end
```

#### Using the update_reconciliation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountReconciliationMessage>, Integer, Hash)> update_reconciliation_with_http_info(bank_account_id, reconciliation_id, update_reconciliation_request)

```ruby
begin
  # Update a reconciliation
  data, status_code, headers = api_instance.update_reconciliation_with_http_info(bank_account_id, reconciliation_id, update_reconciliation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountReconciliationMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_reconciliation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **reconciliation_id** | **Integer** |  |  |
| **update_reconciliation_request** | [**UpdateReconciliationRequest**](UpdateReconciliationRequest.md) |  |  |

### Return type

[**BankAccountReconciliationMessage**](BankAccountReconciliationMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_reconciliation_balances

> <BankAccountReconciliationBalanceMessage> update_reconciliation_balances(bank_account_id, reconciliation_id, update_reconciliation_balances_request)

Update a reconciliation's balance

Updates a bank account reconciliation's balance. Reconciliation balances can only be updated for bank accounts that are not linked externally.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > BankAccount</span> - `View` `Edit`

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

api_instance = Buildium::BankAccountsApi.new
bank_account_id = 56 # Integer | 
reconciliation_id = 56 # Integer | 
update_reconciliation_balances_request = Buildium::UpdateReconciliationBalancesRequest.new({total_checks_and_withdrawals: 3.56, total_deposits_and_additions: 3.56, ending_balance: 3.56}) # UpdateReconciliationBalancesRequest | 

begin
  # Update a reconciliation's balance
  result = api_instance.update_reconciliation_balances(bank_account_id, reconciliation_id, update_reconciliation_balances_request)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_reconciliation_balances: #{e}"
end
```

#### Using the update_reconciliation_balances_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BankAccountReconciliationBalanceMessage>, Integer, Hash)> update_reconciliation_balances_with_http_info(bank_account_id, reconciliation_id, update_reconciliation_balances_request)

```ruby
begin
  # Update a reconciliation's balance
  data, status_code, headers = api_instance.update_reconciliation_balances_with_http_info(bank_account_id, reconciliation_id, update_reconciliation_balances_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BankAccountReconciliationBalanceMessage>
rescue Buildium::ApiError => e
  puts "Error when calling BankAccountsApi->update_reconciliation_balances_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_account_id** | **Integer** |  |  |
| **reconciliation_id** | **Integer** |  |  |
| **update_reconciliation_balances_request** | [**UpdateReconciliationBalancesRequest**](UpdateReconciliationBalancesRequest.md) |  |  |

### Return type

[**BankAccountReconciliationBalanceMessage**](BankAccountReconciliationBalanceMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

