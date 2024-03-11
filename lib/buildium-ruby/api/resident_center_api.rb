=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class ResidentCenterApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve all resident center users
    # Retrieves all resident center users for both rentals and associations.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Communications &gt; Resident Center Users</span> - `View`              <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` is required to retrieve resident center users that are tenants.              <br /><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` is required to retrieve resident center users that are association owners.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :unitagreementids Filters results to any resident center user who is associated with the specified lease and/or association ownership account identifiers.
    # @option opts [Array<Integer>] :userids Filters results to any resident center user with the specified tenant and/or association owner identifiers.
    # @option opts [Array<String>] :usertypes Filters results to any resident center user with the specified types.
    # @option opts [Array<String>] :residentcenteruserstatuses Filters results to any resident center user with the specified resident center user statuses.
    # @option opts [Boolean] :isautopayenabled If true, filters results to any resident center users who have automatic payments scheduled for the future. If false, filters results to any resident center users  who do not have automatic payments scheduled for the future. If not provided, will not filter results based on automatic payments.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<ResidentCenterUserMessage>]
    def get_resident_center_users(opts = {})
      data, _status_code, _headers = get_resident_center_users_with_http_info(opts)
      data
    end

    # Retrieve all resident center users
    # Retrieves all resident center users for both rentals and associations.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Resident Center Users&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60; is required to retrieve resident center users that are tenants.              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; is required to retrieve resident center users that are association owners.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :unitagreementids Filters results to any resident center user who is associated with the specified lease and/or association ownership account identifiers.
    # @option opts [Array<Integer>] :userids Filters results to any resident center user with the specified tenant and/or association owner identifiers.
    # @option opts [Array<String>] :usertypes Filters results to any resident center user with the specified types.
    # @option opts [Array<String>] :residentcenteruserstatuses Filters results to any resident center user with the specified resident center user statuses.
    # @option opts [Boolean] :isautopayenabled If true, filters results to any resident center users who have automatic payments scheduled for the future. If false, filters results to any resident center users  who do not have automatic payments scheduled for the future. If not provided, will not filter results based on automatic payments.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<ResidentCenterUserMessage>, Integer, Hash)>] Array<ResidentCenterUserMessage> data, response status code and response headers
    def get_resident_center_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResidentCenterApi.get_resident_center_users ...'
      end
      allowable_values = ["Tenant", "AssociationOwner"]
      if @api_client.config.client_side_validation && opts[:'usertypes'] && !opts[:'usertypes'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"usertypes\", must include one of #{allowable_values}"
      end
      allowable_values = ["AccountExistsButNoEmailSent", "PasswordSent", "EmailFailed", "SignedIn", "Blocked"]
      if @api_client.config.client_side_validation && opts[:'residentcenteruserstatuses'] && !opts[:'residentcenteruserstatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"residentcenteruserstatuses\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/residentCenterUsers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'unitagreementids'] = @api_client.build_collection_param(opts[:'unitagreementids'], :multi) if !opts[:'unitagreementids'].nil?
      query_params[:'userids'] = @api_client.build_collection_param(opts[:'userids'], :multi) if !opts[:'userids'].nil?
      query_params[:'usertypes'] = @api_client.build_collection_param(opts[:'usertypes'], :multi) if !opts[:'usertypes'].nil?
      query_params[:'residentcenteruserstatuses'] = @api_client.build_collection_param(opts[:'residentcenteruserstatuses'], :multi) if !opts[:'residentcenteruserstatuses'].nil?
      query_params[:'isautopayenabled'] = opts[:'isautopayenabled'] if !opts[:'isautopayenabled'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<ResidentCenterUserMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ResidentCenterApi.get_resident_center_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResidentCenterApi#get_resident_center_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a retail cash user
    # Retrieves a retail cash user.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`              OR              <span class=\"permissionBlock\"> Associations &gt; Association owners and tenants</span> - `View`
    # @param user_id [Integer] 
    # @param unit_agreement_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [RetailCashUserMessage]
    def get_retail_cash_user(user_id, unit_agreement_id, opts = {})
      data, _status_code, _headers = get_retail_cash_user_with_http_info(user_id, unit_agreement_id, opts)
      data
    end

    # Retrieve a retail cash user
    # Retrieves a retail cash user.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;              OR              &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt; Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param user_id [Integer] 
    # @param unit_agreement_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RetailCashUserMessage, Integer, Hash)>] RetailCashUserMessage data, response status code and response headers
    def get_retail_cash_user_with_http_info(user_id, unit_agreement_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResidentCenterApi.get_retail_cash_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ResidentCenterApi.get_retail_cash_user"
      end
      # verify the required parameter 'unit_agreement_id' is set
      if @api_client.config.client_side_validation && unit_agreement_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_agreement_id' when calling ResidentCenterApi.get_retail_cash_user"
      end
      # resource path
      local_var_path = '/v1/retailcashusers/{userId}/{unitAgreementId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s)).sub('{' + 'unitAgreementId' + '}', CGI.escape(unit_agreement_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RetailCashUserMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ResidentCenterApi.get_retail_cash_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResidentCenterApi#get_retail_cash_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all retail cash users
    # Retrieves all retail cash users.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`              OR              <span class=\"permissionBlock\"> Associations &gt; Association owners and tenants</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :entityid Filters results to any users associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field.
    # @option opts [String] :entitytype Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is provided.
    # @option opts [Array<String>] :statuses Filters results to any users whose lease is in one of the provided statuses.
    # @option opts [String] :name Filters results to any users whose name *contains* the specified value.
    # @option opts [String] :unitaddress Filters results to any users whose unit address *contains* the specified value.
    # @option opts [Boolean] :isaccountcreated Filters results to any users whose retail cash account is created.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<RetailCashUserMessage>]
    def get_retail_cash_users(opts = {})
      data, _status_code, _headers = get_retail_cash_users_with_http_info(opts)
      data
    end

    # Retrieve all retail cash users
    # Retrieves all retail cash users.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;              OR              &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt; Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :entityid Filters results to any users associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field.
    # @option opts [String] :entitytype Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is provided.
    # @option opts [Array<String>] :statuses Filters results to any users whose lease is in one of the provided statuses.
    # @option opts [String] :name Filters results to any users whose name *contains* the specified value.
    # @option opts [String] :unitaddress Filters results to any users whose unit address *contains* the specified value.
    # @option opts [Boolean] :isaccountcreated Filters results to any users whose retail cash account is created.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<RetailCashUserMessage>, Integer, Hash)>] Array<RetailCashUserMessage> data, response status code and response headers
    def get_retail_cash_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResidentCenterApi.get_retail_cash_users ...'
      end
      allowable_values = ["Rental", "RentalOwner", "Association"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      allowable_values = ["Active", "Past", "Future"]
      if @api_client.config.client_side_validation && opts[:'statuses'] && !opts[:'statuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"statuses\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/retailcashusers'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'statuses'] = @api_client.build_collection_param(opts[:'statuses'], :multi) if !opts[:'statuses'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'unitaddress'] = opts[:'unitaddress'] if !opts[:'unitaddress'].nil?
      query_params[:'isaccountcreated'] = opts[:'isaccountcreated'] if !opts[:'isaccountcreated'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<RetailCashUserMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ResidentCenterApi.get_retail_cash_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResidentCenterApi#get_retail_cash_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a retail cash user
    # Updates a retail cash user.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`              OR              <span class=\"permissionBlock\"> Associations &gt; Association owners and tenants</span> - `View` `Edit`
    # @param user_id [Integer] 
    # @param unit_agreement_id [Integer] 
    # @param retail_cash_user_put_message [RetailCashUserPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [RetailCashUserMessage]
    def update_retail_cash_user(user_id, unit_agreement_id, retail_cash_user_put_message, opts = {})
      data, _status_code, _headers = update_retail_cash_user_with_http_info(user_id, unit_agreement_id, retail_cash_user_put_message, opts)
      data
    end

    # Update a retail cash user
    # Updates a retail cash user.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              OR              &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt; Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param user_id [Integer] 
    # @param unit_agreement_id [Integer] 
    # @param retail_cash_user_put_message [RetailCashUserPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RetailCashUserMessage, Integer, Hash)>] RetailCashUserMessage data, response status code and response headers
    def update_retail_cash_user_with_http_info(user_id, unit_agreement_id, retail_cash_user_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResidentCenterApi.update_retail_cash_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ResidentCenterApi.update_retail_cash_user"
      end
      # verify the required parameter 'unit_agreement_id' is set
      if @api_client.config.client_side_validation && unit_agreement_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_agreement_id' when calling ResidentCenterApi.update_retail_cash_user"
      end
      # verify the required parameter 'retail_cash_user_put_message' is set
      if @api_client.config.client_side_validation && retail_cash_user_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'retail_cash_user_put_message' when calling ResidentCenterApi.update_retail_cash_user"
      end
      # resource path
      local_var_path = '/v1/retailcashusers/{userId}/{unitAgreementId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s)).sub('{' + 'unitAgreementId' + '}', CGI.escape(unit_agreement_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(retail_cash_user_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'RetailCashUserMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ResidentCenterApi.update_retail_cash_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResidentCenterApi#update_retail_cash_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
