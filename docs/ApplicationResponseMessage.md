# Buildium::ApplicationResponseMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **section_label** | **String** | A user defined description of the application section. | [optional] |
| **section_type** | **String** | Indicates the application section type. The &#x60;SectionType&#x60; can be used to identify specific sections within the application. | [optional] |
| **section_responses** | [**Array&lt;ApplicationSectionResponseMessage&gt;**](ApplicationSectionResponseMessage.md) | A collection of form fields within the section. | [optional] |

## Example

```ruby
require 'buildium'

instance = Buildium::ApplicationResponseMessage.new(
  section_label: null,
  section_type: null,
  section_responses: null
)
```

