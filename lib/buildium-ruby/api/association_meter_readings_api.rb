=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class AssociationMeterReadingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete meter reading details for a given date
    # Delete meter reading details for an association for a given date.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Ownership account transactions</span> - `View` `Edit` `Delete`
    # @param association_id [Integer] 
    # @param readingdate [Date] Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD.
    # @param metertype [String] Filters results to the specified meter type.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_meter_reading_details_for_association(association_id, readingdate, metertype, opts = {})
      delete_meter_reading_details_for_association_with_http_info(association_id, readingdate, metertype, opts)
      nil
    end

    # Delete meter reading details for a given date
    # Delete meter reading details for an association for a given date.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60; &#x60;Delete&#x60;
    # @param association_id [Integer] 
    # @param readingdate [Date] Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD.
    # @param metertype [String] Filters results to the specified meter type.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_meter_reading_details_for_association_with_http_info(association_id, readingdate, metertype, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationMeterReadingsApi.delete_meter_reading_details_for_association ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationMeterReadingsApi.delete_meter_reading_details_for_association"
      end
      # verify the required parameter 'readingdate' is set
      if @api_client.config.client_side_validation && readingdate.nil?
        fail ArgumentError, "Missing the required parameter 'readingdate' when calling AssociationMeterReadingsApi.delete_meter_reading_details_for_association"
      end
      # verify the required parameter 'metertype' is set
      if @api_client.config.client_side_validation && metertype.nil?
        fail ArgumentError, "Missing the required parameter 'metertype' when calling AssociationMeterReadingsApi.delete_meter_reading_details_for_association"
      end
      # verify enum value
      allowable_values = ["Electric", "Gas", "Oil", "Water", "Sewer"]
      if @api_client.config.client_side_validation && !allowable_values.include?(metertype)
        fail ArgumentError, "invalid value for \"metertype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/meterreadings/summary'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'readingdate'] = readingdate
      query_params[:'metertype'] = metertype

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
        :operation => :"AssociationMeterReadingsApi.delete_meter_reading_details_for_association",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationMeterReadingsApi#delete_meter_reading_details_for_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all meter reading details
    # Retrieves all meter reading details for an association.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`
    # @param association_id [Integer] 
    # @param readingdate [Date] Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD.
    # @param metertype [String] Filters results to the specified meter type.
    # @param [Hash] opts the optional parameters
    # @return [MeterReadingDetailsMessage]
    def get_association_meter_reading_details_async(association_id, readingdate, metertype, opts = {})
      data, _status_code, _headers = get_association_meter_reading_details_async_with_http_info(association_id, readingdate, metertype, opts)
      data
    end

    # Retrieve all meter reading details
    # Retrieves all meter reading details for an association.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;
    # @param association_id [Integer] 
    # @param readingdate [Date] Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD.
    # @param metertype [String] Filters results to the specified meter type.
    # @param [Hash] opts the optional parameters
    # @return [Array<(MeterReadingDetailsMessage, Integer, Hash)>] MeterReadingDetailsMessage data, response status code and response headers
    def get_association_meter_reading_details_async_with_http_info(association_id, readingdate, metertype, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationMeterReadingsApi.get_association_meter_reading_details_async ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationMeterReadingsApi.get_association_meter_reading_details_async"
      end
      # verify the required parameter 'readingdate' is set
      if @api_client.config.client_side_validation && readingdate.nil?
        fail ArgumentError, "Missing the required parameter 'readingdate' when calling AssociationMeterReadingsApi.get_association_meter_reading_details_async"
      end
      # verify the required parameter 'metertype' is set
      if @api_client.config.client_side_validation && metertype.nil?
        fail ArgumentError, "Missing the required parameter 'metertype' when calling AssociationMeterReadingsApi.get_association_meter_reading_details_async"
      end
      # verify enum value
      allowable_values = ["Electric", "Gas", "Oil", "Water", "Sewer"]
      if @api_client.config.client_side_validation && !allowable_values.include?(metertype)
        fail ArgumentError, "invalid value for \"metertype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/meterreadings/summary'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'readingdate'] = readingdate
      query_params[:'metertype'] = metertype

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'MeterReadingDetailsMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationMeterReadingsApi.get_association_meter_reading_details_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationMeterReadingsApi#get_association_meter_reading_details_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all meter readings
    # Retrieves all meter readings for an association.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View`
    # @param association_id [Integer] 
    # @param readingdatefrom [Date] Filters results to any meter readings whose entry date that is greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD. The maximum date range is 365 days.
    # @param readingdateto [Date] Filters results to any meter readings whose entry date is less than or equal to the specified value. The value must be formatted as YYYY-MM-DD. The maximum date range is 365 days.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metertypes Filters results to the specified meter types.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<MeterReadingMessage>]
    def get_meter_readings_for_association(association_id, readingdatefrom, readingdateto, opts = {})
      data, _status_code, _headers = get_meter_readings_for_association_with_http_info(association_id, readingdatefrom, readingdateto, opts)
      data
    end

    # Retrieve all meter readings
    # Retrieves all meter readings for an association.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;
    # @param association_id [Integer] 
    # @param readingdatefrom [Date] Filters results to any meter readings whose entry date that is greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD. The maximum date range is 365 days.
    # @param readingdateto [Date] Filters results to any meter readings whose entry date is less than or equal to the specified value. The value must be formatted as YYYY-MM-DD. The maximum date range is 365 days.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metertypes Filters results to the specified meter types.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<MeterReadingMessage>, Integer, Hash)>] Array<MeterReadingMessage> data, response status code and response headers
    def get_meter_readings_for_association_with_http_info(association_id, readingdatefrom, readingdateto, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationMeterReadingsApi.get_meter_readings_for_association ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationMeterReadingsApi.get_meter_readings_for_association"
      end
      # verify the required parameter 'readingdatefrom' is set
      if @api_client.config.client_side_validation && readingdatefrom.nil?
        fail ArgumentError, "Missing the required parameter 'readingdatefrom' when calling AssociationMeterReadingsApi.get_meter_readings_for_association"
      end
      # verify the required parameter 'readingdateto' is set
      if @api_client.config.client_side_validation && readingdateto.nil?
        fail ArgumentError, "Missing the required parameter 'readingdateto' when calling AssociationMeterReadingsApi.get_meter_readings_for_association"
      end
      allowable_values = ["Electric", "Gas", "Oil", "Water", "Sewer"]
      if @api_client.config.client_side_validation && opts[:'metertypes'] && !opts[:'metertypes'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"metertypes\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/meterreadings'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'readingdatefrom'] = readingdatefrom
      query_params[:'readingdateto'] = readingdateto
      query_params[:'metertypes'] = @api_client.build_collection_param(opts[:'metertypes'], :multi) if !opts[:'metertypes'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<MeterReadingMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationMeterReadingsApi.get_meter_readings_for_association",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationMeterReadingsApi#get_meter_readings_for_association\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create/Update meter reading details
    # This endpoint can be used to both create and update a meter reading detail for an association.              <ul><li>There can only be one meter reading detail for a given combination of MeterType and ReadingDate for an association</li><li>If you are updating an existing meter reading detail, use the query parameters to specify the existing meter reading detail to update.</li><li>If you are creating a new meter reading detail, do not pass any query parameters.</li><li>When adding a new item to the Details array, leave out the `Id` field.</li><li>When updating an existing item in the Details array, the `Id` field of the existing item must be included.</li></ul><br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Associations and units</span> - `View` `Edit`
    # @param association_id [Integer] 
    # @param meter_reading_details_put_message [MeterReadingDetailsPutMessage] 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :readingdate Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD.
    # @option opts [String] :metertype Filters results to the specified meter type.
    # @return [MeterReadingDetailsMessage]
    def upsert_association_meter_reading_details_async(association_id, meter_reading_details_put_message, opts = {})
      data, _status_code, _headers = upsert_association_meter_reading_details_async_with_http_info(association_id, meter_reading_details_put_message, opts)
      data
    end

    # Create/Update meter reading details
    # This endpoint can be used to both create and update a meter reading detail for an association.              &lt;ul&gt;&lt;li&gt;There can only be one meter reading detail for a given combination of MeterType and ReadingDate for an association&lt;/li&gt;&lt;li&gt;If you are updating an existing meter reading detail, use the query parameters to specify the existing meter reading detail to update.&lt;/li&gt;&lt;li&gt;If you are creating a new meter reading detail, do not pass any query parameters.&lt;/li&gt;&lt;li&gt;When adding a new item to the Details array, leave out the &#x60;Id&#x60; field.&lt;/li&gt;&lt;li&gt;When updating an existing item in the Details array, the &#x60;Id&#x60; field of the existing item must be included.&lt;/li&gt;&lt;/ul&gt;&lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Associations and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_id [Integer] 
    # @param meter_reading_details_put_message [MeterReadingDetailsPutMessage] 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :readingdate Filters results to any meter readings whose entry date is equal to the specified value. The value must be formatted as YYYY-MM-DD.
    # @option opts [String] :metertype Filters results to the specified meter type.
    # @return [Array<(MeterReadingDetailsMessage, Integer, Hash)>] MeterReadingDetailsMessage data, response status code and response headers
    def upsert_association_meter_reading_details_async_with_http_info(association_id, meter_reading_details_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationMeterReadingsApi.upsert_association_meter_reading_details_async ...'
      end
      # verify the required parameter 'association_id' is set
      if @api_client.config.client_side_validation && association_id.nil?
        fail ArgumentError, "Missing the required parameter 'association_id' when calling AssociationMeterReadingsApi.upsert_association_meter_reading_details_async"
      end
      # verify the required parameter 'meter_reading_details_put_message' is set
      if @api_client.config.client_side_validation && meter_reading_details_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'meter_reading_details_put_message' when calling AssociationMeterReadingsApi.upsert_association_meter_reading_details_async"
      end
      allowable_values = ["Electric", "Gas", "Oil", "Water", "Sewer"]
      if @api_client.config.client_side_validation && opts[:'metertype'] && !allowable_values.include?(opts[:'metertype'])
        fail ArgumentError, "invalid value for \"metertype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/associations/{associationId}/meterreadings/summary'.sub('{' + 'associationId' + '}', CGI.escape(association_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'readingdate'] = opts[:'readingdate'] if !opts[:'readingdate'].nil?
      query_params[:'metertype'] = opts[:'metertype'] if !opts[:'metertype'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(meter_reading_details_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'MeterReadingDetailsMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationMeterReadingsApi.upsert_association_meter_reading_details_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationMeterReadingsApi#upsert_association_meter_reading_details_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
