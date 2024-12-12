=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class CommunicationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an announcement
    # Creates and publishes an announcement.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Announcements</span> - `View` `Edit`
    # @param create_announcement_request [CreateAnnouncementRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AnnouncementMessage]
    def create_announcement(create_announcement_request, opts = {})
      data, _status_code, _headers = create_announcement_with_http_info(create_announcement_request, opts)
      data
    end

    # Create an announcement
    # Creates and publishes an announcement.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Announcements&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param create_announcement_request [CreateAnnouncementRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AnnouncementMessage, Integer, Hash)>] AnnouncementMessage data, response status code and response headers
    def create_announcement_with_http_info(create_announcement_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.create_announcement ...'
      end
      # verify the required parameter 'create_announcement_request' is set
      if @api_client.config.client_side_validation && create_announcement_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_announcement_request' when calling CommunicationsApi.create_announcement"
      end
      # resource path
      local_var_path = '/v1/communications/announcements'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_announcement_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AnnouncementMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.create_announcement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#create_announcement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Send an email
    # Sends an email to one or more recipients using the specified email template.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communication > Emails</span> - `View` `Edit`
    # @param create_email_request [CreateEmailRequest] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_email(create_email_request, opts = {})
      create_email_with_http_info(create_email_request, opts)
      nil
    end

    # Send an email
    # Sends an email to one or more recipients using the specified email template.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communication &gt; Emails&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param create_email_request [CreateEmailRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def create_email_with_http_info(create_email_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.create_email ...'
      end
      # verify the required parameter 'create_email_request' is set
      if @api_client.config.client_side_validation && create_email_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_email_request' when calling CommunicationsApi.create_email"
      end
      # resource path
      local_var_path = '/v1/communications/emails'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_email_request)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.create_email",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#create_email\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a phone log
    # Creates a phone log.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Timelines (Phone Logs)</span> - `View` `Edit`
    # @param create_phone_log_request [CreatePhoneLogRequest] 
    # @param [Hash] opts the optional parameters
    # @return [PhoneLogMessage]
    def create_phone_log(create_phone_log_request, opts = {})
      data, _status_code, _headers = create_phone_log_with_http_info(create_phone_log_request, opts)
      data
    end

    # Create a phone log
    # Creates a phone log.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Timelines (Phone Logs)&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param create_phone_log_request [CreatePhoneLogRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PhoneLogMessage, Integer, Hash)>] PhoneLogMessage data, response status code and response headers
    def create_phone_log_with_http_info(create_phone_log_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.create_phone_log ...'
      end
      # verify the required parameter 'create_phone_log_request' is set
      if @api_client.config.client_side_validation && create_phone_log_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_phone_log_request' when calling CommunicationsApi.create_phone_log"
      end
      # resource path
      local_var_path = '/v1/communications/phonelogs'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_phone_log_request)

      # return_type
      return_type = opts[:debug_return_type] || 'PhoneLogMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.create_phone_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#create_phone_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Expire an announcement
    # Removes the announcement from the Resident Center immediately.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Announcements</span> - `View` `Edit`
    # @param announcement_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def expire_announcement(announcement_id, opts = {})
      expire_announcement_with_http_info(announcement_id, opts)
      nil
    end

    # Expire an announcement
    # Removes the announcement from the Resident Center immediately.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Announcements&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param announcement_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def expire_announcement_with_http_info(announcement_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.expire_announcement ...'
      end
      # verify the required parameter 'announcement_id' is set
      if @api_client.config.client_side_validation && announcement_id.nil?
        fail ArgumentError, "Missing the required parameter 'announcement_id' when calling CommunicationsApi.expire_announcement"
      end
      # resource path
      local_var_path = '/v1/communications/announcements/{announcementId}/expirationrequest'.sub('{' + 'announcementId' + '}', CGI.escape(announcement_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.expire_announcement",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#expire_announcement\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all announcements
    # Retrieves all announcements.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Announcements</span> - `View`
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
    def get_all_announcements(opts = {})
      data, _status_code, _headers = get_all_announcements_with_http_info(opts)
      data
    end

    # Retrieve all announcements
    # Retrieves all announcements.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Announcements&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :announcementdatefrom Filters results to any announcements created on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :announcementdateto Filters results to any announcements created on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Integer] :entityid Filters results to any announcement associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field.
    # @option opts [String] :entitytype Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is provided.
    # @option opts [Integer] :senderid Unique identifier of the user that published the announcement.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<AnnouncementMessage>, Integer, Hash)>] Array<AnnouncementMessage> data, response status code and response headers
    def get_all_announcements_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.get_all_announcements ...'
      end
      allowable_values = ["Rental", "RentalOwner", "Association"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/communications/announcements'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'announcementdatefrom'] = opts[:'announcementdatefrom'] if !opts[:'announcementdatefrom'].nil?
      query_params[:'announcementdateto'] = opts[:'announcementdateto'] if !opts[:'announcementdateto'].nil?
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'senderid'] = opts[:'senderid'] if !opts[:'senderid'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AnnouncementMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.get_all_announcements",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#get_all_announcements\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an announcement
    # Retrieves an announcement.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Announcements</span> - `View`
    # @param announcement_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [AnnouncementMessage]
    def get_announcement_by_id(announcement_id, opts = {})
      data, _status_code, _headers = get_announcement_by_id_with_http_info(announcement_id, opts)
      data
    end

    # Retrieve an announcement
    # Retrieves an announcement.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Announcements&lt;/span&gt; - &#x60;View&#x60;
    # @param announcement_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AnnouncementMessage, Integer, Hash)>] AnnouncementMessage data, response status code and response headers
    def get_announcement_by_id_with_http_info(announcement_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.get_announcement_by_id ...'
      end
      # verify the required parameter 'announcement_id' is set
      if @api_client.config.client_side_validation && announcement_id.nil?
        fail ArgumentError, "Missing the required parameter 'announcement_id' when calling CommunicationsApi.get_announcement_by_id"
      end
      # resource path
      local_var_path = '/v1/communications/announcements/{announcementId}'.sub('{' + 'announcementId' + '}', CGI.escape(announcement_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AnnouncementMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.get_announcement_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#get_announcement_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all announcement properties
    # Retrieves a list of association and/or rental properties whose residents received the announcement. An empty response collection indicates that the announcement was sent to all properties at the time of its creation.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Announcements</span> - `View`
    # @param announcement_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<PropertyMessage>]
    def get_announcement_properties(announcement_id, opts = {})
      data, _status_code, _headers = get_announcement_properties_with_http_info(announcement_id, opts)
      data
    end

    # Retrieve all announcement properties
    # Retrieves a list of association and/or rental properties whose residents received the announcement. An empty response collection indicates that the announcement was sent to all properties at the time of its creation.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Announcements&lt;/span&gt; - &#x60;View&#x60;
    # @param announcement_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<PropertyMessage>, Integer, Hash)>] Array<PropertyMessage> data, response status code and response headers
    def get_announcement_properties_with_http_info(announcement_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.get_announcement_properties ...'
      end
      # verify the required parameter 'announcement_id' is set
      if @api_client.config.client_side_validation && announcement_id.nil?
        fail ArgumentError, "Missing the required parameter 'announcement_id' when calling CommunicationsApi.get_announcement_properties"
      end
      # resource path
      local_var_path = '/v1/communications/announcements/{announcementId}/properties'.sub('{' + 'announcementId' + '}', CGI.escape(announcement_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<PropertyMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.get_announcement_properties",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#get_announcement_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an email
    # Retrieves the content of an email. To retrieve the recipients of the email see the [Retrieve all email recipients](#tag/Communications/operation/GetEmailRecipients) endpoint.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Emails</span> - `View`
    # @param email_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [EmailMessage]
    def get_email_by_id(email_id, opts = {})
      data, _status_code, _headers = get_email_by_id_with_http_info(email_id, opts)
      data
    end

    # Retrieve an email
    # Retrieves the content of an email. To retrieve the recipients of the email see the [Retrieve all email recipients](#tag/Communications/operation/GetEmailRecipients) endpoint.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Emails&lt;/span&gt; - &#x60;View&#x60;
    # @param email_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EmailMessage, Integer, Hash)>] EmailMessage data, response status code and response headers
    def get_email_by_id_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.get_email_by_id ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling CommunicationsApi.get_email_by_id"
      end
      # resource path
      local_var_path = '/v1/communications/emails/{emailId}'.sub('{' + 'emailId' + '}', CGI.escape(email_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'EmailMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.get_email_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#get_email_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all email recipients
    # Retrieves all email recipients.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Email</span> - `View`              <br /><h4>Optional Permissions:</h4><br />              The following permissions are optional, but results with a missing permission will be filtered out.              <span class=\"permissionBlock\">Maintenance > Vendors</span> - `View` In order to retrieve recipients that are Vendors, you must have this permission.              <span class=\"permissionBlock\">Administration > Users</span> - `View` In order to see recipients that are Staff, you must have this permission.
    # @param email_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<EmailRecipientMessage>]
    def get_email_recipients(email_id, opts = {})
      data, _status_code, _headers = get_email_recipients_with_http_info(email_id, opts)
      data
    end

    # Retrieve all email recipients
    # Retrieves all email recipients.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Email&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;h4&gt;Optional Permissions:&lt;/h4&gt;&lt;br /&gt;              The following permissions are optional, but results with a missing permission will be filtered out.              &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &gt; Vendors&lt;/span&gt; - &#x60;View&#x60; In order to retrieve recipients that are Vendors, you must have this permission.              &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &gt; Users&lt;/span&gt; - &#x60;View&#x60; In order to see recipients that are Staff, you must have this permission.
    # @param email_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<EmailRecipientMessage>, Integer, Hash)>] Array<EmailRecipientMessage> data, response status code and response headers
    def get_email_recipients_with_http_info(email_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.get_email_recipients ...'
      end
      # verify the required parameter 'email_id' is set
      if @api_client.config.client_side_validation && email_id.nil?
        fail ArgumentError, "Missing the required parameter 'email_id' when calling CommunicationsApi.get_email_recipients"
      end
      # resource path
      local_var_path = '/v1/communications/emails/{emailId}/recipients'.sub('{' + 'emailId' + '}', CGI.escape(email_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<EmailRecipientMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.get_email_recipients",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#get_email_recipients\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all emails
    # Retrieves all emails.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communication > Emails</span> - `View`
    # @param sentdatetimefrom [Time] Filters results to any emails whose sent date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days.
    # @param sentdatetimeto [Time] Filters results to any emails whose sent date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subject Filters results to any email whose subject *contains* the specified value.
    # @option opts [String] :recipientnameoremail Filters results to any email with a recipient whose name or email address *contains* the specified value.
    # @option opts [Integer] :senderuserid Filters results to only emails that were sent by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<EmailMessage>]
    def get_emails(sentdatetimefrom, sentdatetimeto, opts = {})
      data, _status_code, _headers = get_emails_with_http_info(sentdatetimefrom, sentdatetimeto, opts)
      data
    end

    # Retrieve all emails
    # Retrieves all emails.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communication &gt; Emails&lt;/span&gt; - &#x60;View&#x60;
    # @param sentdatetimefrom [Time] Filters results to any emails whose sent date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days.
    # @param sentdatetimeto [Time] Filters results to any emails whose sent date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ. The maximum date range is 90 days.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :subject Filters results to any email whose subject *contains* the specified value.
    # @option opts [String] :recipientnameoremail Filters results to any email with a recipient whose name or email address *contains* the specified value.
    # @option opts [Integer] :senderuserid Filters results to only emails that were sent by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<EmailMessage>, Integer, Hash)>] Array<EmailMessage> data, response status code and response headers
    def get_emails_with_http_info(sentdatetimefrom, sentdatetimeto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.get_emails ...'
      end
      # verify the required parameter 'sentdatetimefrom' is set
      if @api_client.config.client_side_validation && sentdatetimefrom.nil?
        fail ArgumentError, "Missing the required parameter 'sentdatetimefrom' when calling CommunicationsApi.get_emails"
      end
      # verify the required parameter 'sentdatetimeto' is set
      if @api_client.config.client_side_validation && sentdatetimeto.nil?
        fail ArgumentError, "Missing the required parameter 'sentdatetimeto' when calling CommunicationsApi.get_emails"
      end
      # resource path
      local_var_path = '/v1/communications/emails'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'sentdatetimefrom'] = sentdatetimefrom
      query_params[:'sentdatetimeto'] = sentdatetimeto
      query_params[:'subject'] = opts[:'subject'] if !opts[:'subject'].nil?
      query_params[:'recipientnameoremail'] = opts[:'recipientnameoremail'] if !opts[:'recipientnameoremail'].nil?
      query_params[:'senderuserid'] = opts[:'senderuserid'] if !opts[:'senderuserid'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<EmailMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.get_emails",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#get_emails\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all communication templates
    # Retrieves all mailing and email templates. A template is a tool in Buildium that allows you to create \"mail merge\" templates for emails and postal mailings to easily send common messages to residents, rental owners and vendors.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Mailing Templates</span> - `View`              <br /><h4>Optional Permissions:</h4><span class=\"permissionBlock\">Rentals > Tenants</span> - `View`              <br /><span class=\"permissionBlock\">Rentals > Property Rental owners</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Maintenance > Vendors</span> - `View`              <br /><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<MailingTemplateMessage>]
    def get_mailing_templates(opts = {})
      data, _status_code, _headers = get_mailing_templates_with_http_info(opts)
      data
    end

    # Retrieve all communication templates
    # Retrieves all mailing and email templates. A template is a tool in Buildium that allows you to create \&quot;mail merge\&quot; templates for emails and postal mailings to easily send common messages to residents, rental owners and vendors.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Mailing Templates&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;h4&gt;Optional Permissions:&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Property Rental owners&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &gt; Vendors&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<MailingTemplateMessage>, Integer, Hash)>] Array<MailingTemplateMessage> data, response status code and response headers
    def get_mailing_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.get_mailing_templates ...'
      end
      # resource path
      local_var_path = '/v1/communications/templates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<MailingTemplateMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.get_mailing_templates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#get_mailing_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a communication template
    # Retrieves a communication template. A template is a tool in Buildium that allows you to create \"mail merge\" templates for emails and postal mailings to easily send common messages to residents, rental owners and vendors.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Mailing Templates</span> - `View`              <br /><h4>Optional Permissions:</h4><span class=\"permissionBlock\">Rentals > Tenants</span> - `View`              <br /><span class=\"permissionBlock\">Rentals > Property Rental owners</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Maintenance > Vendors</span> - `View`              <br /><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param template_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [MailingTemplateMessage]
    def get_mailing_templates_by_id(template_id, opts = {})
      data, _status_code, _headers = get_mailing_templates_by_id_with_http_info(template_id, opts)
      data
    end

    # Retrieve a communication template
    # Retrieves a communication template. A template is a tool in Buildium that allows you to create \&quot;mail merge\&quot; templates for emails and postal mailings to easily send common messages to residents, rental owners and vendors.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Mailing Templates&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;h4&gt;Optional Permissions:&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Property Rental owners&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &gt; Vendors&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param template_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MailingTemplateMessage, Integer, Hash)>] MailingTemplateMessage data, response status code and response headers
    def get_mailing_templates_by_id_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.get_mailing_templates_by_id ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling CommunicationsApi.get_mailing_templates_by_id"
      end
      # resource path
      local_var_path = '/v1/communications/templates/{templateId}'.sub('{' + 'templateId' + '}', CGI.escape(template_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MailingTemplateMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.get_mailing_templates_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#get_mailing_templates_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a phone log
    # Retrieves a specific phone log.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Timelines (Phone Logs)</span> - `View`
    # @param phone_log_id [Integer] The phone log identifier
    # @param [Hash] opts the optional parameters
    # @return [PhoneLogMessage]
    def get_phone_log_by_id(phone_log_id, opts = {})
      data, _status_code, _headers = get_phone_log_by_id_with_http_info(phone_log_id, opts)
      data
    end

    # Retrieve a phone log
    # Retrieves a specific phone log.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Timelines (Phone Logs)&lt;/span&gt; - &#x60;View&#x60;
    # @param phone_log_id [Integer] The phone log identifier
    # @param [Hash] opts the optional parameters
    # @return [Array<(PhoneLogMessage, Integer, Hash)>] PhoneLogMessage data, response status code and response headers
    def get_phone_log_by_id_with_http_info(phone_log_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.get_phone_log_by_id ...'
      end
      # verify the required parameter 'phone_log_id' is set
      if @api_client.config.client_side_validation && phone_log_id.nil?
        fail ArgumentError, "Missing the required parameter 'phone_log_id' when calling CommunicationsApi.get_phone_log_by_id"
      end
      # resource path
      local_var_path = '/v1/communications/phonelogs/{phoneLogId}'.sub('{' + 'phoneLogId' + '}', CGI.escape(phone_log_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PhoneLogMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.get_phone_log_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#get_phone_log_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all phone logs
    # Retrieves all phone logs.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Timelines (Phone Logs)</span> - `View`
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
    def get_phone_logs(opts = {})
      data, _status_code, _headers = get_phone_logs_with_http_info(opts)
      data
    end

    # Retrieve all phone logs
    # Retrieves all phone logs.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Timelines (Phone Logs)&lt;/span&gt; - &#x60;View&#x60;
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
    # @return [Array<(Array<PhoneLogMessage>, Integer, Hash)>] Array<PhoneLogMessage> data, response status code and response headers
    def get_phone_logs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.get_phone_logs ...'
      end
      allowable_values = ["Vendor", "RentalOwner", "RentalTenant", "AssociationOwner"]
      if @api_client.config.client_side_validation && opts[:'participantentitytype'] && !allowable_values.include?(opts[:'participantentitytype'])
        fail ArgumentError, "invalid value for \"participantentitytype\", must be one of #{allowable_values}"
      end
      allowable_values = ["Lease", "OwnershipAccount"]
      if @api_client.config.client_side_validation && opts[:'unitagreementtype'] && !allowable_values.include?(opts[:'unitagreementtype'])
        fail ArgumentError, "invalid value for \"unitagreementtype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/communications/phonelogs'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'fromdate'] = opts[:'fromdate'] if !opts[:'fromdate'].nil?
      query_params[:'todate'] = opts[:'todate'] if !opts[:'todate'].nil?
      query_params[:'loggedbystaffuserids'] = @api_client.build_collection_param(opts[:'loggedbystaffuserids'], :multi) if !opts[:'loggedbystaffuserids'].nil?
      query_params[:'subject'] = opts[:'subject'] if !opts[:'subject'].nil?
      query_params[:'participantentityid'] = opts[:'participantentityid'] if !opts[:'participantentityid'].nil?
      query_params[:'participantentitytype'] = opts[:'participantentitytype'] if !opts[:'participantentitytype'].nil?
      query_params[:'unitagreementid'] = opts[:'unitagreementid'] if !opts[:'unitagreementid'].nil?
      query_params[:'unitagreementtype'] = opts[:'unitagreementtype'] if !opts[:'unitagreementtype'].nil?
      query_params[:'orderby'] = opts[:'orderby'] if !opts[:'orderby'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<PhoneLogMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.get_phone_logs",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#get_phone_logs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a phone log
    # Update a phone log  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications > Timelines (Phone Logs)</span> - `View` `Edit`
    # @param phone_log_id [Integer] The phone log identifier.
    # @param update_phone_log_request [UpdatePhoneLogRequest] 
    # @param [Hash] opts the optional parameters
    # @return [PhoneLogMessage]
    def update_phone_log(phone_log_id, update_phone_log_request, opts = {})
      data, _status_code, _headers = update_phone_log_with_http_info(phone_log_id, update_phone_log_request, opts)
      data
    end

    # Update a phone log
    # Update a phone log  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &gt; Timelines (Phone Logs)&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param phone_log_id [Integer] The phone log identifier.
    # @param update_phone_log_request [UpdatePhoneLogRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PhoneLogMessage, Integer, Hash)>] PhoneLogMessage data, response status code and response headers
    def update_phone_log_with_http_info(phone_log_id, update_phone_log_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommunicationsApi.update_phone_log ...'
      end
      # verify the required parameter 'phone_log_id' is set
      if @api_client.config.client_side_validation && phone_log_id.nil?
        fail ArgumentError, "Missing the required parameter 'phone_log_id' when calling CommunicationsApi.update_phone_log"
      end
      # verify the required parameter 'update_phone_log_request' is set
      if @api_client.config.client_side_validation && update_phone_log_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_phone_log_request' when calling CommunicationsApi.update_phone_log"
      end
      # resource path
      local_var_path = '/v1/communications/phonelogs/{phoneLogId}'.sub('{' + 'phoneLogId' + '}', CGI.escape(phone_log_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_phone_log_request)

      # return_type
      return_type = opts[:debug_return_type] || 'PhoneLogMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"CommunicationsApi.update_phone_log",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CommunicationsApi#update_phone_log\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
