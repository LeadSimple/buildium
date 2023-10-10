=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <kbd><img src=\"app_settings.gif\" class=\"example_screen\" /></kbd>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***API Keys***. The page will open automatically.    3. Click ***Create API Key***. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <kbd><img src=\"key_gen.gif\" class=\"example_screen\" /></kbd>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class AssociationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an association
    # Creates an association.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`
    # @param association_post_message [AssociationPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationMessage]
    def create_association(association_post_message, opts = {})
      data, _status_code, _headers = create_association_with_http_info(association_post_message, opts)
      data
    end

    # Create an association
    # Creates an association.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_post_message [AssociationPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationMessage, Integer, Hash)>] AssociationMessage data, response status code and response headers
    def create_association_with_http_info(association_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.create_association ...'
      end
      # verify the required parameter 'association_post_message' is set
      if @api_client.config.client_side_validation && association_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_post_message' when calling AssociationsApi.create_association"
      end
      # resource path
      local_var_path = '/v1/associations'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(association_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'AssociationMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.create_association",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#create_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a note
    # Creates a note.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`
    # @param association_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def create_association_note(association_id, note_post_message, opts = {})
      data, _status_code, _headers = create_association_note_with_http_info(association_id, note_post_message, opts)
      data
    end

    # Create a note
    # Creates a note.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def create_association_note_with_http_info(association_id, note_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.create_association_note ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.create_association_note"
      end
      # verify the required parameter 'note_post_message' is set
      if @api_client.config.client_side_validation && note_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_post_message' when calling AssociationsApi.create_association_note"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/notes'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

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
        :operation => :"AssociationsApi.create_association_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#create_association_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a board member
    # Creates a board member for a given association.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`
    # @param association_id [Integer] 
    # @param association_board_member_post_message [AssociationBoardMemberPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationBoardMemberMessage]
    def create_board_member(association_id, association_board_member_post_message, opts = {})
      data, _status_code, _headers = create_board_member_with_http_info(association_id, association_board_member_post_message, opts)
      data
    end

    # Create a board member
    # Creates a board member for a given association.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_id [Integer] 
    # @param association_board_member_post_message [AssociationBoardMemberPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationBoardMemberMessage, Integer, Hash)>] AssociationBoardMemberMessage data, response status code and response headers
    def create_board_member_with_http_info(association_id, association_board_member_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.create_board_member ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.create_board_member"
      end
      # verify the required parameter 'association_board_member_post_message' is set
      if @api_client.config.client_side_validation && association_board_member_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_board_member_post_message' when calling AssociationsApi.create_board_member"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/boardmembers'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(association_board_member_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'AssociationBoardMemberMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.create_board_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#create_board_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a board member
    # Deletes a board member. Note, this is a hard delete from the database and data can not be restored.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit` `Delete`
    # @param association_id [Integer] 
    # @param board_member_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_board_member(association_id, board_member_id, opts = {})
      delete_board_member_with_http_info(association_id, board_member_id, opts)
      nil
    end

    # Delete a board member
    # Deletes a board member. Note, this is a hard delete from the database and data can not be restored.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60; &#x60;Delete&#x60;
    # @param association_id [Integer] 
    # @param board_member_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_board_member_with_http_info(association_id, board_member_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.delete_board_member ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.delete_board_member"
      end
      # verify the required parameter 'board_member_id' is set
      if @api_client.config.client_side_validation && board_member_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_member_id' when calling AssociationsApi.delete_board_member"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/boardmembers/{boardMemberId}'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s)).sub('{' + 'boardMemberId' + '}', CGI.escape(board_member_id.to_s))

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
        :operation => :"AssociationsApi.delete_board_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#delete_board_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all board members
    # Retrieves all association board members.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :statuses Filters results to only records whose status is equal to the specified values.
    # @option opts [Array<String>] :boardpositiontypes Filters results to only records whose board position type is equal to the specified values.
    # @option opts [Time] :createddatetimeto Filters results to only records that were created before this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;.
    # @option opts [Time] :createddatetimefrom Filters results to only records that were created after this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<AssociationBoardMemberMessage>]
    def get_all_association_board_members(association_id, opts = {})
      data, _status_code, _headers = get_all_association_board_members_with_http_info(association_id, opts)
      data
    end

    # Retrieve all board members
    # Retrieves all association board members.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :statuses Filters results to only records whose status is equal to the specified values.
    # @option opts [Array<String>] :boardpositiontypes Filters results to only records whose board position type is equal to the specified values.
    # @option opts [Time] :createddatetimeto Filters results to only records that were created before this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;.
    # @option opts [Time] :createddatetimefrom Filters results to only records that were created after this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<AssociationBoardMemberMessage>, Integer, Hash)>] Array<AssociationBoardMemberMessage> data, response status code and response headers
    def get_all_association_board_members_with_http_info(association_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.get_all_association_board_members ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.get_all_association_board_members"
      end
      allowable_values = ["Current", "Former", "Future"]
      if @api_client.config.client_side_validation && opts[:'statuses'] && !opts[:'statuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"statuses\", must include one of #{allowable_values}"
      end
      allowable_values = ["President", "VicePresident", "Treasurer", "Secretary", "BoardMember"]
      if @api_client.config.client_side_validation && opts[:'boardpositiontypes'] && !opts[:'boardpositiontypes'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"boardpositiontypes\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/boardmembers'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'statuses'] = @api_client.build_collection_param(opts[:'statuses'], :multi) if !opts[:'statuses'].nil?
      query_params[:'boardpositiontypes'] = @api_client.build_collection_param(opts[:'boardpositiontypes'], :multi) if !opts[:'boardpositiontypes'].nil?
      query_params[:'createddatetimeto'] = opts[:'createddatetimeto'] if !opts[:'createddatetimeto'].nil?
      query_params[:'createddatetimefrom'] = opts[:'createddatetimefrom'] if !opts[:'createddatetimefrom'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<AssociationBoardMemberMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.get_all_association_board_members",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#get_all_association_board_members\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a board member
    # Retrieves an association board member.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`
    # @param association_id [Integer] 
    # @param board_member_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationBoardMemberMessage]
    def get_association_board_member_by_id(association_id, board_member_id, opts = {})
      data, _status_code, _headers = get_association_board_member_by_id_with_http_info(association_id, board_member_id, opts)
      data
    end

    # Retrieve a board member
    # Retrieves an association board member.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param association_id [Integer] 
    # @param board_member_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationBoardMemberMessage, Integer, Hash)>] AssociationBoardMemberMessage data, response status code and response headers
    def get_association_board_member_by_id_with_http_info(association_id, board_member_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.get_association_board_member_by_id ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.get_association_board_member_by_id"
      end
      # verify the required parameter 'board_member_id' is set
      if @api_client.config.client_side_validation && board_member_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_member_id' when calling AssociationsApi.get_association_board_member_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/boardmembers/{boardMemberId}'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s)).sub('{' + 'boardMemberId' + '}', CGI.escape(board_member_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AssociationBoardMemberMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.get_association_board_member_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#get_association_board_member_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an association
    # Retrieve a specific association.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`
    # @param association_id [Integer] The association identifier.
    # @param [Hash] opts the optional parameters
    # @return [AssociationMessage]
    def get_association_by_id(association_id, opts = {})
      data, _status_code, _headers = get_association_by_id_with_http_info(association_id, opts)
      data
    end

    # Retrieve an association
    # Retrieve a specific association.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;
    # @param association_id [Integer] The association identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationMessage, Integer, Hash)>] AssociationMessage data, response status code and response headers
    def get_association_by_id_with_http_info(association_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.get_association_by_id ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.get_association_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AssociationMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.get_association_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#get_association_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a note
    # Retrieves a note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`
    # @param association_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def get_association_note_by_note_id(association_id, note_id, opts = {})
      data, _status_code, _headers = get_association_note_by_note_id_with_http_info(association_id, note_id, opts)
      data
    end

    # Retrieve a note
    # Retrieves a note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;
    # @param association_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def get_association_note_by_note_id_with_http_info(association_id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.get_association_note_by_note_id ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.get_association_note_by_note_id"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling AssociationsApi.get_association_note_by_note_id"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/notes/{noteId}'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"AssociationsApi.get_association_note_by_note_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#get_association_note_by_note_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all notes
    # Retrieves all notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<NoteMessage>]
    def get_association_notes(association_id, opts = {})
      data, _status_code, _headers = get_association_notes_with_http_info(association_id, opts)
      data
    end

    # Retrieve all notes
    # Retrieves all notes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<NoteMessage>, Integer, Hash)>] Array<NoteMessage> data, response status code and response headers
    def get_association_notes_with_http_info(association_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.get_association_notes ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.get_association_notes"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/notes'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

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
        :operation => :"AssociationsApi.get_association_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#get_association_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all preferred vendors
    # Retrieves all preferred vendors.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View`
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<AssociationPreferredVendorMessage>]
    def get_association_preferred_vendors(association_id, opts = {})
      data, _status_code, _headers = get_association_preferred_vendors_with_http_info(association_id, opts)
      data
    end

    # Retrieve all preferred vendors
    # Retrieves all preferred vendors.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Vendors&lt;/span&gt; - &#x60;View&#x60;
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<AssociationPreferredVendorMessage>, Integer, Hash)>] Array<AssociationPreferredVendorMessage> data, response status code and response headers
    def get_association_preferred_vendors_with_http_info(association_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.get_association_preferred_vendors ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.get_association_preferred_vendors"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/vendors'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<AssociationPreferredVendorMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.get_association_preferred_vendors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#get_association_preferred_vendors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all associations
    # Retrieves a list of associations.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :ids Filters results to the specified set of ids.
    # @option opts [String] :location Filters results to any association whose city or state *contains* the specified value.
    # @option opts [String] :status Filters results by the status of the association. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; associations will be returned.
    # @option opts [Time] :lastupdatedfrom Filters results to any associations that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any associations that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<AssociationMessage>]
    def get_associations(opts = {})
      data, _status_code, _headers = get_associations_with_http_info(opts)
      data
    end

    # Retrieve all associations
    # Retrieves a list of associations.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :ids Filters results to the specified set of ids.
    # @option opts [String] :location Filters results to any association whose city or state *contains* the specified value.
    # @option opts [String] :status Filters results by the status of the association. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; associations will be returned.
    # @option opts [Time] :lastupdatedfrom Filters results to any associations that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any associations that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<AssociationMessage>, Integer, Hash)>] Array<AssociationMessage> data, response status code and response headers
    def get_associations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.get_associations ...'
      end
      allowable_values = ["Active", "InActive"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/associations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :multi) if !opts[:'ids'].nil?
      query_params[:'location'] = opts[:'location'] if !opts[:'location'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<AssociationMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.get_associations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#get_associations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all association bank lockbox data
    # Retrieves all association bank lockbox data.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :associationids Filters results to only include Associations with matching IDs
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<BankLockboxDataMessage>]
    def get_bank_lock_box_data(opts = {})
      data, _status_code, _headers = get_bank_lock_box_data_with_http_info(opts)
      data
    end

    # Retrieve all association bank lockbox data
    # Retrieves all association bank lockbox data.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :associationids Filters results to only include Associations with matching IDs
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<BankLockboxDataMessage>, Integer, Hash)>] Array<BankLockboxDataMessage> data, response status code and response headers
    def get_bank_lock_box_data_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.get_bank_lock_box_data ...'
      end
      # resource path
      local_var_path = '/v1/associations/banklockboxdata'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'associationids'] = @api_client.build_collection_param(opts[:'associationids'], :multi) if !opts[:'associationids'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<BankLockboxDataMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.get_bank_lock_box_data",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#get_bank_lock_box_data\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve ePay settings
    # Retrieves ePay settings for an association.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations</span> - `View`
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [EPaySettingsMessage]
    def get_e_pay_settings_for_association_by_id(association_id, opts = {})
      data, _status_code, _headers = get_e_pay_settings_for_association_by_id_with_http_info(association_id, opts)
      data
    end

    # Retrieve ePay settings
    # Retrieves ePay settings for an association.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations&lt;/span&gt; - &#x60;View&#x60;
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EPaySettingsMessage, Integer, Hash)>] EPaySettingsMessage data, response status code and response headers
    def get_e_pay_settings_for_association_by_id_with_http_info(association_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.get_e_pay_settings_for_association_by_id ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.get_e_pay_settings_for_association_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/epaysettings'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

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
        :operation => :"AssociationsApi.get_e_pay_settings_for_association_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#get_e_pay_settings_for_association_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an occupancy status
    # Retrieves the owner occupancy status for an association unit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` <br /><span class=\"permissionBlock\">Associations &gt; Ownership Accounts</span> - `View`
    # @param owner_id [Integer] 
    # @param unit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationOwnerUnitOccupancyStatusMessage]
    def get_unit_occupancy_statuses_by_id_for_association_owner(owner_id, unit_id, opts = {})
      data, _status_code, _headers = get_unit_occupancy_statuses_by_id_for_association_owner_with_http_info(owner_id, unit_id, opts)
      data
    end

    # Retrieve an occupancy status
    # Retrieves the owner occupancy status for an association unit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param owner_id [Integer] 
    # @param unit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationOwnerUnitOccupancyStatusMessage, Integer, Hash)>] AssociationOwnerUnitOccupancyStatusMessage data, response status code and response headers
    def get_unit_occupancy_statuses_by_id_for_association_owner_with_http_info(owner_id, unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.get_unit_occupancy_statuses_by_id_for_association_owner ...'
      end
      # verify the required parameter 'owner_id' is set
      if @api_client.config.client_side_validation && owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'owner_id' when calling AssociationsApi.get_unit_occupancy_statuses_by_id_for_association_owner"
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling AssociationsApi.get_unit_occupancy_statuses_by_id_for_association_owner"
      end
      # resource path
      local_var_path = '/v1/associations/owners/{ownerId}/units/{unitId}'.sub('{' + 'ownerId' + '}', CGI.escape(owner_id.to_s)).sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AssociationOwnerUnitOccupancyStatusMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.get_unit_occupancy_statuses_by_id_for_association_owner",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#get_unit_occupancy_statuses_by_id_for_association_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all occupancy statuses
    # Retrieves the occupancy status for all of the units owned by the association owner.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` <br /><span class=\"permissionBlock\">Associations &gt; Ownership Accounts</span> - `View`
    # @param owner_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<AssociationOwnerUnitOccupancyStatusMessage>]
    def get_unit_occupancy_statuses_for_association_owner(owner_id, opts = {})
      data, _status_code, _headers = get_unit_occupancy_statuses_for_association_owner_with_http_info(owner_id, opts)
      data
    end

    # Retrieve all occupancy statuses
    # Retrieves the occupancy status for all of the units owned by the association owner.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param owner_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<AssociationOwnerUnitOccupancyStatusMessage>, Integer, Hash)>] Array<AssociationOwnerUnitOccupancyStatusMessage> data, response status code and response headers
    def get_unit_occupancy_statuses_for_association_owner_with_http_info(owner_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.get_unit_occupancy_statuses_for_association_owner ...'
      end
      # verify the required parameter 'owner_id' is set
      if @api_client.config.client_side_validation && owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'owner_id' when calling AssociationsApi.get_unit_occupancy_statuses_for_association_owner"
      end
      # resource path
      local_var_path = '/v1/associations/owners/{ownerId}/units'.sub('{' + 'ownerId' + '}', CGI.escape(owner_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<AssociationOwnerUnitOccupancyStatusMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.get_unit_occupancy_statuses_for_association_owner",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#get_unit_occupancy_statuses_for_association_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Inactivate an association
    # Inactivates an association along with associated units and ownership accounts.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association properties and units</span> - `View` `Edit`
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def inactivate_association(association_id, opts = {})
      inactivate_association_with_http_info(association_id, opts)
      nil
    end

    # Inactivate an association
    # Inactivates an association along with associated units and ownership accounts.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def inactivate_association_with_http_info(association_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.inactivate_association ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.inactivate_association"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/inactivationrequest'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

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
        :operation => :"AssociationsApi.inactivate_association",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#inactivate_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reactivate an association
    # Reactivates an association along with associated units and ownership accounts.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association properties and units</span> - `View` `Edit`
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def reactivate_association(association_id, opts = {})
      reactivate_association_with_http_info(association_id, opts)
      nil
    end

    # Reactivate an association
    # Reactivates an association along with associated units and ownership accounts.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def reactivate_association_with_http_info(association_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.reactivate_association ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.reactivate_association"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/reactivationrequest'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

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
        :operation => :"AssociationsApi.reactivate_association",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#reactivate_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an association
    # Updates an association.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`
    # @param association_id [Integer] 
    # @param association_put_message [AssociationPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationMessage]
    def update_association(association_id, association_put_message, opts = {})
      data, _status_code, _headers = update_association_with_http_info(association_id, association_put_message, opts)
      data
    end

    # Update an association
    # Updates an association.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_id [Integer] 
    # @param association_put_message [AssociationPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationMessage, Integer, Hash)>] AssociationMessage data, response status code and response headers
    def update_association_with_http_info(association_id, association_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.update_association ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.update_association"
      end
      # verify the required parameter 'association_put_message' is set
      if @api_client.config.client_side_validation && association_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_put_message' when calling AssociationsApi.update_association"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(association_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'AssociationMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.update_association",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#update_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a note
    # Updates a note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`
    # @param association_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def update_association_note(association_id, note_id, note_put_message, opts = {})
      data, _status_code, _headers = update_association_note_with_http_info(association_id, note_id, note_put_message, opts)
      data
    end

    # Update a note
    # Updates a note.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def update_association_note_with_http_info(association_id, note_id, note_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.update_association_note ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.update_association_note"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling AssociationsApi.update_association_note"
      end
      # verify the required parameter 'note_put_message' is set
      if @api_client.config.client_side_validation && note_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_put_message' when calling AssociationsApi.update_association_note"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/notes/{noteId}'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"AssociationsApi.update_association_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#update_association_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update occupancy status
    # Updates whether a unit is occupied by the association owner.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit` <br /><span class=\"permissionBlock\">Associations &gt; Ownership Accounts</span> - `View`
    # @param owner_id [Integer] 
    # @param unit_id [Integer] 
    # @param association_owner_unit_occupancy_put_message [AssociationOwnerUnitOccupancyPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationOwnerUnitOccupancyStatusMessage]
    def update_association_owner_occupancy_status(owner_id, unit_id, association_owner_unit_occupancy_put_message, opts = {})
      data, _status_code, _headers = update_association_owner_occupancy_status_with_http_info(owner_id, unit_id, association_owner_unit_occupancy_put_message, opts)
      data
    end

    # Update occupancy status
    # Updates whether a unit is occupied by the association owner.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60; &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership Accounts&lt;/span&gt; - &#x60;View&#x60;
    # @param owner_id [Integer] 
    # @param unit_id [Integer] 
    # @param association_owner_unit_occupancy_put_message [AssociationOwnerUnitOccupancyPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationOwnerUnitOccupancyStatusMessage, Integer, Hash)>] AssociationOwnerUnitOccupancyStatusMessage data, response status code and response headers
    def update_association_owner_occupancy_status_with_http_info(owner_id, unit_id, association_owner_unit_occupancy_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.update_association_owner_occupancy_status ...'
      end
      # verify the required parameter 'owner_id' is set
      if @api_client.config.client_side_validation && owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'owner_id' when calling AssociationsApi.update_association_owner_occupancy_status"
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling AssociationsApi.update_association_owner_occupancy_status"
      end
      # verify the required parameter 'association_owner_unit_occupancy_put_message' is set
      if @api_client.config.client_side_validation && association_owner_unit_occupancy_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_owner_unit_occupancy_put_message' when calling AssociationsApi.update_association_owner_occupancy_status"
      end
      # resource path
      local_var_path = '/v1/associations/owners/{ownerId}/units/{unitId}'.sub('{' + 'ownerId' + '}', CGI.escape(owner_id.to_s)).sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(association_owner_unit_occupancy_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'AssociationOwnerUnitOccupancyStatusMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.update_association_owner_occupancy_status",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#update_association_owner_occupancy_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update preferred vendors
    # Updates preferred vendors.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`              <br /><span class=\"permissionBlock\">Maintenance &gt; Vendors</span> - `View` `Edit`
    # @param association_id [Integer] 
    # @param association_preferred_vendor_put_message [AssociationPreferredVendorPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<AssociationPreferredVendorMessage>]
    def update_association_preferred_vendors(association_id, association_preferred_vendor_put_message, opts = {})
      data, _status_code, _headers = update_association_preferred_vendors_with_http_info(association_id, association_preferred_vendor_put_message, opts)
      data
    end

    # Update preferred vendors
    # Updates preferred vendors.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Vendors&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_id [Integer] 
    # @param association_preferred_vendor_put_message [AssociationPreferredVendorPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AssociationPreferredVendorMessage>, Integer, Hash)>] Array<AssociationPreferredVendorMessage> data, response status code and response headers
    def update_association_preferred_vendors_with_http_info(association_id, association_preferred_vendor_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.update_association_preferred_vendors ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.update_association_preferred_vendors"
      end
      # verify the required parameter 'association_preferred_vendor_put_message' is set
      if @api_client.config.client_side_validation && association_preferred_vendor_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_preferred_vendor_put_message' when calling AssociationsApi.update_association_preferred_vendors"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/vendors'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(association_preferred_vendor_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AssociationPreferredVendorMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.update_association_preferred_vendors",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#update_association_preferred_vendors\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a board member
    # Updates a board member for a given association.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`
    # @param association_id [Integer] 
    # @param board_member_id [Integer] 
    # @param association_board_member_put_message [AssociationBoardMemberPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationBoardMemberMessage]
    def update_board_member(association_id, board_member_id, association_board_member_put_message, opts = {})
      data, _status_code, _headers = update_board_member_with_http_info(association_id, board_member_id, association_board_member_put_message, opts)
      data
    end

    # Update a board member
    # Updates a board member for a given association.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_id [Integer] 
    # @param board_member_id [Integer] 
    # @param association_board_member_put_message [AssociationBoardMemberPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationBoardMemberMessage, Integer, Hash)>] AssociationBoardMemberMessage data, response status code and response headers
    def update_board_member_with_http_info(association_id, board_member_id, association_board_member_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.update_board_member ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.update_board_member"
      end
      # verify the required parameter 'board_member_id' is set
      if @api_client.config.client_side_validation && board_member_id.nil?
        fail ArgumentError, "Missing the required parameter 'board_member_id' when calling AssociationsApi.update_board_member"
      end
      # verify the required parameter 'association_board_member_put_message' is set
      if @api_client.config.client_side_validation && association_board_member_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_board_member_put_message' when calling AssociationsApi.update_board_member"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/boardmembers/{boardMemberId}'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s)).sub('{' + 'boardMemberId' + '}', CGI.escape(board_member_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(association_board_member_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'AssociationBoardMemberMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationsApi.update_board_member",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#update_board_member\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update ePay settings
    # Updates ePay settings for an association.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations</span> - `View` `Edit`
    # @param association_id [Integer] 
    # @param e_pay_settings_put_message [EPaySettingsPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [EPaySettingsMessage]
    def update_e_pay_settings_for_association(association_id, e_pay_settings_put_message, opts = {})
      data, _status_code, _headers = update_e_pay_settings_for_association_with_http_info(association_id, e_pay_settings_put_message, opts)
      data
    end

    # Update ePay settings
    # Updates ePay settings for an association.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_id [Integer] 
    # @param e_pay_settings_put_message [EPaySettingsPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EPaySettingsMessage, Integer, Hash)>] EPaySettingsMessage data, response status code and response headers
    def update_e_pay_settings_for_association_with_http_info(association_id, e_pay_settings_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationsApi.update_e_pay_settings_for_association ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationsApi.update_e_pay_settings_for_association"
      end
      # verify the required parameter 'e_pay_settings_put_message' is set
      if @api_client.config.client_side_validation && e_pay_settings_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'e_pay_settings_put_message' when calling AssociationsApi.update_e_pay_settings_for_association"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/epaysettings'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

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
        :operation => :"AssociationsApi.update_e_pay_settings_for_association",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationsApi#update_e_pay_settings_for_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
