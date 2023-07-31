# Buildium::ApplicationResponseFieldMessage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_category_type** | **String** | Indicates the field category type the field is assigned. The &#x60;FieldCategoryType&#x60; can be used to identify specific data points within the application. For example, to identify the fields that contain the applicants full name you would filter the fields within the application where the &#x60;FieldCategoryType&#x60; is equal to &#x60;ApplicantName&#x60;. | [optional] |
| **field_type** | **String** | Indicates the fields expected input value format and/or data type. For example, a field can be assigned a &#x60;FieldType&#x60; of &#x60;DateDayMonthYear&#x60; which indicates the input value must be a date containing a day, month and year. | [optional] |
| **field_label** | **String** | A user defined description of the field. This value is typically displayed as the form field label on the application. | [optional] |
| **value** | **String** | The field input value from the applicant. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::ApplicationResponseFieldMessage.new(
  field_category_type: null,
  field_type: null,
  field_label: null,
  value: null
)
```

