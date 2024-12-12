# Buildium::UpdateRentalImageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the image. The description cannot exceed 100 characters. | [optional] |
| **show_in_listing** | **Boolean** | Indicates whether the image will be shown in listings for this rental. |  |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::UpdateRentalImageRequest.new(
  description: null,
  show_in_listing: null
)
```

