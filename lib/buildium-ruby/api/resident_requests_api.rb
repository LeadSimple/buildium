=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class ResidentRequestsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a resident request
    # Creates a resident request.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View` `Edit`
    # @param create_resource_request [CreateResourceRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ResidentRequestTaskMessage]
    def create_resource(create_resource_request, opts = {})
      data, _status_code, _headers = create_resource_with_http_info(create_resource_request, opts)
      data
    end

    # Create a resident request
    # Creates a resident request.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &gt; Tasks&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param create_resource_request [CreateResourceRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResidentRequestTaskMessage, Integer, Hash)>] ResidentRequestTaskMessage data, response status code and response headers
    def create_resource_with_http_info(create_resource_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResidentRequestsApi.create_resource ...'
      end
      # verify the required parameter 'create_resource_request' is set
      if @api_client.config.client_side_validation && create_resource_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_resource_request' when calling ResidentRequestsApi.create_resource"
      end
      # resource path
      local_var_path = '/v1/tasks/residentrequests'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_resource_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ResidentRequestTaskMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ResidentRequestsApi.create_resource",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResidentRequestsApi#create_resource\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a resident request
    # Retrieves a specific resident request.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View`
    # @param resident_request_task_id [Integer] The resident request identifier.
    # @param [Hash] opts the optional parameters
    # @return [ResidentRequestTaskMessage]
    def get_resident_request_task(resident_request_task_id, opts = {})
      data, _status_code, _headers = get_resident_request_task_with_http_info(resident_request_task_id, opts)
      data
    end

    # Retrieve a resident request
    # Retrieves a specific resident request.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &gt; Tasks&lt;/span&gt; - &#x60;View&#x60;
    # @param resident_request_task_id [Integer] The resident request identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResidentRequestTaskMessage, Integer, Hash)>] ResidentRequestTaskMessage data, response status code and response headers
    def get_resident_request_task_with_http_info(resident_request_task_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResidentRequestsApi.get_resident_request_task ...'
      end
      # verify the required parameter 'resident_request_task_id' is set
      if @api_client.config.client_side_validation && resident_request_task_id.nil?
        fail ArgumentError, "Missing the required parameter 'resident_request_task_id' when calling ResidentRequestsApi.get_resident_request_task"
      end
      # resource path
      local_var_path = '/v1/tasks/residentrequests/{residentRequestTaskId}'.sub('{' + 'residentRequestTaskId' + '}', CGI.escape(resident_request_task_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ResidentRequestTaskMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ResidentRequestsApi.get_resident_request_task",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResidentRequestsApi#get_resident_request_task\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all resident requests
    # Retrieves a list of resident requests.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is populated.
    # @option opts [Integer] :entityid Filters results to any task associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field.
    # @option opts [Array<String>] :statuses Filters results by the status of the task. If no status is specified, tasks with any status will be returned.
    # @option opts [Integer] :unitid Filters results to any task associated with the unit identifier.
    # @option opts [Integer] :unitagreementid Filters results to any task associated with the unit agreement identifier specified.
    # @option opts [Date] :lastupdatedfrom Filters results to any tasks were updated on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :lastupdatedto Filters results to any tasks were updated on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :duedatefrom Filters results to any tasks with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :duedateto Filters results to any tasks with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Integer] :taskcategoryid Filters results to any tasks with the specified category identifier.
    # @option opts [Array<String>] :priorities Filters results to any tasks whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned.
    # @option opts [Integer] :assignedtoid Filters results to any tasks that have been assigned to the specified staff user identifier.
    # @option opts [String] :tasktitle Filters results to any task whose title *contains* the specified value.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<ResidentRequestTaskMessage>]
    def get_resident_request_tasks(opts = {})
      data, _status_code, _headers = get_resident_request_tasks_with_http_info(opts)
      data
    end

    # Retrieve all resident requests
    # Retrieves a list of resident requests.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &gt; Tasks&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is populated.
    # @option opts [Integer] :entityid Filters results to any task associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field.
    # @option opts [Array<String>] :statuses Filters results by the status of the task. If no status is specified, tasks with any status will be returned.
    # @option opts [Integer] :unitid Filters results to any task associated with the unit identifier.
    # @option opts [Integer] :unitagreementid Filters results to any task associated with the unit agreement identifier specified.
    # @option opts [Date] :lastupdatedfrom Filters results to any tasks were updated on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :lastupdatedto Filters results to any tasks were updated on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :duedatefrom Filters results to any tasks with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :duedateto Filters results to any tasks with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Integer] :taskcategoryid Filters results to any tasks with the specified category identifier.
    # @option opts [Array<String>] :priorities Filters results to any tasks whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned.
    # @option opts [Integer] :assignedtoid Filters results to any tasks that have been assigned to the specified staff user identifier.
    # @option opts [String] :tasktitle Filters results to any task whose title *contains* the specified value.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<ResidentRequestTaskMessage>, Integer, Hash)>] Array<ResidentRequestTaskMessage> data, response status code and response headers
    def get_resident_request_tasks_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResidentRequestsApi.get_resident_request_tasks ...'
      end
      allowable_values = ["Rental", "RentalOwner", "Association"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      allowable_values = ["New", "InProgress", "Completed", "Deferred", "Closed"]
      if @api_client.config.client_side_validation && opts[:'statuses'] && !opts[:'statuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"statuses\", must include one of #{allowable_values}"
      end
      allowable_values = ["Low", "Normal", "High"]
      if @api_client.config.client_side_validation && opts[:'priorities'] && !opts[:'priorities'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"priorities\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/tasks/residentrequests'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
      query_params[:'statuses'] = @api_client.build_collection_param(opts[:'statuses'], :multi) if !opts[:'statuses'].nil?
      query_params[:'unitid'] = opts[:'unitid'] if !opts[:'unitid'].nil?
      query_params[:'unitagreementid'] = opts[:'unitagreementid'] if !opts[:'unitagreementid'].nil?
      query_params[:'lastupdatedfrom'] = opts[:'lastupdatedfrom'] if !opts[:'lastupdatedfrom'].nil?
      query_params[:'lastupdatedto'] = opts[:'lastupdatedto'] if !opts[:'lastupdatedto'].nil?
      query_params[:'duedatefrom'] = opts[:'duedatefrom'] if !opts[:'duedatefrom'].nil?
      query_params[:'duedateto'] = opts[:'duedateto'] if !opts[:'duedateto'].nil?
      query_params[:'taskcategoryid'] = opts[:'taskcategoryid'] if !opts[:'taskcategoryid'].nil?
      query_params[:'priorities'] = @api_client.build_collection_param(opts[:'priorities'], :multi) if !opts[:'priorities'].nil?
      query_params[:'assignedtoid'] = opts[:'assignedtoid'] if !opts[:'assignedtoid'].nil?
      query_params[:'tasktitle'] = opts[:'tasktitle'] if !opts[:'tasktitle'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<ResidentRequestTaskMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ResidentRequestsApi.get_resident_request_tasks",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResidentRequestsApi#get_resident_request_tasks\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a resident request
    # Update a resident request.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Tasks > Tasks</span> - `View` `Edit`
    # @param resident_request_task_id [Integer] The resident request identifier.
    # @param update_resource_request [UpdateResourceRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ResidentRequestTaskMessage]
    def update_resource(resident_request_task_id, update_resource_request, opts = {})
      data, _status_code, _headers = update_resource_with_http_info(resident_request_task_id, update_resource_request, opts)
      data
    end

    # Update a resident request
    # Update a resident request.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &gt; Tasks&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param resident_request_task_id [Integer] The resident request identifier.
    # @param update_resource_request [UpdateResourceRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResidentRequestTaskMessage, Integer, Hash)>] ResidentRequestTaskMessage data, response status code and response headers
    def update_resource_with_http_info(resident_request_task_id, update_resource_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResidentRequestsApi.update_resource ...'
      end
      # verify the required parameter 'resident_request_task_id' is set
      if @api_client.config.client_side_validation && resident_request_task_id.nil?
        fail ArgumentError, "Missing the required parameter 'resident_request_task_id' when calling ResidentRequestsApi.update_resource"
      end
      # verify the required parameter 'update_resource_request' is set
      if @api_client.config.client_side_validation && update_resource_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_resource_request' when calling ResidentRequestsApi.update_resource"
      end
      # resource path
      local_var_path = '/v1/tasks/residentrequests/{residentRequestTaskId}'.sub('{' + 'residentRequestTaskId' + '}', CGI.escape(resident_request_task_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_resource_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ResidentRequestTaskMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ResidentRequestsApi.update_resource",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResidentRequestsApi#update_resource\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
