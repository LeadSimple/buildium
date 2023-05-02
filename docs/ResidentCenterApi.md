# Buildium::ResidentCenterApi

All URIs are relative to *https://api.buildium.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_resident_center_users**](ResidentCenterApi.md#get_resident_center_users) | **GET** /v1/residentCenterUsers | Retrieve all resident center users |


## get_resident_center_users

> <Array<ResidentCenterUserMessage>> get_resident_center_users(opts)

Retrieve all resident center users

Retrieves all resident center users for both rentals and associations.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Resident Center Users</span> - `View`              <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` is required to retrieve resident center users that are tenants.              <br /><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` is required to retrieve resident center users that are association owners.

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

api_instance = Buildium::ResidentCenterApi.new
opts = {
  unitagreementids: [37], # Array<Integer> | Filters results to any resident center user who is associated with the specified lease and/or association ownership account identifiers.
  userids: [37], # Array<Integer> | Filters results to any resident center user with the specified tenant and/or association owner identifiers.
  usertypes: ['Tenant'], # Array<String> | Filters results to any resident center user with the specified types.
  residentcenteruserstatuses: ['AccountExistsButNoEmailSent'], # Array<String> | Filters results to any resident center user with the specified resident center user statuses.
  isautopayenabled: true, # Boolean | If true, filters results to any resident center users who have automatic payments scheduled for the future. If false, filters results to any resident center users  who do not have automatic payments scheduled for the future. If not provided, will not filter results based on automatic payments.
  orderby: 'orderby_example', # String | `orderby` indicates the field(s) and direction to sort the results in the response. See <a href=\"#section/API-Overview/Bulk-Request-Options\">Bulk Request Options</a> for more information.
  offset: 56, # Integer | `offset` indicates the position of the first record to return. The `offset` is zero-based and the default is 0.
  limit: 56 # Integer | `limit` indicates the maximum number of results to be returned in the response. `limit` can range between 1 and 1000 and the default is 50.
}

begin
  # Retrieve all resident center users
  result = api_instance.get_resident_center_users(opts)
  p result
rescue Buildium::ApiError => e
  puts "Error when calling ResidentCenterApi->get_resident_center_users: #{e}"
end
```

#### Using the get_resident_center_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ResidentCenterUserMessage>>, Integer, Hash)> get_resident_center_users_with_http_info(opts)

```ruby
begin
  # Retrieve all resident center users
  data, status_code, headers = api_instance.get_resident_center_users_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ResidentCenterUserMessage>>
rescue Buildium::ApiError => e
  puts "Error when calling ResidentCenterApi->get_resident_center_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **unitagreementids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any resident center user who is associated with the specified lease and/or association ownership account identifiers. | [optional] |
| **userids** | [**Array&lt;Integer&gt;**](Integer.md) | Filters results to any resident center user with the specified tenant and/or association owner identifiers. | [optional] |
| **usertypes** | [**Array&lt;String&gt;**](String.md) | Filters results to any resident center user with the specified types. | [optional] |
| **residentcenteruserstatuses** | [**Array&lt;String&gt;**](String.md) | Filters results to any resident center user with the specified resident center user statuses. | [optional] |
| **isautopayenabled** | **Boolean** | If true, filters results to any resident center users who have automatic payments scheduled for the future. If false, filters results to any resident center users  who do not have automatic payments scheduled for the future. If not provided, will not filter results based on automatic payments. | [optional] |
| **orderby** | **String** | &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information. | [optional] |
| **offset** | **Integer** | &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0. | [optional] |
| **limit** | **Integer** | &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50. | [optional] |

### Return type

[**Array&lt;ResidentCenterUserMessage&gt;**](ResidentCenterUserMessage.md)

### Authorization

[clientId](../README.md#clientId), [clientSecret](../README.md#clientSecret)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

