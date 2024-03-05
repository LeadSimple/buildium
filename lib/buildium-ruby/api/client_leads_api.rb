=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module Buildium
  class ClientLeadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve all client leads
    # Retrieves all client leads              <br /><br />              Note: When using the `orderby` query string parameter, the only supported options are DateReceived.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration &gt; All Property Management</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :leadstatuses Filters results to any client leads that are in one of the given statuses.
    # @option opts [Array<String>] :propertytypes Filters results to any client leads that have a property in one of the given property types.
    # @option opts [Time] :datereceivedfrom Filters results to any client leads that were received on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Time] :datereceivedto Filters results to any client leads that were received on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Boolean] :includecreditedleads This will also return client leads that were credited. By default credited leads will not be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<ClientLeadMessage>]
    def get_client_leads(opts = {})
      data, _status_code, _headers = get_client_leads_with_http_info(opts)
      data
    end

    # Retrieve all client leads
    # Retrieves all client leads              &lt;br /&gt;&lt;br /&gt;              Note: When using the &#x60;orderby&#x60; query string parameter, the only supported options are DateReceived.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; All Property Management&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :leadstatuses Filters results to any client leads that are in one of the given statuses.
    # @option opts [Array<String>] :propertytypes Filters results to any client leads that have a property in one of the given property types.
    # @option opts [Time] :datereceivedfrom Filters results to any client leads that were received on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Time] :datereceivedto Filters results to any client leads that were received on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Boolean] :includecreditedleads This will also return client leads that were credited. By default credited leads will not be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<ClientLeadMessage>, Integer, Hash)>] Array<ClientLeadMessage> data, response status code and response headers
    def get_client_leads_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientLeadsApi.get_client_leads ...'
      end
      allowable_values = ["Unknown", "New", "Contacting", "Qualifying", "Closing", "ClosedWon", "ClosedLost"]
      if @api_client.config.client_side_validation && opts[:'leadstatuses'] && !opts[:'leadstatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"leadstatuses\", must include one of #{allowable_values}"
      end
      allowable_values = ["SingleHomeUpToThreeHundredThousand", "SingleHomeThreeHundredToFiveHundredThousand", "SingleHomeFiveHundredThousandToOneMillion", "SingleHomeOverOneMillion", "MultiFamilyTwoToFourUnits", "MultiFamilyFiveToNineteenUnits", "MultiFamilyTwentyToFortyNineUnits", "MultiFamilyOverOneHundredUnits", "OfficeLessThanTenThousandSqFt", "OfficeTenThousandToOneHundredThousandSqFt", "OfficeOverOneHundredThousandSqFt", "RetailLessThanTenThousandSqFt", "RetailTenThousandToOneHundredThousandSqFt", "RetailOverOneHundredThousandSqFt", "LightManufacturingUpToOneHundredThousandSqFt", "LightManufacturingOverOneHundredThousandSqFt", "WarehouseUpToOneHundredThousandSqFt", "WarehouseOverOneHundredThousandSqFt", "VacationOneToTwoUnits", "VacationOverThreeUnits", "ParkingGarage", "OtherAssociation", "BiotechMissionCritical", "HOATwoToFortyNineUnits", "HOAFiftyToNinetyNineUnits", "HOAOverOneHundredUnits", "COATwoToFortyNineUnits", "COAFiftyToNinetyNineUnits", "COAOverOneHundredUnits", "MobileHomeCommunity"]
      if @api_client.config.client_side_validation && opts[:'propertytypes'] && !opts[:'propertytypes'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"propertytypes\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/clientleads'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'leadstatuses'] = @api_client.build_collection_param(opts[:'leadstatuses'], :multi) if !opts[:'leadstatuses'].nil?
      query_params[:'propertytypes'] = @api_client.build_collection_param(opts[:'propertytypes'], :multi) if !opts[:'propertytypes'].nil?
      query_params[:'datereceivedfrom'] = opts[:'datereceivedfrom'] if !opts[:'datereceivedfrom'].nil?
      query_params[:'datereceivedto'] = opts[:'datereceivedto'] if !opts[:'datereceivedto'].nil?
      query_params[:'includecreditedleads'] = opts[:'includecreditedleads'] if !opts[:'includecreditedleads'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<ClientLeadMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ClientLeadsApi.get_client_leads",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientLeadsApi#get_client_leads\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a client lead
    # Retrieves a specific client lead              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration &gt; All Property Management</span> - `View`
    # @param client_lead_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [ClientLeadMessage]
    def get_prospective_client(client_lead_id, opts = {})
      data, _status_code, _headers = get_prospective_client_with_http_info(client_lead_id, opts)
      data
    end

    # Retrieve a client lead
    # Retrieves a specific client lead              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; All Property Management&lt;/span&gt; - &#x60;View&#x60;
    # @param client_lead_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientLeadMessage, Integer, Hash)>] ClientLeadMessage data, response status code and response headers
    def get_prospective_client_with_http_info(client_lead_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientLeadsApi.get_prospective_client ...'
      end
      # verify the required parameter 'client_lead_id' is set
      if @api_client.config.client_side_validation && client_lead_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_lead_id' when calling ClientLeadsApi.get_prospective_client"
      end
      # resource path
      local_var_path = '/v1/clientleads/{clientLeadId}'.sub('{' + 'clientLeadId' + '}', CGI.escape(client_lead_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ClientLeadMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ClientLeadsApi.get_prospective_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientLeadsApi#get_prospective_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
