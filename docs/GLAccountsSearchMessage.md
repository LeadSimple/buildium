# Buildium::GLAccountsSearchMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_types** | **Array&lt;String&gt;** | Filters results by the specified general ledger account types. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::GLAccountsSearchMessage.new(
  account_types: null
)
```

