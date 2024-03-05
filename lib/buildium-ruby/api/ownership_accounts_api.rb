=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class OwnershipAccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an ownership account
    # Creates an ownership account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership accounts</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations &gt; Owners</span> - `View` `Edit`
    # @param association_ownership_account_post_message [AssociationOwnershipAccountPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationOwnershipAccountMessage]
    def create_association_ownership_account(association_ownership_account_post_message, opts = {})
      data, _status_code, _headers = create_association_ownership_account_with_http_info(association_ownership_account_post_message, opts)
      data
    end

    # Create an ownership account
    # Creates an ownership account.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_ownership_account_post_message [AssociationOwnershipAccountPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationOwnershipAccountMessage, Integer, Hash)>] AssociationOwnershipAccountMessage data, response status code and response headers
    def create_association_ownership_account_with_http_info(association_ownership_account_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OwnershipAccountsApi.create_association_ownership_account ...'
      end
      # verify the required parameter 'association_ownership_account_post_message' is set
      if @api_client.config.client_side_validation && association_ownership_account_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_ownership_account_post_message' when calling OwnershipAccountsApi.create_association_ownership_account"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(association_ownership_account_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'AssociationOwnershipAccountMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"OwnershipAccountsApi.create_association_ownership_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OwnershipAccountsApi#create_association_ownership_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a note
    # Creates a new ownership account note.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership accounts</span> - `View` `Edit`
    # @param ownership_account_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def create_association_ownership_account_note(ownership_account_id, note_post_message, opts = {})
      data, _status_code, _headers = create_association_ownership_account_note_with_http_info(ownership_account_id, note_post_message, opts)
      data
    end

    # Create a note
    # Creates a new ownership account note.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param ownership_account_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def create_association_ownership_account_note_with_http_info(ownership_account_id, note_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OwnershipAccountsApi.create_association_ownership_account_note ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling OwnershipAccountsApi.create_association_ownership_account_note"
      end
      # verify the required parameter 'note_post_message' is set
      if @api_client.config.client_side_validation && note_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_post_message' when calling OwnershipAccountsApi.create_association_ownership_account_note"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/notes'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(note_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'NoteMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"OwnershipAccountsApi.create_association_ownership_account_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OwnershipAccountsApi#create_association_ownership_account_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all ownership accounts
    # Retrieves a list of ownership accounts.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership accounts</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :ids Filters results to the specified set of ids.
    # @option opts [Array<Integer>] :associationids Filters results to any ownership accounts who belong to the specified set of association ids.
    # @option opts [String] :unitorowner Filters results to any association whose unit or owner *contains* the specified value.
    # @option opts [Date] :datefrom Filters results to any ownership account whose start date is greater than or equal to the specified value.
    # @option opts [Date] :dateto Filters results to any ownership account whose start date is less than or equal to the specified value.
    # @option opts [Array<String>] :status Filters results by the status of the association. If no status is specified, &#x60;active&#x60;, &#x60;past&#x60; and &#x60;future&#x60; associations will be returned.
    # @option opts [Array<String>] :delinquencystatuses Filters results by the delinquency status of the ownership account. If no status is specified, ownership accounts of any delinquency status will be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<AssociationOwnershipAccountMessage>]
    def get_all_ownership_accounts(opts = {})
      data, _status_code, _headers = get_all_ownership_accounts_with_http_info(opts)
      data
    end

    # Retrieve all ownership accounts
    # Retrieves a list of ownership accounts.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :ids Filters results to the specified set of ids.
    # @option opts [Array<Integer>] :associationids Filters results to any ownership accounts who belong to the specified set of association ids.
    # @option opts [String] :unitorowner Filters results to any association whose unit or owner *contains* the specified value.
    # @option opts [Date] :datefrom Filters results to any ownership account whose start date is greater than or equal to the specified value.
    # @option opts [Date] :dateto Filters results to any ownership account whose start date is less than or equal to the specified value.
    # @option opts [Array<String>] :status Filters results by the status of the association. If no status is specified, &#x60;active&#x60;, &#x60;past&#x60; and &#x60;future&#x60; associations will be returned.
    # @option opts [Array<String>] :delinquencystatuses Filters results by the delinquency status of the ownership account. If no status is specified, ownership accounts of any delinquency status will be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<AssociationOwnershipAccountMessage>, Integer, Hash)>] Array<AssociationOwnershipAccountMessage> data, response status code and response headers
    def get_all_ownership_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OwnershipAccountsApi.get_all_ownership_accounts ...'
      end
      allowable_values = ["Active", "Past", "Future"]
      if @api_client.config.client_side_validation && opts[:'status'] && !opts[:'status'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"status\", must include one of #{allowable_values}"
      end
      allowable_values = ["NoDelinquency", "InCollections", "InForeclosure", "Foreclosed"]
      if @api_client.config.client_side_validation && opts[:'delinquencystatuses'] && !opts[:'delinquencystatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"delinquencystatuses\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :multi) if !opts[:'ids'].nil?
      query_params[:'associationids'] = @api_client.build_collection_param(opts[:'associationids'], :multi) if !opts[:'associationids'].nil?
      query_params[:'unitorowner'] = opts[:'unitorowner'] if !opts[:'unitorowner'].nil?
      query_params[:'datefrom'] = opts[:'datefrom'] if !opts[:'datefrom'].nil?
      query_params[:'dateto'] = opts[:'dateto'] if !opts[:'dateto'].nil?
      query_params[:'status'] = @api_client.build_collection_param(opts[:'status'], :multi) if !opts[:'status'].nil?
      query_params[:'delinquencystatuses'] = @api_client.build_collection_param(opts[:'delinquencystatuses'], :multi) if !opts[:'delinquencystatuses'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<AssociationOwnershipAccountMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"OwnershipAccountsApi.get_all_ownership_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OwnershipAccountsApi#get_all_ownership_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a note
    # Retrieves an ownership account note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; OwnershipAccounts</span> - `View`
    # @param ownership_account_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def get_association_ownership_account_note_by_note_id(ownership_account_id, note_id, opts = {})
      data, _status_code, _headers = get_association_ownership_account_note_by_note_id_with_http_info(ownership_account_id, note_id, opts)
      data
    end

    # Retrieve a note
    # Retrieves an ownership account note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; OwnershipAccounts&lt;/span&gt; - &#x60;View&#x60;
    # @param ownership_account_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def get_association_ownership_account_note_by_note_id_with_http_info(ownership_account_id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OwnershipAccountsApi.get_association_ownership_account_note_by_note_id ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling OwnershipAccountsApi.get_association_ownership_account_note_by_note_id"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling OwnershipAccountsApi.get_association_ownership_account_note_by_note_id"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/notes/{noteId}'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"OwnershipAccountsApi.get_association_ownership_account_note_by_note_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OwnershipAccountsApi#get_association_ownership_account_note_by_note_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all notes
    # Retrieves notes for an ownership account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; OwnershipAccounts</span> - `View`
    # @param ownership_account_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<NoteMessage>]
    def get_association_ownership_account_notes(ownership_account_id, opts = {})
      data, _status_code, _headers = get_association_ownership_account_notes_with_http_info(ownership_account_id, opts)
      data
    end

    # Retrieve all notes
    # Retrieves notes for an ownership account.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; OwnershipAccounts&lt;/span&gt; - &#x60;View&#x60;
    # @param ownership_account_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<NoteMessage>, Integer, Hash)>] Array<NoteMessage> data, response status code and response headers
    def get_association_ownership_account_notes_with_http_info(ownership_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OwnershipAccountsApi.get_association_ownership_account_notes ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling OwnershipAccountsApi.get_association_ownership_account_notes"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/notes'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
        :operation => :"OwnershipAccountsApi.get_association_ownership_account_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OwnershipAccountsApi#get_association_ownership_account_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an ownership account
    # Retrieves a specific ownership account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership accounts</span> - `View`
    # @param ownership_account_id [Integer] The ownership account identifier.
    # @param [Hash] opts the optional parameters
    # @return [AssociationOwnershipAccountMessage]
    def get_ownership_account_by_id(ownership_account_id, opts = {})
      data, _status_code, _headers = get_ownership_account_by_id_with_http_info(ownership_account_id, opts)
      data
    end

    # Retrieve an ownership account
    # Retrieves a specific ownership account.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param ownership_account_id [Integer] The ownership account identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationOwnershipAccountMessage, Integer, Hash)>] AssociationOwnershipAccountMessage data, response status code and response headers
    def get_ownership_account_by_id_with_http_info(ownership_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OwnershipAccountsApi.get_ownership_account_by_id ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling OwnershipAccountsApi.get_ownership_account_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AssociationOwnershipAccountMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"OwnershipAccountsApi.get_ownership_account_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OwnershipAccountsApi#get_ownership_account_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an ownership account
    # Updates an ownership account.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership accounts</span> - `View` `Edit`
    # @param ownership_account_id [Integer] 
    # @param association_ownership_account_put_message [AssociationOwnershipAccountPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationOwnershipAccountMessage]
    def update_association_ownership_account(ownership_account_id, association_ownership_account_put_message, opts = {})
      data, _status_code, _headers = update_association_ownership_account_with_http_info(ownership_account_id, association_ownership_account_put_message, opts)
      data
    end

    # Update an ownership account
    # Updates an ownership account.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param ownership_account_id [Integer] 
    # @param association_ownership_account_put_message [AssociationOwnershipAccountPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationOwnershipAccountMessage, Integer, Hash)>] AssociationOwnershipAccountMessage data, response status code and response headers
    def update_association_ownership_account_with_http_info(ownership_account_id, association_ownership_account_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OwnershipAccountsApi.update_association_ownership_account ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling OwnershipAccountsApi.update_association_ownership_account"
      end
      # verify the required parameter 'association_ownership_account_put_message' is set
      if @api_client.config.client_side_validation && association_ownership_account_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_ownership_account_put_message' when calling OwnershipAccountsApi.update_association_ownership_account"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(association_ownership_account_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'AssociationOwnershipAccountMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"OwnershipAccountsApi.update_association_ownership_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OwnershipAccountsApi#update_association_ownership_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a note
    # Updates an association ownership account note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership Accounts</span> - `View` `Edit`
    # @param ownership_account_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def update_association_ownership_account_note(ownership_account_id, note_id, note_put_message, opts = {})
      data, _status_code, _headers = update_association_ownership_account_note_with_http_info(ownership_account_id, note_id, note_put_message, opts)
      data
    end

    # Update a note
    # Updates an association ownership account note.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param ownership_account_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def update_association_ownership_account_note_with_http_info(ownership_account_id, note_id, note_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OwnershipAccountsApi.update_association_ownership_account_note ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling OwnershipAccountsApi.update_association_ownership_account_note"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling OwnershipAccountsApi.update_association_ownership_account_note"
      end
      # verify the required parameter 'note_put_message' is set
      if @api_client.config.client_side_validation && note_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_put_message' when calling OwnershipAccountsApi.update_association_ownership_account_note"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/notes/{noteId}'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(note_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'NoteMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"OwnershipAccountsApi.update_association_ownership_account_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OwnershipAccountsApi#update_association_ownership_account_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
