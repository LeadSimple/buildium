=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.     

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'cgi'

module Buildium
  class AssociationTenantsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a tenant
    # Creates an association tenant.    <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`
    # @param association_tenant_post_message [AssociationTenantPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationTenantMessage]
    def create_association_tenant(association_tenant_post_message, opts = {})
      data, _status_code, _headers = create_association_tenant_with_http_info(association_tenant_post_message, opts)
      data
    end

    # Create a tenant
    # Creates an association tenant.    &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param association_tenant_post_message [AssociationTenantPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationTenantMessage, Integer, Hash)>] AssociationTenantMessage data, response status code and response headers
    def create_association_tenant_with_http_info(association_tenant_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTenantsApi.create_association_tenant ...'
      end
      # verify the required parameter 'association_tenant_post_message' is set
      if @api_client.config.client_side_validation && association_tenant_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_tenant_post_message' when calling AssociationTenantsApi.create_association_tenant"
      end
      # resource path
      local_var_path = '/v1/associations/tenants'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(association_tenant_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'AssociationTenantMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationTenantsApi.create_association_tenant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTenantsApi#create_association_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a note
    # Creates an association tenant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`
    # @param tenant_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def create_association_tenant_note(tenant_id, note_post_message, opts = {})
      data, _status_code, _headers = create_association_tenant_note_with_http_info(tenant_id, note_post_message, opts)
      data
    end

    # Create a note
    # Creates an association tenant note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param tenant_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def create_association_tenant_note_with_http_info(tenant_id, note_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTenantsApi.create_association_tenant_note ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling AssociationTenantsApi.create_association_tenant_note"
      end
      # verify the required parameter 'note_post_message' is set
      if @api_client.config.client_side_validation && note_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_post_message' when calling AssociationTenantsApi.create_association_tenant_note"
      end
      # resource path
      local_var_path = '/v1/associations/tenants/{tenantId}/notes'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s))

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
        :operation => :"AssociationTenantsApi.create_association_tenant_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTenantsApi#create_association_tenant_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a tenant
    # Retrieves a specific association tenant.    <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`
    # @param tenant_id [Integer] The tenant identifier.
    # @param [Hash] opts the optional parameters
    # @return [AssociationTenantMessage]
    def get_association_tenant_by_id(tenant_id, opts = {})
      data, _status_code, _headers = get_association_tenant_by_id_with_http_info(tenant_id, opts)
      data
    end

    # Retrieve a tenant
    # Retrieves a specific association tenant.    &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param tenant_id [Integer] The tenant identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationTenantMessage, Integer, Hash)>] AssociationTenantMessage data, response status code and response headers
    def get_association_tenant_by_id_with_http_info(tenant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTenantsApi.get_association_tenant_by_id ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling AssociationTenantsApi.get_association_tenant_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/tenants/{tenantId}'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AssociationTenantMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationTenantsApi.get_association_tenant_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTenantsApi#get_association_tenant_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a note
    # Retrieves an association tenant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`
    # @param tenant_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def get_association_tenant_note_by_id(tenant_id, note_id, opts = {})
      data, _status_code, _headers = get_association_tenant_note_by_id_with_http_info(tenant_id, note_id, opts)
      data
    end

    # Retrieve a note
    # Retrieves an association tenant note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param tenant_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def get_association_tenant_note_by_id_with_http_info(tenant_id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTenantsApi.get_association_tenant_note_by_id ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling AssociationTenantsApi.get_association_tenant_note_by_id"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling AssociationTenantsApi.get_association_tenant_note_by_id"
      end
      # resource path
      local_var_path = '/v1/associations/tenants/{tenantId}/notes/{noteId}'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"AssociationTenantsApi.get_association_tenant_note_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTenantsApi#get_association_tenant_note_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all notes
    # Retrieves all association tenant notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`
    # @param tenant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<NoteMessage>]
    def get_association_tenant_notes(tenant_id, opts = {})
      data, _status_code, _headers = get_association_tenant_notes_with_http_info(tenant_id, opts)
      data
    end

    # Retrieve all notes
    # Retrieves all association tenant notes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param tenant_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<NoteMessage>, Integer, Hash)>] Array<NoteMessage> data, response status code and response headers
    def get_association_tenant_notes_with_http_info(tenant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTenantsApi.get_association_tenant_notes ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling AssociationTenantsApi.get_association_tenant_notes"
      end
      # resource path
      local_var_path = '/v1/associations/tenants/{tenantId}/notes'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s))

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
        :operation => :"AssociationTenantsApi.get_association_tenant_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTenantsApi#get_association_tenant_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all tenants
    # Retrieves a list of association tenants.    <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Filters results to only records whose name *contains* the specified value.
    # @option opts [String] :phone Filters results to only records whose phone number *contains* the specified value.
    # @option opts [String] :email Filters results to only records whose email *contains* the specified value.
    # @option opts [Array<Integer>] :associationids Filters results to only records that belong to the specified set of association identifiers.
    # @option opts [Array<String>] :statuses Filters results to only records whose status is equal to the specified value.
    # @option opts [Time] :createddatetimeto Filters results to only records that were created before this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;.
    # @option opts [Time] :createddatetimefrom Filters results to only records that were created after this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<AssociationTenantMessage>]
    def get_association_tenants(opts = {})
      data, _status_code, _headers = get_association_tenants_with_http_info(opts)
      data
    end

    # Retrieve all tenants
    # Retrieves a list of association tenants.    &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Filters results to only records whose name *contains* the specified value.
    # @option opts [String] :phone Filters results to only records whose phone number *contains* the specified value.
    # @option opts [String] :email Filters results to only records whose email *contains* the specified value.
    # @option opts [Array<Integer>] :associationids Filters results to only records that belong to the specified set of association identifiers.
    # @option opts [Array<String>] :statuses Filters results to only records whose status is equal to the specified value.
    # @option opts [Time] :createddatetimeto Filters results to only records that were created before this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;.
    # @option opts [Time] :createddatetimefrom Filters results to only records that were created after this date. Must be formatted as &#x60;YYYY-MM-DD&#x60;.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<AssociationTenantMessage>, Integer, Hash)>] Array<AssociationTenantMessage> data, response status code and response headers
    def get_association_tenants_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTenantsApi.get_association_tenants ...'
      end
      allowable_values = ["Active", "Past", "Future"]
      if @api_client.config.client_side_validation && opts[:'statuses'] && !opts[:'statuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"statuses\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/associations/tenants'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'phone'] = opts[:'phone'] if !opts[:'phone'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'associationids'] = @api_client.build_collection_param(opts[:'associationids'], :multi) if !opts[:'associationids'].nil?
      query_params[:'statuses'] = @api_client.build_collection_param(opts[:'statuses'], :multi) if !opts[:'statuses'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<AssociationTenantMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationTenantsApi.get_association_tenants",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTenantsApi#get_association_tenants\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a tenant
    # Updates an association tenant.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`
    # @param tenant_id [Integer] The identifier of the association tenant to update.
    # @param association_tenant_put_message [AssociationTenantPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [AssociationTenantMessage]
    def update_association_tenant(tenant_id, association_tenant_put_message, opts = {})
      data, _status_code, _headers = update_association_tenant_with_http_info(tenant_id, association_tenant_put_message, opts)
      data
    end

    # Update a tenant
    # Updates an association tenant.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param tenant_id [Integer] The identifier of the association tenant to update.
    # @param association_tenant_put_message [AssociationTenantPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AssociationTenantMessage, Integer, Hash)>] AssociationTenantMessage data, response status code and response headers
    def update_association_tenant_with_http_info(tenant_id, association_tenant_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTenantsApi.update_association_tenant ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling AssociationTenantsApi.update_association_tenant"
      end
      # verify the required parameter 'association_tenant_put_message' is set
      if @api_client.config.client_side_validation && association_tenant_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'association_tenant_put_message' when calling AssociationTenantsApi.update_association_tenant"
      end
      # resource path
      local_var_path = '/v1/associations/tenants/{tenantId}'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(association_tenant_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'AssociationTenantMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AssociationTenantsApi.update_association_tenant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTenantsApi#update_association_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a note
    # Updates an association tenant note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Associations &gt; Association owners and tenants</span> - `View` `Edit`
    # @param tenant_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def update_association_tenant_note(tenant_id, note_id, note_put_message, opts = {})
      data, _status_code, _headers = update_association_tenant_note_with_http_info(tenant_id, note_id, note_put_message, opts)
      data
    end

    # Update a note
    # Updates an association tenant note.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param tenant_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def update_association_tenant_note_with_http_info(tenant_id, note_id, note_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AssociationTenantsApi.update_association_tenant_note ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling AssociationTenantsApi.update_association_tenant_note"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling AssociationTenantsApi.update_association_tenant_note"
      end
      # verify the required parameter 'note_put_message' is set
      if @api_client.config.client_side_validation && note_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_put_message' when calling AssociationTenantsApi.update_association_tenant_note"
      end
      # resource path
      local_var_path = '/v1/associations/tenants/{tenantId}/notes/{noteId}'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"AssociationTenantsApi.update_association_tenant_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AssociationTenantsApi#update_association_tenant_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
