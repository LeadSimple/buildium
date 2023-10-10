=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <kbd><img src=\"app_settings.gif\" class=\"example_screen\" /></kbd>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***API Keys***. The page will open automatically.    3. Click ***Create API Key***. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <kbd><img src=\"key_gen.gif\" class=\"example_screen\" /></kbd>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class AssociationOwnershipAccountsApi
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
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.create_association_ownership_account ...'
      end
      # verify the required parameter 'association_ownership_account_post_message' is set
      if @api_client.config.client_side_validation && association_ownership_account_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_ownership_account_post_message' when calling AssociationOwnershipAccountsApi.create_association_ownership_account"
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
        :operation => :"AssociationOwnershipAccountsApi.create_association_ownership_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#create_association_ownership_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.create_association_ownership_account_note ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.create_association_ownership_account_note"
      end
      # verify the required parameter 'note_post_message' is set
      if @api_client.config.client_side_validation && note_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_post_message' when calling AssociationOwnershipAccountsApi.create_association_ownership_account_note"
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
        :operation => :"AssociationOwnershipAccountsApi.create_association_ownership_account_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#create_association_ownership_account_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an ownership account ledger payment with automatic allocations
    # Creates a payment on the ownership account ledger. Note that the recorded payment will be automatically allocated to the general ledger accounts based on the payment allocation settings. These settings can be found under the Settings &gt; Application Settings &gt; Residents page in your account. If you'd like to specify the GL accounts the payment should apply to, please use the <a href=\"#operation/CreateOwnershipAccountLedgerPayment\">Create a ledger payment</a> endpoint.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`
    # @param ownership_account_id [Integer] 
    # @param ownership_account_auto_allocated_payment_post_message [OwnershipAccountAutoAllocatedPaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountTransactionMessage]
    def create_ownership_account_auto_allocated_payment(ownership_account_id, ownership_account_auto_allocated_payment_post_message, opts = {})
      data, _status_code, _headers = create_ownership_account_auto_allocated_payment_with_http_info(ownership_account_id, ownership_account_auto_allocated_payment_post_message, opts)
      data
    end

    # Create an ownership account ledger payment with automatic allocations
    # Creates a payment on the ownership account ledger. Note that the recorded payment will be automatically allocated to the general ledger accounts based on the payment allocation settings. These settings can be found under the Settings &amp;gt; Application Settings &amp;gt; Residents page in your account. If you&#39;d like to specify the GL accounts the payment should apply to, please use the &lt;a href&#x3D;\&quot;#operation/CreateOwnershipAccountLedgerPayment\&quot;&gt;Create a ledger payment&lt;/a&gt; endpoint.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param ownership_account_id [Integer] 
    # @param ownership_account_auto_allocated_payment_post_message [OwnershipAccountAutoAllocatedPaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountTransactionMessage, Integer, Hash)>] OwnershipAccountTransactionMessage data, response status code and response headers
    def create_ownership_account_auto_allocated_payment_with_http_info(ownership_account_id, ownership_account_auto_allocated_payment_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.create_ownership_account_auto_allocated_payment ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.create_ownership_account_auto_allocated_payment"
      end
      # verify the required parameter 'ownership_account_auto_allocated_payment_post_message' is set
      if @api_client.config.client_side_validation && ownership_account_auto_allocated_payment_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_auto_allocated_payment_post_message' when calling AssociationOwnershipAccountsApi.create_ownership_account_auto_allocated_payment"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/autoallocatedpayments'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ownership_account_auto_allocated_payment_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'OwnershipAccountTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.create_ownership_account_auto_allocated_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#create_ownership_account_auto_allocated_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a ledger credit
    # Creates a ledger credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`
    # @param ownership_account_id [Integer] 
    # @param ownership_account_credit_post_message [OwnershipAccountCreditPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountTransactionMessage]
    def create_ownership_account_credit(ownership_account_id, ownership_account_credit_post_message, opts = {})
      data, _status_code, _headers = create_ownership_account_credit_with_http_info(ownership_account_id, ownership_account_credit_post_message, opts)
      data
    end

    # Create a ledger credit
    # Creates a ledger credit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param ownership_account_id [Integer] 
    # @param ownership_account_credit_post_message [OwnershipAccountCreditPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountTransactionMessage, Integer, Hash)>] OwnershipAccountTransactionMessage data, response status code and response headers
    def create_ownership_account_credit_with_http_info(ownership_account_id, ownership_account_credit_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.create_ownership_account_credit ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.create_ownership_account_credit"
      end
      # verify the required parameter 'ownership_account_credit_post_message' is set
      if @api_client.config.client_side_validation && ownership_account_credit_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_credit_post_message' when calling AssociationOwnershipAccountsApi.create_ownership_account_credit"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/credits'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ownership_account_credit_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'OwnershipAccountTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.create_ownership_account_credit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#create_ownership_account_credit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a recurring credit
    # Creates a recurring credit transaction that will post automatically on the specified ownership account ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`
    # @param ownership_account_id [Integer] 
    # @param credit_recurring_transaction_post_message [CreditRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountRecurringCreditMessage]
    def create_ownership_account_credit_recurring_transaction(ownership_account_id, credit_recurring_transaction_post_message, opts = {})
      data, _status_code, _headers = create_ownership_account_credit_recurring_transaction_with_http_info(ownership_account_id, credit_recurring_transaction_post_message, opts)
      data
    end

    # Create a recurring credit
    # Creates a recurring credit transaction that will post automatically on the specified ownership account ledger.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param ownership_account_id [Integer] 
    # @param credit_recurring_transaction_post_message [CreditRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountRecurringCreditMessage, Integer, Hash)>] OwnershipAccountRecurringCreditMessage data, response status code and response headers
    def create_ownership_account_credit_recurring_transaction_with_http_info(ownership_account_id, credit_recurring_transaction_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.create_ownership_account_credit_recurring_transaction ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.create_ownership_account_credit_recurring_transaction"
      end
      # verify the required parameter 'credit_recurring_transaction_post_message' is set
      if @api_client.config.client_side_validation && credit_recurring_transaction_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'credit_recurring_transaction_post_message' when calling AssociationOwnershipAccountsApi.create_ownership_account_credit_recurring_transaction"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcredits'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(credit_recurring_transaction_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'OwnershipAccountRecurringCreditMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.create_ownership_account_credit_recurring_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#create_ownership_account_credit_recurring_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a deposit withholding
    # Withholds an association owner deposit by reallocating the funds from a liability account to an income account to cover an expense(s).              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`              <span class=\"permissionBlock\">Accounting &gt; General Ledger Accounts</span> - `View`
    # @param ownership_account_id [Integer] 
    # @param ownership_account_deposit_withholding_post_message [OwnershipAccountDepositWithholdingPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountTransactionMessage]
    def create_ownership_account_deposit_withholding(ownership_account_id, ownership_account_deposit_withholding_post_message, opts = {})
      data, _status_code, _headers = create_ownership_account_deposit_withholding_with_http_info(ownership_account_id, ownership_account_deposit_withholding_post_message, opts)
      data
    end

    # Create a deposit withholding
    # Withholds an association owner deposit by reallocating the funds from a liability account to an income account to cover an expense(s).              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param ownership_account_id [Integer] 
    # @param ownership_account_deposit_withholding_post_message [OwnershipAccountDepositWithholdingPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountTransactionMessage, Integer, Hash)>] OwnershipAccountTransactionMessage data, response status code and response headers
    def create_ownership_account_deposit_withholding_with_http_info(ownership_account_id, ownership_account_deposit_withholding_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.create_ownership_account_deposit_withholding ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.create_ownership_account_deposit_withholding"
      end
      # verify the required parameter 'ownership_account_deposit_withholding_post_message' is set
      if @api_client.config.client_side_validation && ownership_account_deposit_withholding_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_deposit_withholding_post_message' when calling AssociationOwnershipAccountsApi.create_ownership_account_deposit_withholding"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/applieddeposits'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ownership_account_deposit_withholding_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'OwnershipAccountTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.create_ownership_account_deposit_withholding",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#create_ownership_account_deposit_withholding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a ledger charge
    # Creates a ledger charge.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`  <br />
    # @param ownership_account_id [Integer] The ownership account identifier.
    # @param ownership_account_ledger_charge_post_message [OwnershipAccountLedgerChargePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountTransactionMessage]
    def create_ownership_account_ledger_charge(ownership_account_id, ownership_account_ledger_charge_post_message, opts = {})
      data, _status_code, _headers = create_ownership_account_ledger_charge_with_http_info(ownership_account_id, ownership_account_ledger_charge_post_message, opts)
      data
    end

    # Create a ledger charge
    # Creates a ledger charge.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;
    # @param ownership_account_id [Integer] The ownership account identifier.
    # @param ownership_account_ledger_charge_post_message [OwnershipAccountLedgerChargePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountTransactionMessage, Integer, Hash)>] OwnershipAccountTransactionMessage data, response status code and response headers
    def create_ownership_account_ledger_charge_with_http_info(ownership_account_id, ownership_account_ledger_charge_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.create_ownership_account_ledger_charge ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.create_ownership_account_ledger_charge"
      end
      # verify the required parameter 'ownership_account_ledger_charge_post_message' is set
      if @api_client.config.client_side_validation && ownership_account_ledger_charge_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_ledger_charge_post_message' when calling AssociationOwnershipAccountsApi.create_ownership_account_ledger_charge"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/charges'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ownership_account_ledger_charge_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'OwnershipAccountTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.create_ownership_account_ledger_charge",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#create_ownership_account_ledger_charge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a ledger payment
    # Creates a ledger payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`
    # @param ownership_account_id [Integer] 
    # @param ownership_account_ledger_payment_post_message [OwnershipAccountLedgerPaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountTransactionMessage]
    def create_ownership_account_ledger_payment(ownership_account_id, ownership_account_ledger_payment_post_message, opts = {})
      data, _status_code, _headers = create_ownership_account_ledger_payment_with_http_info(ownership_account_id, ownership_account_ledger_payment_post_message, opts)
      data
    end

    # Create a ledger payment
    # Creates a ledger payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param ownership_account_id [Integer] 
    # @param ownership_account_ledger_payment_post_message [OwnershipAccountLedgerPaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountTransactionMessage, Integer, Hash)>] OwnershipAccountTransactionMessage data, response status code and response headers
    def create_ownership_account_ledger_payment_with_http_info(ownership_account_id, ownership_account_ledger_payment_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.create_ownership_account_ledger_payment ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.create_ownership_account_ledger_payment"
      end
      # verify the required parameter 'ownership_account_ledger_payment_post_message' is set
      if @api_client.config.client_side_validation && ownership_account_ledger_payment_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_ledger_payment_post_message' when calling AssociationOwnershipAccountsApi.create_ownership_account_ledger_payment"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/payments'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ownership_account_ledger_payment_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'OwnershipAccountTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.create_ownership_account_ledger_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#create_ownership_account_ledger_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a recurring payment
    # Creates a recurring payment that will post automatically on the specified ownership account ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`
    # @param ownership_account_id [Integer] 
    # @param payment_recurring_transaction_post_message [PaymentRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountRecurringPaymentMessage]
    def create_ownership_account_recurring_payment(ownership_account_id, payment_recurring_transaction_post_message, opts = {})
      data, _status_code, _headers = create_ownership_account_recurring_payment_with_http_info(ownership_account_id, payment_recurring_transaction_post_message, opts)
      data
    end

    # Create a recurring payment
    # Creates a recurring payment that will post automatically on the specified ownership account ledger.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param ownership_account_id [Integer] 
    # @param payment_recurring_transaction_post_message [PaymentRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountRecurringPaymentMessage, Integer, Hash)>] OwnershipAccountRecurringPaymentMessage data, response status code and response headers
    def create_ownership_account_recurring_payment_with_http_info(ownership_account_id, payment_recurring_transaction_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.create_ownership_account_recurring_payment ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.create_ownership_account_recurring_payment"
      end
      # verify the required parameter 'payment_recurring_transaction_post_message' is set
      if @api_client.config.client_side_validation && payment_recurring_transaction_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'payment_recurring_transaction_post_message' when calling AssociationOwnershipAccountsApi.create_ownership_account_recurring_payment"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/recurringpayments'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(payment_recurring_transaction_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'OwnershipAccountRecurringPaymentMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.create_ownership_account_recurring_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#create_ownership_account_recurring_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a refund
    # Creates a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param ownership_account_id [Integer] 
    # @param ownership_account_refund_post_message [OwnershipAccountRefundPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountRefundMessage]
    def create_ownership_account_refund(ownership_account_id, ownership_account_refund_post_message, opts = {})
      data, _status_code, _headers = create_ownership_account_refund_with_http_info(ownership_account_id, ownership_account_refund_post_message, opts)
      data
    end

    # Create a refund
    # Creates a refund.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param ownership_account_id [Integer] 
    # @param ownership_account_refund_post_message [OwnershipAccountRefundPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountRefundMessage, Integer, Hash)>] OwnershipAccountRefundMessage data, response status code and response headers
    def create_ownership_account_refund_with_http_info(ownership_account_id, ownership_account_refund_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.create_ownership_account_refund ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.create_ownership_account_refund"
      end
      # verify the required parameter 'ownership_account_refund_post_message' is set
      if @api_client.config.client_side_validation && ownership_account_refund_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_refund_post_message' when calling AssociationOwnershipAccountsApi.create_ownership_account_refund"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/refunds'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ownership_account_refund_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'OwnershipAccountRefundMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.create_ownership_account_refund",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#create_ownership_account_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a recurring charge
    # Creates a recurring charge transaction that will post automatically on the specified ownership account ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`
    # @param ownership_account_id [Integer] 
    # @param charge_recurring_transaction_post_message [ChargeRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountChargeRecurringTransactionMessage]
    def create_ownership_accounts_charge_recurring_transaction(ownership_account_id, charge_recurring_transaction_post_message, opts = {})
      data, _status_code, _headers = create_ownership_accounts_charge_recurring_transaction_with_http_info(ownership_account_id, charge_recurring_transaction_post_message, opts)
      data
    end

    # Create a recurring charge
    # Creates a recurring charge transaction that will post automatically on the specified ownership account ledger.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param ownership_account_id [Integer] 
    # @param charge_recurring_transaction_post_message [ChargeRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountChargeRecurringTransactionMessage, Integer, Hash)>] OwnershipAccountChargeRecurringTransactionMessage data, response status code and response headers
    def create_ownership_accounts_charge_recurring_transaction_with_http_info(ownership_account_id, charge_recurring_transaction_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.create_ownership_accounts_charge_recurring_transaction ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.create_ownership_accounts_charge_recurring_transaction"
      end
      # verify the required parameter 'charge_recurring_transaction_post_message' is set
      if @api_client.config.client_side_validation && charge_recurring_transaction_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'charge_recurring_transaction_post_message' when calling AssociationOwnershipAccountsApi.create_ownership_accounts_charge_recurring_transaction"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcharges'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(charge_recurring_transaction_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'OwnershipAccountChargeRecurringTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.create_ownership_accounts_charge_recurring_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#create_ownership_accounts_charge_recurring_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_all_ownership_accounts ...'
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
        :operation => :"AssociationOwnershipAccountsApi.get_all_ownership_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_all_ownership_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_association_ownership_account_note_by_note_id ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.get_association_ownership_account_note_by_note_id"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling AssociationOwnershipAccountsApi.get_association_ownership_account_note_by_note_id"
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
        :operation => :"AssociationOwnershipAccountsApi.get_association_ownership_account_note_by_note_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_association_ownership_account_note_by_note_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_association_ownership_account_notes ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.get_association_ownership_account_notes"
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
        :operation => :"AssociationOwnershipAccountsApi.get_association_ownership_account_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_association_ownership_account_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all recurring transactions
    # Retrieves all recurring transactions for an ownership account.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`
    # @param ownership_account_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<RecurringTransactionMessage>]
    def get_association_recurring_transaction(ownership_account_id, opts = {})
      data, _status_code, _headers = get_association_recurring_transaction_with_http_info(ownership_account_id, opts)
      data
    end

    # Retrieve all recurring transactions
    # Retrieves all recurring transactions for an ownership account.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param ownership_account_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<RecurringTransactionMessage>, Integer, Hash)>] Array<RecurringTransactionMessage> data, response status code and response headers
    def get_association_recurring_transaction_with_http_info(ownership_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_association_recurring_transaction ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.get_association_recurring_transaction"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/recurringtransactions'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<RecurringTransactionMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.get_association_recurring_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_association_recurring_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_ownership_account_by_id ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.get_ownership_account_by_id"
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
        :operation => :"AssociationOwnershipAccountsApi.get_ownership_account_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_ownership_account_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve ownership account transactions
    # Retrieves all transactions for a specific ownership account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`
    # @param ownership_account_id [Integer] The ownership account identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :transactiondatefrom Filters results to any lease transaction whose start date is greater than or equal to the specified value.
    # @option opts [Date] :transactiondateto Filters results to any lease transaction whose end date is less than or equal to the specified value.
    # @option opts [Array<String>] :transactiontypes Filters results to any lease transaction whose lease transaction type matches the specified status. If no type is specified, lease transactions with any type will be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<OwnershipAccountTransactionMessage>]
    def get_ownership_account_ledger(ownership_account_id, opts = {})
      data, _status_code, _headers = get_ownership_account_ledger_with_http_info(ownership_account_id, opts)
      data
    end

    # Retrieve ownership account transactions
    # Retrieves all transactions for a specific ownership account.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param ownership_account_id [Integer] The ownership account identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :transactiondatefrom Filters results to any lease transaction whose start date is greater than or equal to the specified value.
    # @option opts [Date] :transactiondateto Filters results to any lease transaction whose end date is less than or equal to the specified value.
    # @option opts [Array<String>] :transactiontypes Filters results to any lease transaction whose lease transaction type matches the specified status. If no type is specified, lease transactions with any type will be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<OwnershipAccountTransactionMessage>, Integer, Hash)>] Array<OwnershipAccountTransactionMessage> data, response status code and response headers
    def get_ownership_account_ledger_with_http_info(ownership_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_ownership_account_ledger ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.get_ownership_account_ledger"
      end
      allowable_values = ["Bill", "Check", "Charge", "Payment", "Credit", "Refund", "ApplyDeposit", "ElectronicFundsTransfer", "Other", "Deposit", "GeneralJournalEntry", "OwnerContribution", "ReversePayment", "ReverseElectronicFundsTransfer", "VendorCredit", "RentalApplicationFeePayment", "ReverseRentalApplicationFeePayment", "ReverseOwnerContribution", "VendorRefund", "UnreversedPayment", "UnreversedElectronicFundsTransfer", "UnreversedOwnerContribution", "UnreversedRentalApplicationFeePayment"]
      if @api_client.config.client_side_validation && opts[:'transactiontypes'] && !opts[:'transactiontypes'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"transactiontypes\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/transactions'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'transactiondatefrom'] = opts[:'transactiondatefrom'] if !opts[:'transactiondatefrom'].nil?
      query_params[:'transactiondateto'] = opts[:'transactiondateto'] if !opts[:'transactiondateto'].nil?
      query_params[:'transactiontypes'] = @api_client.build_collection_param(opts[:'transactiontypes'], :multi) if !opts[:'transactiontypes'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<OwnershipAccountTransactionMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.get_ownership_account_ledger",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_ownership_account_ledger\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all outstanding balances
    # Retrieves a list of ownership account outstanding balances.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Outstanding Balances</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :associationid Association unique identifier
    # @option opts [Array<String>] :ownershipaccountstatuses List of ownership account statuses
    # @option opts [Array<Integer>] :ownershipaccountids List of ownership account ids
    # @option opts [String] :pastdueemail Status of notification of outstanding balances
    # @option opts [String] :balanceduration Duration of outstanding balances
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<OwnershipAccountOutstandingBalanceMessage>]
    def get_ownership_account_outstanding_balances(opts = {})
      data, _status_code, _headers = get_ownership_account_outstanding_balances_with_http_info(opts)
      data
    end

    # Retrieve all outstanding balances
    # Retrieves a list of ownership account outstanding balances.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Outstanding Balances&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :associationid Association unique identifier
    # @option opts [Array<String>] :ownershipaccountstatuses List of ownership account statuses
    # @option opts [Array<Integer>] :ownershipaccountids List of ownership account ids
    # @option opts [String] :pastdueemail Status of notification of outstanding balances
    # @option opts [String] :balanceduration Duration of outstanding balances
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<OwnershipAccountOutstandingBalanceMessage>, Integer, Hash)>] Array<OwnershipAccountOutstandingBalanceMessage> data, response status code and response headers
    def get_ownership_account_outstanding_balances_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_ownership_account_outstanding_balances ...'
      end
      allowable_values = ["Active", "Past", "Future"]
      if @api_client.config.client_side_validation && opts[:'ownershipaccountstatuses'] && !opts[:'ownershipaccountstatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"ownershipaccountstatuses\", must include one of #{allowable_values}"
      end
      allowable_values = ["NoEmailAddress", "Sent"]
      if @api_client.config.client_side_validation && opts[:'pastdueemail'] && !allowable_values.include?(opts[:'pastdueemail'])
        fail ArgumentError, "invalid value for \"pastdueemail\", must be one of #{allowable_values}"
      end
      allowable_values = ["TotalBalance", "Balance0to30Days", "Balance31to60Days", "Balance61to90Days", "BalanceOver90Days"]
      if @api_client.config.client_side_validation && opts[:'balanceduration'] && !allowable_values.include?(opts[:'balanceduration'])
        fail ArgumentError, "invalid value for \"balanceduration\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/outstandingbalances'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'associationid'] = opts[:'associationid'] if !opts[:'associationid'].nil?
      query_params[:'ownershipaccountstatuses'] = @api_client.build_collection_param(opts[:'ownershipaccountstatuses'], :multi) if !opts[:'ownershipaccountstatuses'].nil?
      query_params[:'ownershipaccountids'] = @api_client.build_collection_param(opts[:'ownershipaccountids'], :multi) if !opts[:'ownershipaccountids'].nil?
      query_params[:'pastdueemail'] = opts[:'pastdueemail'] if !opts[:'pastdueemail'].nil?
      query_params[:'balanceduration'] = opts[:'balanceduration'] if !opts[:'balanceduration'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<OwnershipAccountOutstandingBalanceMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.get_ownership_account_outstanding_balances",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_ownership_account_outstanding_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a recurring credit
    # Retrieves a recurring credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`
    # @param ownership_account_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountRecurringCreditMessage]
    def get_ownership_account_recurring_credit_by_id(ownership_account_id, transaction_id, opts = {})
      data, _status_code, _headers = get_ownership_account_recurring_credit_by_id_with_http_info(ownership_account_id, transaction_id, opts)
      data
    end

    # Retrieve a recurring credit
    # Retrieves a recurring credit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param ownership_account_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountRecurringCreditMessage, Integer, Hash)>] OwnershipAccountRecurringCreditMessage data, response status code and response headers
    def get_ownership_account_recurring_credit_by_id_with_http_info(ownership_account_id, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_ownership_account_recurring_credit_by_id ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.get_ownership_account_recurring_credit_by_id"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling AssociationOwnershipAccountsApi.get_ownership_account_recurring_credit_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcredits/{transactionId}'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s)).sub('{' + 'transactionId' + '}', CGI.escape(transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OwnershipAccountRecurringCreditMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.get_ownership_account_recurring_credit_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_ownership_account_recurring_credit_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a refund
    # Retrieves a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`
    # @param ownership_account_id [Integer] 
    # @param refund_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountRefundMessage]
    def get_ownership_account_refund_by_id(ownership_account_id, refund_id, opts = {})
      data, _status_code, _headers = get_ownership_account_refund_by_id_with_http_info(ownership_account_id, refund_id, opts)
      data
    end

    # Retrieve a refund
    # Retrieves a refund.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param ownership_account_id [Integer] 
    # @param refund_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountRefundMessage, Integer, Hash)>] OwnershipAccountRefundMessage data, response status code and response headers
    def get_ownership_account_refund_by_id_with_http_info(ownership_account_id, refund_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_ownership_account_refund_by_id ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.get_ownership_account_refund_by_id"
      end
      # verify the required parameter 'refund_id' is set
      if @api_client.config.client_side_validation && refund_id.nil?
        fail ArgumentError, "Missing the required parameter 'refund_id' when calling AssociationOwnershipAccountsApi.get_ownership_account_refund_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/refunds/{refundId}'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s)).sub('{' + 'refundId' + '}', CGI.escape(refund_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OwnershipAccountRefundMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.get_ownership_account_refund_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_ownership_account_refund_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an ownership account transaction
    # Retrieves a single ownership account transaction.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`
    # @param ownership_account_id [Integer] The ownership account identifier.
    # @param transaction_id [Integer] The transaction identifier.
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountTransactionMessage]
    def get_ownership_account_transaction_by_id(ownership_account_id, transaction_id, opts = {})
      data, _status_code, _headers = get_ownership_account_transaction_by_id_with_http_info(ownership_account_id, transaction_id, opts)
      data
    end

    # Retrieve an ownership account transaction
    # Retrieves a single ownership account transaction.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param ownership_account_id [Integer] The ownership account identifier.
    # @param transaction_id [Integer] The transaction identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountTransactionMessage, Integer, Hash)>] OwnershipAccountTransactionMessage data, response status code and response headers
    def get_ownership_account_transaction_by_id_with_http_info(ownership_account_id, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_ownership_account_transaction_by_id ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.get_ownership_account_transaction_by_id"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling AssociationOwnershipAccountsApi.get_ownership_account_transaction_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/transactions/{transactionId}'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s)).sub('{' + 'transactionId' + '}', CGI.escape(transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OwnershipAccountTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.get_ownership_account_transaction_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_ownership_account_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a recurring charge
    # Retrieves a recurring charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`
    # @param ownership_account_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountChargeRecurringTransactionMessage]
    def get_ownership_accounts_charge_recurring_transaction_by_id(ownership_account_id, transaction_id, opts = {})
      data, _status_code, _headers = get_ownership_accounts_charge_recurring_transaction_by_id_with_http_info(ownership_account_id, transaction_id, opts)
      data
    end

    # Retrieve a recurring charge
    # Retrieves a recurring charge.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param ownership_account_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountChargeRecurringTransactionMessage, Integer, Hash)>] OwnershipAccountChargeRecurringTransactionMessage data, response status code and response headers
    def get_ownership_accounts_charge_recurring_transaction_by_id_with_http_info(ownership_account_id, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_ownership_accounts_charge_recurring_transaction_by_id ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.get_ownership_accounts_charge_recurring_transaction_by_id"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling AssociationOwnershipAccountsApi.get_ownership_accounts_charge_recurring_transaction_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcharges/{transactionId}'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s)).sub('{' + 'transactionId' + '}', CGI.escape(transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OwnershipAccountChargeRecurringTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.get_ownership_accounts_charge_recurring_transaction_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_ownership_accounts_charge_recurring_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a recurring payment
    # Retrieves a recurring payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View`
    # @param ownership_account_id [Integer] 
    # @param payment_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountRecurringPaymentMessage]
    def get_recurring_ownership_account_payments_by_id(ownership_account_id, payment_id, opts = {})
      data, _status_code, _headers = get_recurring_ownership_account_payments_by_id_with_http_info(ownership_account_id, payment_id, opts)
      data
    end

    # Retrieve a recurring payment
    # Retrieves a recurring payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param ownership_account_id [Integer] 
    # @param payment_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountRecurringPaymentMessage, Integer, Hash)>] OwnershipAccountRecurringPaymentMessage data, response status code and response headers
    def get_recurring_ownership_account_payments_by_id_with_http_info(ownership_account_id, payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.get_recurring_ownership_account_payments_by_id ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.get_recurring_ownership_account_payments_by_id"
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling AssociationOwnershipAccountsApi.get_recurring_ownership_account_payments_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/recurringpayments/{paymentId}'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s)).sub('{' + 'paymentId' + '}', CGI.escape(payment_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OwnershipAccountRecurringPaymentMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.get_recurring_ownership_account_payments_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#get_recurring_ownership_account_payments_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.update_association_ownership_account ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.update_association_ownership_account"
      end
      # verify the required parameter 'association_ownership_account_put_message' is set
      if @api_client.config.client_side_validation && association_ownership_account_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_ownership_account_put_message' when calling AssociationOwnershipAccountsApi.update_association_ownership_account"
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
        :operation => :"AssociationOwnershipAccountsApi.update_association_ownership_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#update_association_ownership_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.update_association_ownership_account_note ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.update_association_ownership_account_note"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling AssociationOwnershipAccountsApi.update_association_ownership_account_note"
      end
      # verify the required parameter 'note_put_message' is set
      if @api_client.config.client_side_validation && note_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_put_message' when calling AssociationOwnershipAccountsApi.update_association_ownership_account_note"
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
        :operation => :"AssociationOwnershipAccountsApi.update_association_ownership_account_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#update_association_ownership_account_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a charge
    # Updates a charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit`              <br />
    # @param ownership_account_id [Integer] The ownership account identifier.
    # @param charge_id [Integer] The charge identifier.
    # @param ownership_account_ledger_charge_put_message [OwnershipAccountLedgerChargePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [OwnershipAccountTransactionMessage]
    def update_ownership_account_charge(ownership_account_id, charge_id, ownership_account_ledger_charge_put_message, opts = {})
      data, _status_code, _headers = update_ownership_account_charge_with_http_info(ownership_account_id, charge_id, ownership_account_ledger_charge_put_message, opts)
      data
    end

    # Update a charge
    # Updates a charge.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;br /&gt;
    # @param ownership_account_id [Integer] The ownership account identifier.
    # @param charge_id [Integer] The charge identifier.
    # @param ownership_account_ledger_charge_put_message [OwnershipAccountLedgerChargePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OwnershipAccountTransactionMessage, Integer, Hash)>] OwnershipAccountTransactionMessage data, response status code and response headers
    def update_ownership_account_charge_with_http_info(ownership_account_id, charge_id, ownership_account_ledger_charge_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationOwnershipAccountsApi.update_ownership_account_charge ...'
      end
      # verify the required parameter 'ownership_account_id' is set
      if @api_client.config.client_side_validation && ownership_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_id' when calling AssociationOwnershipAccountsApi.update_ownership_account_charge"
      end
      # verify the required parameter 'charge_id' is set
      if @api_client.config.client_side_validation && charge_id.nil?
        fail ArgumentError, "Missing the required parameter 'charge_id' when calling AssociationOwnershipAccountsApi.update_ownership_account_charge"
      end
      # verify the required parameter 'ownership_account_ledger_charge_put_message' is set
      if @api_client.config.client_side_validation && ownership_account_ledger_charge_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'ownership_account_ledger_charge_put_message' when calling AssociationOwnershipAccountsApi.update_ownership_account_charge"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/{ownershipAccountId}/charges/{chargeId}'.sub('{' + 'ownershipAccountId' + '}', CGI.escape(ownership_account_id.to_s)).sub('{' + 'chargeId' + '}', CGI.escape(charge_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(ownership_account_ledger_charge_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'OwnershipAccountTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationOwnershipAccountsApi.update_ownership_account_charge",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationOwnershipAccountsApi#update_ownership_account_charge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
