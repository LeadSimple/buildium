# Buildium::CreateEmailRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **template_id** | **Integer** | Unique identifier of the email template to use for the body of the email. Any tokens present in the template will be replaced based on the recipient(s) of the email.  The following email templates cannot be used:  &lt;ul&gt;&lt;li&gt;1 (Tenant Statement)&lt;/li&gt;&lt;li&gt;2 (Homeowner Statement)&lt;/li&gt;&lt;li&gt;3 (Rental Owner Statement)&lt;/li&gt;&lt;li&gt;123 (Association Tenant Invoice)&lt;/li&gt;&lt;li&gt;124 (Rental Tenant Invoice)&lt;/li&gt;&lt;/ul&gt; |  |
| **subject** | **String** | Email subject. |  |
| **include_alternate_emails** | **Boolean** | Indicates whether to send the email to the recipient&#39;s primary and alternate email addresses. |  |
| **exclude_delinquent_recipients** | **Boolean** | Indicates whether to exclude sending emails to association owners that are flagged as delinquent. This only applies to association recipients. |  |
| **include_association_tenants** | **Boolean** | Indicates whether to include association tenants. Only applies to association properties. |  |
| **property_ids** | **Array&lt;Integer&gt;** | A list of association and/or rental property unique identifiers to send the email to. Cannot be populated if &#39;RecipientIds&#39; is present. | [optional] |
| **recipient_ids** | **Array&lt;Integer&gt;** | A list of individual unique identifiers to send the email to. Cannot be populated if &#39;PropertyIds&#39; is present. | [optional] |

## Example

```ruby
require 'buildium-ruby'

instance = Buildium::CreateEmailRequest.new(
  template_id: null,
  subject: null,
  include_alternate_emails: null,
  exclude_delinquent_recipients: null,
  include_association_tenants: null,
  property_ids: null,
  recipient_ids: null
)
```

