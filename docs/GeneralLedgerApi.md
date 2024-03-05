# Buildium::GeneralLedgerApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_general_journal_entry**](GeneralLedgerApi.md#create_general_journal_entry) | **POST** /v1/generalledger/journalentries | Create a general journal entry |
| [**create_general_ledger_account**](GeneralLedgerApi.md#create_general_ledger_account) | **POST** /v1/glaccounts | Create a general ledger account |
| [**get_all_gl_accounts**](GeneralLedgerApi.md#get_all_gl_accounts) | **GET** /v1/glaccounts | Retrieve all general ledger accounts |
| [**get_all_transactions**](GeneralLedgerApi.md#get_all_transactions) | **GET** /v1/generalledger/transactions | Retrieve all general ledger transactions |
| [**get_general_ledger_entries**](GeneralLedgerApi.md#get_general_ledger_entries) | **GET** /v1/generalledger | Retrieve all general ledger entries |
| [**get_gl_account_balances**](GeneralLedgerApi.md#get_gl_account_balances) | **GET** /v1/glaccounts/balances | Retrieve all general ledger account balances |
| [**get_gl_account_by_id**](GeneralLedgerApi.md#get_gl_account_by_id) | **GET** /v1/glaccounts/{glAccountId} | Retrieve a general ledger account |
| [**get_transaction_by_id**](GeneralLedgerApi.md#get_transaction_by_id) | **GET** /v1/generalledger/transactions/{transactionId} | Retrieve a general ledger transaction |
| [**update_general_journal_entry**](GeneralLedgerApi.md#update_general_journal_entry) | **PUT** /v1/generalledger/journalentries/{journalEntryId} | Update a general journal entry |
| [**update_gl_account**](GeneralLedgerApi.md#update_gl_account) | **PUT** /v1/glaccounts/{glAccountId} | Update a general ledger account |


## create_general_journal_entry

> <GeneralLedgerTransactionMessage> create_general_journal_entry(general_journal_entry_post_message)

Create a general journal entry

Creates a general journal entry.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; General Ledger Transactions</span> - `View` `Edit`

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

api_instance = Buildium::GeneralLedgerApi.new
general_journal_entry_post_message = Buildium::GeneralJournalEntryPostMessage.new({accounting_entity: Buildium::AccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'}), date: Date.today, lines: [Buildium::GeneralJournalEntryLineSaveMessage.new({gl_account_id: 37, posting_type: 'Credit', amount: 3.56})]}) # GeneralJournalEntryPostMessage | 

begin
  # Create a general journal entry
  result = api_instance.create_general_journal_entry(general_journal_entry_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->create_general_journal_entry: #{e}"
end
```

#### Using the create_general_journal_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralLedgerTransactionMessage>, Integer, Hash)> create_general_journal_entry_with_http_info(general_journal_entry_post_message)

```ruby
begin
  # Create a general journal entry
  data, status_code, headers = api_instance.create_general_journal_entry_with_http_info(general_journal_entry_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralLedgerTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->create_general_journal_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **general_journal_entry_post_message** | [**GeneralJournalEntryPostMessage**](GeneralJournalEntryPostMessage.md) |  |  |

### Return type

[**GeneralLedgerTransactionMessage**](GeneralLedgerTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_general_ledger_account

> <GLAccountMessage> create_general_ledger_account(gl_account_post_message)

Create a general ledger account

Creates a general ledger account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; General Ledger Accounts</span> - `View` `Edit`

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

api_instance = Buildium::GeneralLedgerApi.new
gl_account_post_message = Buildium::GLAccountPostMessage.new({sub_type: 'CurrentAsset', name: 'name_example', account_number: 'account_number_example'}) # GLAccountPostMessage | 

begin
  # Create a general ledger account
  result = api_instance.create_general_ledger_account(gl_account_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->create_general_ledger_account: #{e}"
end
```

#### Using the create_general_ledger_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GLAccountMessage>, Integer, Hash)> create_general_ledger_account_with_http_info(gl_account_post_message)

```ruby
begin
  # Create a general ledger account
  data, status_code, headers = api_instance.create_general_ledger_account_with_http_info(gl_account_post_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GLAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->create_general_ledger_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_post_message** | [**GLAccountPostMessage**](GLAccountPostMessage.md) |  |  |

### Return type

[**GLAccountMessage**](GLAccountMessage.md)

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

api_instance = Buildium::GeneralLedgerApi.new
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
  puts "Error when calling GeneralLedgerApi->get_all_gl_accounts: #{e}"
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
  puts "Error when calling GeneralLedgerApi->get_all_gl_accounts_with_http_info: #{e}"
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

api_instance = Buildium::GeneralLedgerApi.new
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
  puts "Error when calling GeneralLedgerApi->get_all_transactions: #{e}"
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
  puts "Error when calling GeneralLedgerApi->get_all_transactions_with_http_info: #{e}"
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


## get_general_ledger_entries

> <Array<GeneralLedgerMessage>> get_general_ledger_entries(accountingbasis, glaccountids, startdate, enddate, opts)

Retrieve all general ledger entries

Retrieves all general ledger entries              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; General Ledger Transactions</span> - `View`

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

api_instance = Buildium::GeneralLedgerApi.new
accountingbasis = 'Accrual' # String | The methodology in which revenues and expenses are recognized when calculating the balances. Specifying `Cash` calculates balances based on when money changes hands. Specifying `Accrual` calculates balances based on the period in which the transaction originally happened.
glaccountids = [37] # Array<Integer> | Filters results to entries whose general ledger account belongs to the specified set of general ledger account ids.
startdate = Date.parse('2013-10-20') # Date | Filters results to any entries whose start date is greater than or equal to the specified value.
enddate = Date.parse('2013-10-20') # Date | Filters results to any entries whose end date is less than or equal to the specified value.
opts = {
  entitytype: 'Company', # String | Specifies the type of entity that `EntityId` field refers to.
  entityid: 56, # Integer | Filters results to any general ledger entry containing line items associated with the specified entity identifier. This filter is used in conjunction with the `EntityType` field which must be set to the type of entity this identifier references.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all general ledger entries
  result = api_instance.get_general_ledger_entries(accountingbasis, glaccountids, startdate, enddate, opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->get_general_ledger_entries: #{e}"
end
```

#### Using the get_general_ledger_entries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GeneralLedgerMessage>>, Integer, Hash)> get_general_ledger_entries_with_http_info(accountingbasis, glaccountids, startdate, enddate, opts)

```ruby
begin
  # Retrieve all general ledger entries
  data, status_code, headers = api_instance.get_general_ledger_entries_with_http_info(accountingbasis, glaccountids, startdate, enddate, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GeneralLedgerMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->get_general_ledger_entries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accountingbasis** | **String** | The methodology in which revenues and expenses are recognized when calculating the balances. Specifying &#x60;Cash&#x60; calculates balances based on when money changes hands. Specifying &#x60;Accrual&#x60; calculates balances based on the period in which the transaction originally happened. |  |
| **glaccountids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to entries whose general ledger account belongs to the specified set of general ledger account ids. |  |
| **startdate** | **Date** | Filters results to any entries whose start date is greater than or equal to the specified value. |  |
| **enddate** | **Date** | Filters results to any entries whose end date is less than or equal to the specified value. |  |
| **entitytype** | **String** | Specifies the type of entity that &#x60;EntityId&#x60; field refers to. | [optional] |
| **entityid** | **Integer** | Filters results to any general ledger entry containing line items associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;GeneralLedgerMessage&gt;**](GeneralLedgerMessage.md)

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

api_instance = Buildium::GeneralLedgerApi.new
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
  puts "Error when calling GeneralLedgerApi->get_gl_account_balances: #{e}"
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
  puts "Error when calling GeneralLedgerApi->get_gl_account_balances_with_http_info: #{e}"
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

api_instance = Buildium::GeneralLedgerApi.new
gl_account_id = 56 # Integer | The general ledger account identifier.

begin
  # Retrieve a general ledger account
  result = api_instance.get_gl_account_by_id(gl_account_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->get_gl_account_by_id: #{e}"
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
  puts "Error when calling GeneralLedgerApi->get_gl_account_by_id_with_http_info: #{e}"
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

api_instance = Buildium::GeneralLedgerApi.new
transaction_id = 56 # Integer | The general ledger transaction identifier.

begin
  # Retrieve a general ledger transaction
  result = api_instance.get_transaction_by_id(transaction_id)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->get_transaction_by_id: #{e}"
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
  puts "Error when calling GeneralLedgerApi->get_transaction_by_id_with_http_info: #{e}"
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


## update_general_journal_entry

> <GeneralLedgerTransactionMessage> update_general_journal_entry(journal_entry_id, general_journal_entry_put_message)

Update a general journal entry

Updates a general journal entry.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; General Ledger Transactions</span> - `View` `Edit`

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

api_instance = Buildium::GeneralLedgerApi.new
journal_entry_id = 56 # Integer | 
general_journal_entry_put_message = Buildium::GeneralJournalEntryPutMessage.new({accounting_entity: Buildium::AccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'}), date: Date.today, lines: [Buildium::GeneralJournalEntryLineSaveMessage.new({gl_account_id: 37, posting_type: 'Credit', amount: 3.56})]}) # GeneralJournalEntryPutMessage | 

begin
  # Update a general journal entry
  result = api_instance.update_general_journal_entry(journal_entry_id, general_journal_entry_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->update_general_journal_entry: #{e}"
end
```

#### Using the update_general_journal_entry_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GeneralLedgerTransactionMessage>, Integer, Hash)> update_general_journal_entry_with_http_info(journal_entry_id, general_journal_entry_put_message)

```ruby
begin
  # Update a general journal entry
  data, status_code, headers = api_instance.update_general_journal_entry_with_http_info(journal_entry_id, general_journal_entry_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GeneralLedgerTransactionMessage>
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->update_general_journal_entry_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **journal_entry_id** | **Integer** |  |  |
| **general_journal_entry_put_message** | [**GeneralJournalEntryPutMessage**](GeneralJournalEntryPutMessage.md) |  |  |

### Return type

[**GeneralLedgerTransactionMessage**](GeneralLedgerTransactionMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_gl_account

> <GLAccountMessage> update_gl_account(gl_account_id, gl_account_put_message)

Update a general ledger account

Updates a general ledger account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; General Ledger Accounts</span> - `View` `Edit`

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

api_instance = Buildium::GeneralLedgerApi.new
gl_account_id = 56 # Integer | 
gl_account_put_message = Buildium::GLAccountPutMessage.new({name: 'name_example', sub_type: 'CurrentAsset'}) # GLAccountPutMessage | 

begin
  # Update a general ledger account
  result = api_instance.update_gl_account(gl_account_id, gl_account_put_message)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->update_gl_account: #{e}"
end
```

#### Using the update_gl_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GLAccountMessage>, Integer, Hash)> update_gl_account_with_http_info(gl_account_id, gl_account_put_message)

```ruby
begin
  # Update a general ledger account
  data, status_code, headers = api_instance.update_gl_account_with_http_info(gl_account_id, gl_account_put_message)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GLAccountMessage>
rescue Buildium::ApiError => e
  puts "Error when calling GeneralLedgerApi->update_gl_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** |  |  |
| **gl_account_put_message** | [**GLAccountPutMessage**](GLAccountPutMessage.md) |  |  |

### Return type

[**GLAccountMessage**](GLAccountMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

