=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Buildium::CommunicationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CommunicationsApi' do
  before do
    # run before each test
    @api_instance = Buildium::CommunicationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CommunicationsApi' do
    it 'should create an instance of CommunicationsApi' do
      expect(@api_instance).to be_instance_of(Buildium::CommunicationsApi)
    end
  end

  # unit tests for create_announcement
  # Create an announcement
  # Creates and publishes an announcement.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Announcements&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param announcement_post_message 
  # @param [Hash] opts the optional parameters
  # @return [AnnouncementMessage]
  describe 'create_announcement test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_phone_log
  # Create a phone log
  # Creates a phone log.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Timelines (Phone Logs)&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param phone_log_post_message 
  # @param [Hash] opts the optional parameters
  # @return [PhoneLogMessage]
  describe 'create_phone_log test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for emails_external_api_write_create_email
  # Create an email.
  # Creates an email              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communication &amp;gt; Emails&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param email_post_message 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'emails_external_api_write_create_email test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for expire_announcement
  # Expire an announcement
  # Removes the announcement from the Resident Center immediately.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Announcements&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param announcement_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'expire_announcement test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_announcements
  # Retrieve all announcements
  # Retrieves all announcements.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Announcements&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :announcementdatefrom Filters results to any announcements created on or after the specified date. The value must be formatted as YYYY-MM-DD.
  # @option opts [Date] :announcementdateto Filters results to any announcements created on or before the specified date. The value must be formatted as YYYY-MM-DD.
  # @option opts [Integer] :entityid Filters results to any announcement associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field.
  # @option opts [String] :entitytype Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is provided.
  # @option opts [Integer] :senderid Unique identifier of the user that published the announcement.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<AnnouncementMessage>]
  describe 'get_all_announcements test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_announcement_by_id
  # Retrieve an announcement
  # Retrieves an announcement.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Announcements&lt;/span&gt; - &#x60;View&#x60;
  # @param announcement_id 
  # @param [Hash] opts the optional parameters
  # @return [AnnouncementMessage]
  describe 'get_announcement_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_announcement_properties
  # Retrieve all announcement properties
  # Retrieves a list of association and/or rental properties whose residents received the announcement. An empty response collection indicates that the announcement was sent to all properties at the time of its creation.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Announcements&lt;/span&gt; - &#x60;View&#x60;
  # @param announcement_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<PropertyMessage>]
  describe 'get_announcement_properties test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email_by_id
  # Retrieve an email
  # Retrieves an email.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Emails&lt;/span&gt; - &#x60;View&#x60;
  # @param email_id 
  # @param [Hash] opts the optional parameters
  # @return [EmailMessage]
  describe 'get_email_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_email_recipients
  # Retrieve all email recipients
  # Retrieves all email recipients.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Email&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;h4&gt;Optional Permissions:&lt;/h4&gt;&lt;br /&gt;              The following permissions are optional, but results with a missing permission will be filtered out.              &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Vendors&lt;/span&gt; - &#x60;View&#x60; In order to retrieve recipients that are Vendors, you must have this permission.              &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; Users&lt;/span&gt; - &#x60;View&#x60; In order to see recipients that are Staff, you must have this permission.
  # @param email_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<EmailRecipientMessage>]
  describe 'get_email_recipients test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_emails
  # Retrieve all emails
  # Retrieves all emails.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communication &amp;gt; Emails&lt;/span&gt; - &#x60;View&#x60;
  # @param sentdatetimefrom Filters results to any emails whose sent date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days.
  # @param sentdatetimeto Filters results to any emails whose sent date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :subject Filters results to any email whose subject *contains* the specified value.
  # @option opts [String] :recipientnameoremail Filters results to any email with a recipient whose name or email address *contains* the specified value.
  # @option opts [Integer] :senderuserid Filters results to only emails that were sent by the specified user identifier.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<EmailMessage>]
  describe 'get_emails test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_mailing_templates
  # Retrieve all communication templates
  # Retrieves all mailing and email templates.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Mailing Templates&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;h4&gt;Optional Permissions:&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental owners&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Vendors&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<MailingTemplateMessage>]
  describe 'get_mailing_templates test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_mailing_templates_by_id
  # Retrieve a communication template
  # Retrieves a communication template.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Mailing Templates&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;h4&gt;Optional Permissions:&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental owners&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Vendors&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
  # @param template_id 
  # @param [Hash] opts the optional parameters
  # @return [MailingTemplateMessage]
  describe 'get_mailing_templates_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_phone_log_by_id
  # Retrieve a phone log
  # Retrieves a specific phone log.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Timelines (Phone Logs)&lt;/span&gt; - &#x60;View&#x60;
  # @param phone_log_id The phone log identifier
  # @param [Hash] opts the optional parameters
  # @return [PhoneLogMessage]
  describe 'get_phone_log_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_phone_logs
  # Retrieve all phone logs
  # Retrieves all phone logs.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Timelines (Phone Logs)&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :fromdate Filters results to any phone log whose call date is greater than or equal to the specified value.
  # @option opts [Date] :todate Filters results to any phone log whose call date is less than or equal to the specified value.
  # @option opts [Array<Integer>] :loggedbystaffuserids Filters results to any phone log that was logged by staff user(s).
  # @option opts [String] :subject Filters results to any phone log whose subject *contains* the specified value.
  # @option opts [Integer] :participantentityid Filters results to any phone logs that match the participant identifier. Note, if a value is provided in this field the &#x60;ParticipantEntityType&#x60; must also be provided.
  # @option opts [String] :participantentitytype Filters results to any phone log with the specified participant type. This field is required if a value is provided for the &#x60;ParticipantEntityId&#x60; field.
  # @option opts [Integer] :unitagreementid Filters results to any phone log with the specified unit agreement identifier. Note, if a value is provided in this field the &#x60;UnitAgreementType&#x60; must also be provided.
  # @option opts [String] :unitagreementtype Filters results to any phone log with the specified unit agreement type. This field is required if a value is provided for the &#x60;UnitAgreementId&#x60; field.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<PhoneLogMessage>]
  describe 'get_phone_logs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_phone_log
  # Update a phone log
  # Update a phone log  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Timelines (Phone Logs)&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param phone_log_id The phone log identifier.
  # @param phone_log_put_message 
  # @param [Hash] opts the optional parameters
  # @return [PhoneLogMessage]
  describe 'update_phone_log test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
