=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class RentalOwnersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an owner
    # Creates a rental owner.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View` `Edit`
    # @param create_rental_owner_request [CreateRentalOwnerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [RentalOwnerMessage]
    def create_rental_owner(create_rental_owner_request, opts = {})
      data, _status_code, _headers = create_rental_owner_with_http_info(create_rental_owner_request, opts)
      data
    end

    # Create an owner
    # Creates a rental owner.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param create_rental_owner_request [CreateRentalOwnerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalOwnerMessage, Integer, Hash)>] RentalOwnerMessage data, response status code and response headers
    def create_rental_owner_with_http_info(create_rental_owner_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.create_rental_owner ...'
      end
      # verify the required parameter 'create_rental_owner_request' is set
      if @api_client.config.client_side_validation && create_rental_owner_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_rental_owner_request' when calling RentalOwnersApi.create_rental_owner"
      end
      # resource path
      local_var_path = '/v1/rentals/owners'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_rental_owner_request)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalOwnerMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalOwnersApi.create_rental_owner",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#create_rental_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a note
    # Creates a new Rental Owner note.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View` `Edit`
    # @param rental_owner_id [Integer] 
    # @param create_lease_note_request [CreateLeaseNoteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def create_rental_owner_note(rental_owner_id, create_lease_note_request, opts = {})
      data, _status_code, _headers = create_rental_owner_note_with_http_info(rental_owner_id, create_lease_note_request, opts)
      data
    end

    # Create a note
    # Creates a new Rental Owner note.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param rental_owner_id [Integer] 
    # @param create_lease_note_request [CreateLeaseNoteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def create_rental_owner_note_with_http_info(rental_owner_id, create_lease_note_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.create_rental_owner_note ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.create_rental_owner_note"
      end
      # verify the required parameter 'create_lease_note_request' is set
      if @api_client.config.client_side_validation && create_lease_note_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_lease_note_request' when calling RentalOwnersApi.create_rental_owner_note"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}/notes'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s))

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
        :operation => :"RentalOwnersApi.create_rental_owner_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#create_rental_owner_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an owner
    # Retrieves a specific rental owner.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View`
    # @param rental_owner_id [Integer] The rental owner identifier.
    # @param [Hash] opts the optional parameters
    # @return [RentalOwnerMessage]
    def get_rental_owner_by_id(rental_owner_id, opts = {})
      data, _status_code, _headers = get_rental_owner_by_id_with_http_info(rental_owner_id, opts)
      data
    end

    # Retrieve an owner
    # Retrieves a specific rental owner.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60;
    # @param rental_owner_id [Integer] The rental owner identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalOwnerMessage, Integer, Hash)>] RentalOwnerMessage data, response status code and response headers
    def get_rental_owner_by_id_with_http_info(rental_owner_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.get_rental_owner_by_id ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.get_rental_owner_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RentalOwnerMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalOwnersApi.get_rental_owner_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#get_rental_owner_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a note
    # Retrieves a rental owner note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View`
    # @param rental_owner_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def get_rental_owner_note_by_id(rental_owner_id, note_id, opts = {})
      data, _status_code, _headers = get_rental_owner_note_by_id_with_http_info(rental_owner_id, note_id, opts)
      data
    end

    # Retrieve a note
    # Retrieves a rental owner note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60;
    # @param rental_owner_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def get_rental_owner_note_by_id_with_http_info(rental_owner_id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.get_rental_owner_note_by_id ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.get_rental_owner_note_by_id"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling RentalOwnersApi.get_rental_owner_note_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}/notes/{noteId}'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"RentalOwnersApi.get_rental_owner_note_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#get_rental_owner_note_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves all notes
    # Retrieves all rental owner notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View`
    # @param rental_owner_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<NoteMessage>]
    def get_rental_owner_notes(rental_owner_id, opts = {})
      data, _status_code, _headers = get_rental_owner_notes_with_http_info(rental_owner_id, opts)
      data
    end

    # Retrieves all notes
    # Retrieves all rental owner notes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60;
    # @param rental_owner_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<NoteMessage>, Integer, Hash)>] Array<NoteMessage> data, response status code and response headers
    def get_rental_owner_notes_with_http_info(rental_owner_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.get_rental_owner_notes ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.get_rental_owner_notes"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}/notes'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s))

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
        :operation => :"RentalOwnersApi.get_rental_owner_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#get_rental_owner_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all owners
    # Retrieves a list of rental owners.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to any lease whose unit belongs to the specified set of property ids.
    # @option opts [String] :status Filters results by the status of the user. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; users will be returned.
    # @option opts [Integer] :agreementdaysremaining Filters results by the days remaining on their lease agreement.
    # @option opts [String] :ownername Filters results to any owner whose name *contains* the specified value.
    # @option opts [String] :phone Filters results to any owner who has a phone number that *contains* the specified value.
    # @option opts [Time] :lastupdatedfrom Filters results to any rental owners that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any rental owners that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<RentalOwnerMessage>]
    def get_rental_owners(opts = {})
      data, _status_code, _headers = get_rental_owners_with_http_info(opts)
      data
    end

    # Retrieve all owners
    # Retrieves a list of rental owners.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to any lease whose unit belongs to the specified set of property ids.
    # @option opts [String] :status Filters results by the status of the user. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; users will be returned.
    # @option opts [Integer] :agreementdaysremaining Filters results by the days remaining on their lease agreement.
    # @option opts [String] :ownername Filters results to any owner whose name *contains* the specified value.
    # @option opts [String] :phone Filters results to any owner who has a phone number that *contains* the specified value.
    # @option opts [Time] :lastupdatedfrom Filters results to any rental owners that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any rental owners that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<RentalOwnerMessage>, Integer, Hash)>] Array<RentalOwnerMessage> data, response status code and response headers
    def get_rental_owners_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.get_rental_owners ...'
      end
      allowable_values = ["Inactive", "Active"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/rentals/owners'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'propertyids'] = @api_client.build_collection_param(opts[:'propertyids'], :multi) if !opts[:'propertyids'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'agreementdaysremaining'] = opts[:'agreementdaysremaining'] if !opts[:'agreementdaysremaining'].nil?
      query_params[:'ownername'] = opts[:'ownername'] if !opts[:'ownername'].nil?
      query_params[:'phone'] = opts[:'phone'] if !opts[:'phone'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<RentalOwnerMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalOwnersApi.get_rental_owners",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#get_rental_owners\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an owner
    # Updates a rental owner.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View` `Edit`
    # @param rental_owner_id [Integer] The identifier of the rental owner to update.
    # @param update_rental_owner_request [UpdateRentalOwnerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [RentalOwnerMessage]
    def update_rental_owner(rental_owner_id, update_rental_owner_request, opts = {})
      data, _status_code, _headers = update_rental_owner_with_http_info(rental_owner_id, update_rental_owner_request, opts)
      data
    end

    # Update an owner
    # Updates a rental owner.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param rental_owner_id [Integer] The identifier of the rental owner to update.
    # @param update_rental_owner_request [UpdateRentalOwnerRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalOwnerMessage, Integer, Hash)>] RentalOwnerMessage data, response status code and response headers
    def update_rental_owner_with_http_info(rental_owner_id, update_rental_owner_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.update_rental_owner ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.update_rental_owner"
      end
      # verify the required parameter 'update_rental_owner_request' is set
      if @api_client.config.client_side_validation && update_rental_owner_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_rental_owner_request' when calling RentalOwnersApi.update_rental_owner"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_rental_owner_request)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalOwnerMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalOwnersApi.update_rental_owner",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#update_rental_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a note
    # Updates a Rental Owner note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Property Rental Owners</span> - `View` `Edit`
    # @param rental_owner_id [Integer] 
    # @param note_id [Integer] 
    # @param update_lease_note_request [UpdateLeaseNoteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def update_rental_owner_note(rental_owner_id, note_id, update_lease_note_request, opts = {})
      data, _status_code, _headers = update_rental_owner_note_with_http_info(rental_owner_id, note_id, update_lease_note_request, opts)
      data
    end

    # Update a note
    # Updates a Rental Owner note.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param rental_owner_id [Integer] 
    # @param note_id [Integer] 
    # @param update_lease_note_request [UpdateLeaseNoteRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def update_rental_owner_note_with_http_info(rental_owner_id, note_id, update_lease_note_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.update_rental_owner_note ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.update_rental_owner_note"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling RentalOwnersApi.update_rental_owner_note"
      end
      # verify the required parameter 'update_lease_note_request' is set
      if @api_client.config.client_side_validation && update_lease_note_request.nil?
        fail ArgumentError, "Missing the required parameter 'update_lease_note_request' when calling RentalOwnersApi.update_rental_owner_note"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}/notes/{noteId}'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"RentalOwnersApi.update_rental_owner_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#update_rental_owner_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
