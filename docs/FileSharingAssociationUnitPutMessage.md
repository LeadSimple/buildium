# Buildium::FileSharingAssociationUnitPutMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **association_owners** | **Boolean** | Indicates whether file is shared with association owners. | [optional] |
| **board_members** | **Boolean** | Indicates whether file is shared with board members of the association. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::FileSharingAssociationUnitPutMessage.new(
  association_owners: null,
  board_members: null
)
```

