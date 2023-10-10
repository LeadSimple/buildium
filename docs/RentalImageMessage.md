# Buildium::RentalImageMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | Rental image unique identifier. | [optional] |
| **description** | **String** | Description of the image. | [optional] |
| **physical_file_name** | **String** | Physical name of the file on the server. | [optional] |
| **provider** | **String** | The provider for the image. If an external provider is not used to host the image, this will be set to &#x60;None&#x60;. | [optional] |
| **show_in_listing** | **Boolean** | Indicates whether the image will be shown in listings for this rental. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::RentalImageMessage.new(
  id: null,
  description: null,
  physical_file_name: null,
  provider: null,
  show_in_listing: null
)
```

