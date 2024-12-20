=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class ApplicantsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an applicant
    # Creates an applicant.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View` `Edit`
    # @param create_applicant_request [CreateApplicantRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicantMessage]
    def create_applicant(create_applicant_request, opts = {})
      data, _status_code, _headers = create_applicant_with_http_info(create_applicant_request, opts)
      data
    end

    # Create an applicant
    # Creates an applicant.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param create_applicant_request [CreateApplicantRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicantMessage, Integer, Hash)>] ApplicantMessage data, response status code and response headers
    def create_applicant_with_http_info(create_applicant_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.create_applicant ...'
      end
      # verify the required parameter 'create_applicant_request' is set
      if @api_client.config.client_side_validation && create_applicant_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_applicant_request' when calling ApplicantsApi.create_applicant"
      end
      # resource path
      local_var_path = '/v1/applicants'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_applicant_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicantMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.create_applicant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#create_applicant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an applicant group
    # Creates an applicant group.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View` `Edit`
    # @param create_applicant_group_request [CreateApplicantGroupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicantGroupMessage]
    def create_applicant_group(create_applicant_group_request, opts = {})
      data, _status_code, _headers = create_applicant_group_with_http_info(create_applicant_group_request, opts)
      data
    end

    # Create an applicant group
    # Creates an applicant group.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param create_applicant_group_request [CreateApplicantGroupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicantGroupMessage, Integer, Hash)>] ApplicantGroupMessage data, response status code and response headers
    def create_applicant_group_with_http_info(create_applicant_group_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.create_applicant_group ...'
      end
      # verify the required parameter 'create_applicant_group_request' is set
      if @api_client.config.client_side_validation && create_applicant_group_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_applicant_group_request' when calling ApplicantsApi.create_applicant_group"
      end
      # resource path
      local_var_path = '/v1/applicants/groups'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_applicant_group_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicantGroupMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.create_applicant_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#create_applicant_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an applicant note
    # Creates an applicant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> -  `View` `Edit`
    # @param applicant_id [Integer] 
    # @param create_lease_note_request [CreateLeaseNoteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def create_applicant_note(applicant_id, create_lease_note_request, opts = {})
      data, _status_code, _headers = create_applicant_note_with_http_info(applicant_id, create_lease_note_request, opts)
      data
    end

    # Create an applicant note
    # Creates an applicant note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; -  &#x60;View&#x60; &#x60;Edit&#x60;
    # @param applicant_id [Integer] 
    # @param create_lease_note_request [CreateLeaseNoteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def create_applicant_note_with_http_info(applicant_id, create_lease_note_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.create_applicant_note ...'
      end
      # verify the required parameter 'applicant_id' is set
      if @api_client.config.client_side_validation && applicant_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_id' when calling ApplicantsApi.create_applicant_note"
      end
      # verify the required parameter 'create_lease_note_request' is set
      if @api_client.config.client_side_validation && create_lease_note_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_lease_note_request' when calling ApplicantsApi.create_applicant_note"
      end
      # resource path
      local_var_path = '/v1/applicants/{applicantId}/notes'.sub('{' + 'applicantId' + '}', CGI.escape(applicant_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_lease_note_request)

      # return_type
      return_type = opts[:debug_return_type] || 'NoteMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.create_applicant_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#create_applicant_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an applicant group note
    # Creates an applicant group note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View` `Edit`
    # @param applicant_group_id [Integer] 
    # @param create_lease_note_request [CreateLeaseNoteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def create_application_group_note(applicant_group_id, create_lease_note_request, opts = {})
      data, _status_code, _headers = create_application_group_note_with_http_info(applicant_group_id, create_lease_note_request, opts)
      data
    end

    # Create an applicant group note
    # Creates an applicant group note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param applicant_group_id [Integer] 
    # @param create_lease_note_request [CreateLeaseNoteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def create_application_group_note_with_http_info(applicant_group_id, create_lease_note_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.create_application_group_note ...'
      end
      # verify the required parameter 'applicant_group_id' is set
      if @api_client.config.client_side_validation && applicant_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_group_id' when calling ApplicantsApi.create_application_group_note"
      end
      # verify the required parameter 'create_lease_note_request' is set
      if @api_client.config.client_side_validation && create_lease_note_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_lease_note_request' when calling ApplicantsApi.create_application_group_note"
      end
      # resource path
      local_var_path = '/v1/applicants/groups/{applicantGroupId}/notes'.sub('{' + 'applicantGroupId' + '}', CGI.escape(applicant_group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_lease_note_request)

      # return_type
      return_type = opts[:debug_return_type] || 'NoteMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.create_application_group_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#create_application_group_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all applicant notes
    # Retrieves all applicant notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param applicant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<NoteMessage>]
    def get_all_applicant_notes(applicant_id, opts = {})
      data, _status_code, _headers = get_all_applicant_notes_with_http_info(applicant_id, opts)
      data
    end

    # Retrieve all applicant notes
    # Retrieves all applicant notes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param applicant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<NoteMessage>, Integer, Hash)>] Array<NoteMessage> data, response status code and response headers
    def get_all_applicant_notes_with_http_info(applicant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.get_all_applicant_notes ...'
      end
      # verify the required parameter 'applicant_id' is set
      if @api_client.config.client_side_validation && applicant_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_id' when calling ApplicantsApi.get_all_applicant_notes"
      end
      # resource path
      local_var_path = '/v1/applicants/{applicantId}/notes'.sub('{' + 'applicantId' + '}', CGI.escape(applicant_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'updateddatetimefrom'] = opts[:'updateddatetimefrom'] if !opts[:'updateddatetimefrom'].nil?
      query_params[:'updateddatetimeto'] = opts[:'updateddatetimeto'] if !opts[:'updateddatetimeto'].nil?
      query_params[:'lastupdatedbyuserid'] = opts[:'lastupdatedbyuserid'] if !opts[:'lastupdatedbyuserid'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<NoteMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.get_all_applicant_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#get_all_applicant_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an applicant
    # Retrieves an applicant.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param applicant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicantMessage]
    def get_applicant_by_id(applicant_id, opts = {})
      data, _status_code, _headers = get_applicant_by_id_with_http_info(applicant_id, opts)
      data
    end

    # Retrieve an applicant
    # Retrieves an applicant.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param applicant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicantMessage, Integer, Hash)>] ApplicantMessage data, response status code and response headers
    def get_applicant_by_id_with_http_info(applicant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.get_applicant_by_id ...'
      end
      # verify the required parameter 'applicant_id' is set
      if @api_client.config.client_side_validation && applicant_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_id' when calling ApplicantsApi.get_applicant_by_id"
      end
      # resource path
      local_var_path = '/v1/applicants/{applicantId}'.sub('{' + 'applicantId' + '}', CGI.escape(applicant_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ApplicantMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.get_applicant_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#get_applicant_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an applicant group
    # Retrieves an applicant group.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param applicant_group_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicantGroupMessage]
    def get_applicant_group_by_id(applicant_group_id, opts = {})
      data, _status_code, _headers = get_applicant_group_by_id_with_http_info(applicant_group_id, opts)
      data
    end

    # Retrieve an applicant group
    # Retrieves an applicant group.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param applicant_group_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicantGroupMessage, Integer, Hash)>] ApplicantGroupMessage data, response status code and response headers
    def get_applicant_group_by_id_with_http_info(applicant_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.get_applicant_group_by_id ...'
      end
      # verify the required parameter 'applicant_group_id' is set
      if @api_client.config.client_side_validation && applicant_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_group_id' when calling ApplicantsApi.get_applicant_group_by_id"
      end
      # resource path
      local_var_path = '/v1/applicants/groups/{applicantGroupId}'.sub('{' + 'applicantGroupId' + '}', CGI.escape(applicant_group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ApplicantGroupMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.get_applicant_group_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#get_applicant_group_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an applicant group note
    # Retrieves an applicant group note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param applicant_group_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def get_applicant_group_note_by_note_id(applicant_group_id, note_id, opts = {})
      data, _status_code, _headers = get_applicant_group_note_by_note_id_with_http_info(applicant_group_id, note_id, opts)
      data
    end

    # Retrieve an applicant group note
    # Retrieves an applicant group note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param applicant_group_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def get_applicant_group_note_by_note_id_with_http_info(applicant_group_id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.get_applicant_group_note_by_note_id ...'
      end
      # verify the required parameter 'applicant_group_id' is set
      if @api_client.config.client_side_validation && applicant_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_group_id' when calling ApplicantsApi.get_applicant_group_note_by_note_id"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling ApplicantsApi.get_applicant_group_note_by_note_id"
      end
      # resource path
      local_var_path = '/v1/applicants/groups/{applicantGroupId}/notes/{noteId}'.sub('{' + 'applicantGroupId' + '}', CGI.escape(applicant_group_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NoteMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.get_applicant_group_note_by_note_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#get_applicant_group_note_by_note_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all applicant group notes
    # Retrieves all applicant group notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param applicant_group_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<NoteMessage>]
    def get_applicant_group_notes(applicant_group_id, opts = {})
      data, _status_code, _headers = get_applicant_group_notes_with_http_info(applicant_group_id, opts)
      data
    end

    # Retrieve all applicant group notes
    # Retrieves all applicant group notes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param applicant_group_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<NoteMessage>, Integer, Hash)>] Array<NoteMessage> data, response status code and response headers
    def get_applicant_group_notes_with_http_info(applicant_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.get_applicant_group_notes ...'
      end
      # verify the required parameter 'applicant_group_id' is set
      if @api_client.config.client_side_validation && applicant_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_group_id' when calling ApplicantsApi.get_applicant_group_notes"
      end
      # resource path
      local_var_path = '/v1/applicants/groups/{applicantGroupId}/notes'.sub('{' + 'applicantGroupId' + '}', CGI.escape(applicant_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'updateddatetimefrom'] = opts[:'updateddatetimefrom'] if !opts[:'updateddatetimefrom'].nil?
      query_params[:'updateddatetimeto'] = opts[:'updateddatetimeto'] if !opts[:'updateddatetimeto'].nil?
      query_params[:'lastupdatedbyuserid'] = opts[:'lastupdatedbyuserid'] if !opts[:'lastupdatedbyuserid'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<NoteMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.get_applicant_group_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#get_applicant_group_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all applicant groups
    # Retrieves all applicant groups.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Filters results to any applicant groups associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references.
    # @option opts [Integer] :entityid Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified.
    # @option opts [Array<String>] :applicationgroupstatuses Filters results by the applicant group status. If no status is specified, applicant groups in any status will be returned.
    # @option opts [Array<Integer>] :unitids Filters results to applicant groups associated to any of the specified rental property unit identifiers.
    # @option opts [String] :name Filters results to applicant groups that includes applicants whose name *contains* the specified value.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<ApplicantGroupMessage>]
    def get_applicant_groups(opts = {})
      data, _status_code, _headers = get_applicant_groups_with_http_info(opts)
      data
    end

    # Retrieve all applicant groups
    # Retrieves all applicant groups.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Filters results to any applicant groups associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references.
    # @option opts [Integer] :entityid Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified.
    # @option opts [Array<String>] :applicationgroupstatuses Filters results by the applicant group status. If no status is specified, applicant groups in any status will be returned.
    # @option opts [Array<Integer>] :unitids Filters results to applicant groups associated to any of the specified rental property unit identifiers.
    # @option opts [String] :name Filters results to applicant groups that includes applicants whose name *contains* the specified value.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<ApplicantGroupMessage>, Integer, Hash)>] Array<ApplicantGroupMessage> data, response status code and response headers
    def get_applicant_groups_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.get_applicant_groups ...'
      end
      allowable_values = ["Rental", "RentalOwner"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      allowable_values = ["Undecided", "Approved", "Rejected", "AddedToLease", "Cancelled", "Deferred", "New", "Draft", "AddedToDraftLease"]
      if @api_client.config.client_side_validation && opts[:'applicationgroupstatuses'] && !opts[:'applicationgroupstatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"applicationgroupstatuses\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/applicants/groups'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
      query_params[:'applicationgroupstatuses'] = @api_client.build_collection_param(opts[:'applicationgroupstatuses'], :multi) if !opts[:'applicationgroupstatuses'].nil?
      query_params[:'unitids'] = @api_client.build_collection_param(opts[:'unitids'], :multi) if !opts[:'unitids'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<ApplicantGroupMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.get_applicant_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#get_applicant_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an applicant note
    # Retrieves an applicant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param applicant_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def get_applicant_note_by_id(applicant_id, note_id, opts = {})
      data, _status_code, _headers = get_applicant_note_by_id_with_http_info(applicant_id, note_id, opts)
      data
    end

    # Retrieve an applicant note
    # Retrieves an applicant note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param applicant_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def get_applicant_note_by_id_with_http_info(applicant_id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.get_applicant_note_by_id ...'
      end
      # verify the required parameter 'applicant_id' is set
      if @api_client.config.client_side_validation && applicant_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_id' when calling ApplicantsApi.get_applicant_note_by_id"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling ApplicantsApi.get_applicant_note_by_id"
      end
      # resource path
      local_var_path = '/v1/applicants/{applicantId}/notes/{noteId}'.sub('{' + 'applicantId' + '}', CGI.escape(applicant_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
      return_type = opts[:debug_return_type] || 'NoteMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.get_applicant_note_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#get_applicant_note_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all applicants
    # Retrieves all applicants.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :entityid Filters results to any applicant associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references.
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified.
    # @option opts [Array<String>] :applicationstatuses Filters results by the applicant application status. If no status is specified, applicants with an application in any status will be returned.
    # @option opts [Array<Integer>] :unitids Filters results to applicants associated to any of the specified rental property unit identifiers.
    # @option opts [String] :name Filters results to applicants whose name *contains* the specified value.
    # @option opts [String] :email Filters results to applicants whose email *contains* the specified value
    # @option opts [Time] :applicationsubmittedstartdate Filters results to any applicant who submitted an application on or after the date specified.
    # @option opts [Time] :applicationsubmittedenddate Filters results to any applicant who submitted an application on or prior to the date specified.
    # @option opts [Time] :lastupdatedfrom Filters results to any applicants that were updated on or after the specified date and time. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any applicants that were updated on or before the specified date and time. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<ApplicantMessage>]
    def get_applicants(opts = {})
      data, _status_code, _headers = get_applicants_with_http_info(opts)
      data
    end

    # Retrieve all applicants
    # Retrieves all applicants.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :entityid Filters results to any applicant associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references.
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified.
    # @option opts [Array<String>] :applicationstatuses Filters results by the applicant application status. If no status is specified, applicants with an application in any status will be returned.
    # @option opts [Array<Integer>] :unitids Filters results to applicants associated to any of the specified rental property unit identifiers.
    # @option opts [String] :name Filters results to applicants whose name *contains* the specified value.
    # @option opts [String] :email Filters results to applicants whose email *contains* the specified value
    # @option opts [Time] :applicationsubmittedstartdate Filters results to any applicant who submitted an application on or after the date specified.
    # @option opts [Time] :applicationsubmittedenddate Filters results to any applicant who submitted an application on or prior to the date specified.
    # @option opts [Time] :lastupdatedfrom Filters results to any applicants that were updated on or after the specified date and time. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any applicants that were updated on or before the specified date and time. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<ApplicantMessage>, Integer, Hash)>] Array<ApplicantMessage> data, response status code and response headers
    def get_applicants_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.get_applicants ...'
      end
      allowable_values = ["Rental", "RentalOwner"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      allowable_values = ["Undecided", "Approved", "Rejected", "AddedToLease", "Cancelled", "Deferred", "New", "Draft", "AddedToDraftLease"]
      if @api_client.config.client_side_validation && opts[:'applicationstatuses'] && !opts[:'applicationstatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"applicationstatuses\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/applicants'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'applicationstatuses'] = @api_client.build_collection_param(opts[:'applicationstatuses'], :multi) if !opts[:'applicationstatuses'].nil?
      query_params[:'unitids'] = @api_client.build_collection_param(opts[:'unitids'], :multi) if !opts[:'unitids'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'applicationsubmittedstartdate'] = opts[:'applicationsubmittedstartdate'] if !opts[:'applicationsubmittedstartdate'].nil?
      query_params[:'applicationsubmittedenddate'] = opts[:'applicationsubmittedenddate'] if !opts[:'applicationsubmittedenddate'].nil?
      query_params[:'lastupdatedfrom'] = opts[:'lastupdatedfrom'] if !opts[:'lastupdatedfrom'].nil?
      query_params[:'lastupdatedto'] = opts[:'lastupdatedto'] if !opts[:'lastupdatedto'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<ApplicantMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.get_applicants",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#get_applicants\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an application
    # Retrieves an application.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param applicant_id [Integer] 
    # @param application_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicationMessage]
    def get_application_for_applicant_by_id(applicant_id, application_id, opts = {})
      data, _status_code, _headers = get_application_for_applicant_by_id_with_http_info(applicant_id, application_id, opts)
      data
    end

    # Retrieve an application
    # Retrieves an application.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param applicant_id [Integer] 
    # @param application_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationMessage, Integer, Hash)>] ApplicationMessage data, response status code and response headers
    def get_application_for_applicant_by_id_with_http_info(applicant_id, application_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.get_application_for_applicant_by_id ...'
      end
      # verify the required parameter 'applicant_id' is set
      if @api_client.config.client_side_validation && applicant_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_id' when calling ApplicantsApi.get_application_for_applicant_by_id"
      end
      # verify the required parameter 'application_id' is set
      if @api_client.config.client_side_validation && application_id.nil?
        fail ArgumentError, "Missing the required parameter 'application_id' when calling ApplicantsApi.get_application_for_applicant_by_id"
      end
      # resource path
      local_var_path = '/v1/applicants/{applicantId}/applications/{applicationId}'.sub('{' + 'applicantId' + '}', CGI.escape(applicant_id.to_s)).sub('{' + 'applicationId' + '}', CGI.escape(application_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ApplicationMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.get_application_for_applicant_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#get_application_for_applicant_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all applications
    # Retrieves all the applications for a given applicant.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View`
    # @param applicant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<ApplicationMessage>]
    def get_applications_for_applicant(applicant_id, opts = {})
      data, _status_code, _headers = get_applications_for_applicant_with_http_info(applicant_id, opts)
      data
    end

    # Retrieve all applications
    # Retrieves all the applications for a given applicant.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60;
    # @param applicant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<ApplicationMessage>, Integer, Hash)>] Array<ApplicationMessage> data, response status code and response headers
    def get_applications_for_applicant_with_http_info(applicant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.get_applications_for_applicant ...'
      end
      # verify the required parameter 'applicant_id' is set
      if @api_client.config.client_side_validation && applicant_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_id' when calling ApplicantsApi.get_applications_for_applicant"
      end
      # resource path
      local_var_path = '/v1/applicants/{applicantId}/applications'.sub('{' + 'applicantId' + '}', CGI.escape(applicant_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ApplicationMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.get_applications_for_applicant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#get_applications_for_applicant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an applicant
    # Updates an applicant.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View` `Edit`
    # @param applicant_id [Integer] 
    # @param update_applicant_request [UpdateApplicantRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicantMessage]
    def update_applicant(applicant_id, update_applicant_request, opts = {})
      data, _status_code, _headers = update_applicant_with_http_info(applicant_id, update_applicant_request, opts)
      data
    end

    # Update an applicant
    # Updates an applicant.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param applicant_id [Integer] 
    # @param update_applicant_request [UpdateApplicantRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicantMessage, Integer, Hash)>] ApplicantMessage data, response status code and response headers
    def update_applicant_with_http_info(applicant_id, update_applicant_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.update_applicant ...'
      end
      # verify the required parameter 'applicant_id' is set
      if @api_client.config.client_side_validation && applicant_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_id' when calling ApplicantsApi.update_applicant"
      end
      # verify the required parameter 'update_applicant_request' is set
      if @api_client.config.client_side_validation && update_applicant_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_applicant_request' when calling ApplicantsApi.update_applicant"
      end
      # resource path
      local_var_path = '/v1/applicants/{applicantId}'.sub('{' + 'applicantId' + '}', CGI.escape(applicant_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_applicant_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicantMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.update_applicant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#update_applicant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an applicant group
    # Updates an applicant group.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View` `Edit`
    # @param applicant_group_id [Integer] 
    # @param update_applicant_group_request [UpdateApplicantGroupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicantGroupMessage]
    def update_applicant_group(applicant_group_id, update_applicant_group_request, opts = {})
      data, _status_code, _headers = update_applicant_group_with_http_info(applicant_group_id, update_applicant_group_request, opts)
      data
    end

    # Update an applicant group
    # Updates an applicant group.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param applicant_group_id [Integer] 
    # @param update_applicant_group_request [UpdateApplicantGroupRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicantGroupMessage, Integer, Hash)>] ApplicantGroupMessage data, response status code and response headers
    def update_applicant_group_with_http_info(applicant_group_id, update_applicant_group_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.update_applicant_group ...'
      end
      # verify the required parameter 'applicant_group_id' is set
      if @api_client.config.client_side_validation && applicant_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_group_id' when calling ApplicantsApi.update_applicant_group"
      end
      # verify the required parameter 'update_applicant_group_request' is set
      if @api_client.config.client_side_validation && update_applicant_group_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_applicant_group_request' when calling ApplicantsApi.update_applicant_group"
      end
      # resource path
      local_var_path = '/v1/applicants/groups/{applicantGroupId}'.sub('{' + 'applicantGroupId' + '}', CGI.escape(applicant_group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_applicant_group_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicantGroupMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.update_applicant_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#update_applicant_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an application
    # Updates a rental application.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View` `Edit`
    # @param applicant_id [Integer] 
    # @param application_id [Integer] 
    # @param update_application_request [UpdateApplicationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ApplicationMessage]
    def update_application(applicant_id, application_id, update_application_request, opts = {})
      data, _status_code, _headers = update_application_with_http_info(applicant_id, application_id, update_application_request, opts)
      data
    end

    # Update an application
    # Updates a rental application.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param applicant_id [Integer] 
    # @param application_id [Integer] 
    # @param update_application_request [UpdateApplicationRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ApplicationMessage, Integer, Hash)>] ApplicationMessage data, response status code and response headers
    def update_application_with_http_info(applicant_id, application_id, update_application_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.update_application ...'
      end
      # verify the required parameter 'applicant_id' is set
      if @api_client.config.client_side_validation && applicant_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_id' when calling ApplicantsApi.update_application"
      end
      # verify the required parameter 'application_id' is set
      if @api_client.config.client_side_validation && application_id.nil?
        fail ArgumentError, "Missing the required parameter 'application_id' when calling ApplicantsApi.update_application"
      end
      # verify the required parameter 'update_application_request' is set
      if @api_client.config.client_side_validation && update_application_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_application_request' when calling ApplicantsApi.update_application"
      end
      # resource path
      local_var_path = '/v1/applicants/{applicantId}/applications/{applicationId}'.sub('{' + 'applicantId' + '}', CGI.escape(applicant_id.to_s)).sub('{' + 'applicationId' + '}', CGI.escape(application_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_application_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ApplicationMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.update_application",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#update_application\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an applicant group note
    # Updates an applicant group note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Applicants</span> - `View` `Edit`
    # @param applicant_group_id [Integer] 
    # @param note_id [Integer] 
    # @param update_lease_note_request [UpdateLeaseNoteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def update_application_group_note(applicant_group_id, note_id, update_lease_note_request, opts = {})
      data, _status_code, _headers = update_application_group_note_with_http_info(applicant_group_id, note_id, update_lease_note_request, opts)
      data
    end

    # Update an applicant group note
    # Updates an applicant group note.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Applicants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param applicant_group_id [Integer] 
    # @param note_id [Integer] 
    # @param update_lease_note_request [UpdateLeaseNoteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def update_application_group_note_with_http_info(applicant_group_id, note_id, update_lease_note_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ApplicantsApi.update_application_group_note ...'
      end
      # verify the required parameter 'applicant_group_id' is set
      if @api_client.config.client_side_validation && applicant_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'applicant_group_id' when calling ApplicantsApi.update_application_group_note"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling ApplicantsApi.update_application_group_note"
      end
      # verify the required parameter 'update_lease_note_request' is set
      if @api_client.config.client_side_validation && update_lease_note_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_lease_note_request' when calling ApplicantsApi.update_application_group_note"
      end
      # resource path
      local_var_path = '/v1/applicants/groups/{applicantGroupId}/notes/{noteId}'.sub('{' + 'applicantGroupId' + '}', CGI.escape(applicant_group_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_lease_note_request)

      # return_type
      return_type = opts[:debug_return_type] || 'NoteMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ApplicantsApi.update_application_group_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ApplicantsApi#update_application_group_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
