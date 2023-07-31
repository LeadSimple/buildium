# Buildium::VehicleMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **make** | **String** | Make of the vehicle. | [optional] |
| **model** | **String** | Model of the vehicle. | [optional] |
| **license_plate_number** | **String** | License plate number of the vehicle. | [optional] |
| **parking_pass_number** | **String** | Parking pass number assigned to the vehicle. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::VehicleMessage.new(
  make: null,
  model: null,
  license_plate_number: null,
  parking_pass_number: null
)
```

