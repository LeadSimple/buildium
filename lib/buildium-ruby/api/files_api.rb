=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'cgi'

module Buildium
  class FilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a category
    # Creates a file category.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View` `Edit`
    # @param file_category_post_message [FileCategoryPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [FileCategoryMessage]
    def create_file_category(file_category_post_message, opts = {})
      data, _status_code, _headers = create_file_category_with_http_info(file_category_post_message, opts)
      data
    end

    # Create a category
    # Creates a file category.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param file_category_post_message [FileCategoryPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileCategoryMessage, Integer, Hash)>] FileCategoryMessage data, response status code and response headers
    def create_file_category_with_http_info(file_category_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.create_file_category ...'
      end
      # verify the required parameter 'file_category_post_message' is set
      if @api_client.config.client_side_validation && file_category_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'file_category_post_message' when calling FilesApi.create_file_category"
      end
      # resource path
      local_var_path = '/v1/files/categories'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(file_category_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'FileCategoryMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"FilesApi.create_file_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#create_file_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a file
    # Uploading a file requires making two API requests. Each step is outlined below.  <br /><br /><strong>Step 1 - Save file metadata</strong><br />  The first step in the file upload process is to submit the file metadata to `/v1/files/uploadrequests`. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  <br /><br /><strong>NOTE:</strong> The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  <br /><br /><strong>Step 2 - Upload the file binary</strong><br />  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  <br />  1. Form a POST request using the value of the `BucketUrl` property as the URL.   <br /><br />  2. Set the `Content-Type` header to `multipart/form-data`.  <br /><br />  3. Copy the fields from the `FormData`  property to this request as form-data key/value pairs.  <br /><strong>NOTE:</strong> These values must added to the request form-data in the order they were received in the response.  <br /><br />  4. Lastly create a form-data key named `file` and set the value to the file binary.  <br /><strong>NOTE:</strong> This must be the last field in the form-data list.  <br /><br />This image shows what the POST request should look like if you're using Postman:  <img src=\"file-upload-example.png\" /><br /><br />  5. Send the POST request! A successful request will return with a `204 - NO CONTENT` HTTP response code. For any failure responses, please refer to <a target=\"_blank\" href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\">AWS documentation</a> on REST error responses.  <br /><br /><strong>NOTE:</strong> The file identifier is not generated in this response. To retrieve the file identifier, call `/v1/files` and pass the `PhysicalFileName` value received from the response of this endpoint into the `physicalfilenames` query parameter.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View` `Edit`
    # @param file_upload_post_message [FileUploadPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [FileUploadTicketMessage]
    def create_upload_file_request_async(file_upload_post_message, opts = {})
      data, _status_code, _headers = create_upload_file_request_async_with_http_info(file_upload_post_message, opts)
      data
    end

    # Upload a file
    # Uploading a file requires making two API requests. Each step is outlined below.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 1 - Save file metadata&lt;/strong&gt;&lt;br /&gt;  The first step in the file upload process is to submit the file metadata to &#x60;/v1/files/uploadrequests&#x60;. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 2 - Upload the file binary&lt;/strong&gt;&lt;br /&gt;  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  &lt;br /&gt;  1. Form a POST request using the value of the &#x60;BucketUrl&#x60; property as the URL.   &lt;br /&gt;&lt;br /&gt;  2. Set the &#x60;Content-Type&#x60; header to &#x60;multipart/form-data&#x60;.  &lt;br /&gt;&lt;br /&gt;  3. Copy the fields from the &#x60;FormData&#x60;  property to this request as form-data key/value pairs.  &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; These values must added to the request form-data in the order they were received in the response.  &lt;br /&gt;&lt;br /&gt;  4. Lastly create a form-data key named &#x60;file&#x60; and set the value to the file binary.  &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; This must be the last field in the form-data list.  &lt;br /&gt;&lt;br /&gt;This image shows what the POST request should look like if you&#39;re using Postman:  &lt;img src&#x3D;\&quot;file-upload-example.png\&quot; /&gt;&lt;br /&gt;&lt;br /&gt;  5. Send the POST request! A successful request will return with a &#x60;204 - NO CONTENT&#x60; HTTP response code. For any failure responses, please refer to &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\&quot;&gt;AWS documentation&lt;/a&gt; on REST error responses.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; The file identifier is not generated in this response. To retrieve the file identifier, call &#x60;/v1/files&#x60; and pass the &#x60;PhysicalFileName&#x60; value received from the response of this endpoint into the &#x60;physicalfilenames&#x60; query parameter.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param file_upload_post_message [FileUploadPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileUploadTicketMessage, Integer, Hash)>] FileUploadTicketMessage data, response status code and response headers
    def create_upload_file_request_async_with_http_info(file_upload_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.create_upload_file_request_async ...'
      end
      # verify the required parameter 'file_upload_post_message' is set
      if @api_client.config.client_side_validation && file_upload_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'file_upload_post_message' when calling FilesApi.create_upload_file_request_async"
      end
      # resource path
      local_var_path = '/v1/files/uploadrequests'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(file_upload_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'FileUploadTicketMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"FilesApi.create_upload_file_request_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#create_upload_file_request_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a file
    # Retrieves the file metadata for a specific file. Note this endpoint will only return file metadata. To download files make requests to the <a href=\"#operation/FileDownloadGetFileDownloadUrlAsync\">Download File endpoint.</a><br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View`
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [FileMessage]
    def get_file_by_id(file_id, opts = {})
      data, _status_code, _headers = get_file_by_id_with_http_info(file_id, opts)
      data
    end

    # Retrieve a file
    # Retrieves the file metadata for a specific file. Note this endpoint will only return file metadata. To download files make requests to the &lt;a href&#x3D;\&quot;#operation/FileDownloadGetFileDownloadUrlAsync\&quot;&gt;Download File endpoint.&lt;/a&gt;&lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60;
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileMessage, Integer, Hash)>] FileMessage data, response status code and response headers
    def get_file_by_id_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.get_file_by_id ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.get_file_by_id"
      end
      # resource path
      local_var_path = '/v1/files/{fileId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"FilesApi.get_file_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#get_file_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all categories
    # Retrieves a list of file categories.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<FileCategoryMessage>]
    def get_file_categories(opts = {})
      data, _status_code, _headers = get_file_categories_with_http_info(opts)
      data
    end

    # Retrieve all categories
    # Retrieves a list of file categories.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<FileCategoryMessage>, Integer, Hash)>] Array<FileCategoryMessage> data, response status code and response headers
    def get_file_categories_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.get_file_categories ...'
      end
      # resource path
      local_var_path = '/v1/files/categories'

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
      return_type = opts[:debug_return_type] || 'Array<FileCategoryMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"FilesApi.get_file_categories",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#get_file_categories\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a category
    # Retrieves a specific file category.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View`
    # @param file_category_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [FileCategoryMessage]
    def get_file_category_by_id(file_category_id, opts = {})
      data, _status_code, _headers = get_file_category_by_id_with_http_info(file_category_id, opts)
      data
    end

    # Retrieve a category
    # Retrieves a specific file category.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60;
    # @param file_category_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileCategoryMessage, Integer, Hash)>] FileCategoryMessage data, response status code and response headers
    def get_file_category_by_id_with_http_info(file_category_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.get_file_category_by_id ...'
      end
      # verify the required parameter 'file_category_id' is set
      if @api_client.config.client_side_validation && file_category_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_category_id' when calling FilesApi.get_file_category_by_id"
      end
      # resource path
      local_var_path = '/v1/files/categories/{fileCategoryId}'.sub('{' + 'fileCategoryId' + '}', CGI.escape(file_category_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileCategoryMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"FilesApi.get_file_category_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#get_file_category_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download a file
    # Downloading a file requires making two API requests. The first request to `/v1/files/{fileId}/downloadrequest` will return a secure URL that can be used to download the file contents. Note the download URL is transient and will expire after 5 minutes.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View`
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [FileDownloadMessage]
    def get_file_download_url_async(file_id, opts = {})
      data, _status_code, _headers = get_file_download_url_async_with_http_info(file_id, opts)
      data
    end

    # Download a file
    # Downloading a file requires making two API requests. The first request to &#x60;/v1/files/{fileId}/downloadrequest&#x60; will return a secure URL that can be used to download the file contents. Note the download URL is transient and will expire after 5 minutes.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60;
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileDownloadMessage, Integer, Hash)>] FileDownloadMessage data, response status code and response headers
    def get_file_download_url_async_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.get_file_download_url_async ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.get_file_download_url_async"
      end
      # resource path
      local_var_path = '/v1/files/{fileId}/downloadrequest'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"FilesApi.get_file_download_url_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#get_file_download_url_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve file share settings
    # Retrieves a file's share settings. Note, that the response JSON schema includes share setting fields for all file entity types, however only fields that pertain to the queried file entity type will be populated. For example, if a file of entity type Rental is retrieved only the fields in the Rental section of the response will have values.              <br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View`
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [FileSharingMessage]
    def get_file_share_settings_by_id(file_id, opts = {})
      data, _status_code, _headers = get_file_share_settings_by_id_with_http_info(file_id, opts)
      data
    end

    # Retrieve file share settings
    # Retrieves a file&#39;s share settings. Note, that the response JSON schema includes share setting fields for all file entity types, however only fields that pertain to the queried file entity type will be populated. For example, if a file of entity type Rental is retrieved only the fields in the Rental section of the response will have values.              &lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60;
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileSharingMessage, Integer, Hash)>] FileSharingMessage data, response status code and response headers
    def get_file_share_settings_by_id_with_http_info(file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.get_file_share_settings_by_id ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.get_file_share_settings_by_id"
      end
      # resource path
      local_var_path = '/v1/files/{fileId}/sharing'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'FileSharingMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"FilesApi.get_file_share_settings_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#get_file_share_settings_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all files
    # Retrieves a list of files that exist within the customer account. Note this endpoint will only return file metadata. To download files make requests to the <a href=\"#operation/FileDownloadGetFileDownloadUrlAsync\">Download File</a> endpoint.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :entityid Filters results to any file associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references.
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified.
    # @option opts [Integer] :categoryid Filters results to any file associated with the specified category identifier.
    # @option opts [String] :titleordescription Filters results to files whose title or description *contains* the specified value.
    # @option opts [Date] :uploadedfrom Filters results to any files that were updated on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :uploadedto Filters results to any files that were updated on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Array<String>] :physicalfilenames Filters results to any files with a &#x60;PhysicalFileName&#x60;exactly matching one of the provided values.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<FileMessage>]
    def get_files(opts = {})
      data, _status_code, _headers = get_files_with_http_info(opts)
      data
    end

    # Retrieve all files
    # Retrieves a list of files that exist within the customer account. Note this endpoint will only return file metadata. To download files make requests to the &lt;a href&#x3D;\&quot;#operation/FileDownloadGetFileDownloadUrlAsync\&quot;&gt;Download File&lt;/a&gt; endpoint.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :entityid Filters results to any file associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references.
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified.
    # @option opts [Integer] :categoryid Filters results to any file associated with the specified category identifier.
    # @option opts [String] :titleordescription Filters results to files whose title or description *contains* the specified value.
    # @option opts [Date] :uploadedfrom Filters results to any files that were updated on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :uploadedto Filters results to any files that were updated on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Array<String>] :physicalfilenames Filters results to any files with a &#x60;PhysicalFileName&#x60;exactly matching one of the provided values.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<FileMessage>, Integer, Hash)>] Array<FileMessage> data, response status code and response headers
    def get_files_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.get_files ...'
      end
      allowable_values = ["Account", "Association", "AssociationOwner", "AssociationUnit", "Lease", "OwnershipAccount", "PublicAsset", "Rental", "RentalOwner", "RentalUnit", "Tenant", "Vendor"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/files'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'categoryid'] = opts[:'categoryid'] if !opts[:'categoryid'].nil?
      query_params[:'titleordescription'] = opts[:'titleordescription'] if !opts[:'titleordescription'].nil?
      query_params[:'uploadedfrom'] = opts[:'uploadedfrom'] if !opts[:'uploadedfrom'].nil?
      query_params[:'uploadedto'] = opts[:'uploadedto'] if !opts[:'uploadedto'].nil?
      query_params[:'physicalfilenames'] = @api_client.build_collection_param(opts[:'physicalfilenames'], :multi) if !opts[:'physicalfilenames'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<FileMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"FilesApi.get_files",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#get_files\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a file
    # Updates a metadata of the file.               <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View` `Edit`
    # @param file_id [Integer] 
    # @param file_put_message [FilePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [FileMessage]
    def update_file(file_id, file_put_message, opts = {})
      data, _status_code, _headers = update_file_with_http_info(file_id, file_put_message, opts)
      data
    end

    # Update a file
    # Updates a metadata of the file.               &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param file_id [Integer] 
    # @param file_put_message [FilePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileMessage, Integer, Hash)>] FileMessage data, response status code and response headers
    def update_file_with_http_info(file_id, file_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.update_file ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.update_file"
      end
      # verify the required parameter 'file_put_message' is set
      if @api_client.config.client_side_validation && file_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'file_put_message' when calling FilesApi.update_file"
      end
      # resource path
      local_var_path = '/v1/files/{fileId}'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(file_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'FileMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"FilesApi.update_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#update_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a category
    # Updates a file category. Note that file categories where `IsEditable` is `false` can not be updated.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View` `Edit`
    # @param file_category_id [Integer] 
    # @param file_category_put_message [FileCategoryPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [FileCategoryMessage]
    def update_file_category(file_category_id, file_category_put_message, opts = {})
      data, _status_code, _headers = update_file_category_with_http_info(file_category_id, file_category_put_message, opts)
      data
    end

    # Update a category
    # Updates a file category. Note that file categories where &#x60;IsEditable&#x60; is &#x60;false&#x60; can not be updated.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param file_category_id [Integer] 
    # @param file_category_put_message [FileCategoryPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileCategoryMessage, Integer, Hash)>] FileCategoryMessage data, response status code and response headers
    def update_file_category_with_http_info(file_category_id, file_category_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.update_file_category ...'
      end
      # verify the required parameter 'file_category_id' is set
      if @api_client.config.client_side_validation && file_category_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_category_id' when calling FilesApi.update_file_category"
      end
      # verify the required parameter 'file_category_put_message' is set
      if @api_client.config.client_side_validation && file_category_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'file_category_put_message' when calling FilesApi.update_file_category"
      end
      # resource path
      local_var_path = '/v1/files/categories/{fileCategoryId}'.sub('{' + 'fileCategoryId' + '}', CGI.escape(file_category_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(file_category_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'FileCategoryMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"FilesApi.update_file_category",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#update_file_category\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update file share settings
    # Updates a file's share settings. Note, can only update a file's share settings based on the file's entity type (ie: If the file belongs to a rental property, you can only update the rental file sharing settings). The response payload contains file share setting values for all file entity types, but the relevant setting values correlate to the file's entity type.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View` `Edit`
    # @param file_id [Integer] 
    # @param file_sharing_put_message [FileSharingPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [FileSharingMessage]
    def update_file_sharing_setting(file_id, file_sharing_put_message, opts = {})
      data, _status_code, _headers = update_file_sharing_setting_with_http_info(file_id, file_sharing_put_message, opts)
      data
    end

    # Update file share settings
    # Updates a file&#39;s share settings. Note, can only update a file&#39;s share settings based on the file&#39;s entity type (ie: If the file belongs to a rental property, you can only update the rental file sharing settings). The response payload contains file share setting values for all file entity types, but the relevant setting values correlate to the file&#39;s entity type.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param file_id [Integer] 
    # @param file_sharing_put_message [FileSharingPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileSharingMessage, Integer, Hash)>] FileSharingMessage data, response status code and response headers
    def update_file_sharing_setting_with_http_info(file_id, file_sharing_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FilesApi.update_file_sharing_setting ...'
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling FilesApi.update_file_sharing_setting"
      end
      # verify the required parameter 'file_sharing_put_message' is set
      if @api_client.config.client_side_validation && file_sharing_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'file_sharing_put_message' when calling FilesApi.update_file_sharing_setting"
      end
      # resource path
      local_var_path = '/v1/files/{fileId}/sharing'.sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(file_sharing_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'FileSharingMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"FilesApi.update_file_sharing_setting",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilesApi#update_file_sharing_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
