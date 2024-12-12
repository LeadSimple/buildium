=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class ListingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a listing contact
    # Create a listing contact. Note, at least one contact field (phone number, email or website) is required for the listing contact.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Listings</span> - `View` `Edit`
    # @param create_listing_contact_request [CreateListingContactRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ListingContactMessage]
    def create_listing_contact(create_listing_contact_request, opts = {})
      data, _status_code, _headers = create_listing_contact_with_http_info(create_listing_contact_request, opts)
      data
    end

    # Create a listing contact
    # Create a listing contact. Note, at least one contact field (phone number, email or website) is required for the listing contact.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Listings&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param create_listing_contact_request [CreateListingContactRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListingContactMessage, Integer, Hash)>] ListingContactMessage data, response status code and response headers
    def create_listing_contact_with_http_info(create_listing_contact_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.create_listing_contact ...'
      end
      # verify the required parameter 'create_listing_contact_request' is set
      if @api_client.config.client_side_validation && create_listing_contact_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_listing_contact_request' when calling ListingsApi.create_listing_contact"
      end
      # resource path
      local_var_path = '/v1/rentals/units/listingcontacts'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_listing_contact_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ListingContactMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.create_listing_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#create_listing_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a listing
    # Deleting a listing will immediately remove it from your Buildium public website. The listing will also be removed  from any syndicated sites within 24-48 hours.<br /><br />Listings manually created on craigslist using the Buildium  guided tool will not be removed. The listing must be removed using craigslist's tools provided in your craigslist account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Listings</span> - `View` `Edit` `Delete`
    # @param unit_id [Integer] The rental property unit identifier.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delist_unit(unit_id, opts = {})
      delist_unit_with_http_info(unit_id, opts)
      nil
    end

    # Delete a listing
    # Deleting a listing will immediately remove it from your Buildium public website. The listing will also be removed  from any syndicated sites within 24-48 hours.&lt;br /&gt;&lt;br /&gt;Listings manually created on craigslist using the Buildium  guided tool will not be removed. The listing must be removed using craigslist&#39;s tools provided in your craigslist account.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Listings&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60; &#x60;Delete&#x60;
    # @param unit_id [Integer] The rental property unit identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delist_unit_with_http_info(unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.delist_unit ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling ListingsApi.delist_unit"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/listing'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
        :operation => :"ListingsApi.delist_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#delist_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all listing contacts
    # Retrieves all listing contacts.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Listings</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<ListingContactMessage>]
    def get_all_listing_contacts(opts = {})
      data, _status_code, _headers = get_all_listing_contacts_with_http_info(opts)
      data
    end

    # Retrieve all listing contacts
    # Retrieves all listing contacts.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Listings&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<ListingContactMessage>, Integer, Hash)>] Array<ListingContactMessage> data, response status code and response headers
    def get_all_listing_contacts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_all_listing_contacts ...'
      end
      # resource path
      local_var_path = '/v1/rentals/units/listingcontacts'

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
      return_type = opts[:debug_return_type] || 'Array<ListingContactMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.get_all_listing_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#get_all_listing_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a listing contact
    # Retrieves a specific listing contact.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Listings</span> - `View`
    # @param listing_contact_id [Integer] The listing contact identifier.
    # @param [Hash] opts the optional parameters
    # @return [ListingContactMessage]
    def get_listing_contact_by_id(listing_contact_id, opts = {})
      data, _status_code, _headers = get_listing_contact_by_id_with_http_info(listing_contact_id, opts)
      data
    end

    # Retrieve a listing contact
    # Retrieves a specific listing contact.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Listings&lt;/span&gt; - &#x60;View&#x60;
    # @param listing_contact_id [Integer] The listing contact identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListingContactMessage, Integer, Hash)>] ListingContactMessage data, response status code and response headers
    def get_listing_contact_by_id_with_http_info(listing_contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_listing_contact_by_id ...'
      end
      # verify the required parameter 'listing_contact_id' is set
      if @api_client.config.client_side_validation && listing_contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_contact_id' when calling ListingsApi.get_listing_contact_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/units/listingcontacts/{listingContactId}'.sub('{' + 'listingContactId' + '}', CGI.escape(listing_contact_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListingContactMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.get_listing_contact_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#get_listing_contact_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a listing
    # Retrieves a specific listing.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Listings</span> - `View`  <br /><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View`
    # @param unit_id [Integer] The rental unit identifier.
    # @param [Hash] opts the optional parameters
    # @return [ListingMessage]
    def get_listing_for_unit_async(unit_id, opts = {})
      data, _status_code, _headers = get_listing_for_unit_async_with_http_info(unit_id, opts)
      data
    end

    # Retrieve a listing
    # Retrieves a specific listing.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Listings&lt;/span&gt; - &#x60;View&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param unit_id [Integer] The rental unit identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListingMessage, Integer, Hash)>] ListingMessage data, response status code and response headers
    def get_listing_for_unit_async_with_http_info(unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_listing_for_unit_async ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling ListingsApi.get_listing_for_unit_async"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/listing'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListingMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.get_listing_for_unit_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#get_listing_for_unit_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all listings
    # Retrieves all listings.  <br /><br /><span class=\"permissionBlock\">Rentals > Listings</span> - `View`  <br /><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; refers to.
    # @option opts [Integer] :entityid Filters results to only listings that are associated with the specified entity id value. The id must be of the type specified in &#x60;EntityType&#x60; property.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<ListingMessage>]
    def get_listings_async(opts = {})
      data, _status_code, _headers = get_listings_async_with_http_info(opts)
      data
    end

    # Retrieve all listings
    # Retrieves all listings.  &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Listings&lt;/span&gt; - &#x60;View&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; refers to.
    # @option opts [Integer] :entityid Filters results to only listings that are associated with the specified entity id value. The id must be of the type specified in &#x60;EntityType&#x60; property.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<ListingMessage>, Integer, Hash)>] Array<ListingMessage> data, response status code and response headers
    def get_listings_async_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_listings_async ...'
      end
      allowable_values = ["Property", "RentalOwner"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/rentals/units/listings'

      # query parameters
      query_params = opts[:query_params] || {}
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
      return_type = opts[:debug_return_type] || 'Array<ListingMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.get_listings_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#get_listings_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a listing contact
    # Update a listing contact. Note, at least one contact field (phone number, email or website) is required for the listing contact.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals > Listings</span> - `View` `Edit`
    # @param listing_contact_id [Integer] The listing contact identifier.
    # @param create_listing_contact_request [CreateListingContactRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ListingContactMessage]
    def update_listing_contact(listing_contact_id, create_listing_contact_request, opts = {})
      data, _status_code, _headers = update_listing_contact_with_http_info(listing_contact_id, create_listing_contact_request, opts)
      data
    end

    # Update a listing contact
    # Update a listing contact. Note, at least one contact field (phone number, email or website) is required for the listing contact.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Listings&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param listing_contact_id [Integer] The listing contact identifier.
    # @param create_listing_contact_request [CreateListingContactRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListingContactMessage, Integer, Hash)>] ListingContactMessage data, response status code and response headers
    def update_listing_contact_with_http_info(listing_contact_id, create_listing_contact_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.update_listing_contact ...'
      end
      # verify the required parameter 'listing_contact_id' is set
      if @api_client.config.client_side_validation && listing_contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_contact_id' when calling ListingsApi.update_listing_contact"
      end
      # verify the required parameter 'create_listing_contact_request' is set
      if @api_client.config.client_side_validation && create_listing_contact_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_listing_contact_request' when calling ListingsApi.update_listing_contact"
      end
      # resource path
      local_var_path = '/v1/rentals/units/listingcontacts/{listingContactId}'.sub('{' + 'listingContactId' + '}', CGI.escape(listing_contact_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_listing_contact_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ListingContactMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.update_listing_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#update_listing_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create/Update a listing
    # This endpoint can be used to both *create* and *update* a listing. If no listing exists for the unit one will be created, otherwise the existing listing will be updated. A unit can only ever have one active listing.    <br /><br />  Upon creation the listing will post immediately to your Buildium public website, and will post to the selected syndicated sites within 24-48 hours. Updates to the listing will appear immediately in your Buildium public website and propagated to syndicated sites within 24-48 hours.   <br /><br />  Note, the listing will automatically pull in the information, features, and media that exists for the property and unit details.   <br /><br /><span class=\"permissionBlock\">Rentals > Listings</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Rentals > Rental properties and units</span> - `View` `Edit`
    # @param unit_id [Integer] 
    # @param upsert_listings_async_request [UpsertListingsAsyncRequest] 
    # @param [Hash] opts the optional parameters
    # @return [ListingMessage]
    def upsert_listings_async(unit_id, upsert_listings_async_request, opts = {})
      data, _status_code, _headers = upsert_listings_async_with_http_info(unit_id, upsert_listings_async_request, opts)
      data
    end

    # Create/Update a listing
    # This endpoint can be used to both *create* and *update* a listing. If no listing exists for the unit one will be created, otherwise the existing listing will be updated. A unit can only ever have one active listing.    &lt;br /&gt;&lt;br /&gt;  Upon creation the listing will post immediately to your Buildium public website, and will post to the selected syndicated sites within 24-48 hours. Updates to the listing will appear immediately in your Buildium public website and propagated to syndicated sites within 24-48 hours.   &lt;br /&gt;&lt;br /&gt;  Note, the listing will automatically pull in the information, features, and media that exists for the property and unit details.   &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Listings&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param unit_id [Integer] 
    # @param upsert_listings_async_request [UpsertListingsAsyncRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListingMessage, Integer, Hash)>] ListingMessage data, response status code and response headers
    def upsert_listings_async_with_http_info(unit_id, upsert_listings_async_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.upsert_listings_async ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling ListingsApi.upsert_listings_async"
      end
      # verify the required parameter 'upsert_listings_async_request' is set
      if @api_client.config.client_side_validation && upsert_listings_async_request.nil?
        fail ArgumentError, "Missing the required parameter 'upsert_listings_async_request' when calling ListingsApi.upsert_listings_async"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/listing'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(upsert_listings_async_request)

      # return_type
      return_type = opts[:debug_return_type] || 'ListingMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.upsert_listings_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#upsert_listings_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
