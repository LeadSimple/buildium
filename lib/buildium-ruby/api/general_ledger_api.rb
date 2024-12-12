=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class GeneralLedgerApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a general journal entry
    # Creates a general journal entry.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View` `Edit`
    # @param create_general_journal_entry_request [CreateGeneralJournalEntryRequest] 
    # @param [Hash] opts the optional parameters
    # @return [GeneralLedgerTransactionMessage]
    def create_general_journal_entry(create_general_journal_entry_request, opts = {})
      data, _status_code, _headers = create_general_journal_entry_with_http_info(create_general_journal_entry_request, opts)
      data
    end

    # Create a general journal entry
    # Creates a general journal entry.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param create_general_journal_entry_request [CreateGeneralJournalEntryRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GeneralLedgerTransactionMessage, Integer, Hash)>] GeneralLedgerTransactionMessage data, response status code and response headers
    def create_general_journal_entry_with_http_info(create_general_journal_entry_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeneralLedgerApi.create_general_journal_entry ...'
      end
      # verify the required parameter 'create_general_journal_entry_request' is set
      if @api_client.config.client_side_validation && create_general_journal_entry_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_general_journal_entry_request' when calling GeneralLedgerApi.create_general_journal_entry"
      end
      # resource path
      local_var_path = '/v1/generalledger/journalentries'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_general_journal_entry_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GeneralLedgerTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"GeneralLedgerApi.create_general_journal_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralLedgerApi#create_general_journal_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a general ledger account
    # Creates a general ledger account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > General Ledger Accounts</span> - `View` `Edit`
    # @param create_general_ledger_account_request [CreateGeneralLedgerAccountRequest] 
    # @param [Hash] opts the optional parameters
    # @return [GLAccountMessage]
    def create_general_ledger_account(create_general_ledger_account_request, opts = {})
      data, _status_code, _headers = create_general_ledger_account_with_http_info(create_general_ledger_account_request, opts)
      data
    end

    # Create a general ledger account
    # Creates a general ledger account.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param create_general_ledger_account_request [CreateGeneralLedgerAccountRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GLAccountMessage, Integer, Hash)>] GLAccountMessage data, response status code and response headers
    def create_general_ledger_account_with_http_info(create_general_ledger_account_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeneralLedgerApi.create_general_ledger_account ...'
      end
      # verify the required parameter 'create_general_ledger_account_request' is set
      if @api_client.config.client_side_validation && create_general_ledger_account_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_general_ledger_account_request' when calling GeneralLedgerApi.create_general_ledger_account"
      end
      # resource path
      local_var_path = '/v1/glaccounts'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_general_ledger_account_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GLAccountMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"GeneralLedgerApi.create_general_ledger_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralLedgerApi#create_general_ledger_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all general ledger accounts
    # Retrieves a list of general ledger accounts.<br /><br />General ledger accounts are used to categorize transactions for accounting purposes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > General Ledger Accounts</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :accounttypes Filters results by the specified general ledger account types.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<GLAccountMessage>]
    def get_all_gl_accounts(opts = {})
      data, _status_code, _headers = get_all_gl_accounts_with_http_info(opts)
      data
    end

    # Retrieve all general ledger accounts
    # Retrieves a list of general ledger accounts.&lt;br /&gt;&lt;br /&gt;General ledger accounts are used to categorize transactions for accounting purposes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :accounttypes Filters results by the specified general ledger account types.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<GLAccountMessage>, Integer, Hash)>] Array<GLAccountMessage> data, response status code and response headers
    def get_all_gl_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeneralLedgerApi.get_all_gl_accounts ...'
      end
      allowable_values = ["Asset", "Liability", "Equity", "Income", "Expense"]
      if @api_client.config.client_side_validation && opts[:'accounttypes'] && !opts[:'accounttypes'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"accounttypes\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/glaccounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'accounttypes'] = @api_client.build_collection_param(opts[:'accounttypes'], :multi) if !opts[:'accounttypes'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<GLAccountMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"GeneralLedgerApi.get_all_gl_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralLedgerApi#get_all_gl_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all general ledger transactions
    # Retrieves a list of general ledger transactions.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View`
    # @param startdate [Date] Filters results to any transaction whose date is greater than or equal to the specified value.
    # @param enddate [Date] Filters results to any transaction whose date is less than or equal to the specified value.
    # @param glaccountids [Array<Integer>] Filters results to transactions whose general ledger account belongs to the specified set of general ledger account ids.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :selectionentityid Filters results to any transaction containing journal lines for an entity associated with the specified entity id value. The id must be of the type specified in SelectionEntityType.
    # @option opts [String] :selectionentitytype Specifies the type of entity that SelectionEntityId refers to.
    # @option opts [Integer] :selectionentityunitid Filters results to any transaction containing journal lines for the unitId specified. Only applicable when the SelectionEntityType is Rentals or Associations.
    # @option opts [Time] :lastupdatedfrom Filters results to any transactions that were updated on or after the specified date. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any transactions that were updated on or before the specified date. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<GeneralLedgerTransactionMessage>]
    def get_all_transactions(startdate, enddate, glaccountids, opts = {})
      data, _status_code, _headers = get_all_transactions_with_http_info(startdate, enddate, glaccountids, opts)
      data
    end

    # Retrieve all general ledger transactions
    # Retrieves a list of general ledger transactions.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param startdate [Date] Filters results to any transaction whose date is greater than or equal to the specified value.
    # @param enddate [Date] Filters results to any transaction whose date is less than or equal to the specified value.
    # @param glaccountids [Array<Integer>] Filters results to transactions whose general ledger account belongs to the specified set of general ledger account ids.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :selectionentityid Filters results to any transaction containing journal lines for an entity associated with the specified entity id value. The id must be of the type specified in SelectionEntityType.
    # @option opts [String] :selectionentitytype Specifies the type of entity that SelectionEntityId refers to.
    # @option opts [Integer] :selectionentityunitid Filters results to any transaction containing journal lines for the unitId specified. Only applicable when the SelectionEntityType is Rentals or Associations.
    # @option opts [Time] :lastupdatedfrom Filters results to any transactions that were updated on or after the specified date. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any transactions that were updated on or before the specified date. The value must be formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<GeneralLedgerTransactionMessage>, Integer, Hash)>] Array<GeneralLedgerTransactionMessage> data, response status code and response headers
    def get_all_transactions_with_http_info(startdate, enddate, glaccountids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeneralLedgerApi.get_all_transactions ...'
      end
      # verify the required parameter 'startdate' is set
      if @api_client.config.client_side_validation && startdate.nil?
        fail ArgumentError, "Missing the required parameter 'startdate' when calling GeneralLedgerApi.get_all_transactions"
      end
      # verify the required parameter 'enddate' is set
      if @api_client.config.client_side_validation && enddate.nil?
        fail ArgumentError, "Missing the required parameter 'enddate' when calling GeneralLedgerApi.get_all_transactions"
      end
      # verify the required parameter 'glaccountids' is set
      if @api_client.config.client_side_validation && glaccountids.nil?
        fail ArgumentError, "Missing the required parameter 'glaccountids' when calling GeneralLedgerApi.get_all_transactions"
      end
      allowable_values = ["Rental", "RentalOwner", "Association"]
      if @api_client.config.client_side_validation && opts[:'selectionentitytype'] && !allowable_values.include?(opts[:'selectionentitytype'])
        fail ArgumentError, "invalid value for \"selectionentitytype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/generalledger/transactions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startdate'] = startdate
      query_params[:'enddate'] = enddate
      query_params[:'glaccountids'] = @api_client.build_collection_param(glaccountids, :multi)
      query_params[:'selectionentityid'] = opts[:'selectionentityid'] if !opts[:'selectionentityid'].nil?
      query_params[:'selectionentitytype'] = opts[:'selectionentitytype'] if !opts[:'selectionentitytype'].nil?
      query_params[:'selectionentityunitid'] = opts[:'selectionentityunitid'] if !opts[:'selectionentityunitid'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<GeneralLedgerTransactionMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"GeneralLedgerApi.get_all_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralLedgerApi#get_all_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all general ledger entries
    # Retrieves all general ledger entries              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View`
    # @param accountingbasis [String] The methodology in which revenues and expenses are recognized when calculating the balances. Specifying &#x60;Cash&#x60; calculates balances based on when money changes hands. Specifying &#x60;Accrual&#x60; calculates balances based on the period in which the transaction originally happened.
    # @param glaccountids [Array<Integer>] Filters results to entries whose general ledger account belongs to the specified set of general ledger account ids.
    # @param startdate [Date] Filters results to any entries whose start date is greater than or equal to the specified value.
    # @param enddate [Date] Filters results to any entries whose end date is less than or equal to the specified value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; field refers to.
    # @option opts [Integer] :entityid Filters results to any general ledger entry containing line items associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<GeneralLedgerMessage>]
    def get_general_ledger_entries(accountingbasis, glaccountids, startdate, enddate, opts = {})
      data, _status_code, _headers = get_general_ledger_entries_with_http_info(accountingbasis, glaccountids, startdate, enddate, opts)
      data
    end

    # Retrieve all general ledger entries
    # Retrieves all general ledger entries              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param accountingbasis [String] The methodology in which revenues and expenses are recognized when calculating the balances. Specifying &#x60;Cash&#x60; calculates balances based on when money changes hands. Specifying &#x60;Accrual&#x60; calculates balances based on the period in which the transaction originally happened.
    # @param glaccountids [Array<Integer>] Filters results to entries whose general ledger account belongs to the specified set of general ledger account ids.
    # @param startdate [Date] Filters results to any entries whose start date is greater than or equal to the specified value.
    # @param enddate [Date] Filters results to any entries whose end date is less than or equal to the specified value.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; field refers to.
    # @option opts [Integer] :entityid Filters results to any general ledger entry containing line items associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<GeneralLedgerMessage>, Integer, Hash)>] Array<GeneralLedgerMessage> data, response status code and response headers
    def get_general_ledger_entries_with_http_info(accountingbasis, glaccountids, startdate, enddate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeneralLedgerApi.get_general_ledger_entries ...'
      end
      # verify the required parameter 'accountingbasis' is set
      if @api_client.config.client_side_validation && accountingbasis.nil?
        fail ArgumentError, "Missing the required parameter 'accountingbasis' when calling GeneralLedgerApi.get_general_ledger_entries"
      end
      # verify enum value
      allowable_values = ["Accrual", "Cash"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accountingbasis)
        fail ArgumentError, "invalid value for \"accountingbasis\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'glaccountids' is set
      if @api_client.config.client_side_validation && glaccountids.nil?
        fail ArgumentError, "Missing the required parameter 'glaccountids' when calling GeneralLedgerApi.get_general_ledger_entries"
      end
      # verify the required parameter 'startdate' is set
      if @api_client.config.client_side_validation && startdate.nil?
        fail ArgumentError, "Missing the required parameter 'startdate' when calling GeneralLedgerApi.get_general_ledger_entries"
      end
      # verify the required parameter 'enddate' is set
      if @api_client.config.client_side_validation && enddate.nil?
        fail ArgumentError, "Missing the required parameter 'enddate' when calling GeneralLedgerApi.get_general_ledger_entries"
      end
      allowable_values = ["Company", "Rental", "RentalOwner", "Association"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/generalledger'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'accountingbasis'] = accountingbasis
      query_params[:'glaccountids'] = @api_client.build_collection_param(glaccountids, :multi)
      query_params[:'startdate'] = startdate
      query_params[:'enddate'] = enddate
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<GeneralLedgerMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"GeneralLedgerApi.get_general_ledger_entries",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralLedgerApi#get_general_ledger_entries\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all general ledger account balances
    # Retrieves all general ledger account balances as of a given date. The response includes the total balance of each account along with the subtotals for any accounting entities (company, associations or rental properties) that have transactions assigned to the account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > General Ledger Accounts</span> - `View`
    # @param accountingbasis [String] The methodology in which revenues and expenses are recognized when calculating the balances. Specifying &#x60;Cash&#x60; calculates balances based on when money changes hands. Specifying &#x60;Accrual&#x60; calculates balances based on the period in which the transaction originally happened.
    # @param asofdate [Date] Indicates the end date through which the balances will be calculated. This will include all transactions in your account until this specified date.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; field refers to.
    # @option opts [Integer] :entityid Filters transactions used in calculating the general ledger account balances to only those containing journal lines for with the specified entity id value. The entity id specified must be of the type specified in &#x60;EntityType&#x60;.
    # @option opts [Array<Integer>] :glaccountids Filters results to the specified set of general ledger account identifiers.
    # @option opts [Boolean] :aggregatebalancesbyunitid Indicates whether to aggregate the AccountingEntityBalances by unit identifier in the response. If the value is set to true the AccountingEntityBalances will be aggregated by AccountingEntity.Unit.Id otherwise the response will have the balances aggregated by AccountingEntity.Id.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<GLAccountBalanceMessage>]
    def get_gl_account_balances(accountingbasis, asofdate, opts = {})
      data, _status_code, _headers = get_gl_account_balances_with_http_info(accountingbasis, asofdate, opts)
      data
    end

    # Retrieve all general ledger account balances
    # Retrieves all general ledger account balances as of a given date. The response includes the total balance of each account along with the subtotals for any accounting entities (company, associations or rental properties) that have transactions assigned to the account.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param accountingbasis [String] The methodology in which revenues and expenses are recognized when calculating the balances. Specifying &#x60;Cash&#x60; calculates balances based on when money changes hands. Specifying &#x60;Accrual&#x60; calculates balances based on the period in which the transaction originally happened.
    # @param asofdate [Date] Indicates the end date through which the balances will be calculated. This will include all transactions in your account until this specified date.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; field refers to.
    # @option opts [Integer] :entityid Filters transactions used in calculating the general ledger account balances to only those containing journal lines for with the specified entity id value. The entity id specified must be of the type specified in &#x60;EntityType&#x60;.
    # @option opts [Array<Integer>] :glaccountids Filters results to the specified set of general ledger account identifiers.
    # @option opts [Boolean] :aggregatebalancesbyunitid Indicates whether to aggregate the AccountingEntityBalances by unit identifier in the response. If the value is set to true the AccountingEntityBalances will be aggregated by AccountingEntity.Unit.Id otherwise the response will have the balances aggregated by AccountingEntity.Id.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<GLAccountBalanceMessage>, Integer, Hash)>] Array<GLAccountBalanceMessage> data, response status code and response headers
    def get_gl_account_balances_with_http_info(accountingbasis, asofdate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeneralLedgerApi.get_gl_account_balances ...'
      end
      # verify the required parameter 'accountingbasis' is set
      if @api_client.config.client_side_validation && accountingbasis.nil?
        fail ArgumentError, "Missing the required parameter 'accountingbasis' when calling GeneralLedgerApi.get_gl_account_balances"
      end
      # verify enum value
      allowable_values = ["Accrual", "Cash"]
      if @api_client.config.client_side_validation && !allowable_values.include?(accountingbasis)
        fail ArgumentError, "invalid value for \"accountingbasis\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'asofdate' is set
      if @api_client.config.client_side_validation && asofdate.nil?
        fail ArgumentError, "Missing the required parameter 'asofdate' when calling GeneralLedgerApi.get_gl_account_balances"
      end
      allowable_values = ["Association", "Rental", "RentalOwner"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/glaccounts/balances'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'accountingbasis'] = accountingbasis
      query_params[:'asofdate'] = asofdate
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
      query_params[:'glaccountids'] = @api_client.build_collection_param(opts[:'glaccountids'], :multi) if !opts[:'glaccountids'].nil?
      query_params[:'aggregatebalancesbyunitid'] = opts[:'aggregatebalancesbyunitid'] if !opts[:'aggregatebalancesbyunitid'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<GLAccountBalanceMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"GeneralLedgerApi.get_gl_account_balances",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralLedgerApi#get_gl_account_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a general ledger account
    # Retrieves a specific general ledger account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > General Ledger Accounts</span> - `View`
    # @param gl_account_id [Integer] The general ledger account identifier.
    # @param [Hash] opts the optional parameters
    # @return [GLAccountMessage]
    def get_gl_account_by_id(gl_account_id, opts = {})
      data, _status_code, _headers = get_gl_account_by_id_with_http_info(gl_account_id, opts)
      data
    end

    # Retrieve a general ledger account
    # Retrieves a specific general ledger account.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param gl_account_id [Integer] The general ledger account identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GLAccountMessage, Integer, Hash)>] GLAccountMessage data, response status code and response headers
    def get_gl_account_by_id_with_http_info(gl_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeneralLedgerApi.get_gl_account_by_id ...'
      end
      # verify the required parameter 'gl_account_id' is set
      if @api_client.config.client_side_validation && gl_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'gl_account_id' when calling GeneralLedgerApi.get_gl_account_by_id"
      end
      # resource path
      local_var_path = '/v1/glaccounts/{glAccountId}'.sub('{' + 'glAccountId' + '}', CGI.escape(gl_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GLAccountMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"GeneralLedgerApi.get_gl_account_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralLedgerApi#get_gl_account_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a general ledger transaction
    # Retrieves a specific general ledger transaction.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View`
    # @param transaction_id [Integer] The general ledger transaction identifier.
    # @param [Hash] opts the optional parameters
    # @return [GeneralLedgerTransactionMessage]
    def get_transaction_by_id(transaction_id, opts = {})
      data, _status_code, _headers = get_transaction_by_id_with_http_info(transaction_id, opts)
      data
    end

    # Retrieve a general ledger transaction
    # Retrieves a specific general ledger transaction.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param transaction_id [Integer] The general ledger transaction identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GeneralLedgerTransactionMessage, Integer, Hash)>] GeneralLedgerTransactionMessage data, response status code and response headers
    def get_transaction_by_id_with_http_info(transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeneralLedgerApi.get_transaction_by_id ...'
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling GeneralLedgerApi.get_transaction_by_id"
      end
      # resource path
      local_var_path = '/v1/generalledger/transactions/{transactionId}'.sub('{' + 'transactionId' + '}', CGI.escape(transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'GeneralLedgerTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"GeneralLedgerApi.get_transaction_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralLedgerApi#get_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a general journal entry
    # Updates a general journal entry.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > General Ledger Transactions</span> - `View` `Edit`
    # @param journal_entry_id [Integer] 
    # @param update_general_journal_entry_request [UpdateGeneralJournalEntryRequest] 
    # @param [Hash] opts the optional parameters
    # @return [GeneralLedgerTransactionMessage]
    def update_general_journal_entry(journal_entry_id, update_general_journal_entry_request, opts = {})
      data, _status_code, _headers = update_general_journal_entry_with_http_info(journal_entry_id, update_general_journal_entry_request, opts)
      data
    end

    # Update a general journal entry
    # Updates a general journal entry.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param journal_entry_id [Integer] 
    # @param update_general_journal_entry_request [UpdateGeneralJournalEntryRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GeneralLedgerTransactionMessage, Integer, Hash)>] GeneralLedgerTransactionMessage data, response status code and response headers
    def update_general_journal_entry_with_http_info(journal_entry_id, update_general_journal_entry_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeneralLedgerApi.update_general_journal_entry ...'
      end
      # verify the required parameter 'journal_entry_id' is set
      if @api_client.config.client_side_validation && journal_entry_id.nil?
        fail ArgumentError, "Missing the required parameter 'journal_entry_id' when calling GeneralLedgerApi.update_general_journal_entry"
      end
      # verify the required parameter 'update_general_journal_entry_request' is set
      if @api_client.config.client_side_validation && update_general_journal_entry_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_general_journal_entry_request' when calling GeneralLedgerApi.update_general_journal_entry"
      end
      # resource path
      local_var_path = '/v1/generalledger/journalentries/{journalEntryId}'.sub('{' + 'journalEntryId' + '}', CGI.escape(journal_entry_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_general_journal_entry_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GeneralLedgerTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"GeneralLedgerApi.update_general_journal_entry",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralLedgerApi#update_general_journal_entry\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a general ledger account
    # Updates a general ledger account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting > General Ledger Accounts</span> - `View` `Edit`
    # @param gl_account_id [Integer] 
    # @param update_gl_account_request [UpdateGLAccountRequest] 
    # @param [Hash] opts the optional parameters
    # @return [GLAccountMessage]
    def update_gl_account(gl_account_id, update_gl_account_request, opts = {})
      data, _status_code, _headers = update_gl_account_with_http_info(gl_account_id, update_gl_account_request, opts)
      data
    end

    # Update a general ledger account
    # Updates a general ledger account.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param gl_account_id [Integer] 
    # @param update_gl_account_request [UpdateGLAccountRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GLAccountMessage, Integer, Hash)>] GLAccountMessage data, response status code and response headers
    def update_gl_account_with_http_info(gl_account_id, update_gl_account_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeneralLedgerApi.update_gl_account ...'
      end
      # verify the required parameter 'gl_account_id' is set
      if @api_client.config.client_side_validation && gl_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'gl_account_id' when calling GeneralLedgerApi.update_gl_account"
      end
      # verify the required parameter 'update_gl_account_request' is set
      if @api_client.config.client_side_validation && update_gl_account_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_gl_account_request' when calling GeneralLedgerApi.update_gl_account"
      end
      # resource path
      local_var_path = '/v1/glaccounts/{glAccountId}'.sub('{' + 'glAccountId' + '}', CGI.escape(gl_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_gl_account_request)

      # return_type
      return_type = opts[:debug_return_type] || 'GLAccountMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"GeneralLedgerApi.update_gl_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeneralLedgerApi#update_gl_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
