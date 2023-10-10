# Buildium::GeneralJournalEntryLineSaveMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gl_account_id** | **Integer** | The general ledger account identifier under which the line item amount will be recorded. Query the General Ledger Account endpoint &lt;a href&#x3D;\&quot;#operation/AccountingGetAllGLAccounts\&quot;&gt;Get All GLAccounts&lt;/a&gt; for a listing of available accounts. |  |
| **memo** | **String** | Memo for the line item. | [optional] |
| **posting_type** | **String** | The posting type for the line item. |  |
| **amount** | **Float** | Amount of the line item. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::GeneralJournalEntryLineSaveMessage.new(
  gl_account_id: null,
  memo: null,
  posting_type: null,
  amount: null
)
```

