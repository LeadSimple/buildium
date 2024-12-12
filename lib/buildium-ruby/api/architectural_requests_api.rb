=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class ArchitecturalRequestsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an architectural request
    # Creates an architectural request  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit`  <br />
    # @param create_architectural_request_async_request [CreateArchitecturalRequestAsyncRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationArchitecturalRequestMessage]
    def create_architectural_request_async(create_architectural_request_async_request, opts = {})
      data, _status_code, _headers = create_architectural_request_async_with_http_info(create_architectural_request_async_request, opts)
      data
    end

    # Create an architectural request
    # Creates an architectural request  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Associations and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Architectural requests&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;
    # @param create_architectural_request_async_request [CreateArchitecturalRequestAsyncRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationArchitecturalRequestMessage, Integer, Hash)>] AssociationArchitecturalRequestMessage data, response status code and response headers
    def create_architectural_request_async_with_http_info(create_architectural_request_async_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchitecturalRequestsApi.create_architectural_request_async ...'
      end
      # verify the required parameter 'create_architectural_request_async_request' is set
      if @api_client.config.client_side_validation && create_architectural_request_async_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_architectural_request_async_request' when calling ArchitecturalRequestsApi.create_architectural_request_async"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/architecturalrequests'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_architectural_request_async_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AssociationArchitecturalRequestMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ArchitecturalRequestsApi.create_architectural_request_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchitecturalRequestsApi#create_architectural_request_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload an architectural request file
    # Uploads a file and associates it to the specified architectural request record.  <br /><br />Uploading a file requires making two API requests. Each step is outlined below.  <br /><br /><strong>Step 1 - Save file metadata</strong><br />  The first step in the file upload process is to submit the file metadata to `/v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId:int}/files/uploadrequests`. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  <br /><br /><strong>NOTE:</strong> The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  <br /><br /><strong>Step 2 - Upload the file binary</strong><br />  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  <br />  1. Form a POST request using the value of the `BucketUrl` property as the URL.   <br /><br />  2. Set the `Content-Type` header to `multipart/form-data`.  <br /><br />  3. Copy the fields from the `FormData`  property to this request as form-data key/value pairs.  <br /><strong>NOTE:</strong> These values must added to the request form-data in the order they were received in the response.  <br /><br />  4. Lastly create a form-data key named `file` and set the value to the file binary.  <br /><strong>NOTE:</strong> This must be the last field in the form-data list.  <br /><br />This image shows what the POST request should look like if you're using Postman:  <img src=\"file-upload-example.png\" /><br /><br />  5. Send the POST request! A successful request will return with a `204 - NO CONTENT` HTTP response code. For any failure responses, please refer to <a target=\"_blank\" href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\">AWS documentation</a> on REST error responses.  <br /><br /><strong>NOTE:</strong> The file identifier is not generated in this response. To retrieve the file identifier, call `/v1/files` and pass the `PhysicalFileName` value received from the response of this endpoint into the `physicalfilenames` query parameter.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View` `Edit`
    # @param architectural_request_id [Integer] 
    # @param create_upload_file_request_request [CreateUploadFileRequestRequest] 
    # @param [Hash] opts the optional parameters
    # @return [FileUploadTicketMessage]
    def create_upload_file_request(architectural_request_id, create_upload_file_request_request, opts = {})
      data, _status_code, _headers = create_upload_file_request_with_http_info(architectural_request_id, create_upload_file_request_request, opts)
      data
    end

    # Upload an architectural request file
    # Uploads a file and associates it to the specified architectural request record.  &lt;br /&gt;&lt;br /&gt;Uploading a file requires making two API requests. Each step is outlined below.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 1 - Save file metadata&lt;/strong&gt;&lt;br /&gt;  The first step in the file upload process is to submit the file metadata to &#x60;/v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId:int}/files/uploadrequests&#x60;. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 2 - Upload the file binary&lt;/strong&gt;&lt;br /&gt;  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  &lt;br /&gt;  1. Form a POST request using the value of the &#x60;BucketUrl&#x60; property as the URL.   &lt;br /&gt;&lt;br /&gt;  2. Set the &#x60;Content-Type&#x60; header to &#x60;multipart/form-data&#x60;.  &lt;br /&gt;&lt;br /&gt;  3. Copy the fields from the &#x60;FormData&#x60;  property to this request as form-data key/value pairs.  &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; These values must added to the request form-data in the order they were received in the response.  &lt;br /&gt;&lt;br /&gt;  4. Lastly create a form-data key named &#x60;file&#x60; and set the value to the file binary.  &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; This must be the last field in the form-data list.  &lt;br /&gt;&lt;br /&gt;This image shows what the POST request should look like if you&#39;re using Postman:  &lt;img src&#x3D;\&quot;file-upload-example.png\&quot; /&gt;&lt;br /&gt;&lt;br /&gt;  5. Send the POST request! A successful request will return with a &#x60;204 - NO CONTENT&#x60; HTTP response code. For any failure responses, please refer to &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\&quot;&gt;AWS documentation&lt;/a&gt; on REST error responses.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; The file identifier is not generated in this response. To retrieve the file identifier, call &#x60;/v1/files&#x60; and pass the &#x60;PhysicalFileName&#x60; value received from the response of this endpoint into the &#x60;physicalfilenames&#x60; query parameter.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Associations and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Architectural requests&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param architectural_request_id [Integer] 
    # @param create_upload_file_request_request [CreateUploadFileRequestRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileUploadTicketMessage, Integer, Hash)>] FileUploadTicketMessage data, response status code and response headers
    def create_upload_file_request_with_http_info(architectural_request_id, create_upload_file_request_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchitecturalRequestsApi.create_upload_file_request ...'
      end
      # verify the required parameter 'architectural_request_id' is set
      if @api_client.config.client_side_validation && architectural_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'architectural_request_id' when calling ArchitecturalRequestsApi.create_upload_file_request"
      end
      # verify the required parameter 'create_upload_file_request_request' is set
      if @api_client.config.client_side_validation && create_upload_file_request_request.nil?
        fail ArgumentError, "Missing the required parameter 'create_upload_file_request_request' when calling ArchitecturalRequestsApi.create_upload_file_request"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files/uploadrequests'.sub('{' + 'architecturalRequestId' + '}', CGI.escape(architectural_request_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_upload_file_request_request)

      # return_type
      return_type = opts[:debug_return_type] || 'FileUploadTicketMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ArchitecturalRequestsApi.create_upload_file_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchitecturalRequestsApi#create_upload_file_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download an architectural request file
    # Downloads a specific file associated to the architectural request.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View`
    # @param architectural_request_id [Integer] 
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [FileDownloadMessage]
    def download_architectural_request_file_async(architectural_request_id, file_id, opts = {})
      data, _status_code, _headers = download_architectural_request_file_async_with_http_info(architectural_request_id, file_id, opts)
      data
    end

    # Download an architectural request file
    # Downloads a specific file associated to the architectural request.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Architectural requests&lt;/span&gt; - &#x60;View&#x60;
    # @param architectural_request_id [Integer] 
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileDownloadMessage, Integer, Hash)>] FileDownloadMessage data, response status code and response headers
    def download_architectural_request_file_async_with_http_info(architectural_request_id, file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchitecturalRequestsApi.download_architectural_request_file_async ...'
      end
      # verify the required parameter 'architectural_request_id' is set
      if @api_client.config.client_side_validation && architectural_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'architectural_request_id' when calling ArchitecturalRequestsApi.download_architectural_request_file_async"
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling ArchitecturalRequestsApi.download_architectural_request_file_async"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files/{fileId}/downloadrequests'.sub('{' + 'architecturalRequestId' + '}', CGI.escape(architectural_request_id.to_s)).sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"ArchitecturalRequestsApi.download_architectural_request_file_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchitecturalRequestsApi#download_architectural_request_file_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an architectural request
    # Retrieves a specific architectural request.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View`
    # @param architectural_request_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationArchitecturalRequestMessage]
    def get_architectural_request_by_id(architectural_request_id, opts = {})
      data, _status_code, _headers = get_architectural_request_by_id_with_http_info(architectural_request_id, opts)
      data
    end

    # Retrieve an architectural request
    # Retrieves a specific architectural request.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Architectural requests&lt;/span&gt; - &#x60;View&#x60;
    # @param architectural_request_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationArchitecturalRequestMessage, Integer, Hash)>] AssociationArchitecturalRequestMessage data, response status code and response headers
    def get_architectural_request_by_id_with_http_info(architectural_request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchitecturalRequestsApi.get_architectural_request_by_id ...'
      end
      # verify the required parameter 'architectural_request_id' is set
      if @api_client.config.client_side_validation && architectural_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'architectural_request_id' when calling ArchitecturalRequestsApi.get_architectural_request_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}'.sub('{' + 'architecturalRequestId' + '}', CGI.escape(architectural_request_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AssociationArchitecturalRequestMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ArchitecturalRequestsApi.get_architectural_request_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchitecturalRequestsApi#get_architectural_request_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an architectural request file
    # Retrieves an architectural request file.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View`
    # @param architectural_request_id [Integer] 
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationArchitecturalRequestFileMessage]
    def get_architectural_request_file_async(architectural_request_id, file_id, opts = {})
      data, _status_code, _headers = get_architectural_request_file_async_with_http_info(architectural_request_id, file_id, opts)
      data
    end

    # Retrieve an architectural request file
    # Retrieves an architectural request file.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Architectural requests&lt;/span&gt; - &#x60;View&#x60;
    # @param architectural_request_id [Integer] 
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationArchitecturalRequestFileMessage, Integer, Hash)>] AssociationArchitecturalRequestFileMessage data, response status code and response headers
    def get_architectural_request_file_async_with_http_info(architectural_request_id, file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchitecturalRequestsApi.get_architectural_request_file_async ...'
      end
      # verify the required parameter 'architectural_request_id' is set
      if @api_client.config.client_side_validation && architectural_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'architectural_request_id' when calling ArchitecturalRequestsApi.get_architectural_request_file_async"
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling ArchitecturalRequestsApi.get_architectural_request_file_async"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files/{fileId}'.sub('{' + 'architecturalRequestId' + '}', CGI.escape(architectural_request_id.to_s)).sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AssociationArchitecturalRequestFileMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ArchitecturalRequestsApi.get_architectural_request_file_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchitecturalRequestsApi#get_architectural_request_file_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all files for an architectural request
    # Retrieves all files for an architectural request.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View`
    # @param architectural_request_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :ids The IDs of the architectural request files to filter by.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [AssociationArchitecturalRequestFileMessage]
    def get_architectural_request_files_history_paged_async(architectural_request_id, opts = {})
      data, _status_code, _headers = get_architectural_request_files_history_paged_async_with_http_info(architectural_request_id, opts)
      data
    end

    # Retrieve all files for an architectural request
    # Retrieves all files for an architectural request.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Architectural requests&lt;/span&gt; - &#x60;View&#x60;
    # @param architectural_request_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :ids The IDs of the architectural request files to filter by.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(AssociationArchitecturalRequestFileMessage, Integer, Hash)>] AssociationArchitecturalRequestFileMessage data, response status code and response headers
    def get_architectural_request_files_history_paged_async_with_http_info(architectural_request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchitecturalRequestsApi.get_architectural_request_files_history_paged_async ...'
      end
      # verify the required parameter 'architectural_request_id' is set
      if @api_client.config.client_side_validation && architectural_request_id.nil?
        fail ArgumentError, "Missing the required parameter 'architectural_request_id' when calling ArchitecturalRequestsApi.get_architectural_request_files_history_paged_async"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files'.sub('{' + 'architecturalRequestId' + '}', CGI.escape(architectural_request_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :multi) if !opts[:'ids'].nil?
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
      return_type = opts[:debug_return_type] || 'AssociationArchitecturalRequestFileMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ArchitecturalRequestsApi.get_architectural_request_files_history_paged_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchitecturalRequestsApi#get_architectural_request_files_history_paged_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all architectural requests
    # Retrieves all architectural requests.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations > Associations and units</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Ownership accounts</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Association owners and tenants</span> - `View`              <br /><span class=\"permissionBlock\">Associations > Architectural requests</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :associationids Filters results to only records that belong to the specified set of association identifiers.
    # @option opts [Array<Integer>] :ownershipaccountids Filters results to only records that belong to the specified set of ownership account identifiers.
    # @option opts [Array<Integer>] :ids Filters results to only records that belong to the specified set of architectural request identifiers.
    # @option opts [Array<String>] :statuses Filters results to only records whose status is equal to the specified value.
    # @option opts [Array<String>] :decisions Filters results to only records whose decision is equal to the specified value.
    # @option opts [Time] :createddatetimefrom Filters results to only records that were created after this date. Must be formatted as &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;.
    # @option opts [Time] :createddatetimeto Filters results to only records that were created before this date. Must be formatted as &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;.
    # @option opts [Time] :lastupdatedfrom Filters results to only records that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to only records that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :submitteddatetimefrom Filters results to only records that were submitted on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :submitteddatetimeto Filters results to only records that were submitted on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<AssociationArchitecturalRequestMessage>]
    def get_architectural_requests(opts = {})
      data, _status_code, _headers = get_architectural_requests_with_http_info(opts)
      data
    end

    # Retrieve all architectural requests
    # Retrieves all architectural requests.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Associations and units&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Ownership accounts&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &gt; Architectural requests&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :associationids Filters results to only records that belong to the specified set of association identifiers.
    # @option opts [Array<Integer>] :ownershipaccountids Filters results to only records that belong to the specified set of ownership account identifiers.
    # @option opts [Array<Integer>] :ids Filters results to only records that belong to the specified set of architectural request identifiers.
    # @option opts [Array<String>] :statuses Filters results to only records whose status is equal to the specified value.
    # @option opts [Array<String>] :decisions Filters results to only records whose decision is equal to the specified value.
    # @option opts [Time] :createddatetimefrom Filters results to only records that were created after this date. Must be formatted as &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;.
    # @option opts [Time] :createddatetimeto Filters results to only records that were created before this date. Must be formatted as &#x60;YYYY-MM-DDTHH:MM:SSZ&#x60;.
    # @option opts [Time] :lastupdatedfrom Filters results to only records that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to only records that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :submitteddatetimefrom Filters results to only records that were submitted on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :submitteddatetimeto Filters results to only records that were submitted on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<AssociationArchitecturalRequestMessage>, Integer, Hash)>] Array<AssociationArchitecturalRequestMessage> data, response status code and response headers
    def get_architectural_requests_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ArchitecturalRequestsApi.get_architectural_requests ...'
      end
      allowable_values = ["New", "InProgress", "Completed"]
      if @api_client.config.client_side_validation && opts[:'statuses'] && !opts[:'statuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"statuses\", must include one of #{allowable_values}"
      end
      allowable_values = ["Pending", "Approved", "Denied"]
      if @api_client.config.client_side_validation && opts[:'decisions'] && !opts[:'decisions'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"decisions\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/associations/ownershipaccounts/architecturalrequests'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'associationids'] = @api_client.build_collection_param(opts[:'associationids'], :multi) if !opts[:'associationids'].nil?
      query_params[:'ownershipaccountids'] = @api_client.build_collection_param(opts[:'ownershipaccountids'], :multi) if !opts[:'ownershipaccountids'].nil?
      query_params[:'ids'] = @api_client.build_collection_param(opts[:'ids'], :multi) if !opts[:'ids'].nil?
      query_params[:'statuses'] = @api_client.build_collection_param(opts[:'statuses'], :multi) if !opts[:'statuses'].nil?
      query_params[:'decisions'] = @api_client.build_collection_param(opts[:'decisions'], :multi) if !opts[:'decisions'].nil?
      query_params[:'createddatetimefrom'] = opts[:'createddatetimefrom'] if !opts[:'createddatetimefrom'].nil?
      query_params[:'createddatetimeto'] = opts[:'createddatetimeto'] if !opts[:'createddatetimeto'].nil?
      query_params[:'lastupdatedfrom'] = opts[:'lastupdatedfrom'] if !opts[:'lastupdatedfrom'].nil?
      query_params[:'lastupdatedto'] = opts[:'lastupdatedto'] if !opts[:'lastupdatedto'].nil?
      query_params[:'submitteddatetimefrom'] = opts[:'submitteddatetimefrom'] if !opts[:'submitteddatetimefrom'].nil?
      query_params[:'submitteddatetimeto'] = opts[:'submitteddatetimeto'] if !opts[:'submitteddatetimeto'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<AssociationArchitecturalRequestMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ArchitecturalRequestsApi.get_architectural_requests",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ArchitecturalRequestsApi#get_architectural_requests\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
