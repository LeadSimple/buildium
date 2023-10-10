=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <kbd><img src=\"app_settings.gif\" class=\"example_screen\" /></kbd>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***API Keys***. The page will open automatically.    3. Click ***Create API Key***. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <kbd><img src=\"key_gen.gif\" class=\"example_screen\" /></kbd>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class BankAccountsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a bank account
    # Creates a bank account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Banking</span> - `View` `Edit`
    # @param bank_account_post_message [BankAccountPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountMessage]
    def create_bank_account(bank_account_post_message, opts = {})
      data, _status_code, _headers = create_bank_account_with_http_info(bank_account_post_message, opts)
      data
    end

    # Create a bank account
    # Creates a bank account.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Banking&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_post_message [BankAccountPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountMessage, Integer, Hash)>] BankAccountMessage data, response status code and response headers
    def create_bank_account_with_http_info(bank_account_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.create_bank_account ...'
      end
      # verify the required parameter 'bank_account_post_message' is set
      if @api_client.config.client_side_validation && bank_account_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_post_message' when calling BankAccountsApi.create_bank_account"
      end
      # resource path
      local_var_path = '/v1/bankaccounts'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.create_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#create_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a check
    # Creates a check.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param bank_account_id [Integer] 
    # @param bank_account_check_post_message [BankAccountCheckPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountCheckMessage]
    def create_bank_account_check(bank_account_id, bank_account_check_post_message, opts = {})
      data, _status_code, _headers = create_bank_account_check_with_http_info(bank_account_id, bank_account_check_post_message, opts)
      data
    end

    # Create a check
    # Creates a check.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_id [Integer] 
    # @param bank_account_check_post_message [BankAccountCheckPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountCheckMessage, Integer, Hash)>] BankAccountCheckMessage data, response status code and response headers
    def create_bank_account_check_with_http_info(bank_account_id, bank_account_check_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.create_bank_account_check ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.create_bank_account_check"
      end
      # verify the required parameter 'bank_account_check_post_message' is set
      if @api_client.config.client_side_validation && bank_account_check_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_check_post_message' when calling BankAccountsApi.create_bank_account_check"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/checks'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_check_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountCheckMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.create_bank_account_check",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#create_bank_account_check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a deposit
    # Creates a deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param bank_account_id [Integer] 
    # @param bank_account_deposit_post_message [BankAccountDepositPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountDepositMessage]
    def create_bank_account_deposit(bank_account_id, bank_account_deposit_post_message, opts = {})
      data, _status_code, _headers = create_bank_account_deposit_with_http_info(bank_account_id, bank_account_deposit_post_message, opts)
      data
    end

    # Create a deposit
    # Creates a deposit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_id [Integer] 
    # @param bank_account_deposit_post_message [BankAccountDepositPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountDepositMessage, Integer, Hash)>] BankAccountDepositMessage data, response status code and response headers
    def create_bank_account_deposit_with_http_info(bank_account_id, bank_account_deposit_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.create_bank_account_deposit ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.create_bank_account_deposit"
      end
      # verify the required parameter 'bank_account_deposit_post_message' is set
      if @api_client.config.client_side_validation && bank_account_deposit_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_deposit_post_message' when calling BankAccountsApi.create_bank_account_deposit"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/deposits'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_deposit_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountDepositMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.create_bank_account_deposit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#create_bank_account_deposit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a transfer
    # Creates a bank account transfer.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param bank_account_id [Integer] 
    # @param bank_account_transfer_save_message [BankAccountTransferSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountTransferMessage]
    def create_bank_account_transfer(bank_account_id, bank_account_transfer_save_message, opts = {})
      data, _status_code, _headers = create_bank_account_transfer_with_http_info(bank_account_id, bank_account_transfer_save_message, opts)
      data
    end

    # Create a transfer
    # Creates a bank account transfer.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_id [Integer] 
    # @param bank_account_transfer_save_message [BankAccountTransferSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountTransferMessage, Integer, Hash)>] BankAccountTransferMessage data, response status code and response headers
    def create_bank_account_transfer_with_http_info(bank_account_id, bank_account_transfer_save_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.create_bank_account_transfer ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.create_bank_account_transfer"
      end
      # verify the required parameter 'bank_account_transfer_save_message' is set
      if @api_client.config.client_side_validation && bank_account_transfer_save_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_transfer_save_message' when calling BankAccountsApi.create_bank_account_transfer"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/transfers'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_transfer_save_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountTransferMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.create_bank_account_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#create_bank_account_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a quick deposit
    # Creates a quick deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View` `Edit`
    # @param bank_account_id [Integer] 
    # @param bank_account_quick_deposit_save_message [BankAccountQuickDepositSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountQuickDepositMessage]
    def create_quick_deposit(bank_account_id, bank_account_quick_deposit_save_message, opts = {})
      data, _status_code, _headers = create_quick_deposit_with_http_info(bank_account_id, bank_account_quick_deposit_save_message, opts)
      data
    end

    # Create a quick deposit
    # Creates a quick deposit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; BankAccount&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_id [Integer] 
    # @param bank_account_quick_deposit_save_message [BankAccountQuickDepositSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountQuickDepositMessage, Integer, Hash)>] BankAccountQuickDepositMessage data, response status code and response headers
    def create_quick_deposit_with_http_info(bank_account_id, bank_account_quick_deposit_save_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.create_quick_deposit ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.create_quick_deposit"
      end
      # verify the required parameter 'bank_account_quick_deposit_save_message' is set
      if @api_client.config.client_side_validation && bank_account_quick_deposit_save_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_quick_deposit_save_message' when calling BankAccountsApi.create_quick_deposit"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/quickdeposits'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_quick_deposit_save_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountQuickDepositMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.create_quick_deposit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#create_quick_deposit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a withdrawal
    # Creates a bank account withdrawal.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param bank_account_id [Integer] 
    # @param bank_account_withdrawal_save_message [BankAccountWithdrawalSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountWithdrawalMessage]
    def create_withdrawal_for_bank_account(bank_account_id, bank_account_withdrawal_save_message, opts = {})
      data, _status_code, _headers = create_withdrawal_for_bank_account_with_http_info(bank_account_id, bank_account_withdrawal_save_message, opts)
      data
    end

    # Create a withdrawal
    # Creates a bank account withdrawal.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_id [Integer] 
    # @param bank_account_withdrawal_save_message [BankAccountWithdrawalSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountWithdrawalMessage, Integer, Hash)>] BankAccountWithdrawalMessage data, response status code and response headers
    def create_withdrawal_for_bank_account_with_http_info(bank_account_id, bank_account_withdrawal_save_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.create_withdrawal_for_bank_account ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.create_withdrawal_for_bank_account"
      end
      # verify the required parameter 'bank_account_withdrawal_save_message' is set
      if @api_client.config.client_side_validation && bank_account_withdrawal_save_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_withdrawal_save_message' when calling BankAccountsApi.create_withdrawal_for_bank_account"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/withdrawals'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_withdrawal_save_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountWithdrawalMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.create_withdrawal_for_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#create_withdrawal_for_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all bank accounts
    # Retrieves a list of bank accounts.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :bankaccountstatus Filters results by the status of the bank account. If no status is specified, bank accounts with any status will be returned.
    # @option opts [String] :bankname Filters results to any bank account whose name *contains* the specified value.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<BankAccountMessage>]
    def get_all_bank_accounts(opts = {})
      data, _status_code, _headers = get_all_bank_accounts_with_http_info(opts)
      data
    end

    # Retrieve all bank accounts
    # Retrieves a list of bank accounts.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :bankaccountstatus Filters results by the status of the bank account. If no status is specified, bank accounts with any status will be returned.
    # @option opts [String] :bankname Filters results to any bank account whose name *contains* the specified value.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<BankAccountMessage>, Integer, Hash)>] Array<BankAccountMessage> data, response status code and response headers
    def get_all_bank_accounts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_all_bank_accounts ...'
      end
      allowable_values = ["Active", "InActive"]
      if @api_client.config.client_side_validation && opts[:'bankaccountstatus'] && !allowable_values.include?(opts[:'bankaccountstatus'])
        fail ArgumentError, "invalid value for \"bankaccountstatus\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/bankaccounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'bankaccountstatus'] = opts[:'bankaccountstatus'] if !opts[:'bankaccountstatus'].nil?
      query_params[:'bankname'] = opts[:'bankname'] if !opts[:'bankname'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<BankAccountMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_all_bank_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_all_bank_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all quick deposits
    # Retrieves all quick deposits.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View`
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<BankAccountQuickDepositMessage>]
    def get_all_quick_deposits(bank_account_id, startdate, enddate, opts = {})
      data, _status_code, _headers = get_all_quick_deposits_with_http_info(bank_account_id, startdate, enddate, opts)
      data
    end

    # Retrieve all quick deposits
    # Retrieves all quick deposits.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; BankAccount&lt;/span&gt; - &#x60;View&#x60;
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<BankAccountQuickDepositMessage>, Integer, Hash)>] Array<BankAccountQuickDepositMessage> data, response status code and response headers
    def get_all_quick_deposits_with_http_info(bank_account_id, startdate, enddate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_all_quick_deposits ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_all_quick_deposits"
      end
      # verify the required parameter 'startdate' is set
      if @api_client.config.client_side_validation && startdate.nil?
        fail ArgumentError, "Missing the required parameter 'startdate' when calling BankAccountsApi.get_all_quick_deposits"
      end
      # verify the required parameter 'enddate' is set
      if @api_client.config.client_side_validation && enddate.nil?
        fail ArgumentError, "Missing the required parameter 'enddate' when calling BankAccountsApi.get_all_quick_deposits"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/quickdeposits'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startdate'] = startdate
      query_params[:'enddate'] = enddate
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
      return_type = opts[:debug_return_type] || 'Array<BankAccountQuickDepositMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_all_quick_deposits",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_all_quick_deposits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a bank account
    # Retrieves a specific bank account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`
    # @param bank_account_id [Integer] The bank account identifier.
    # @param [Hash] opts the optional parameters
    # @return [BankAccountMessage]
    def get_bank_account(bank_account_id, opts = {})
      data, _status_code, _headers = get_bank_account_with_http_info(bank_account_id, opts)
      data
    end

    # Retrieve a bank account
    # Retrieves a specific bank account.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param bank_account_id [Integer] The bank account identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountMessage, Integer, Hash)>] BankAccountMessage data, response status code and response headers
    def get_bank_account_with_http_info(bank_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_bank_account ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_bank_account"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BankAccountMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all checks
    # Retrieves all bank account checks.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`              <br /><span class=\"permissionBlock\">Accounting &gt; General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for checks associated with a Company) </span>
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<BankAccountCheckMessage>]
    def get_bank_account_checks(bank_account_id, startdate, enddate, opts = {})
      data, _status_code, _headers = get_bank_account_checks_with_http_info(bank_account_id, startdate, enddate, opts)
      data
    end

    # Retrieve all checks
    # Retrieves all bank account checks.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60; &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;(Required for checks associated with a Company) &lt;/span&gt;
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<BankAccountCheckMessage>, Integer, Hash)>] Array<BankAccountCheckMessage> data, response status code and response headers
    def get_bank_account_checks_with_http_info(bank_account_id, startdate, enddate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_bank_account_checks ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_bank_account_checks"
      end
      # verify the required parameter 'startdate' is set
      if @api_client.config.client_side_validation && startdate.nil?
        fail ArgumentError, "Missing the required parameter 'startdate' when calling BankAccountsApi.get_bank_account_checks"
      end
      # verify the required parameter 'enddate' is set
      if @api_client.config.client_side_validation && enddate.nil?
        fail ArgumentError, "Missing the required parameter 'enddate' when calling BankAccountsApi.get_bank_account_checks"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/checks'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startdate'] = startdate
      query_params[:'enddate'] = enddate
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
      return_type = opts[:debug_return_type] || 'Array<BankAccountCheckMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_bank_account_checks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_bank_account_checks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a deposit
    # Retrieves a bank account deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View`              <br /><span class=\"permissionBlock\">Accounting &gt; General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for deposits associated with a Company) </span>
    # @param bank_account_id [Integer] 
    # @param deposit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountDepositMessage]
    def get_bank_account_deposit_by_id(bank_account_id, deposit_id, opts = {})
      data, _status_code, _headers = get_bank_account_deposit_by_id_with_http_info(bank_account_id, deposit_id, opts)
      data
    end

    # Retrieve a deposit
    # Retrieves a bank account deposit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; BankAccount&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60; &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;(Required for deposits associated with a Company) &lt;/span&gt;
    # @param bank_account_id [Integer] 
    # @param deposit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountDepositMessage, Integer, Hash)>] BankAccountDepositMessage data, response status code and response headers
    def get_bank_account_deposit_by_id_with_http_info(bank_account_id, deposit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_bank_account_deposit_by_id ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_bank_account_deposit_by_id"
      end
      # verify the required parameter 'deposit_id' is set
      if @api_client.config.client_side_validation && deposit_id.nil?
        fail ArgumentError, "Missing the required parameter 'deposit_id' when calling BankAccountsApi.get_bank_account_deposit_by_id"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/deposits/{depositId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s)).sub('{' + 'depositId' + '}', CGI.escape(deposit_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BankAccountDepositMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_bank_account_deposit_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_bank_account_deposit_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all deposits
    # Retrieves all bank account deposits.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View`              <br /><span class=\"permissionBlock\">Accounting &gt; General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for deposits associated with a Company) </span>
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any deposits that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any deposits that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<BankAccountDepositMessage>]
    def get_bank_account_deposits(bank_account_id, startdate, enddate, opts = {})
      data, _status_code, _headers = get_bank_account_deposits_with_http_info(bank_account_id, startdate, enddate, opts)
      data
    end

    # Retrieve all deposits
    # Retrieves all bank account deposits.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; BankAccount&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60; &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;(Required for deposits associated with a Company) &lt;/span&gt;
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any deposits that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any deposits that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<BankAccountDepositMessage>, Integer, Hash)>] Array<BankAccountDepositMessage> data, response status code and response headers
    def get_bank_account_deposits_with_http_info(bank_account_id, startdate, enddate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_bank_account_deposits ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_bank_account_deposits"
      end
      # verify the required parameter 'startdate' is set
      if @api_client.config.client_side_validation && startdate.nil?
        fail ArgumentError, "Missing the required parameter 'startdate' when calling BankAccountsApi.get_bank_account_deposits"
      end
      # verify the required parameter 'enddate' is set
      if @api_client.config.client_side_validation && enddate.nil?
        fail ArgumentError, "Missing the required parameter 'enddate' when calling BankAccountsApi.get_bank_account_deposits"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/deposits'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startdate'] = startdate
      query_params[:'enddate'] = enddate
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
      return_type = opts[:debug_return_type] || 'Array<BankAccountDepositMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_bank_account_deposits",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_bank_account_deposits\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a transaction
    # Retrieves a specific bank account transaction.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Account</span> - `View`
    # @param bank_account_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountTransactionMessage]
    def get_bank_account_transaction_by_id(bank_account_id, transaction_id, opts = {})
      data, _status_code, _headers = get_bank_account_transaction_by_id_with_http_info(bank_account_id, transaction_id, opts)
      data
    end

    # Retrieve a transaction
    # Retrieves a specific bank account transaction.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Account&lt;/span&gt; - &#x60;View&#x60;
    # @param bank_account_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountTransactionMessage, Integer, Hash)>] BankAccountTransactionMessage data, response status code and response headers
    def get_bank_account_transaction_by_id_with_http_info(bank_account_id, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_bank_account_transaction_by_id ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_bank_account_transaction_by_id"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling BankAccountsApi.get_bank_account_transaction_by_id"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/transactions/{transactionId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s)).sub('{' + 'transactionId' + '}', CGI.escape(transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BankAccountTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_bank_account_transaction_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_bank_account_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all transactions
    # Retrieves all bank account transactions.              <br /><br />              Note: When using the `orderby` query string parameter, the only supported parameter is `EntryDate`.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :selectionentityid Filters results to any transaction containing journal lines for an entity associated with the specified entity id value. The id must be of the type specified in SelectionEntityType.
    # @option opts [String] :selectionentitytype Specifies the type of entity that SelectionEntityId refers to.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<BankAccountTransactionMessage>]
    def get_bank_account_transactions(bank_account_id, startdate, enddate, opts = {})
      data, _status_code, _headers = get_bank_account_transactions_with_http_info(bank_account_id, startdate, enddate, opts)
      data
    end

    # Retrieve all transactions
    # Retrieves all bank account transactions.              &lt;br /&gt;&lt;br /&gt;              Note: When using the &#x60;orderby&#x60; query string parameter, the only supported parameter is &#x60;EntryDate&#x60;.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :selectionentityid Filters results to any transaction containing journal lines for an entity associated with the specified entity id value. The id must be of the type specified in SelectionEntityType.
    # @option opts [String] :selectionentitytype Specifies the type of entity that SelectionEntityId refers to.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<BankAccountTransactionMessage>, Integer, Hash)>] Array<BankAccountTransactionMessage> data, response status code and response headers
    def get_bank_account_transactions_with_http_info(bank_account_id, startdate, enddate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_bank_account_transactions ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_bank_account_transactions"
      end
      # verify the required parameter 'startdate' is set
      if @api_client.config.client_side_validation && startdate.nil?
        fail ArgumentError, "Missing the required parameter 'startdate' when calling BankAccountsApi.get_bank_account_transactions"
      end
      # verify the required parameter 'enddate' is set
      if @api_client.config.client_side_validation && enddate.nil?
        fail ArgumentError, "Missing the required parameter 'enddate' when calling BankAccountsApi.get_bank_account_transactions"
      end
      allowable_values = ["Company", "Rental", "RentalOwner", "Association"]
      if @api_client.config.client_side_validation && opts[:'selectionentitytype'] && !allowable_values.include?(opts[:'selectionentitytype'])
        fail ArgumentError, "invalid value for \"selectionentitytype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/transactions'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startdate'] = startdate
      query_params[:'enddate'] = enddate
      query_params[:'selectionentityid'] = opts[:'selectionentityid'] if !opts[:'selectionentityid'].nil?
      query_params[:'selectionentitytype'] = opts[:'selectionentitytype'] if !opts[:'selectionentitytype'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<BankAccountTransactionMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_bank_account_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_bank_account_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a transfer
    # Retrieves a bank account transfer.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`
    # @param bank_account_id [Integer] The bank account identifier.
    # @param transfer_id [Integer] The transfer identifier.
    # @param [Hash] opts the optional parameters
    # @return [BankAccountMessage]
    def get_bank_account_transfer_by_id(bank_account_id, transfer_id, opts = {})
      data, _status_code, _headers = get_bank_account_transfer_by_id_with_http_info(bank_account_id, transfer_id, opts)
      data
    end

    # Retrieve a transfer
    # Retrieves a bank account transfer.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param bank_account_id [Integer] The bank account identifier.
    # @param transfer_id [Integer] The transfer identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountMessage, Integer, Hash)>] BankAccountMessage data, response status code and response headers
    def get_bank_account_transfer_by_id_with_http_info(bank_account_id, transfer_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_bank_account_transfer_by_id ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_bank_account_transfer_by_id"
      end
      # verify the required parameter 'transfer_id' is set
      if @api_client.config.client_side_validation && transfer_id.nil?
        fail ArgumentError, "Missing the required parameter 'transfer_id' when calling BankAccountsApi.get_bank_account_transfer_by_id"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/transfers/{transferId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s)).sub('{' + 'transferId' + '}', CGI.escape(transfer_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BankAccountMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_bank_account_transfer_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_bank_account_transfer_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all transfers
    # Retrieves all bank account transfers.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View`
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any transfers that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any transfers that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<BankAccountTransferMessage>]
    def get_bank_account_transfers(bank_account_id, startdate, enddate, opts = {})
      data, _status_code, _headers = get_bank_account_transfers_with_http_info(bank_account_id, startdate, enddate, opts)
      data
    end

    # Retrieve all transfers
    # Retrieves all bank account transfers.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; BankAccount&lt;/span&gt; - &#x60;View&#x60;
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any transfers that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any transfers that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<BankAccountTransferMessage>, Integer, Hash)>] Array<BankAccountTransferMessage> data, response status code and response headers
    def get_bank_account_transfers_with_http_info(bank_account_id, startdate, enddate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_bank_account_transfers ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_bank_account_transfers"
      end
      # verify the required parameter 'startdate' is set
      if @api_client.config.client_side_validation && startdate.nil?
        fail ArgumentError, "Missing the required parameter 'startdate' when calling BankAccountsApi.get_bank_account_transfers"
      end
      # verify the required parameter 'enddate' is set
      if @api_client.config.client_side_validation && enddate.nil?
        fail ArgumentError, "Missing the required parameter 'enddate' when calling BankAccountsApi.get_bank_account_transfers"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/transfers'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startdate'] = startdate
      query_params[:'enddate'] = enddate
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
      return_type = opts[:debug_return_type] || 'Array<BankAccountTransferMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_bank_account_transfers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_bank_account_transfers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a withdrawal
    # Retrieves a bank account withdrawal.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccounts</span> - `View`
    # @param bank_account_id [Integer] 
    # @param withdrawal_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountWithdrawalMessage]
    def get_bank_account_withdrawal_by_id(bank_account_id, withdrawal_id, opts = {})
      data, _status_code, _headers = get_bank_account_withdrawal_by_id_with_http_info(bank_account_id, withdrawal_id, opts)
      data
    end

    # Retrieve a withdrawal
    # Retrieves a bank account withdrawal.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; BankAccounts&lt;/span&gt; - &#x60;View&#x60;
    # @param bank_account_id [Integer] 
    # @param withdrawal_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountWithdrawalMessage, Integer, Hash)>] BankAccountWithdrawalMessage data, response status code and response headers
    def get_bank_account_withdrawal_by_id_with_http_info(bank_account_id, withdrawal_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_bank_account_withdrawal_by_id ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_bank_account_withdrawal_by_id"
      end
      # verify the required parameter 'withdrawal_id' is set
      if @api_client.config.client_side_validation && withdrawal_id.nil?
        fail ArgumentError, "Missing the required parameter 'withdrawal_id' when calling BankAccountsApi.get_bank_account_withdrawal_by_id"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/withdrawals/{withdrawalId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s)).sub('{' + 'withdrawalId' + '}', CGI.escape(withdrawal_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BankAccountWithdrawalMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_bank_account_withdrawal_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_bank_account_withdrawal_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all withdrawals
    # Retrieves all bank account withdrawals.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccounts</span> - `View`
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<BankAccountWithdrawalMessage>]
    def get_bank_account_withdrawals(bank_account_id, startdate, enddate, opts = {})
      data, _status_code, _headers = get_bank_account_withdrawals_with_http_info(bank_account_id, startdate, enddate, opts)
      data
    end

    # Retrieve all withdrawals
    # Retrieves all bank account withdrawals.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; BankAccounts&lt;/span&gt; - &#x60;View&#x60;
    # @param bank_account_id [Integer] 
    # @param startdate [Date] Filters results to any transactions that were recorded on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @param enddate [Date] Filters results to any transactions that were recorded on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<BankAccountWithdrawalMessage>, Integer, Hash)>] Array<BankAccountWithdrawalMessage> data, response status code and response headers
    def get_bank_account_withdrawals_with_http_info(bank_account_id, startdate, enddate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_bank_account_withdrawals ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_bank_account_withdrawals"
      end
      # verify the required parameter 'startdate' is set
      if @api_client.config.client_side_validation && startdate.nil?
        fail ArgumentError, "Missing the required parameter 'startdate' when calling BankAccountsApi.get_bank_account_withdrawals"
      end
      # verify the required parameter 'enddate' is set
      if @api_client.config.client_side_validation && enddate.nil?
        fail ArgumentError, "Missing the required parameter 'enddate' when calling BankAccountsApi.get_bank_account_withdrawals"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/withdrawals'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startdate'] = startdate
      query_params[:'enddate'] = enddate
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
      return_type = opts[:debug_return_type] || 'Array<BankAccountWithdrawalMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_bank_account_withdrawals",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_bank_account_withdrawals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a check
    # Retrieves a bank account check.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`              <br /><span class=\"permissionBlock\">Accounting &gt; General Ledger Transactions</span> - `View` <span class=\"permissionBlock\">(Required for checks associated with a Company) </span>
    # @param bank_account_id [Integer] 
    # @param check_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountCheckMessage]
    def get_check_for_bank_account(bank_account_id, check_id, opts = {})
      data, _status_code, _headers = get_check_for_bank_account_with_http_info(bank_account_id, check_id, opts)
      data
    end

    # Retrieve a check
    # Retrieves a bank account check.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60; &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;(Required for checks associated with a Company) &lt;/span&gt;
    # @param bank_account_id [Integer] 
    # @param check_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountCheckMessage, Integer, Hash)>] BankAccountCheckMessage data, response status code and response headers
    def get_check_for_bank_account_with_http_info(bank_account_id, check_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_check_for_bank_account ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_check_for_bank_account"
      end
      # verify the required parameter 'check_id' is set
      if @api_client.config.client_side_validation && check_id.nil?
        fail ArgumentError, "Missing the required parameter 'check_id' when calling BankAccountsApi.get_check_for_bank_account"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/checks/{checkId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s)).sub('{' + 'checkId' + '}', CGI.escape(check_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BankAccountCheckMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_check_for_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_check_for_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a quick deposit
    # Retrieves a quick deposit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; BankAccount</span> - `View`
    # @param bank_account_id [Integer] 
    # @param quick_deposit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountQuickDepositMessage]
    def get_quick_deposit_by_id(bank_account_id, quick_deposit_id, opts = {})
      data, _status_code, _headers = get_quick_deposit_by_id_with_http_info(bank_account_id, quick_deposit_id, opts)
      data
    end

    # Retrieve a quick deposit
    # Retrieves a quick deposit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; BankAccount&lt;/span&gt; - &#x60;View&#x60;
    # @param bank_account_id [Integer] 
    # @param quick_deposit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountQuickDepositMessage, Integer, Hash)>] BankAccountQuickDepositMessage data, response status code and response headers
    def get_quick_deposit_by_id_with_http_info(bank_account_id, quick_deposit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_quick_deposit_by_id ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_quick_deposit_by_id"
      end
      # verify the required parameter 'quick_deposit_id' is set
      if @api_client.config.client_side_validation && quick_deposit_id.nil?
        fail ArgumentError, "Missing the required parameter 'quick_deposit_id' when calling BankAccountsApi.get_quick_deposit_by_id"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/quickdeposits/{quickDepositId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s)).sub('{' + 'quickDepositId' + '}', CGI.escape(quick_deposit_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BankAccountQuickDepositMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_quick_deposit_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_quick_deposit_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all undeposited funds
    # Retrieve all bank account undeposited funds.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`
    # @param bank_account_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<UndepositedFundsMessage>]
    def get_undeposited_funds(bank_account_id, opts = {})
      data, _status_code, _headers = get_undeposited_funds_with_http_info(bank_account_id, opts)
      data
    end

    # Retrieve all undeposited funds
    # Retrieve all bank account undeposited funds.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param bank_account_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<UndepositedFundsMessage>, Integer, Hash)>] Array<UndepositedFundsMessage> data, response status code and response headers
    def get_undeposited_funds_with_http_info(bank_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.get_undeposited_funds ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.get_undeposited_funds"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/undepositedfunds'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<UndepositedFundsMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.get_undeposited_funds",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#get_undeposited_funds\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a bank account
    # Updates a bank account.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Banking</span> - `View` `Edit`
    # @param bank_account_id [Integer] 
    # @param bank_account_put_message [BankAccountPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountMessage]
    def update_bank_account(bank_account_id, bank_account_put_message, opts = {})
      data, _status_code, _headers = update_bank_account_with_http_info(bank_account_id, bank_account_put_message, opts)
      data
    end

    # Update a bank account
    # Updates a bank account.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Banking&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_id [Integer] 
    # @param bank_account_put_message [BankAccountPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountMessage, Integer, Hash)>] BankAccountMessage data, response status code and response headers
    def update_bank_account_with_http_info(bank_account_id, bank_account_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.update_bank_account ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.update_bank_account"
      end
      # verify the required parameter 'bank_account_put_message' is set
      if @api_client.config.client_side_validation && bank_account_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_put_message' when calling BankAccountsApi.update_bank_account"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.update_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#update_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a deposit
    # Updates a deposit.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param bank_account_id [Integer] 
    # @param deposit_id [Integer] 
    # @param bank_account_deposit_put_message [BankAccountDepositPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountDepositMessage]
    def update_bank_account_deposit(bank_account_id, deposit_id, bank_account_deposit_put_message, opts = {})
      data, _status_code, _headers = update_bank_account_deposit_with_http_info(bank_account_id, deposit_id, bank_account_deposit_put_message, opts)
      data
    end

    # Update a deposit
    # Updates a deposit.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_id [Integer] 
    # @param deposit_id [Integer] 
    # @param bank_account_deposit_put_message [BankAccountDepositPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountDepositMessage, Integer, Hash)>] BankAccountDepositMessage data, response status code and response headers
    def update_bank_account_deposit_with_http_info(bank_account_id, deposit_id, bank_account_deposit_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.update_bank_account_deposit ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.update_bank_account_deposit"
      end
      # verify the required parameter 'deposit_id' is set
      if @api_client.config.client_side_validation && deposit_id.nil?
        fail ArgumentError, "Missing the required parameter 'deposit_id' when calling BankAccountsApi.update_bank_account_deposit"
      end
      # verify the required parameter 'bank_account_deposit_put_message' is set
      if @api_client.config.client_side_validation && bank_account_deposit_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_deposit_put_message' when calling BankAccountsApi.update_bank_account_deposit"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/deposits/{depositId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s)).sub('{' + 'depositId' + '}', CGI.escape(deposit_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_deposit_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountDepositMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.update_bank_account_deposit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#update_bank_account_deposit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a transfer
    # Updates a bank account transfer.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param bank_account_id [Integer] 
    # @param transfer_id [Integer] 
    # @param bank_account_transfer_save_message [BankAccountTransferSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountTransferMessage]
    def update_bank_account_transfer(bank_account_id, transfer_id, bank_account_transfer_save_message, opts = {})
      data, _status_code, _headers = update_bank_account_transfer_with_http_info(bank_account_id, transfer_id, bank_account_transfer_save_message, opts)
      data
    end

    # Update a transfer
    # Updates a bank account transfer.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_id [Integer] 
    # @param transfer_id [Integer] 
    # @param bank_account_transfer_save_message [BankAccountTransferSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountTransferMessage, Integer, Hash)>] BankAccountTransferMessage data, response status code and response headers
    def update_bank_account_transfer_with_http_info(bank_account_id, transfer_id, bank_account_transfer_save_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.update_bank_account_transfer ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.update_bank_account_transfer"
      end
      # verify the required parameter 'transfer_id' is set
      if @api_client.config.client_side_validation && transfer_id.nil?
        fail ArgumentError, "Missing the required parameter 'transfer_id' when calling BankAccountsApi.update_bank_account_transfer"
      end
      # verify the required parameter 'bank_account_transfer_save_message' is set
      if @api_client.config.client_side_validation && bank_account_transfer_save_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_transfer_save_message' when calling BankAccountsApi.update_bank_account_transfer"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/transfers/{transferId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s)).sub('{' + 'transferId' + '}', CGI.escape(transfer_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_transfer_save_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountTransferMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.update_bank_account_transfer",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#update_bank_account_transfer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a withdrawal
    # Updates a bank account withdrawal.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param bank_account_id [Integer] 
    # @param withdrawal_id [Integer] 
    # @param bank_account_withdrawal_save_message [BankAccountWithdrawalSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountWithdrawalMessage]
    def update_bank_account_withdrawal(bank_account_id, withdrawal_id, bank_account_withdrawal_save_message, opts = {})
      data, _status_code, _headers = update_bank_account_withdrawal_with_http_info(bank_account_id, withdrawal_id, bank_account_withdrawal_save_message, opts)
      data
    end

    # Update a withdrawal
    # Updates a bank account withdrawal.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_id [Integer] 
    # @param withdrawal_id [Integer] 
    # @param bank_account_withdrawal_save_message [BankAccountWithdrawalSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountWithdrawalMessage, Integer, Hash)>] BankAccountWithdrawalMessage data, response status code and response headers
    def update_bank_account_withdrawal_with_http_info(bank_account_id, withdrawal_id, bank_account_withdrawal_save_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.update_bank_account_withdrawal ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.update_bank_account_withdrawal"
      end
      # verify the required parameter 'withdrawal_id' is set
      if @api_client.config.client_side_validation && withdrawal_id.nil?
        fail ArgumentError, "Missing the required parameter 'withdrawal_id' when calling BankAccountsApi.update_bank_account_withdrawal"
      end
      # verify the required parameter 'bank_account_withdrawal_save_message' is set
      if @api_client.config.client_side_validation && bank_account_withdrawal_save_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_withdrawal_save_message' when calling BankAccountsApi.update_bank_account_withdrawal"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/withdrawals/{withdrawalId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s)).sub('{' + 'withdrawalId' + '}', CGI.escape(withdrawal_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_withdrawal_save_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountWithdrawalMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.update_bank_account_withdrawal",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#update_bank_account_withdrawal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a check
    # Updates a check.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param bank_account_id [Integer] 
    # @param check_id [Integer] 
    # @param bank_account_check_put_message [BankAccountCheckPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountCheckMessage]
    def update_check_for_bank_account(bank_account_id, check_id, bank_account_check_put_message, opts = {})
      data, _status_code, _headers = update_check_for_bank_account_with_http_info(bank_account_id, check_id, bank_account_check_put_message, opts)
      data
    end

    # Update a check
    # Updates a check.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_id [Integer] 
    # @param check_id [Integer] 
    # @param bank_account_check_put_message [BankAccountCheckPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountCheckMessage, Integer, Hash)>] BankAccountCheckMessage data, response status code and response headers
    def update_check_for_bank_account_with_http_info(bank_account_id, check_id, bank_account_check_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.update_check_for_bank_account ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.update_check_for_bank_account"
      end
      # verify the required parameter 'check_id' is set
      if @api_client.config.client_side_validation && check_id.nil?
        fail ArgumentError, "Missing the required parameter 'check_id' when calling BankAccountsApi.update_check_for_bank_account"
      end
      # verify the required parameter 'bank_account_check_put_message' is set
      if @api_client.config.client_side_validation && bank_account_check_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_check_put_message' when calling BankAccountsApi.update_check_for_bank_account"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/checks/{checkId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s)).sub('{' + 'checkId' + '}', CGI.escape(check_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_check_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountCheckMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.update_check_for_bank_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#update_check_for_bank_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a quick deposit
    # Updates a quick deposit.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param bank_account_id [Integer] 
    # @param quick_deposit_id [Integer] 
    # @param bank_account_quick_deposit_save_message [BankAccountQuickDepositSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BankAccountQuickDepositMessage]
    def update_quick_deposit(bank_account_id, quick_deposit_id, bank_account_quick_deposit_save_message, opts = {})
      data, _status_code, _headers = update_quick_deposit_with_http_info(bank_account_id, quick_deposit_id, bank_account_quick_deposit_save_message, opts)
      data
    end

    # Update a quick deposit
    # Updates a quick deposit.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bank_account_id [Integer] 
    # @param quick_deposit_id [Integer] 
    # @param bank_account_quick_deposit_save_message [BankAccountQuickDepositSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BankAccountQuickDepositMessage, Integer, Hash)>] BankAccountQuickDepositMessage data, response status code and response headers
    def update_quick_deposit_with_http_info(bank_account_id, quick_deposit_id, bank_account_quick_deposit_save_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BankAccountsApi.update_quick_deposit ...'
      end
      # verify the required parameter 'bank_account_id' is set
      if @api_client.config.client_side_validation && bank_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_id' when calling BankAccountsApi.update_quick_deposit"
      end
      # verify the required parameter 'quick_deposit_id' is set
      if @api_client.config.client_side_validation && quick_deposit_id.nil?
        fail ArgumentError, "Missing the required parameter 'quick_deposit_id' when calling BankAccountsApi.update_quick_deposit"
      end
      # verify the required parameter 'bank_account_quick_deposit_save_message' is set
      if @api_client.config.client_side_validation && bank_account_quick_deposit_save_message.nil?
        fail ArgumentError, "Missing the required parameter 'bank_account_quick_deposit_save_message' when calling BankAccountsApi.update_quick_deposit"
      end
      # resource path
      local_var_path = '/v1/bankaccounts/{bankAccountId}/quickdeposits/{quickDepositId}'.sub('{' + 'bankAccountId' + '}', CGI.escape(bank_account_id.to_s)).sub('{' + 'quickDepositId' + '}', CGI.escape(quick_deposit_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bank_account_quick_deposit_save_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BankAccountQuickDepositMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BankAccountsApi.update_quick_deposit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BankAccountsApi#update_quick_deposit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
