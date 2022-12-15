# Buildium::GLAccountPostMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sub_type** | **String** | Describes the subtype of the general ledger account. |  |
| **is_cash_asset** | **Boolean** | Indicates if an account is a Cash Asset. Can only have a value if SubType is &#x60;CurrentAsset&#x60; | [optional] |
| **name** | **String** | Name of the general ledger account. The name cannot exceed 50 characters and must be unique across all general ledger accounts. |  |
| **account_number** | **String** | General ledger account number. The account number cannot exceed 12 characters and must be unique across all general ledger accounts. |  |
| **description** | **String** | Description of the general ledger account. The description cannot exceed 250 characters. | [optional] |
| **is_contra_account** | **Boolean** | Indicates whether the account is a contra account. Must be null if &#x60;IsCashAsset&#x60; field is set to true. | [optional] |
| **cash_flow_classification** | **String** | Describes the cash flow classification for the general ledger account. Must be null if &#x60;IsCashAsset&#x60; field is set to true. | [optional] |
| **parent_gl_account_id** | **Integer** | Unique identifier of the parent general ledger account. Indicates if this is a sub general ledger account. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::GLAccountPostMessage.new(
  sub_type: null,
  is_cash_asset: null,
  name: null,
  account_number: null,
  description: null,
  is_contra_account: null,
  cash_flow_classification: null,
  parent_gl_account_id: null
)
```

