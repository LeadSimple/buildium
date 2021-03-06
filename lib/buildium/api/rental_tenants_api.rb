=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.     

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'cgi'

module Buildium
  class RentalTenantsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a tenant
    # Creates a rental tenant.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Rentals &gt; Leases</span> - `View` `Edit`
    # @param rental_tenant_post_message [RentalTenantPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [TenantMessage]
    def create_rental_tenant(rental_tenant_post_message, opts = {})
      data, _status_code, _headers = create_rental_tenant_with_http_info(rental_tenant_post_message, opts)
      data
    end

    # Create a tenant
    # Creates a rental tenant.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param rental_tenant_post_message [RentalTenantPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantMessage, Integer, Hash)>] TenantMessage data, response status code and response headers
    def create_rental_tenant_with_http_info(rental_tenant_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalTenantsApi.create_rental_tenant ...'
      end
      # verify the required parameter 'rental_tenant_post_message' is set
      if @api_client.config.client_side_validation && rental_tenant_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'rental_tenant_post_message' when calling RentalTenantsApi.create_rental_tenant"
      end
      # resource path
      local_var_path = '/v1/leases/tenants'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rental_tenant_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'TenantMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalTenantsApi.create_rental_tenant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalTenantsApi#create_rental_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a note
    # Creates a tenant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`
    # @param tenant_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def create_tenant_note(tenant_id, note_post_message, opts = {})
      data, _status_code, _headers = create_tenant_note_with_http_info(tenant_id, note_post_message, opts)
      data
    end

    # Create a note
    # Creates a tenant note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param tenant_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def create_tenant_note_with_http_info(tenant_id, note_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalTenantsApi.create_tenant_note ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling RentalTenantsApi.create_tenant_note"
      end
      # verify the required parameter 'note_post_message' is set
      if @api_client.config.client_side_validation && note_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_post_message' when calling RentalTenantsApi.create_tenant_note"
      end
      # resource path
      local_var_path = '/v1/leases/tenants/{tenantId}/notes'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s))

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
        :operation => :"RentalTenantsApi.create_tenant_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalTenantsApi#create_tenant_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all notes
    # Retrieves all tenant notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`
    # @param tenant_id [Integer] The tenant identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<NoteMessage>]
    def get_all_tenant_notes(tenant_id, opts = {})
      data, _status_code, _headers = get_all_tenant_notes_with_http_info(tenant_id, opts)
      data
    end

    # Retrieve all notes
    # Retrieves all tenant notes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param tenant_id [Integer] The tenant identifier.
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<NoteMessage>, Integer, Hash)>] Array<NoteMessage> data, response status code and response headers
    def get_all_tenant_notes_with_http_info(tenant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalTenantsApi.get_all_tenant_notes ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling RentalTenantsApi.get_all_tenant_notes"
      end
      # resource path
      local_var_path = '/v1/leases/tenants/{tenantId}/notes'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s))

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
        :operation => :"RentalTenantsApi.get_all_tenant_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalTenantsApi#get_all_tenant_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all tenants
    # Retrieves a list of tenants.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :buildingstatuses Filters results by the status of the rental property the tenants are associated with. If no status is specified tenants in either &#x60;active&#x60; and &#x60;inactive&#x60; rental properties will be returned.
    # @option opts [Array<String>] :leasetermstatuses Filters results to any tenant whose lease term matches the specified status.  If no status is specified tenants with any lease terms status will be returned.
    # @option opts [String] :unitnumber Filters results to any tenant whose unit number *contains* the specified value.
    # @option opts [String] :name Filters results to any tenant whose name *contains* the specified value.
    # @option opts [String] :phone Filters results to any tenant whose phone number *contains* the specified value.
    # @option opts [String] :email Filters results to any tenant whose email *contains* the specified value.
    # @option opts [Array<Integer>] :propertyids Filters results to tenants whose rental unit belongs to the specified set of property ids.
    # @option opts [Array<Integer>] :rentalownerids Filters results to tenants whose rental unit belongs to a property with a rental owner in the specified set of rental owner ids.
    # @option opts [Time] :lastupdatedfrom Filters results to any rental tenants that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any rental tenants that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<TenantMessage>]
    def get_all_tenants(opts = {})
      data, _status_code, _headers = get_all_tenants_with_http_info(opts)
      data
    end

    # Retrieve all tenants
    # Retrieves a list of tenants.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :buildingstatuses Filters results by the status of the rental property the tenants are associated with. If no status is specified tenants in either &#x60;active&#x60; and &#x60;inactive&#x60; rental properties will be returned.
    # @option opts [Array<String>] :leasetermstatuses Filters results to any tenant whose lease term matches the specified status.  If no status is specified tenants with any lease terms status will be returned.
    # @option opts [String] :unitnumber Filters results to any tenant whose unit number *contains* the specified value.
    # @option opts [String] :name Filters results to any tenant whose name *contains* the specified value.
    # @option opts [String] :phone Filters results to any tenant whose phone number *contains* the specified value.
    # @option opts [String] :email Filters results to any tenant whose email *contains* the specified value.
    # @option opts [Array<Integer>] :propertyids Filters results to tenants whose rental unit belongs to the specified set of property ids.
    # @option opts [Array<Integer>] :rentalownerids Filters results to tenants whose rental unit belongs to a property with a rental owner in the specified set of rental owner ids.
    # @option opts [Time] :lastupdatedfrom Filters results to any rental tenants that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any rental tenants that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<TenantMessage>, Integer, Hash)>] Array<TenantMessage> data, response status code and response headers
    def get_all_tenants_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalTenantsApi.get_all_tenants ...'
      end
      allowable_values = ["Active", "InActive"]
      if @api_client.config.client_side_validation && opts[:'buildingstatuses'] && !opts[:'buildingstatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"buildingstatuses\", must include one of #{allowable_values}"
      end
      allowable_values = ["Active", "Past", "Future"]
      if @api_client.config.client_side_validation && opts[:'leasetermstatuses'] && !opts[:'leasetermstatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"leasetermstatuses\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/leases/tenants'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'buildingstatuses'] = @api_client.build_collection_param(opts[:'buildingstatuses'], :multi) if !opts[:'buildingstatuses'].nil?
      query_params[:'leasetermstatuses'] = @api_client.build_collection_param(opts[:'leasetermstatuses'], :multi) if !opts[:'leasetermstatuses'].nil?
      query_params[:'unitnumber'] = opts[:'unitnumber'] if !opts[:'unitnumber'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'phone'] = opts[:'phone'] if !opts[:'phone'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
      query_params[:'propertyids'] = @api_client.build_collection_param(opts[:'propertyids'], :multi) if !opts[:'propertyids'].nil?
      query_params[:'rentalownerids'] = @api_client.build_collection_param(opts[:'rentalownerids'], :multi) if !opts[:'rentalownerids'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<TenantMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalTenantsApi.get_all_tenants",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalTenantsApi#get_all_tenants\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a tenant
    # Retrieve a specific tenant.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`
    # @param tenant_id [Integer] The tenant identifier.
    # @param [Hash] opts the optional parameters
    # @return [TenantMessage]
    def get_tenant_by_id(tenant_id, opts = {})
      data, _status_code, _headers = get_tenant_by_id_with_http_info(tenant_id, opts)
      data
    end

    # Retrieve a tenant
    # Retrieve a specific tenant.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param tenant_id [Integer] The tenant identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantMessage, Integer, Hash)>] TenantMessage data, response status code and response headers
    def get_tenant_by_id_with_http_info(tenant_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalTenantsApi.get_tenant_by_id ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling RentalTenantsApi.get_tenant_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/tenants/{tenantId}'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s))

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
      return_type = opts[:debug_return_type] || 'TenantMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalTenantsApi.get_tenant_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalTenantsApi#get_tenant_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a note
    # Retrieves a tenant note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View`
    # @param tenant_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def get_tenant_note_by_id(tenant_id, note_id, opts = {})
      data, _status_code, _headers = get_tenant_note_by_id_with_http_info(tenant_id, note_id, opts)
      data
    end

    # Retrieve a note
    # Retrieves a tenant note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;
    # @param tenant_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def get_tenant_note_by_id_with_http_info(tenant_id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalTenantsApi.get_tenant_note_by_id ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling RentalTenantsApi.get_tenant_note_by_id"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling RentalTenantsApi.get_tenant_note_by_id"
      end
      # resource path
      local_var_path = '/v1/leases/tenants/{tenantId}/notes/{noteId}'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"RentalTenantsApi.get_tenant_note_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalTenantsApi#get_tenant_note_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a note
    # Updates a tenant note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`
    # @param tenant_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def update_lease_tenant_note(tenant_id, note_id, note_put_message, opts = {})
      data, _status_code, _headers = update_lease_tenant_note_with_http_info(tenant_id, note_id, note_put_message, opts)
      data
    end

    # Update a note
    # Updates a tenant note.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param tenant_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def update_lease_tenant_note_with_http_info(tenant_id, note_id, note_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalTenantsApi.update_lease_tenant_note ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling RentalTenantsApi.update_lease_tenant_note"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling RentalTenantsApi.update_lease_tenant_note"
      end
      # verify the required parameter 'note_put_message' is set
      if @api_client.config.client_side_validation && note_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_put_message' when calling RentalTenantsApi.update_lease_tenant_note"
      end
      # resource path
      local_var_path = '/v1/leases/tenants/{tenantId}/notes/{noteId}'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"RentalTenantsApi.update_lease_tenant_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalTenantsApi#update_lease_tenant_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a tenant
    # Updates a rental tenant.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Tenants</span> - `View` `Edit`
    # @param tenant_id [Integer] 
    # @param rental_tenant_put_message [RentalTenantPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [TenantMessage]
    def update_rental_tenant(tenant_id, rental_tenant_put_message, opts = {})
      data, _status_code, _headers = update_rental_tenant_with_http_info(tenant_id, rental_tenant_put_message, opts)
      data
    end

    # Update a tenant
    # Updates a rental tenant.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param tenant_id [Integer] 
    # @param rental_tenant_put_message [RentalTenantPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TenantMessage, Integer, Hash)>] TenantMessage data, response status code and response headers
    def update_rental_tenant_with_http_info(tenant_id, rental_tenant_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalTenantsApi.update_rental_tenant ...'
      end
      # verify the required parameter 'tenant_id' is set
      if @api_client.config.client_side_validation && tenant_id.nil?
        fail ArgumentError, "Missing the required parameter 'tenant_id' when calling RentalTenantsApi.update_rental_tenant"
      end
      # verify the required parameter 'rental_tenant_put_message' is set
      if @api_client.config.client_side_validation && rental_tenant_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'rental_tenant_put_message' when calling RentalTenantsApi.update_rental_tenant"
      end
      # resource path
      local_var_path = '/v1/leases/tenants/{tenantId}'.sub('{' + 'tenantId' + '}', CGI.escape(tenant_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rental_tenant_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'TenantMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalTenantsApi.update_rental_tenant",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalTenantsApi#update_rental_tenant\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
