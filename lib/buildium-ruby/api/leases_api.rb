=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <kbd><img src=\"app_settings.gif\" class=\"example_screen\" /></kbd>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***API Keys***. The page will open automatically.    3. Click ***Create API Key***. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <kbd><img src=\"key_gen.gif\" class=\"example_screen\" /></kbd>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class LeasesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a lease
    # Creates a signed lease.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`  <br /><h4>Optional Permissions:</h4><br /><span class=\"permissionBlock\">Rentals &gt; Applicants</span> - `View` In order to add tenants to the lease using the ApplicantIds property, you must have this permission.
    # @param lease_post_message [LeasePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseMessage]
    def create_lease(lease_post_message, opts = {})
      data, _status_code, _headers = create_lease_with_http_info(lease_post_message, opts)
      data
    end

    # Create a lease
    # Creates a signed lease.  &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;h4&gt;Optional Permissions:&lt;/h4&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Applicants&lt;/span&gt; - &#x60;View&#x60; In order to add tenants to the lease using the ApplicantIds property, you must have this permission.
    # @param lease_post_message [LeasePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseMessage, Integer, Hash)>] LeaseMessage data, response status code and response headers
    def create_lease_with_http_info(lease_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease ...'
      end
      # verify the required parameter 'lease_post_message' is set
      if @api_client.config.client_side_validation && lease_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_post_message' when calling LeasesApi.create_lease"
      end
      # resource path
      local_var_path = '/v1/leases'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'LeaseMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a lease ledger payment with automatic allocations
    # Creates a payment on the lease ledger. Note that the recorded payment will be automatically allocated to the general ledger accounts based on the payment allocation settings. These settings can be found under the Settings &gt; Application Settings &gt; Residents page in your account. If you'd like to specify the GL accounts the payment should apply to, please use the <a href=\"#operation/CreatePayment\">Create a payment</a> endpoint.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param lease_auto_allocated_payment_post_message [LeaseAutoAllocatedPaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseTransactionMessage]
    def create_lease_auto_allocated_payment(lease_id, lease_auto_allocated_payment_post_message, opts = {})
      data, _status_code, _headers = create_lease_auto_allocated_payment_with_http_info(lease_id, lease_auto_allocated_payment_post_message, opts)
      data
    end

    # Create a lease ledger payment with automatic allocations
    # Creates a payment on the lease ledger. Note that the recorded payment will be automatically allocated to the general ledger accounts based on the payment allocation settings. These settings can be found under the Settings &amp;gt; Application Settings &amp;gt; Residents page in your account. If you&#39;d like to specify the GL accounts the payment should apply to, please use the &lt;a href&#x3D;\&quot;#operation/CreatePayment\&quot;&gt;Create a payment&lt;/a&gt; endpoint.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param lease_auto_allocated_payment_post_message [LeaseAutoAllocatedPaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseTransactionMessage, Integer, Hash)>] LeaseTransactionMessage data, response status code and response headers
    def create_lease_auto_allocated_payment_with_http_info(lease_id, lease_auto_allocated_payment_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_auto_allocated_payment ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_auto_allocated_payment"
      end
      # verify the required parameter 'lease_auto_allocated_payment_post_message' is set
      if @api_client.config.client_side_validation && lease_auto_allocated_payment_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_auto_allocated_payment_post_message' when calling LeasesApi.create_lease_auto_allocated_payment"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/autoallocatedpayments'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_auto_allocated_payment_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'LeaseTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_auto_allocated_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_auto_allocated_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a recurring charge
    # Creates a recurring charge transaction that will post automatically on the specified lease ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param charge_recurring_transaction_post_message [ChargeRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseChargeRecurringTransactionMessage]
    def create_lease_charge_recurring_transaction(lease_id, charge_recurring_transaction_post_message, opts = {})
      data, _status_code, _headers = create_lease_charge_recurring_transaction_with_http_info(lease_id, charge_recurring_transaction_post_message, opts)
      data
    end

    # Create a recurring charge
    # Creates a recurring charge transaction that will post automatically on the specified lease ledger.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param charge_recurring_transaction_post_message [ChargeRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseChargeRecurringTransactionMessage, Integer, Hash)>] LeaseChargeRecurringTransactionMessage data, response status code and response headers
    def create_lease_charge_recurring_transaction_with_http_info(lease_id, charge_recurring_transaction_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_charge_recurring_transaction ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_charge_recurring_transaction"
      end
      # verify the required parameter 'charge_recurring_transaction_post_message' is set
      if @api_client.config.client_side_validation && charge_recurring_transaction_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'charge_recurring_transaction_post_message' when calling LeasesApi.create_lease_charge_recurring_transaction"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/recurringcharges'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseChargeRecurringTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_charge_recurring_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_charge_recurring_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a credit
    # Creates a lease ledger credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`
    # @param lease_id [Integer] The lease unique identifier.
    # @param lease_ledger_credit_post_message [LeaseLedgerCreditPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseTransactionMessage]
    def create_lease_credit(lease_id, lease_ledger_credit_post_message, opts = {})
      data, _status_code, _headers = create_lease_credit_with_http_info(lease_id, lease_ledger_credit_post_message, opts)
      data
    end

    # Create a credit
    # Creates a lease ledger credit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] The lease unique identifier.
    # @param lease_ledger_credit_post_message [LeaseLedgerCreditPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseTransactionMessage, Integer, Hash)>] LeaseTransactionMessage data, response status code and response headers
    def create_lease_credit_with_http_info(lease_id, lease_ledger_credit_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_credit ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_credit"
      end
      # verify the required parameter 'lease_ledger_credit_post_message' is set
      if @api_client.config.client_side_validation && lease_ledger_credit_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_ledger_credit_post_message' when calling LeasesApi.create_lease_credit"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/credits'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_ledger_credit_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'LeaseTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_credit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_credit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a recurring credit
    # Creates a recurring credit transaction on the specified lease ledger.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param credit_recurring_transaction_post_message [CreditRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseRecurringCreditMessage]
    def create_lease_credit_recurring_transaction(lease_id, credit_recurring_transaction_post_message, opts = {})
      data, _status_code, _headers = create_lease_credit_recurring_transaction_with_http_info(lease_id, credit_recurring_transaction_post_message, opts)
      data
    end

    # Create a recurring credit
    # Creates a recurring credit transaction on the specified lease ledger.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param credit_recurring_transaction_post_message [CreditRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseRecurringCreditMessage, Integer, Hash)>] LeaseRecurringCreditMessage data, response status code and response headers
    def create_lease_credit_recurring_transaction_with_http_info(lease_id, credit_recurring_transaction_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_credit_recurring_transaction ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_credit_recurring_transaction"
      end
      # verify the required parameter 'credit_recurring_transaction_post_message' is set
      if @api_client.config.client_side_validation && credit_recurring_transaction_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'credit_recurring_transaction_post_message' when calling LeasesApi.create_lease_credit_recurring_transaction"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/recurringcredits'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseRecurringCreditMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_credit_recurring_transaction",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_credit_recurring_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a charge
    # Creates a charge transaction on a specific lease ledger.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param lease_charge_post_message [LeaseChargePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<LeaseTransactionMessage>]
    def create_lease_ledger_charge(lease_id, lease_charge_post_message, opts = {})
      data, _status_code, _headers = create_lease_ledger_charge_with_http_info(lease_id, lease_charge_post_message, opts)
      data
    end

    # Create a charge
    # Creates a charge transaction on a specific lease ledger.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param lease_charge_post_message [LeaseChargePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<LeaseTransactionMessage>, Integer, Hash)>] Array<LeaseTransactionMessage> data, response status code and response headers
    def create_lease_ledger_charge_with_http_info(lease_id, lease_charge_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_ledger_charge ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_ledger_charge"
      end
      # verify the required parameter 'lease_charge_post_message' is set
      if @api_client.config.client_side_validation && lease_charge_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_charge_post_message' when calling LeasesApi.create_lease_ledger_charge"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/charges'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_charge_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<LeaseTransactionMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_ledger_charge",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_ledger_charge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a deposit withholding
    # Withholds a resident deposit by reallocating the funds from a liability account to an income account to cover an expense(s).             <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease Ledger</span> - `View` `Edit`             <span class=\"permissionBlock\">Accounting &gt; General Ledger Accounts</span> - `View`
    # @param lease_id [Integer] 
    # @param lease_ledger_deposit_withholding_post_message [LeaseLedgerDepositWithholdingPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseTransactionMessage]
    def create_lease_ledger_deposit_withholding(lease_id, lease_ledger_deposit_withholding_post_message, opts = {})
      data, _status_code, _headers = create_lease_ledger_deposit_withholding_with_http_info(lease_id, lease_ledger_deposit_withholding_post_message, opts)
      data
    end

    # Create a deposit withholding
    # Withholds a resident deposit by reallocating the funds from a liability account to an income account to cover an expense(s).             &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease Ledger&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;             &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param lease_ledger_deposit_withholding_post_message [LeaseLedgerDepositWithholdingPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseTransactionMessage, Integer, Hash)>] LeaseTransactionMessage data, response status code and response headers
    def create_lease_ledger_deposit_withholding_with_http_info(lease_id, lease_ledger_deposit_withholding_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_ledger_deposit_withholding ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_ledger_deposit_withholding"
      end
      # verify the required parameter 'lease_ledger_deposit_withholding_post_message' is set
      if @api_client.config.client_side_validation && lease_ledger_deposit_withholding_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_ledger_deposit_withholding_post_message' when calling LeasesApi.create_lease_ledger_deposit_withholding"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/applieddeposits'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_ledger_deposit_withholding_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'LeaseTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_ledger_deposit_withholding",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_ledger_deposit_withholding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a refund
    # Creates a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param lease_ledger_refund_post_message [LeaseLedgerRefundPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseLedgerRefundMessage]
    def create_lease_ledger_refund(lease_id, lease_ledger_refund_post_message, opts = {})
      data, _status_code, _headers = create_lease_ledger_refund_with_http_info(lease_id, lease_ledger_refund_post_message, opts)
      data
    end

    # Create a refund
    # Creates a refund.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param lease_ledger_refund_post_message [LeaseLedgerRefundPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseLedgerRefundMessage, Integer, Hash)>] LeaseLedgerRefundMessage data, response status code and response headers
    def create_lease_ledger_refund_with_http_info(lease_id, lease_ledger_refund_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_ledger_refund ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_ledger_refund"
      end
      # verify the required parameter 'lease_ledger_refund_post_message' is set
      if @api_client.config.client_side_validation && lease_ledger_refund_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_ledger_refund_post_message' when calling LeasesApi.create_lease_ledger_refund"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/refunds'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_ledger_refund_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'LeaseLedgerRefundMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_ledger_refund",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_ledger_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a note
    # Creates a lease note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def create_lease_note(lease_id, note_post_message, opts = {})
      data, _status_code, _headers = create_lease_note_with_http_info(lease_id, note_post_message, opts)
      data
    end

    # Create a note
    # Creates a lease note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def create_lease_note_with_http_info(lease_id, note_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_note ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_note"
      end
      # verify the required parameter 'note_post_message' is set
      if @api_client.config.client_side_validation && note_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_post_message' when calling LeasesApi.create_lease_note"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/notes'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
        :operation => :"LeasesApi.create_lease_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a recurring payment
    # Creates a recurring payment that will post automatically on the specified lease ledger.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease Transactions</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param payment_recurring_transaction_post_message [PaymentRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseRecurringPaymentMessage]
    def create_lease_recurring_payment(lease_id, payment_recurring_transaction_post_message, opts = {})
      data, _status_code, _headers = create_lease_recurring_payment_with_http_info(lease_id, payment_recurring_transaction_post_message, opts)
      data
    end

    # Create a recurring payment
    # Creates a recurring payment that will post automatically on the specified lease ledger.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease Transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param payment_recurring_transaction_post_message [PaymentRecurringTransactionPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseRecurringPaymentMessage, Integer, Hash)>] LeaseRecurringPaymentMessage data, response status code and response headers
    def create_lease_recurring_payment_with_http_info(lease_id, payment_recurring_transaction_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_recurring_payment ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_recurring_payment"
      end
      # verify the required parameter 'payment_recurring_transaction_post_message' is set
      if @api_client.config.client_side_validation && payment_recurring_transaction_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'payment_recurring_transaction_post_message' when calling LeasesApi.create_lease_recurring_payment"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/recurringpayments'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseRecurringPaymentMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_recurring_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_recurring_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a lease renewal
    # Creates a lease renewal.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param lease_renewal_post_message [LeaseRenewalPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseRenewalMessage]
    def create_lease_renewal(lease_id, lease_renewal_post_message, opts = {})
      data, _status_code, _headers = create_lease_renewal_with_http_info(lease_id, lease_renewal_post_message, opts)
      data
    end

    # Create a lease renewal
    # Creates a lease renewal.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param lease_renewal_post_message [LeaseRenewalPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseRenewalMessage, Integer, Hash)>] LeaseRenewalMessage data, response status code and response headers
    def create_lease_renewal_with_http_info(lease_id, lease_renewal_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_renewal ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_renewal"
      end
      # verify the required parameter 'lease_renewal_post_message' is set
      if @api_client.config.client_side_validation && lease_renewal_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_renewal_post_message' when calling LeasesApi.create_lease_renewal"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/renewals'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_renewal_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'LeaseRenewalMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_renewal",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_renewal\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a payment reversal
    # Reverses a lease ledger payment. Note, this action can only be taken on a payment that has been deposited.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param lease_id [Integer] The lease unique identifier.
    # @param lease_ledger_reverse_payment_post_message [LeaseLedgerReversePaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseTransactionMessage]
    def create_lease_reverse_payment(lease_id, lease_ledger_reverse_payment_post_message, opts = {})
      data, _status_code, _headers = create_lease_reverse_payment_with_http_info(lease_id, lease_ledger_reverse_payment_post_message, opts)
      data
    end

    # Create a payment reversal
    # Reverses a lease ledger payment. Note, this action can only be taken on a payment that has been deposited.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] The lease unique identifier.
    # @param lease_ledger_reverse_payment_post_message [LeaseLedgerReversePaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseTransactionMessage, Integer, Hash)>] LeaseTransactionMessage data, response status code and response headers
    def create_lease_reverse_payment_with_http_info(lease_id, lease_ledger_reverse_payment_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_lease_reverse_payment ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_lease_reverse_payment"
      end
      # verify the required parameter 'lease_ledger_reverse_payment_post_message' is set
      if @api_client.config.client_side_validation && lease_ledger_reverse_payment_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_ledger_reverse_payment_post_message' when calling LeasesApi.create_lease_reverse_payment"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/reversepayments'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_ledger_reverse_payment_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'LeaseTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_lease_reverse_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_lease_reverse_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a move out
    # Creates move out data for a single tenant on a given lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param lease_move_out_data_post_message [LeaseMoveOutDataPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseMoveOutDataMessage]
    def create_move_out_data(lease_id, lease_move_out_data_post_message, opts = {})
      data, _status_code, _headers = create_move_out_data_with_http_info(lease_id, lease_move_out_data_post_message, opts)
      data
    end

    # Create a move out
    # Creates move out data for a single tenant on a given lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param lease_move_out_data_post_message [LeaseMoveOutDataPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseMoveOutDataMessage, Integer, Hash)>] LeaseMoveOutDataMessage data, response status code and response headers
    def create_move_out_data_with_http_info(lease_id, lease_move_out_data_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_move_out_data ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_move_out_data"
      end
      # verify the required parameter 'lease_move_out_data_post_message' is set
      if @api_client.config.client_side_validation && lease_move_out_data_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_move_out_data_post_message' when calling LeasesApi.create_move_out_data"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/moveouts'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_move_out_data_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'LeaseMoveOutDataMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_move_out_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_move_out_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a payment
    # Creates a lease ledger payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`
    # @param lease_id [Integer] The lease unique identifier.
    # @param lease_ledger_payment_post_message [LeaseLedgerPaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseTransactionMessage]
    def create_payment(lease_id, lease_ledger_payment_post_message, opts = {})
      data, _status_code, _headers = create_payment_with_http_info(lease_id, lease_ledger_payment_post_message, opts)
      data
    end

    # Create a payment
    # Creates a lease ledger payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] The lease unique identifier.
    # @param lease_ledger_payment_post_message [LeaseLedgerPaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseTransactionMessage, Integer, Hash)>] LeaseTransactionMessage data, response status code and response headers
    def create_payment_with_http_info(lease_id, lease_ledger_payment_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.create_payment ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.create_payment"
      end
      # verify the required parameter 'lease_ledger_payment_post_message' is set
      if @api_client.config.client_side_validation && lease_ledger_payment_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_ledger_payment_post_message' when calling LeasesApi.create_payment"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/payments'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_ledger_payment_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'LeaseTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.create_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#create_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve renewal history for a lease.
    # Retrieves renewal history for a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<LeaseRenewalMessage>]
    def get_all_lease_renewals(lease_id, opts = {})
      data, _status_code, _headers = get_all_lease_renewals_with_http_info(lease_id, opts)
      data
    end

    # Retrieve renewal history for a lease.
    # Retrieves renewal history for a lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<LeaseRenewalMessage>, Integer, Hash)>] Array<LeaseRenewalMessage> data, response status code and response headers
    def get_all_lease_renewals_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_all_lease_renewals ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_all_lease_renewals"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/renewals'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LeaseRenewalMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_all_lease_renewals",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_all_lease_renewals\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease renewals
    # Retrieves all lease renewals.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`
    # @param esignaturestatuses [Array<String>] Filters result to any lease renewal with an esignature status that matches the given statuses.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to only include leases whose unit belongs to the specified set of property ids.
    # @option opts [Array<Integer>] :rentalownerids Filters results to any lease whose unit belongs to a property with rental owner in the specified set of rental owner ids.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<LeaseRenewalMessage>]
    def get_all_lease_renewals_for_all_properties(esignaturestatuses, opts = {})
      data, _status_code, _headers = get_all_lease_renewals_for_all_properties_with_http_info(esignaturestatuses, opts)
      data
    end

    # Retrieve all lease renewals
    # Retrieves all lease renewals.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
    # @param esignaturestatuses [Array<String>] Filters result to any lease renewal with an esignature status that matches the given statuses.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to only include leases whose unit belongs to the specified set of property ids.
    # @option opts [Array<Integer>] :rentalownerids Filters results to any lease whose unit belongs to a property with rental owner in the specified set of rental owner ids.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<LeaseRenewalMessage>, Integer, Hash)>] Array<LeaseRenewalMessage> data, response status code and response headers
    def get_all_lease_renewals_for_all_properties_with_http_info(esignaturestatuses, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_all_lease_renewals_for_all_properties ...'
      end
      # verify the required parameter 'esignaturestatuses' is set
      if @api_client.config.client_side_validation && esignaturestatuses.nil?
        fail ArgumentError, "Missing the required parameter 'esignaturestatuses' when calling LeasesApi.get_all_lease_renewals_for_all_properties"
      end
      # resource path
      local_var_path = '/v1/leases/renewals'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'esignaturestatuses'] = @api_client.build_collection_param(esignaturestatuses, :multi)
      query_params[:'propertyids'] = @api_client.build_collection_param(opts[:'propertyids'], :multi) if !opts[:'propertyids'].nil?
      query_params[:'rentalownerids'] = @api_client.build_collection_param(opts[:'rentalownerids'], :multi) if !opts[:'rentalownerids'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<LeaseRenewalMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_all_lease_renewals_for_all_properties",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_all_lease_renewals_for_all_properties\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a lease
    # Retrieves a specific lease.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`
    # @param lease_id [Integer] The lease identifier.
    # @param [Hash] opts the optional parameters
    # @return [LeaseMessage]
    def get_lease_by_id(lease_id, opts = {})
      data, _status_code, _headers = get_lease_by_id_with_http_info(lease_id, opts)
      data
    end

    # Retrieve a lease
    # Retrieves a specific lease.  &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] The lease identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseMessage, Integer, Hash)>] LeaseMessage data, response status code and response headers
    def get_lease_by_id_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_by_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a recurring charge
    # Retrieves a recurring charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`
    # @param lease_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseChargeRecurringTransactionMessage]
    def get_lease_charge_recurring_transaction_by_id(lease_id, transaction_id, opts = {})
      data, _status_code, _headers = get_lease_charge_recurring_transaction_by_id_with_http_info(lease_id, transaction_id, opts)
      data
    end

    # Retrieve a recurring charge
    # Retrieves a recurring charge.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseChargeRecurringTransactionMessage, Integer, Hash)>] LeaseChargeRecurringTransactionMessage data, response status code and response headers
    def get_lease_charge_recurring_transaction_by_id_with_http_info(lease_id, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_charge_recurring_transaction_by_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_charge_recurring_transaction_by_id"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling LeasesApi.get_lease_charge_recurring_transaction_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/recurringcharges/{transactionId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'transactionId' + '}', CGI.escape(transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseChargeRecurringTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_charge_recurring_transaction_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_charge_recurring_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve ePay settings
    # Retrieves ePay settings for a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [EPaySettingsMessage]
    def get_lease_epay_settings_by_id(lease_id, opts = {})
      data, _status_code, _headers = get_lease_epay_settings_by_id_with_http_info(lease_id, opts)
      data
    end

    # Retrieve ePay settings
    # Retrieves ePay settings for a lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EPaySettingsMessage, Integer, Hash)>] EPaySettingsMessage data, response status code and response headers
    def get_lease_epay_settings_by_id_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_epay_settings_by_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_epay_settings_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/epaysettings'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      return_type = opts[:debug_return_type] || 'EPaySettingsMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_epay_settings_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_epay_settings_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a refund
    # Retrieves a refund.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View`
    # @param lease_id [Integer] 
    # @param refund_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseLedgerRefundMessage]
    def get_lease_ledger_refund_by_id(lease_id, refund_id, opts = {})
      data, _status_code, _headers = get_lease_ledger_refund_by_id_with_http_info(lease_id, refund_id, opts)
      data
    end

    # Retrieve a refund
    # Retrieves a refund.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param refund_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseLedgerRefundMessage, Integer, Hash)>] LeaseLedgerRefundMessage data, response status code and response headers
    def get_lease_ledger_refund_by_id_with_http_info(lease_id, refund_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_ledger_refund_by_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_ledger_refund_by_id"
      end
      # verify the required parameter 'refund_id' is set
      if @api_client.config.client_side_validation && refund_id.nil?
        fail ArgumentError, "Missing the required parameter 'refund_id' when calling LeasesApi.get_lease_ledger_refund_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/refunds/{refundId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'refundId' + '}', CGI.escape(refund_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseLedgerRefundMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_ledger_refund_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_ledger_refund_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a lease transaction
    # Retrieves a specific lease transaction.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease Transactions</span> - `View`
    # @param lease_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseTransactionMessage]
    def get_lease_ledger_transaction_by_id(lease_id, transaction_id, opts = {})
      data, _status_code, _headers = get_lease_ledger_transaction_by_id_with_http_info(lease_id, transaction_id, opts)
      data
    end

    # Retrieve a lease transaction
    # Retrieves a specific lease transaction.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease Transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseTransactionMessage, Integer, Hash)>] LeaseTransactionMessage data, response status code and response headers
    def get_lease_ledger_transaction_by_id_with_http_info(lease_id, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_ledger_transaction_by_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_ledger_transaction_by_id"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling LeasesApi.get_lease_ledger_transaction_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/transactions/{transactionId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'transactionId' + '}', CGI.escape(transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_ledger_transaction_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_ledger_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all lease transactions
    # Retrieves all the transactions for a specific lease.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :transactiondatefrom Filters results to any lease transaction whose start date is greater than or equal to the specified value.
    # @option opts [Date] :transactiondateto Filters results to any lease transaction whose end date is less than or equal to the specified value.
    # @option opts [Array<String>] :transactiontypes Filters results to any lease transaction whose lease transaction type matches the specified status. If no type is specified, lease transactions with any type will be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<LeaseTransactionMessage>]
    def get_lease_ledgers(lease_id, opts = {})
      data, _status_code, _headers = get_lease_ledgers_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all lease transactions
    # Retrieves all the transactions for a specific lease.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :transactiondatefrom Filters results to any lease transaction whose start date is greater than or equal to the specified value.
    # @option opts [Date] :transactiondateto Filters results to any lease transaction whose end date is less than or equal to the specified value.
    # @option opts [Array<String>] :transactiontypes Filters results to any lease transaction whose lease transaction type matches the specified status. If no type is specified, lease transactions with any type will be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<LeaseTransactionMessage>, Integer, Hash)>] Array<LeaseTransactionMessage> data, response status code and response headers
    def get_lease_ledgers_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_ledgers ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_ledgers"
      end
      allowable_values = ["Bill", "Check", "Charge", "Payment", "Credit", "Refund", "ApplyDeposit", "ElectronicFundsTransfer", "Other", "Deposit", "GeneralJournalEntry", "OwnerContribution", "ReversePayment", "ReverseElectronicFundsTransfer", "VendorCredit", "RentalApplicationFeePayment", "ReverseRentalApplicationFeePayment", "ReverseOwnerContribution", "VendorRefund", "UnreversedPayment", "UnreversedElectronicFundsTransfer", "UnreversedOwnerContribution", "UnreversedRentalApplicationFeePayment"]
      if @api_client.config.client_side_validation && opts[:'transactiontypes'] && !opts[:'transactiontypes'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"transactiontypes\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/transactions'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LeaseTransactionMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_ledgers",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_ledgers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a move out
    # Retrieves move out data for a single tenant on a given lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`              <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`
    # @param lease_id [Integer] 
    # @param tenant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseMoveOutDataMessage]
    def get_lease_move_out_data_by_tenant_id(lease_id, tenant_id, opts = {})
      data, _status_code, _headers = get_lease_move_out_data_by_tenant_id_with_http_info(lease_id, tenant_id, opts)
      data
    end

    # Retrieve a move out
    # Retrieves move out data for a single tenant on a given lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param tenant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseMoveOutDataMessage, Integer, Hash)>] LeaseMoveOutDataMessage data, response status code and response headers
    def get_lease_move_out_data_by_tenant_id_with_http_info(lease_id, tenant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_move_out_data_by_tenant_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_move_out_data_by_tenant_id"
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling LeasesApi.get_lease_move_out_data_by_tenant_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/moveouts/{tenantId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseMoveOutDataMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_move_out_data_by_tenant_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_move_out_data_by_tenant_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all move outs
    # Retrieves a list of move out dates for a given lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`              <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<LeaseMoveOutDataMessage>]
    def get_lease_move_out_information_by_id(lease_id, opts = {})
      data, _status_code, _headers = get_lease_move_out_information_by_id_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all move outs
    # Retrieves a list of move out dates for a given lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<LeaseMoveOutDataMessage>, Integer, Hash)>] Array<LeaseMoveOutDataMessage> data, response status code and response headers
    def get_lease_move_out_information_by_id_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_move_out_information_by_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_move_out_information_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/moveouts'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LeaseMoveOutDataMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_move_out_information_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_move_out_information_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a note
    # Retrieves a lease note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`
    # @param lease_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def get_lease_note_by_note_id(lease_id, note_id, opts = {})
      data, _status_code, _headers = get_lease_note_by_note_id_with_http_info(lease_id, note_id, opts)
      data
    end

    # Retrieve a note
    # Retrieves a lease note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def get_lease_note_by_note_id_with_http_info(lease_id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_note_by_note_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_note_by_note_id"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling LeasesApi.get_lease_note_by_note_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/notes/{noteId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"LeasesApi.get_lease_note_by_note_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_note_by_note_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all notes
    # Retrieves all lease notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<NoteMessage>]
    def get_lease_notes(lease_id, opts = {})
      data, _status_code, _headers = get_lease_notes_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all notes
    # Retrieves all lease notes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<NoteMessage>, Integer, Hash)>] Array<NoteMessage> data, response status code and response headers
    def get_lease_notes_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_notes ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_notes"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/notes'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
        :operation => :"LeasesApi.get_lease_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all outstanding balances
    # Retrieves a list of lease outstanding balances.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Outstanding Balances</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype 
    # @option opts [Integer] :entityid 
    # @option opts [Array<String>] :leasestatuses 
    # @option opts [Array<Integer>] :leaseids 
    # @option opts [String] :pastdueemail 
    # @option opts [String] :balanceduration 
    # @option opts [String] :evictionstatus 
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<LeaseOutstandingBalanceMessage>]
    def get_lease_outstanding_balances(opts = {})
      data, _status_code, _headers = get_lease_outstanding_balances_with_http_info(opts)
      data
    end

    # Retrieve all outstanding balances
    # Retrieves a list of lease outstanding balances.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Outstanding Balances&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype 
    # @option opts [Integer] :entityid 
    # @option opts [Array<String>] :leasestatuses 
    # @option opts [Array<Integer>] :leaseids 
    # @option opts [String] :pastdueemail 
    # @option opts [String] :balanceduration 
    # @option opts [String] :evictionstatus 
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<LeaseOutstandingBalanceMessage>, Integer, Hash)>] Array<LeaseOutstandingBalanceMessage> data, response status code and response headers
    def get_lease_outstanding_balances_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_outstanding_balances ...'
      end
      allowable_values = ["Rental", "RentalOwner"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      allowable_values = ["Active", "Past", "Future"]
      if @api_client.config.client_side_validation && opts[:'leasestatuses'] && !opts[:'leasestatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"leasestatuses\", must include one of #{allowable_values}"
      end
      allowable_values = ["NoEmailAddress", "Sent"]
      if @api_client.config.client_side_validation && opts[:'pastdueemail'] && !allowable_values.include?(opts[:'pastdueemail'])
        fail ArgumentError, "invalid value for \"pastdueemail\", must be one of #{allowable_values}"
      end
      allowable_values = ["TotalBalance", "Balance0to30Days", "Balance31to60Days", "Balance61to90Days", "BalanceOver90Days"]
      if @api_client.config.client_side_validation && opts[:'balanceduration'] && !allowable_values.include?(opts[:'balanceduration'])
        fail ArgumentError, "invalid value for \"balanceduration\", must be one of #{allowable_values}"
      end
      allowable_values = ["NotEvictionPending", "EvictionPending"]
      if @api_client.config.client_side_validation && opts[:'evictionstatus'] && !allowable_values.include?(opts[:'evictionstatus'])
        fail ArgumentError, "invalid value for \"evictionstatus\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/leases/outstandingbalances'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
      query_params[:'leasestatuses'] = @api_client.build_collection_param(opts[:'leasestatuses'], :multi) if !opts[:'leasestatuses'].nil?
      query_params[:'leaseids'] = @api_client.build_collection_param(opts[:'leaseids'], :multi) if !opts[:'leaseids'].nil?
      query_params[:'pastdueemail'] = opts[:'pastdueemail'] if !opts[:'pastdueemail'].nil?
      query_params[:'balanceduration'] = opts[:'balanceduration'] if !opts[:'balanceduration'].nil?
      query_params[:'evictionstatus'] = opts[:'evictionstatus'] if !opts[:'evictionstatus'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<LeaseOutstandingBalanceMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_outstanding_balances",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_outstanding_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a recurring credit
    # Retrieves a recurring credit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`
    # @param lease_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseRecurringCreditMessage]
    def get_lease_recurring_credit_by_id(lease_id, transaction_id, opts = {})
      data, _status_code, _headers = get_lease_recurring_credit_by_id_with_http_info(lease_id, transaction_id, opts)
      data
    end

    # Retrieve a recurring credit
    # Retrieves a recurring credit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param transaction_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseRecurringCreditMessage, Integer, Hash)>] LeaseRecurringCreditMessage data, response status code and response headers
    def get_lease_recurring_credit_by_id_with_http_info(lease_id, transaction_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_recurring_credit_by_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_recurring_credit_by_id"
      end
      # verify the required parameter 'transaction_id' is set
      if @api_client.config.client_side_validation && transaction_id.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_id' when calling LeasesApi.get_lease_recurring_credit_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/recurringcredits/{transactionId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'transactionId' + '}', CGI.escape(transaction_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseRecurringCreditMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_recurring_credit_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_recurring_credit_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all recurring transactions
    # Retrieves all recurring transactions.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<RecurringTransactionMessage>]
    def get_lease_recurring_transactions(lease_id, opts = {})
      data, _status_code, _headers = get_lease_recurring_transactions_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all recurring transactions
    # Retrieves all recurring transactions.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<RecurringTransactionMessage>, Integer, Hash)>] Array<RecurringTransactionMessage> data, response status code and response headers
    def get_lease_recurring_transactions_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_recurring_transactions ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_recurring_transactions"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/recurringtransactions'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
        :operation => :"LeasesApi.get_lease_recurring_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_recurring_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a renewal history item for a lease.
    # Retrieves a renewal history item for a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`
    # @param lease_id [Integer] 
    # @param renewal_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseRenewalMessage]
    def get_lease_renewal_by_id(lease_id, renewal_id, opts = {})
      data, _status_code, _headers = get_lease_renewal_by_id_with_http_info(lease_id, renewal_id, opts)
      data
    end

    # Retrieve a renewal history item for a lease.
    # Retrieves a renewal history item for a lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param renewal_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseRenewalMessage, Integer, Hash)>] LeaseRenewalMessage data, response status code and response headers
    def get_lease_renewal_by_id_with_http_info(lease_id, renewal_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_lease_renewal_by_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_lease_renewal_by_id"
      end
      # verify the required parameter 'renewal_id' is set
      if @api_client.config.client_side_validation && renewal_id.nil?
        fail ArgumentError, "Missing the required parameter 'renewal_id' when calling LeasesApi.get_lease_renewal_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/renewals/{renewalId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'renewalId' + '}', CGI.escape(renewal_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseRenewalMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_lease_renewal_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_lease_renewal_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all leases
    # Retrieves a list of leases.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to any lease whose unit belongs to the specified set of property ids.
    # @option opts [Array<Integer>] :rentalownerids Filters results to any lease whose unit belongs to a property with a rental owner in the specified set of rental owner ids.
    # @option opts [String] :unitnumber Filters results to any lease whose unit number *contains* the specified value.
    # @option opts [String] :tenantname Filters results to any lease whose current tenants&#39; names *contain* the specified value.
    # @option opts [Date] :leasedatefrom Filters results to any lease whose start date is greater than or equal to the specified value.
    # @option opts [Date] :leasedateto Filters results to any lease whose end date is less than or equal to the specified value.
    # @option opts [Array<String>] :leasetypes Filters results to any lease whose lease type matches the specified status. If no type is specified, leases with any type will be returned.
    # @option opts [Array<String>] :leasestatuses Filters results to any lease whose lease term matches the specified status. If no status is specified, leases with any lease term status will be returned.
    # @option opts [Time] :createddatetimefrom Filters results to any lease whose created date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :createddatetimeto Filters results to any lease whose created date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :lastupdatedfrom Filters results to any leases that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any leases that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<LeaseMessage>]
    def get_leases(opts = {})
      data, _status_code, _headers = get_leases_with_http_info(opts)
      data
    end

    # Retrieve all leases
    # Retrieves a list of leases.  &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to any lease whose unit belongs to the specified set of property ids.
    # @option opts [Array<Integer>] :rentalownerids Filters results to any lease whose unit belongs to a property with a rental owner in the specified set of rental owner ids.
    # @option opts [String] :unitnumber Filters results to any lease whose unit number *contains* the specified value.
    # @option opts [String] :tenantname Filters results to any lease whose current tenants&#39; names *contain* the specified value.
    # @option opts [Date] :leasedatefrom Filters results to any lease whose start date is greater than or equal to the specified value.
    # @option opts [Date] :leasedateto Filters results to any lease whose end date is less than or equal to the specified value.
    # @option opts [Array<String>] :leasetypes Filters results to any lease whose lease type matches the specified status. If no type is specified, leases with any type will be returned.
    # @option opts [Array<String>] :leasestatuses Filters results to any lease whose lease term matches the specified status. If no status is specified, leases with any lease term status will be returned.
    # @option opts [Time] :createddatetimefrom Filters results to any lease whose created date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :createddatetimeto Filters results to any lease whose created date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :lastupdatedfrom Filters results to any leases that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any leases that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<LeaseMessage>, Integer, Hash)>] Array<LeaseMessage> data, response status code and response headers
    def get_leases_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_leases ...'
      end
      allowable_values = ["None", "Fixed", "FixedWithRollover", "AtWill"]
      if @api_client.config.client_side_validation && opts[:'leasetypes'] && !opts[:'leasetypes'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"leasetypes\", must include one of #{allowable_values}"
      end
      allowable_values = ["Active", "Past", "Future"]
      if @api_client.config.client_side_validation && opts[:'leasestatuses'] && !opts[:'leasestatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"leasestatuses\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/leases'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'propertyids'] = @api_client.build_collection_param(opts[:'propertyids'], :multi) if !opts[:'propertyids'].nil?
      query_params[:'rentalownerids'] = @api_client.build_collection_param(opts[:'rentalownerids'], :multi) if !opts[:'rentalownerids'].nil?
      query_params[:'unitnumber'] = opts[:'unitnumber'] if !opts[:'unitnumber'].nil?
      query_params[:'tenantname'] = opts[:'tenantname'] if !opts[:'tenantname'].nil?
      query_params[:'leasedatefrom'] = opts[:'leasedatefrom'] if !opts[:'leasedatefrom'].nil?
      query_params[:'leasedateto'] = opts[:'leasedateto'] if !opts[:'leasedateto'].nil?
      query_params[:'leasetypes'] = @api_client.build_collection_param(opts[:'leasetypes'], :multi) if !opts[:'leasetypes'].nil?
      query_params[:'leasestatuses'] = @api_client.build_collection_param(opts[:'leasestatuses'], :multi) if !opts[:'leasestatuses'].nil?
      query_params[:'createddatetimefrom'] = opts[:'createddatetimefrom'] if !opts[:'createddatetimefrom'].nil?
      query_params[:'createddatetimeto'] = opts[:'createddatetimeto'] if !opts[:'createddatetimeto'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<LeaseMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_leases",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_leases\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a recurring payment
    # Retrieves a recurring payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease Transactions</span> - `View`
    # @param lease_id [Integer] 
    # @param payment_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseRecurringPaymentMessage]
    def get_recurring_lease_payments_by_id(lease_id, payment_id, opts = {})
      data, _status_code, _headers = get_recurring_lease_payments_by_id_with_http_info(lease_id, payment_id, opts)
      data
    end

    # Retrieve a recurring payment
    # Retrieves a recurring payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease Transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param payment_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseRecurringPaymentMessage, Integer, Hash)>] LeaseRecurringPaymentMessage data, response status code and response headers
    def get_recurring_lease_payments_by_id_with_http_info(lease_id, payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_recurring_lease_payments_by_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_recurring_lease_payments_by_id"
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling LeasesApi.get_recurring_lease_payments_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/recurringpayments/{paymentId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'paymentId' + '}', CGI.escape(payment_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseRecurringPaymentMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_recurring_lease_payments_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_recurring_lease_payments_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all rent schedules
    # The rent schedule provides details (dollar amount, day of the month, etc) of the recurring charges that are applied to the lease ledger each rent cycle. A lease may have more than one rent schedule associated with it if the rent terms change within the duration of the lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<LeaseRentMessage>]
    def get_rent(lease_id, opts = {})
      data, _status_code, _headers = get_rent_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all rent schedules
    # The rent schedule provides details (dollar amount, day of the month, etc) of the recurring charges that are applied to the lease ledger each rent cycle. A lease may have more than one rent schedule associated with it if the rent terms change within the duration of the lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<LeaseRentMessage>, Integer, Hash)>] Array<LeaseRentMessage> data, response status code and response headers
    def get_rent_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_rent ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_rent"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/rent'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<LeaseRentMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_rent",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_rent\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a rent schedule
    # Retrieves a specific rent schedule for a lease. The rent schedule provides details (dollar amount, day of the month, etc) of the recurring charges that are applied to the lease ledger each rent cycle.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View`
    # @param lease_id [Integer] 
    # @param rent_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseRentMessage]
    def get_rent_by_id(lease_id, rent_id, opts = {})
      data, _status_code, _headers = get_rent_by_id_with_http_info(lease_id, rent_id, opts)
      data
    end

    # Retrieve a rent schedule
    # Retrieves a specific rent schedule for a lease. The rent schedule provides details (dollar amount, day of the month, etc) of the recurring charges that are applied to the lease ledger each rent cycle.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param rent_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseRentMessage, Integer, Hash)>] LeaseRentMessage data, response status code and response headers
    def get_rent_by_id_with_http_info(lease_id, rent_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_rent_by_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_rent_by_id"
      end
      # verify the required parameter 'rent_id' is set
      if @api_client.config.client_side_validation && rent_id.nil?
        fail ArgumentError, "Missing the required parameter 'rent_id' when calling LeasesApi.get_rent_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/rent/{rentId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'rentId' + '}', CGI.escape(rent_id.to_s))

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
      return_type = opts[:debug_return_type] || 'LeaseRentMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_rent_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_rent_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all insurance policies
    # Retrieves all renters insurance policies for a lease.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<RentersInsurancePolicyMessage>]
    def get_renters_insurance_policies(lease_id, opts = {})
      data, _status_code, _headers = get_renters_insurance_policies_with_http_info(lease_id, opts)
      data
    end

    # Retrieve all insurance policies
    # Retrieves all renters insurance policies for a lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<RentersInsurancePolicyMessage>, Integer, Hash)>] Array<RentersInsurancePolicyMessage> data, response status code and response headers
    def get_renters_insurance_policies_with_http_info(lease_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_renters_insurance_policies ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_renters_insurance_policies"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/rentersinsurance'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<RentersInsurancePolicyMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_renters_insurance_policies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_renters_insurance_policies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an insurance policy
    # Retrieves a renters insurance policy.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View`
    # @param lease_id [Integer] 
    # @param policy_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [RentersInsurancePolicyMessage]
    def get_renters_insurance_policy_by_id(lease_id, policy_id, opts = {})
      data, _status_code, _headers = get_renters_insurance_policy_by_id_with_http_info(lease_id, policy_id, opts)
      data
    end

    # Retrieve an insurance policy
    # Retrieves a renters insurance policy.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param policy_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentersInsurancePolicyMessage, Integer, Hash)>] RentersInsurancePolicyMessage data, response status code and response headers
    def get_renters_insurance_policy_by_id_with_http_info(lease_id, policy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.get_renters_insurance_policy_by_id ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.get_renters_insurance_policy_by_id"
      end
      # verify the required parameter 'policy_id' is set
      if @api_client.config.client_side_validation && policy_id.nil?
        fail ArgumentError, "Missing the required parameter 'policy_id' when calling LeasesApi.get_renters_insurance_policy_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/rentersinsurance/{policyId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'policyId' + '}', CGI.escape(policy_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RentersInsurancePolicyMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.get_renters_insurance_policy_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#get_renters_insurance_policy_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a move out
    # Deletes move out data for a tenant on a given lease.              <br /><br /><h4>Required Permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`
    # @param lease_id [Integer] 
    # @param tenant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def undo_tenant_moveout(lease_id, tenant_id, opts = {})
      undo_tenant_moveout_with_http_info(lease_id, tenant_id, opts)
      nil
    end

    # Delete a move out
    # Deletes move out data for a tenant on a given lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required Permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param lease_id [Integer] 
    # @param tenant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def undo_tenant_moveout_with_http_info(lease_id, tenant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.undo_tenant_moveout ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.undo_tenant_moveout"
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling LeasesApi.undo_tenant_moveout"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/moveouts/{tenantId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s))

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
        :operation => :"LeasesApi.undo_tenant_moveout",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#undo_tenant_moveout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a lease
    # Update a signed lease.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param lease_put_message [LeasePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseMessage]
    def update_lease(lease_id, lease_put_message, opts = {})
      data, _status_code, _headers = update_lease_with_http_info(lease_id, lease_put_message, opts)
      data
    end

    # Update a lease
    # Update a signed lease.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param lease_put_message [LeasePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseMessage, Integer, Hash)>] LeaseMessage data, response status code and response headers
    def update_lease_with_http_info(lease_id, lease_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.update_lease ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.update_lease"
      end
      # verify the required parameter 'lease_put_message' is set
      if @api_client.config.client_side_validation && lease_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_put_message' when calling LeasesApi.update_lease"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'LeaseMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.update_lease",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#update_lease\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a charge
    # Updates a charge.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Lease transactions</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param charge_id [Integer] 
    # @param lease_charge_put_message [LeaseChargePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [LeaseTransactionMessage]
    def update_lease_charge(lease_id, charge_id, lease_charge_put_message, opts = {})
      data, _status_code, _headers = update_lease_charge_with_http_info(lease_id, charge_id, lease_charge_put_message, opts)
      data
    end

    # Update a charge
    # Updates a charge.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param charge_id [Integer] 
    # @param lease_charge_put_message [LeaseChargePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(LeaseTransactionMessage, Integer, Hash)>] LeaseTransactionMessage data, response status code and response headers
    def update_lease_charge_with_http_info(lease_id, charge_id, lease_charge_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.update_lease_charge ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.update_lease_charge"
      end
      # verify the required parameter 'charge_id' is set
      if @api_client.config.client_side_validation && charge_id.nil?
        fail ArgumentError, "Missing the required parameter 'charge_id' when calling LeasesApi.update_lease_charge"
      end
      # verify the required parameter 'lease_charge_put_message' is set
      if @api_client.config.client_side_validation && lease_charge_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'lease_charge_put_message' when calling LeasesApi.update_lease_charge"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/charges/{chargeId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'chargeId' + '}', CGI.escape(charge_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(lease_charge_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'LeaseTransactionMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.update_lease_charge",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#update_lease_charge\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ePay settings
    # Updates ePay settings for a lease              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param e_pay_settings_put_message [EPaySettingsPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [EPaySettingsMessage]
    def update_lease_epay_settings(lease_id, e_pay_settings_put_message, opts = {})
      data, _status_code, _headers = update_lease_epay_settings_with_http_info(lease_id, e_pay_settings_put_message, opts)
      data
    end

    # Update ePay settings
    # Updates ePay settings for a lease              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param e_pay_settings_put_message [EPaySettingsPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EPaySettingsMessage, Integer, Hash)>] EPaySettingsMessage data, response status code and response headers
    def update_lease_epay_settings_with_http_info(lease_id, e_pay_settings_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.update_lease_epay_settings ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.update_lease_epay_settings"
      end
      # verify the required parameter 'e_pay_settings_put_message' is set
      if @api_client.config.client_side_validation && e_pay_settings_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'e_pay_settings_put_message' when calling LeasesApi.update_lease_epay_settings"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/epaysettings'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(e_pay_settings_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'EPaySettingsMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"LeasesApi.update_lease_epay_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#update_lease_epay_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a note
    # Updates a lease note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`
    # @param lease_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def update_lease_note(lease_id, note_id, note_put_message, opts = {})
      data, _status_code, _headers = update_lease_note_with_http_info(lease_id, note_id, note_put_message, opts)
      data
    end

    # Update a note
    # Updates a lease note.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param lease_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def update_lease_note_with_http_info(lease_id, note_id, note_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: LeasesApi.update_lease_note ...'
      end
      # verify the required parameter 'lease_id' is set
      if @api_client.config.client_side_validation && lease_id.nil?
        fail ArgumentError, "Missing the required parameter 'lease_id' when calling LeasesApi.update_lease_note"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling LeasesApi.update_lease_note"
      end
      # verify the required parameter 'note_put_message' is set
      if @api_client.config.client_side_validation && note_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_put_message' when calling LeasesApi.update_lease_note"
      end
      # resource path
      local_var_path = '/v1/leases/{leaseId}/notes/{noteId}'.sub('{' + 'leaseId' + '}', CGI.escape(lease_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"LeasesApi.update_lease_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: LeasesApi#update_lease_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
