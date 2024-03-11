=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class RentalUnitsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a unit
    # Creates a rental unit.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param rental_units_post_message [RentalUnitsPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [RentalUnitMessage]
    def create_rental_unit(rental_units_post_message, opts = {})
      data, _status_code, _headers = create_rental_unit_with_http_info(rental_units_post_message, opts)
      data
    end

    # Create a unit
    # Creates a rental unit.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param rental_units_post_message [RentalUnitsPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalUnitMessage, Integer, Hash)>] RentalUnitMessage data, response status code and response headers
    def create_rental_unit_with_http_info(rental_units_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.create_rental_unit ...'
      end
      # verify the required parameter 'rental_units_post_message' is set
      if @api_client.config.client_side_validation && rental_units_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'rental_units_post_message' when calling RentalUnitsApi.create_rental_unit"
      end
      # resource path
      local_var_path = '/v1/rentals/units'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rental_units_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalUnitMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.create_rental_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#create_rental_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a unit image
    # Uploads an image and associates it to the specified unit record.              <br /><br />Uploading a file requires making two API requests. Each step is outlined below.              <br /><br /><strong>Step 1 - Save file metadata</strong><br />              The first step in the file upload process is to submit the file metadata to `/v1/rentals/units/{unitId:int}/images/uploadrequests`. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.              <br /><br /><strong>NOTE:</strong> The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.              <br /><br /><strong>Step 2 - Upload the file binary</strong><br />              Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:              <br />              1. Form a POST request using the value of the `BucketUrl` property as the URL.               <br /><br />              2. Set the `Content-Type` header to `multipart/form-data`.              <br /><br />              3. Copy the fields from the `FormData`  property to this request as form-data key/value pairs.              <br /><strong>NOTE:</strong> These values must added to the request form-data in the order they were received in the response.              <br /><br />              4. Lastly create a form-data key named `file` and set the value to the file binary.              <br /><strong>NOTE:</strong> This must be the last field in the form-data list.              <br /><br />This image shows what the POST request should look like if you're using Postman:              <img src=\"file-upload-example.png\" /><br /><br />              5. Send the POST request! A successful request will return with a `204 - NO CONTENT` HTTP response code. For any failure responses, please refer to <a target=\"_blank\" href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\">AWS documentation</a> on REST error responses.              <br /><br /><strong>NOTE:</strong> The file identifier is not generated in this response. To retrieve the file identifier, call `/v1/files` and pass the `PhysicalFileName` value received from the response of this endpoint into the `physicalfilenames` query parameter.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param unit_id [Integer] 
    # @param listing_entity_file_post_message [ListingEntityFilePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [FileUploadTicketMessage]
    def create_rental_unit_image_upload_file_request_async(unit_id, listing_entity_file_post_message, opts = {})
      data, _status_code, _headers = create_rental_unit_image_upload_file_request_async_with_http_info(unit_id, listing_entity_file_post_message, opts)
      data
    end

    # Upload a unit image
    # Uploads an image and associates it to the specified unit record.              &lt;br /&gt;&lt;br /&gt;Uploading a file requires making two API requests. Each step is outlined below.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 1 - Save file metadata&lt;/strong&gt;&lt;br /&gt;              The first step in the file upload process is to submit the file metadata to &#x60;/v1/rentals/units/{unitId:int}/images/uploadrequests&#x60;. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 2 - Upload the file binary&lt;/strong&gt;&lt;br /&gt;              Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:              &lt;br /&gt;              1. Form a POST request using the value of the &#x60;BucketUrl&#x60; property as the URL.               &lt;br /&gt;&lt;br /&gt;              2. Set the &#x60;Content-Type&#x60; header to &#x60;multipart/form-data&#x60;.              &lt;br /&gt;&lt;br /&gt;              3. Copy the fields from the &#x60;FormData&#x60;  property to this request as form-data key/value pairs.              &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; These values must added to the request form-data in the order they were received in the response.              &lt;br /&gt;&lt;br /&gt;              4. Lastly create a form-data key named &#x60;file&#x60; and set the value to the file binary.              &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; This must be the last field in the form-data list.              &lt;br /&gt;&lt;br /&gt;This image shows what the POST request should look like if you&#39;re using Postman:              &lt;img src&#x3D;\&quot;file-upload-example.png\&quot; /&gt;&lt;br /&gt;&lt;br /&gt;              5. Send the POST request! A successful request will return with a &#x60;204 - NO CONTENT&#x60; HTTP response code. For any failure responses, please refer to &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\&quot;&gt;AWS documentation&lt;/a&gt; on REST error responses.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; The file identifier is not generated in this response. To retrieve the file identifier, call &#x60;/v1/files&#x60; and pass the &#x60;PhysicalFileName&#x60; value received from the response of this endpoint into the &#x60;physicalfilenames&#x60; query parameter.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param unit_id [Integer] 
    # @param listing_entity_file_post_message [ListingEntityFilePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileUploadTicketMessage, Integer, Hash)>] FileUploadTicketMessage data, response status code and response headers
    def create_rental_unit_image_upload_file_request_async_with_http_info(unit_id, listing_entity_file_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.create_rental_unit_image_upload_file_request_async ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.create_rental_unit_image_upload_file_request_async"
      end
      # verify the required parameter 'listing_entity_file_post_message' is set
      if @api_client.config.client_side_validation && listing_entity_file_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'listing_entity_file_post_message' when calling RentalUnitsApi.create_rental_unit_image_upload_file_request_async"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/images/uploadrequests'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(listing_entity_file_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'FileUploadTicketMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.create_rental_unit_image_upload_file_request_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#create_rental_unit_image_upload_file_request_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a note
    # Creates a rental unit note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param unit_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def create_rental_unit_note(unit_id, note_post_message, opts = {})
      data, _status_code, _headers = create_rental_unit_note_with_http_info(unit_id, note_post_message, opts)
      data
    end

    # Create a note
    # Creates a rental unit note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param unit_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def create_rental_unit_note_with_http_info(unit_id, note_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.create_rental_unit_note ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.create_rental_unit_note"
      end
      # verify the required parameter 'note_post_message' is set
      if @api_client.config.client_side_validation && note_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_post_message' when calling RentalUnitsApi.create_rental_unit_note"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/notes'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
        :operation => :"RentalUnitsApi.create_rental_unit_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#create_rental_unit_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an image for a unit using a video link
    # Creates an image for a rental unit using a video link.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Properties and units</span> - `View` `Edit`
    # @param unit_id [Integer] 
    # @param video_link_request_post_message [VideoLinkRequestPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [RentalUnitImageMessage]
    def create_unit_video_link_request(unit_id, video_link_request_post_message, opts = {})
      data, _status_code, _headers = create_unit_video_link_request_with_http_info(unit_id, video_link_request_post_message, opts)
      data
    end

    # Create an image for a unit using a video link
    # Creates an image for a rental unit using a video link.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param unit_id [Integer] 
    # @param video_link_request_post_message [VideoLinkRequestPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalUnitImageMessage, Integer, Hash)>] RentalUnitImageMessage data, response status code and response headers
    def create_unit_video_link_request_with_http_info(unit_id, video_link_request_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.create_unit_video_link_request ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.create_unit_video_link_request"
      end
      # verify the required parameter 'video_link_request_post_message' is set
      if @api_client.config.client_side_validation && video_link_request_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'video_link_request_post_message' when calling RentalUnitsApi.create_unit_video_link_request"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/images/videolinkrequests'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(video_link_request_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalUnitImageMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.create_unit_video_link_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#create_unit_video_link_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a unit image
    # Deletes a unit image.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit` `Delete`
    # @param unit_id [Integer] 
    # @param image_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_rental_unit_image(unit_id, image_id, opts = {})
      delete_rental_unit_image_with_http_info(unit_id, image_id, opts)
      nil
    end

    # Delete a unit image
    # Deletes a unit image.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60; &#x60;Delete&#x60;
    # @param unit_id [Integer] 
    # @param image_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_rental_unit_image_with_http_info(unit_id, image_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.delete_rental_unit_image ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.delete_rental_unit_image"
      end
      # verify the required parameter 'image_id' is set
      if @api_client.config.client_side_validation && image_id.nil?
        fail ArgumentError, "Missing the required parameter 'image_id' when calling RentalUnitsApi.delete_rental_unit_image"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/images/{imageId}'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s)).sub('{' + 'imageId' + '}', CGI.escape(image_id.to_s))

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
        :operation => :"RentalUnitsApi.delete_rental_unit_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#delete_rental_unit_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all units
    # Retrieves a list of rental property units.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to rental units that belong to the specified set of property ids.
    # @option opts [Time] :lastupdatedfrom Filters results to any rental units that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any rental units that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<RentalUnitMessage>]
    def get_all_rental_units(opts = {})
      data, _status_code, _headers = get_all_rental_units_with_http_info(opts)
      data
    end

    # Retrieve all units
    # Retrieves a list of rental property units.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to rental units that belong to the specified set of property ids.
    # @option opts [Time] :lastupdatedfrom Filters results to any rental units that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any rental units that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<RentalUnitMessage>, Integer, Hash)>] Array<RentalUnitMessage> data, response status code and response headers
    def get_all_rental_units_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.get_all_rental_units ...'
      end
      # resource path
      local_var_path = '/v1/rentals/units'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'propertyids'] = @api_client.build_collection_param(opts[:'propertyids'], :multi) if !opts[:'propertyids'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<RentalUnitMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.get_all_rental_units",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#get_all_rental_units\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all amenities
    # Retrieves all amenities for a rental unit.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param unit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [RentalUnitFeaturesMessage]
    def get_features_for_rental_unit_by_id(unit_id, opts = {})
      data, _status_code, _headers = get_features_for_rental_unit_by_id_with_http_info(unit_id, opts)
      data
    end

    # Retrieve all amenities
    # Retrieves all amenities for a rental unit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param unit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalUnitFeaturesMessage, Integer, Hash)>] RentalUnitFeaturesMessage data, response status code and response headers
    def get_features_for_rental_unit_by_id_with_http_info(unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.get_features_for_rental_unit_by_id ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.get_features_for_rental_unit_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/amenities'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RentalUnitFeaturesMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.get_features_for_rental_unit_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#get_features_for_rental_unit_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a unit
    # Retrieves a specific rental property unit.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param unit_id [Integer] The rental unit identifier.
    # @param [Hash] opts the optional parameters
    # @return [RentalUnitMessage]
    def get_rental_unit_by_id(unit_id, opts = {})
      data, _status_code, _headers = get_rental_unit_by_id_with_http_info(unit_id, opts)
      data
    end

    # Retrieve a unit
    # Retrieves a specific rental property unit.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param unit_id [Integer] The rental unit identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalUnitMessage, Integer, Hash)>] RentalUnitMessage data, response status code and response headers
    def get_rental_unit_by_id_with_http_info(unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.get_rental_unit_by_id ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.get_rental_unit_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RentalUnitMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.get_rental_unit_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#get_rental_unit_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a unit image
    # Retrieves a unit image.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param unit_id [Integer] 
    # @param image_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [RentalUnitImageMessage]
    def get_rental_unit_image_by_id(unit_id, image_id, opts = {})
      data, _status_code, _headers = get_rental_unit_image_by_id_with_http_info(unit_id, image_id, opts)
      data
    end

    # Retrieve a unit image
    # Retrieves a unit image.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param unit_id [Integer] 
    # @param image_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalUnitImageMessage, Integer, Hash)>] RentalUnitImageMessage data, response status code and response headers
    def get_rental_unit_image_by_id_with_http_info(unit_id, image_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.get_rental_unit_image_by_id ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.get_rental_unit_image_by_id"
      end
      # verify the required parameter 'image_id' is set
      if @api_client.config.client_side_validation && image_id.nil?
        fail ArgumentError, "Missing the required parameter 'image_id' when calling RentalUnitsApi.get_rental_unit_image_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/images/{imageId}'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s)).sub('{' + 'imageId' + '}', CGI.escape(image_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RentalUnitImageMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.get_rental_unit_image_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#get_rental_unit_image_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download a unit image
    # Use this endpoint to create a temporary URL that can be used to download a unit image. This URL expires after 5 minutes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param unit_id [Integer] 
    # @param image_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [FileDownloadMessage]
    def get_rental_unit_image_download_url_by_id(unit_id, image_id, opts = {})
      data, _status_code, _headers = get_rental_unit_image_download_url_by_id_with_http_info(unit_id, image_id, opts)
      data
    end

    # Download a unit image
    # Use this endpoint to create a temporary URL that can be used to download a unit image. This URL expires after 5 minutes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param unit_id [Integer] 
    # @param image_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileDownloadMessage, Integer, Hash)>] FileDownloadMessage data, response status code and response headers
    def get_rental_unit_image_download_url_by_id_with_http_info(unit_id, image_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.get_rental_unit_image_download_url_by_id ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.get_rental_unit_image_download_url_by_id"
      end
      # verify the required parameter 'image_id' is set
      if @api_client.config.client_side_validation && image_id.nil?
        fail ArgumentError, "Missing the required parameter 'image_id' when calling RentalUnitsApi.get_rental_unit_image_download_url_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/images/{imageId}/downloadrequests'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s)).sub('{' + 'imageId' + '}', CGI.escape(image_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileDownloadMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.get_rental_unit_image_download_url_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#get_rental_unit_image_download_url_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all unit images
    # Retrieves all images for a unit. Note this endpoint will only return file metadata such as file names and descriptions. To download files make requests to the [Download File](#tag/Rental-Units/operation/GetRentalUnitImageDownloadUrlById) endpoint.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param unit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<RentalUnitImageMessage>]
    def get_rental_unit_images(unit_id, opts = {})
      data, _status_code, _headers = get_rental_unit_images_with_http_info(unit_id, opts)
      data
    end

    # Retrieve all unit images
    # Retrieves all images for a unit. Note this endpoint will only return file metadata such as file names and descriptions. To download files make requests to the [Download File](#tag/Rental-Units/operation/GetRentalUnitImageDownloadUrlById) endpoint.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param unit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<RentalUnitImageMessage>, Integer, Hash)>] Array<RentalUnitImageMessage> data, response status code and response headers
    def get_rental_unit_images_with_http_info(unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.get_rental_unit_images ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.get_rental_unit_images"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/images'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<RentalUnitImageMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.get_rental_unit_images",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#get_rental_unit_images\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a note
    # Retrieves a rental unit note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param unit_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def get_rental_unit_note_by_note_id(unit_id, note_id, opts = {})
      data, _status_code, _headers = get_rental_unit_note_by_note_id_with_http_info(unit_id, note_id, opts)
      data
    end

    # Retrieve a note
    # Retrieves a rental unit note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param unit_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def get_rental_unit_note_by_note_id_with_http_info(unit_id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.get_rental_unit_note_by_note_id ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.get_rental_unit_note_by_note_id"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling RentalUnitsApi.get_rental_unit_note_by_note_id"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/notes/{noteId}'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"RentalUnitsApi.get_rental_unit_note_by_note_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#get_rental_unit_note_by_note_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all notes
    # Retrieves all rental unit notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param unit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<NoteMessage>]
    def get_rental_unit_notes(unit_id, opts = {})
      data, _status_code, _headers = get_rental_unit_notes_with_http_info(unit_id, opts)
      data
    end

    # Retrieve all notes
    # Retrieves all rental unit notes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param unit_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<NoteMessage>, Integer, Hash)>] Array<NoteMessage> data, response status code and response headers
    def get_rental_unit_notes_with_http_info(unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.get_rental_unit_notes ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.get_rental_unit_notes"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/notes'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
        :operation => :"RentalUnitsApi.get_rental_unit_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#get_rental_unit_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update unit image order
    # Updates the image display order within the Buildium web application and in any associated rental listings.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param unit_id [Integer] 
    # @param image_reorder_request_put_message [ImageReorderRequestPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<RentalUnitImageMessage>]
    def reorder_rental_unit_images(unit_id, image_reorder_request_put_message, opts = {})
      data, _status_code, _headers = reorder_rental_unit_images_with_http_info(unit_id, image_reorder_request_put_message, opts)
      data
    end

    # Update unit image order
    # Updates the image display order within the Buildium web application and in any associated rental listings.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param unit_id [Integer] 
    # @param image_reorder_request_put_message [ImageReorderRequestPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<RentalUnitImageMessage>, Integer, Hash)>] Array<RentalUnitImageMessage> data, response status code and response headers
    def reorder_rental_unit_images_with_http_info(unit_id, image_reorder_request_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.reorder_rental_unit_images ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.reorder_rental_unit_images"
      end
      # verify the required parameter 'image_reorder_request_put_message' is set
      if @api_client.config.client_side_validation && image_reorder_request_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'image_reorder_request_put_message' when calling RentalUnitsApi.reorder_rental_unit_images"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/images/order'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(image_reorder_request_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<RentalUnitImageMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.reorder_rental_unit_images",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#reorder_rental_unit_images\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a note
    # Updates a rental unit note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param unit_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def update_note_for_rental_unit(unit_id, note_id, note_put_message, opts = {})
      data, _status_code, _headers = update_note_for_rental_unit_with_http_info(unit_id, note_id, note_put_message, opts)
      data
    end

    # Update a note
    # Updates a rental unit note.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param unit_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def update_note_for_rental_unit_with_http_info(unit_id, note_id, note_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.update_note_for_rental_unit ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.update_note_for_rental_unit"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling RentalUnitsApi.update_note_for_rental_unit"
      end
      # verify the required parameter 'note_put_message' is set
      if @api_client.config.client_side_validation && note_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_put_message' when calling RentalUnitsApi.update_note_for_rental_unit"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/notes/{noteId}'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"RentalUnitsApi.update_note_for_rental_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#update_note_for_rental_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a unit
    # Updates a rental unit.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param unit_id [Integer] The identifier of the unit to update.
    # @param rental_unit_put_message [RentalUnitPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [RentalUnitMessage]
    def update_rental_unit(unit_id, rental_unit_put_message, opts = {})
      data, _status_code, _headers = update_rental_unit_with_http_info(unit_id, rental_unit_put_message, opts)
      data
    end

    # Update a unit
    # Updates a rental unit.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param unit_id [Integer] The identifier of the unit to update.
    # @param rental_unit_put_message [RentalUnitPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalUnitMessage, Integer, Hash)>] RentalUnitMessage data, response status code and response headers
    def update_rental_unit_with_http_info(unit_id, rental_unit_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.update_rental_unit ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.update_rental_unit"
      end
      # verify the required parameter 'rental_unit_put_message' is set
      if @api_client.config.client_side_validation && rental_unit_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'rental_unit_put_message' when calling RentalUnitsApi.update_rental_unit"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rental_unit_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalUnitMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.update_rental_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#update_rental_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update amenities
    # Updates the amenities for a rental unit.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param unit_id [Integer] 
    # @param rental_unit_features_put_message [RentalUnitFeaturesPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [RentalUnitFeaturesMessage]
    def update_rental_unit_features(unit_id, rental_unit_features_put_message, opts = {})
      data, _status_code, _headers = update_rental_unit_features_with_http_info(unit_id, rental_unit_features_put_message, opts)
      data
    end

    # Update amenities
    # Updates the amenities for a rental unit.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param unit_id [Integer] 
    # @param rental_unit_features_put_message [RentalUnitFeaturesPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalUnitFeaturesMessage, Integer, Hash)>] RentalUnitFeaturesMessage data, response status code and response headers
    def update_rental_unit_features_with_http_info(unit_id, rental_unit_features_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.update_rental_unit_features ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.update_rental_unit_features"
      end
      # verify the required parameter 'rental_unit_features_put_message' is set
      if @api_client.config.client_side_validation && rental_unit_features_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'rental_unit_features_put_message' when calling RentalUnitsApi.update_rental_unit_features"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/amenities'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rental_unit_features_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalUnitFeaturesMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.update_rental_unit_features",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#update_rental_unit_features\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a unit image
    # Updates a unit image.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Properties and units</span> - `View` `Edit`
    # @param unit_id [Integer] 
    # @param image_id [Integer] 
    # @param rental_unit_image_put_message [RentalUnitImagePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [RentalImageMessage]
    def update_rental_unit_image(unit_id, image_id, rental_unit_image_put_message, opts = {})
      data, _status_code, _headers = update_rental_unit_image_with_http_info(unit_id, image_id, rental_unit_image_put_message, opts)
      data
    end

    # Update a unit image
    # Updates a unit image.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param unit_id [Integer] 
    # @param image_id [Integer] 
    # @param rental_unit_image_put_message [RentalUnitImagePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalImageMessage, Integer, Hash)>] RentalImageMessage data, response status code and response headers
    def update_rental_unit_image_with_http_info(unit_id, image_id, rental_unit_image_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalUnitsApi.update_rental_unit_image ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling RentalUnitsApi.update_rental_unit_image"
      end
      # verify the required parameter 'image_id' is set
      if @api_client.config.client_side_validation && image_id.nil?
        fail ArgumentError, "Missing the required parameter 'image_id' when calling RentalUnitsApi.update_rental_unit_image"
      end
      # verify the required parameter 'rental_unit_image_put_message' is set
      if @api_client.config.client_side_validation && rental_unit_image_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'rental_unit_image_put_message' when calling RentalUnitsApi.update_rental_unit_image"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/images/{imageId}'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s)).sub('{' + 'imageId' + '}', CGI.escape(image_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rental_unit_image_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalImageMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalUnitsApi.update_rental_unit_image",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalUnitsApi#update_rental_unit_image\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
