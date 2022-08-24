=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

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
    # Uploading a file requires making two API requests. Each step is outlined below.  <br /><br /><strong>Step 1 - Save file metadata</strong><br />  The first step in the file upload process is to submit the file metadata to `/v1/files/uploadrequests`. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  <br /><br /><strong>NOTE:</strong> The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  <br /><br /><strong>Step 2 - Upload the file binary</strong><br />  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  <br />  1. Form a POST request using the value of the `BucketUrl` property as the URL.   <br /><br />  2. Set the `Content-Type` header to `multipart/form-data`.  <br /><br />  3. Copy the fields from the `FormData`  property to this request as form-data key/value pairs.  <br /><strong>NOTE:</strong> These values must added to the request form-data in the order they were received in the response.  <br /><br />  4. Lastly create a form-data key named `file` and set the value to the file binary.  <br /><strong>NOTE:</strong> This must be the last field in the form-data list.  <br /><br />This image shows what the POST request should look like if you're using Postman:  <img src=\"file-upload-example.png\" /><br /><br />  5. Send the POST request! A successful request will return with a `204 - NO CONTENT` HTTP response code. For any failure responses, please refer to <a target=\"_blank\" href=\"https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\">AWS documentation</a> on REST error responses.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View` `Edit`
    # @param file_upload_post_message [FileUploadPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [FileUploadTicketMessage]
    def create_upload_file_request_async(file_upload_post_message, opts = {})
      data, _status_code, _headers = create_upload_file_request_async_with_http_info(file_upload_post_message, opts)
      data
    end

    # Upload a file
    # Uploading a file requires making two API requests. Each step is outlined below.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 1 - Save file metadata&lt;/strong&gt;&lt;br /&gt;  The first step in the file upload process is to submit the file metadata to &#x60;/v1/files/uploadrequests&#x60;. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 2 - Upload the file binary&lt;/strong&gt;&lt;br /&gt;  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  &lt;br /&gt;  1. Form a POST request using the value of the &#x60;BucketUrl&#x60; property as the URL.   &lt;br /&gt;&lt;br /&gt;  2. Set the &#x60;Content-Type&#x60; header to &#x60;multipart/form-data&#x60;.  &lt;br /&gt;&lt;br /&gt;  3. Copy the fields from the &#x60;FormData&#x60;  property to this request as form-data key/value pairs.  &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; These values must added to the request form-data in the order they were received in the response.  &lt;br /&gt;&lt;br /&gt;  4. Lastly create a form-data key named &#x60;file&#x60; and set the value to the file binary.  &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; This must be the last field in the form-data list.  &lt;br /&gt;&lt;br /&gt;This image shows what the POST request should look like if you&#39;re using Postman:  &lt;img src&#x3D;\&quot;file-upload-example.png\&quot; /&gt;&lt;br /&gt;&lt;br /&gt;  5. Send the POST request! A successful request will return with a &#x60;204 - NO CONTENT&#x60; HTTP response code. For any failure responses, please refer to &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\&quot;&gt;AWS documentation&lt;/a&gt; on REST error responses.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
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
    # GetFileDownloadUrlAsync\">Download File endpoint.</a><br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View`
    # @param file_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [FileMessage]
    def get_file_by_id(file_id, opts = {})
      data, _status_code, _headers = get_file_by_id_with_http_info(file_id, opts)
      data
    end

    # Retrieve a file
    # GetFileDownloadUrlAsync\&quot;&gt;Download File endpoint.&lt;/a&gt;&lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60;
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

    # Retrieve all files
    # GetFileDownloadUrlAsync\">Download File</a> endpoint.               <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Documents &gt; Files</span> - `View`
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
    # GetFileDownloadUrlAsync\&quot;&gt;Download File&lt;/a&gt; endpoint.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Documents &amp;gt; Files&lt;/span&gt; - &#x60;View&#x60;
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
  end
end
