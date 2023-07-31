# Buildium::RentalPreferredVendorPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vendor_ids** | **Array&lt;Integer&gt;** | A list of vendor identifiers that will be assigned as preferred vendors to the specified rental property. The submitted list of identifiers will overwrite any existing preferred vendors. Leaving the array empty will remove all vendors from the rental property. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalPreferredVendorPutMessage.new(
  vendor_ids: null
)
```

