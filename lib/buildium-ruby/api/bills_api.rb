=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <kbd><img src=\"app_settings.gif\" class=\"example_screen\" /></kbd>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***API Keys***. The page will open automatically.    3. Click ***Create API Key***. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <kbd><img src=\"key_gen.gif\" class=\"example_screen\" /></kbd>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class BillsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a bill
    # Creates a bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit`
    # @param bill_post_message [BillPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BillMessage]
    def create_bill(bill_post_message, opts = {})
      data, _status_code, _headers = create_bill_with_http_info(bill_post_message, opts)
      data
    end

    # Create a bill
    # Creates a bill.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bill_post_message [BillPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillMessage, Integer, Hash)>] BillMessage data, response status code and response headers
    def create_bill_with_http_info(bill_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.create_bill ...'
      end
      # verify the required parameter 'bill_post_message' is set
      if @api_client.config.client_side_validation && bill_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'bill_post_message' when calling BillsApi.create_bill"
      end
      # resource path
      local_var_path = '/v1/bills'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bill_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BillMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BillsApi.create_bill",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#create_bill\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a bill payment
    # Creates a bill payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit`              <span class=\"permissionBlock\">Accounting &gt; Bank Accounts</span> - `View` `Edit`
    # @param bill_id [Integer] 
    # @param bill_payment_post_message [BillPaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BillPaymentMessage]
    def create_bill_payment(bill_id, bill_payment_post_message, opts = {})
      data, _status_code, _headers = create_bill_payment_with_http_info(bill_id, bill_payment_post_message, opts)
      data
    end

    # Create a bill payment
    # Creates a bill payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bill_id [Integer] 
    # @param bill_payment_post_message [BillPaymentPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillPaymentMessage, Integer, Hash)>] BillPaymentMessage data, response status code and response headers
    def create_bill_payment_with_http_info(bill_id, bill_payment_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.create_bill_payment ...'
      end
      # verify the required parameter 'bill_id' is set
      if @api_client.config.client_side_validation && bill_id.nil?
        fail ArgumentError, "Missing the required parameter 'bill_id' when calling BillsApi.create_bill_payment"
      end
      # verify the required parameter 'bill_payment_post_message' is set
      if @api_client.config.client_side_validation && bill_payment_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'bill_payment_post_message' when calling BillsApi.create_bill_payment"
      end
      # resource path
      local_var_path = '/v1/bills/{billId}/payments'.sub('{' + 'billId' + '}', CGI.escape(bill_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bill_payment_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BillPaymentMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BillsApi.create_bill_payment",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#create_bill_payment\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Upload a bill file
    # Uploads a file and associates it to the specified bill record.  <br /><br />Uploading a file requires making two API requests. Each step is outlined below.  <br /><br /><strong>Step 1 - Save file metadata</strong><br />  The first step in the file upload process is to submit the file metadata to `/v1/bills/{billId:int}/files/uploadrequests`. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  <br /><br /><strong>NOTE:</strong> The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  <br /><br /><strong>Step 2 - Upload the file binary</strong><br />  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  <br />  1. Form a POST request using the value of the `BucketUrl` property as the URL.   <br /><br />  2. Set the `Content-Type` header to `multipart/form-data`.  <br /><br />  3. Copy the fields from the `FormData`  property to this request as form-data key/value pairs.  <br /><strong>NOTE:</strong> These values must added to the request form-data in the order they were received in the response.  <br /><br />  4. Lastly create a form-data key named `file` and set the value to the file binary.  <br /><strong>NOTE:</strong> This must be the last field in the form-data list.  <br /><br />This image shows what the POST request should look like if you're using Postman:  <img src=\"file-upload-example.png\" /><br /><br />  5. Send the POST request! A successful request will return with a `204 - NO CONTENT` HTTP response code. For any failure responses, please refer to <a target=\"_blank\" href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\">AWS documentation</a> on REST error responses.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit`
    # @param bill_id [Integer] 
    # @param file_name_post_message [FileNamePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [FileUploadTicketMessage]
    def create_upload_file_request(bill_id, file_name_post_message, opts = {})
      data, _status_code, _headers = create_upload_file_request_with_http_info(bill_id, file_name_post_message, opts)
      data
    end

    # Upload a bill file
    # Uploads a file and associates it to the specified bill record.  &lt;br /&gt;&lt;br /&gt;Uploading a file requires making two API requests. Each step is outlined below.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 1 - Save file metadata&lt;/strong&gt;&lt;br /&gt;  The first step in the file upload process is to submit the file metadata to &#x60;/v1/bills/{billId:int}/files/uploadrequests&#x60;. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 2 - Upload the file binary&lt;/strong&gt;&lt;br /&gt;  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  &lt;br /&gt;  1. Form a POST request using the value of the &#x60;BucketUrl&#x60; property as the URL.   &lt;br /&gt;&lt;br /&gt;  2. Set the &#x60;Content-Type&#x60; header to &#x60;multipart/form-data&#x60;.  &lt;br /&gt;&lt;br /&gt;  3. Copy the fields from the &#x60;FormData&#x60;  property to this request as form-data key/value pairs.  &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; These values must added to the request form-data in the order they were received in the response.  &lt;br /&gt;&lt;br /&gt;  4. Lastly create a form-data key named &#x60;file&#x60; and set the value to the file binary.  &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; This must be the last field in the form-data list.  &lt;br /&gt;&lt;br /&gt;This image shows what the POST request should look like if you&#39;re using Postman:  &lt;img src&#x3D;\&quot;file-upload-example.png\&quot; /&gt;&lt;br /&gt;&lt;br /&gt;  5. Send the POST request! A successful request will return with a &#x60;204 - NO CONTENT&#x60; HTTP response code. For any failure responses, please refer to &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\&quot;&gt;AWS documentation&lt;/a&gt; on REST error responses.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bill_id [Integer] 
    # @param file_name_post_message [FileNamePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileUploadTicketMessage, Integer, Hash)>] FileUploadTicketMessage data, response status code and response headers
    def create_upload_file_request_with_http_info(bill_id, file_name_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.create_upload_file_request ...'
      end
      # verify the required parameter 'bill_id' is set
      if @api_client.config.client_side_validation && bill_id.nil?
        fail ArgumentError, "Missing the required parameter 'bill_id' when calling BillsApi.create_upload_file_request"
      end
      # verify the required parameter 'file_name_post_message' is set
      if @api_client.config.client_side_validation && file_name_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'file_name_post_message' when calling BillsApi.create_upload_file_request"
      end
      # resource path
      local_var_path = '/v1/bills/{billId}/files/uploadrequests'.sub('{' + 'billId' + '}', CGI.escape(bill_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(file_name_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'FileUploadTicketMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BillsApi.create_upload_file_request",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#create_upload_file_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a bill file
    # Deletes the specified file from a bill. The file will be permanently deleted from the Buildium platform and can not be recovered.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit` `Delete`
    # @param bill_id [Integer] 
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_bill_file(bill_id, file_id, opts = {})
      delete_bill_file_with_http_info(bill_id, file_id, opts)
      nil
    end

    # Delete a bill file
    # Deletes the specified file from a bill. The file will be permanently deleted from the Buildium platform and can not be recovered.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60; &#x60;Delete&#x60;
    # @param bill_id [Integer] 
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_bill_file_with_http_info(bill_id, file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.delete_bill_file ...'
      end
      # verify the required parameter 'bill_id' is set
      if @api_client.config.client_side_validation && bill_id.nil?
        fail ArgumentError, "Missing the required parameter 'bill_id' when calling BillsApi.delete_bill_file"
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling BillsApi.delete_bill_file"
      end
      # resource path
      local_var_path = '/v1/bills/{billId}/files/{fileId}'.sub('{' + 'billId' + '}', CGI.escape(bill_id.to_s)).sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"BillsApi.delete_bill_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#delete_bill_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Download a bill file
    # Downloads a specific file associated to the bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`
    # @param bill_id [Integer] 
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [FileDownloadMessage]
    def download_bill_file(bill_id, file_id, opts = {})
      data, _status_code, _headers = download_bill_file_with_http_info(bill_id, file_id, opts)
      data
    end

    # Download a bill file
    # Downloads a specific file associated to the bill.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60;
    # @param bill_id [Integer] 
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FileDownloadMessage, Integer, Hash)>] FileDownloadMessage data, response status code and response headers
    def download_bill_file_with_http_info(bill_id, file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.download_bill_file ...'
      end
      # verify the required parameter 'bill_id' is set
      if @api_client.config.client_side_validation && bill_id.nil?
        fail ArgumentError, "Missing the required parameter 'bill_id' when calling BillsApi.download_bill_file"
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling BillsApi.download_bill_file"
      end
      # resource path
      local_var_path = '/v1/bills/{billId}/files/{fileId}/downloadrequest'.sub('{' + 'billId' + '}', CGI.escape(bill_id.to_s)).sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
        :operation => :"BillsApi.download_bill_file",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#download_bill_file\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all files for a bill
    # Retrieves the metadata for all files associated to the specified bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`
    # @param bill_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<BillFileMessage>]
    def get_all_files_for_bill(bill_id, opts = {})
      data, _status_code, _headers = get_all_files_for_bill_with_http_info(bill_id, opts)
      data
    end

    # Retrieve all files for a bill
    # Retrieves the metadata for all files associated to the specified bill.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60;
    # @param bill_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<BillFileMessage>, Integer, Hash)>] Array<BillFileMessage> data, response status code and response headers
    def get_all_files_for_bill_with_http_info(bill_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.get_all_files_for_bill ...'
      end
      # verify the required parameter 'bill_id' is set
      if @api_client.config.client_side_validation && bill_id.nil?
        fail ArgumentError, "Missing the required parameter 'bill_id' when calling BillsApi.get_all_files_for_bill"
      end
      # resource path
      local_var_path = '/v1/bills/{billId}/files'.sub('{' + 'billId' + '}', CGI.escape(bill_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<BillFileMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BillsApi.get_all_files_for_bill",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#get_all_files_for_bill\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a bill
    # Retrieves a single bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`
    # @param bill_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [BillMessage]
    def get_bill_by_id(bill_id, opts = {})
      data, _status_code, _headers = get_bill_by_id_with_http_info(bill_id, opts)
      data
    end

    # Retrieve a bill
    # Retrieves a single bill.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60;
    # @param bill_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillMessage, Integer, Hash)>] BillMessage data, response status code and response headers
    def get_bill_by_id_with_http_info(bill_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.get_bill_by_id ...'
      end
      # verify the required parameter 'bill_id' is set
      if @api_client.config.client_side_validation && bill_id.nil?
        fail ArgumentError, "Missing the required parameter 'bill_id' when calling BillsApi.get_bill_by_id"
      end
      # resource path
      local_var_path = '/v1/bills/{billId}'.sub('{' + 'billId' + '}', CGI.escape(bill_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BillMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BillsApi.get_bill_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#get_bill_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a file for a bill
    # Retrieves the metadata for a specific file associated with the specified bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`
    # @param bill_id [Integer] 
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [BillFileMessage]
    def get_bill_file_by_id(bill_id, file_id, opts = {})
      data, _status_code, _headers = get_bill_file_by_id_with_http_info(bill_id, file_id, opts)
      data
    end

    # Retrieve a file for a bill
    # Retrieves the metadata for a specific file associated with the specified bill.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60;
    # @param bill_id [Integer] 
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillFileMessage, Integer, Hash)>] BillFileMessage data, response status code and response headers
    def get_bill_file_by_id_with_http_info(bill_id, file_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.get_bill_file_by_id ...'
      end
      # verify the required parameter 'bill_id' is set
      if @api_client.config.client_side_validation && bill_id.nil?
        fail ArgumentError, "Missing the required parameter 'bill_id' when calling BillsApi.get_bill_file_by_id"
      end
      # verify the required parameter 'file_id' is set
      if @api_client.config.client_side_validation && file_id.nil?
        fail ArgumentError, "Missing the required parameter 'file_id' when calling BillsApi.get_bill_file_by_id"
      end
      # resource path
      local_var_path = '/v1/bills/{billId}/files/{fileId}'.sub('{' + 'billId' + '}', CGI.escape(bill_id.to_s)).sub('{' + 'fileId' + '}', CGI.escape(file_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BillFileMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BillsApi.get_bill_file_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#get_bill_file_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a bill payment
    # Retrieves specific bill payment.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`
    # @param bill_id [Integer] 
    # @param payment_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [BillPaymentMessage]
    def get_bill_payment_by_id(bill_id, payment_id, opts = {})
      data, _status_code, _headers = get_bill_payment_by_id_with_http_info(bill_id, payment_id, opts)
      data
    end

    # Retrieve a bill payment
    # Retrieves specific bill payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60;
    # @param bill_id [Integer] 
    # @param payment_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillPaymentMessage, Integer, Hash)>] BillPaymentMessage data, response status code and response headers
    def get_bill_payment_by_id_with_http_info(bill_id, payment_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.get_bill_payment_by_id ...'
      end
      # verify the required parameter 'bill_id' is set
      if @api_client.config.client_side_validation && bill_id.nil?
        fail ArgumentError, "Missing the required parameter 'bill_id' when calling BillsApi.get_bill_payment_by_id"
      end
      # verify the required parameter 'payment_id' is set
      if @api_client.config.client_side_validation && payment_id.nil?
        fail ArgumentError, "Missing the required parameter 'payment_id' when calling BillsApi.get_bill_payment_by_id"
      end
      # resource path
      local_var_path = '/v1/bills/{billId}/payments/{paymentId}'.sub('{' + 'billId' + '}', CGI.escape(bill_id.to_s)).sub('{' + 'paymentId' + '}', CGI.escape(payment_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BillPaymentMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BillsApi.get_bill_payment_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#get_bill_payment_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all bill payments
    # Retrieves a list of bill payments for a specific bill.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`
    # @param bill_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<BillPaymentMessage>]
    def get_bill_payments(bill_id, opts = {})
      data, _status_code, _headers = get_bill_payments_with_http_info(bill_id, opts)
      data
    end

    # Retrieve all bill payments
    # Retrieves a list of bill payments for a specific bill.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60;
    # @param bill_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<BillPaymentMessage>, Integer, Hash)>] Array<BillPaymentMessage> data, response status code and response headers
    def get_bill_payments_with_http_info(bill_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.get_bill_payments ...'
      end
      # verify the required parameter 'bill_id' is set
      if @api_client.config.client_side_validation && bill_id.nil?
        fail ArgumentError, "Missing the required parameter 'bill_id' when calling BillsApi.get_bill_payments"
      end
      # resource path
      local_var_path = '/v1/bills/{billId}/payments'.sub('{' + 'billId' + '}', CGI.escape(bill_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<BillPaymentMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BillsApi.get_bill_payments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#get_bill_payments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all bills
    # Retrieves a list of bills.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :entityid Filters results to any bill containing line items associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references.
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified.
    # @option opts [Integer] :vendorid Filters results to bills associated with a specific vendor.
    # @option opts [String] :referencenumber Filters results to bills whose reference number contains the specified value.
    # @option opts [String] :paidstatus Filters results by the bill&#39;s paid status. If no status is specified, bills with any status will be returned.
    # @option opts [Date] :frompaiddate Filters results to any bill whose paid date is greater than or equal to the specified value.
    # @option opts [Date] :topaiddate Filters results to any bill whose paid date is less than or equal to the specified value.
    # @option opts [Array<String>] :approvalstatuses Filters the results to bills matching the specified approval statuses. If no approval status is specified, bills with any status will be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<BillMessage>]
    def get_bills_async(opts = {})
      data, _status_code, _headers = get_bills_async_with_http_info(opts)
      data
    end

    # Retrieve all bills
    # Retrieves a list of bills.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :entityid Filters results to any bill containing line items associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references.
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified.
    # @option opts [Integer] :vendorid Filters results to bills associated with a specific vendor.
    # @option opts [String] :referencenumber Filters results to bills whose reference number contains the specified value.
    # @option opts [String] :paidstatus Filters results by the bill&#39;s paid status. If no status is specified, bills with any status will be returned.
    # @option opts [Date] :frompaiddate Filters results to any bill whose paid date is greater than or equal to the specified value.
    # @option opts [Date] :topaiddate Filters results to any bill whose paid date is less than or equal to the specified value.
    # @option opts [Array<String>] :approvalstatuses Filters the results to bills matching the specified approval statuses. If no approval status is specified, bills with any status will be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<BillMessage>, Integer, Hash)>] Array<BillMessage> data, response status code and response headers
    def get_bills_async_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.get_bills_async ...'
      end
      allowable_values = ["Rental", "RentalOwner", "Association"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      allowable_values = ["Paid", "Unpaid", "UncollectedMarkups"]
      if @api_client.config.client_side_validation && opts[:'paidstatus'] && !allowable_values.include?(opts[:'paidstatus'])
        fail ArgumentError, "invalid value for \"paidstatus\", must be one of #{allowable_values}"
      end
      allowable_values = ["NotNeeded", "ApprovalRequired", "Approved", "Pending", "Rejected"]
      if @api_client.config.client_side_validation && opts[:'approvalstatuses'] && !opts[:'approvalstatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"approvalstatuses\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/bills'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'vendorid'] = opts[:'vendorid'] if !opts[:'vendorid'].nil?
      query_params[:'referencenumber'] = opts[:'referencenumber'] if !opts[:'referencenumber'].nil?
      query_params[:'paidstatus'] = opts[:'paidstatus'] if !opts[:'paidstatus'].nil?
      query_params[:'frompaiddate'] = opts[:'frompaiddate'] if !opts[:'frompaiddate'].nil?
      query_params[:'topaiddate'] = opts[:'topaiddate'] if !opts[:'topaiddate'].nil?
      query_params[:'approvalstatuses'] = @api_client.build_collection_param(opts[:'approvalstatuses'], :multi) if !opts[:'approvalstatuses'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<BillMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BillsApi.get_bills_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#get_bills_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a bill
    # Use this operation to update any of the writable fields of an existing bill resource. When updating this resource keep the following in mind: <br /><ul><li>Writable fields omitted from the request or that do not have a value in the request message are set to `NULL`. If you do not want to update the field, submit the original field value.</li><li>When a bill has an existing payment any edits to the line items that change the total bill amount must result in the new total bill amount being equal to or greater than the amount paid.</li><li>When adding a new line item leave the `LineItem.Id` field empty.</li></ul><br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Accounting &gt; Bills</span> - `View` `Edit`
    # @param bill_id [Integer] 
    # @param bill_put_message [BillPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [BillMessage]
    def update_bill(bill_id, bill_put_message, opts = {})
      data, _status_code, _headers = update_bill_with_http_info(bill_id, bill_put_message, opts)
      data
    end

    # Update a bill
    # Use this operation to update any of the writable fields of an existing bill resource. When updating this resource keep the following in mind: &lt;br /&gt;&lt;ul&gt;&lt;li&gt;Writable fields omitted from the request or that do not have a value in the request message are set to &#x60;NULL&#x60;. If you do not want to update the field, submit the original field value.&lt;/li&gt;&lt;li&gt;When a bill has an existing payment any edits to the line items that change the total bill amount must result in the new total bill amount being equal to or greater than the amount paid.&lt;/li&gt;&lt;li&gt;When adding a new line item leave the &#x60;LineItem.Id&#x60; field empty.&lt;/li&gt;&lt;/ul&gt;&lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param bill_id [Integer] 
    # @param bill_put_message [BillPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BillMessage, Integer, Hash)>] BillMessage data, response status code and response headers
    def update_bill_with_http_info(bill_id, bill_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: BillsApi.update_bill ...'
      end
      # verify the required parameter 'bill_id' is set
      if @api_client.config.client_side_validation && bill_id.nil?
        fail ArgumentError, "Missing the required parameter 'bill_id' when calling BillsApi.update_bill"
      end
      # verify the required parameter 'bill_put_message' is set
      if @api_client.config.client_side_validation && bill_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'bill_put_message' when calling BillsApi.update_bill"
      end
      # resource path
      local_var_path = '/v1/bills/{billId}'.sub('{' + 'billId' + '}', CGI.escape(bill_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(bill_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'BillMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"BillsApi.update_bill",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BillsApi#update_bill\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
