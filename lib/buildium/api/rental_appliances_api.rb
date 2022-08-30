=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class RentalAppliancesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an appliance
    # Creates a rental property appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param rental_appliance_post_message [RentalAppliancePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [RentalApplianceMessage]
    def create_rental_appliance(rental_appliance_post_message, opts = {})
      data, _status_code, _headers = create_rental_appliance_with_http_info(rental_appliance_post_message, opts)
      data
    end

    # Create an appliance
    # Creates a rental property appliance.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param rental_appliance_post_message [RentalAppliancePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalApplianceMessage, Integer, Hash)>] RentalApplianceMessage data, response status code and response headers
    def create_rental_appliance_with_http_info(rental_appliance_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalAppliancesApi.create_rental_appliance ...'
      end
      # verify the required parameter 'rental_appliance_post_message' is set
      if @api_client.config.client_side_validation && rental_appliance_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'rental_appliance_post_message' when calling RentalAppliancesApi.create_rental_appliance"
      end
      # resource path
      local_var_path = '/v1/rentals/appliances'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rental_appliance_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalApplianceMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalAppliancesApi.create_rental_appliance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalAppliancesApi#create_rental_appliance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a service history
    # Creates a service history record for an appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param appliance_id [Integer] 
    # @param rental_appliance_service_history_post_message [RentalApplianceServiceHistoryPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [RentalApplianceServiceHistoryMessage]
    def create_rental_appliance_service_history(appliance_id, rental_appliance_service_history_post_message, opts = {})
      data, _status_code, _headers = create_rental_appliance_service_history_with_http_info(appliance_id, rental_appliance_service_history_post_message, opts)
      data
    end

    # Create a service history
    # Creates a service history record for an appliance.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param appliance_id [Integer] 
    # @param rental_appliance_service_history_post_message [RentalApplianceServiceHistoryPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalApplianceServiceHistoryMessage, Integer, Hash)>] RentalApplianceServiceHistoryMessage data, response status code and response headers
    def create_rental_appliance_service_history_with_http_info(appliance_id, rental_appliance_service_history_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalAppliancesApi.create_rental_appliance_service_history ...'
      end
      # verify the required parameter 'appliance_id' is set
      if @api_client.config.client_side_validation && appliance_id.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_id' when calling RentalAppliancesApi.create_rental_appliance_service_history"
      end
      # verify the required parameter 'rental_appliance_service_history_post_message' is set
      if @api_client.config.client_side_validation && rental_appliance_service_history_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'rental_appliance_service_history_post_message' when calling RentalAppliancesApi.create_rental_appliance_service_history"
      end
      # resource path
      local_var_path = '/v1/rentals/appliances/{applianceId}/servicehistory'.sub('{' + 'applianceId' + '}', CGI.escape(appliance_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rental_appliance_service_history_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalApplianceServiceHistoryMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalAppliancesApi.create_rental_appliance_service_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalAppliancesApi#create_rental_appliance_service_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an appliance
    # Deletes an appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param appliance_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_rental_appliances(appliance_id, opts = {})
      delete_rental_appliances_with_http_info(appliance_id, opts)
      nil
    end

    # Delete an appliance
    # Deletes an appliance.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param appliance_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_rental_appliances_with_http_info(appliance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalAppliancesApi.delete_rental_appliances ...'
      end
      # verify the required parameter 'appliance_id' is set
      if @api_client.config.client_side_validation && appliance_id.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_id' when calling RentalAppliancesApi.delete_rental_appliances"
      end
      # resource path
      local_var_path = '/v1/rentals/appliances/{applianceId}'.sub('{' + 'applianceId' + '}', CGI.escape(appliance_id.to_s))

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
        :operation => :"RentalAppliancesApi.delete_rental_appliances",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalAppliancesApi#delete_rental_appliances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an appliance
    # Retrieves a rental appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param appliance_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [RentalApplianceMessage]
    def get_rental_appliance_by_id(appliance_id, opts = {})
      data, _status_code, _headers = get_rental_appliance_by_id_with_http_info(appliance_id, opts)
      data
    end

    # Retrieve an appliance
    # Retrieves a rental appliance.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param appliance_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalApplianceMessage, Integer, Hash)>] RentalApplianceMessage data, response status code and response headers
    def get_rental_appliance_by_id_with_http_info(appliance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalAppliancesApi.get_rental_appliance_by_id ...'
      end
      # verify the required parameter 'appliance_id' is set
      if @api_client.config.client_side_validation && appliance_id.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_id' when calling RentalAppliancesApi.get_rental_appliance_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/appliances/{applianceId}'.sub('{' + 'applianceId' + '}', CGI.escape(appliance_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RentalApplianceMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalAppliancesApi.get_rental_appliance_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalAppliancesApi#get_rental_appliance_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all service history
    # Retrieves all of the service history records for an appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param appliance_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<RentalApplianceServiceHistoryMessage>]
    def get_rental_appliance_service_history(appliance_id, opts = {})
      data, _status_code, _headers = get_rental_appliance_service_history_with_http_info(appliance_id, opts)
      data
    end

    # Retrieve all service history
    # Retrieves all of the service history records for an appliance.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param appliance_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<RentalApplianceServiceHistoryMessage>, Integer, Hash)>] Array<RentalApplianceServiceHistoryMessage> data, response status code and response headers
    def get_rental_appliance_service_history_with_http_info(appliance_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalAppliancesApi.get_rental_appliance_service_history ...'
      end
      # verify the required parameter 'appliance_id' is set
      if @api_client.config.client_side_validation && appliance_id.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_id' when calling RentalAppliancesApi.get_rental_appliance_service_history"
      end
      # resource path
      local_var_path = '/v1/rentals/appliances/{applianceId}/servicehistory'.sub('{' + 'applianceId' + '}', CGI.escape(appliance_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<RentalApplianceServiceHistoryMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalAppliancesApi.get_rental_appliance_service_history",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalAppliancesApi#get_rental_appliance_service_history\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a service history
    # Retrieves a specific service history record for a given appliance.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param appliance_id [Integer] 
    # @param service_history_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [RentalApplianceServiceHistoryMessage]
    def get_rental_appliance_service_history_by_id(appliance_id, service_history_id, opts = {})
      data, _status_code, _headers = get_rental_appliance_service_history_by_id_with_http_info(appliance_id, service_history_id, opts)
      data
    end

    # Retrieve a service history
    # Retrieves a specific service history record for a given appliance.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param appliance_id [Integer] 
    # @param service_history_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalApplianceServiceHistoryMessage, Integer, Hash)>] RentalApplianceServiceHistoryMessage data, response status code and response headers
    def get_rental_appliance_service_history_by_id_with_http_info(appliance_id, service_history_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalAppliancesApi.get_rental_appliance_service_history_by_id ...'
      end
      # verify the required parameter 'appliance_id' is set
      if @api_client.config.client_side_validation && appliance_id.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_id' when calling RentalAppliancesApi.get_rental_appliance_service_history_by_id"
      end
      # verify the required parameter 'service_history_id' is set
      if @api_client.config.client_side_validation && service_history_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_history_id' when calling RentalAppliancesApi.get_rental_appliance_service_history_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/appliances/{applianceId}/servicehistory/{serviceHistoryId}'.sub('{' + 'applianceId' + '}', CGI.escape(appliance_id.to_s)).sub('{' + 'serviceHistoryId' + '}', CGI.escape(service_history_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RentalApplianceServiceHistoryMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalAppliancesApi.get_rental_appliance_service_history_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalAppliancesApi#get_rental_appliance_service_history_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all appliances
    # Retrieves all rental appliances.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to appliances associated to any of the specified rental property identifiers.
    # @option opts [Array<Integer>] :unitids Filters results to appliances associated to any of the specified rental unit identifiers.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<RentalApplianceMessage>]
    def get_rental_appliances(opts = {})
      data, _status_code, _headers = get_rental_appliances_with_http_info(opts)
      data
    end

    # Retrieve all appliances
    # Retrieves all rental appliances.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to appliances associated to any of the specified rental property identifiers.
    # @option opts [Array<Integer>] :unitids Filters results to appliances associated to any of the specified rental unit identifiers.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<RentalApplianceMessage>, Integer, Hash)>] Array<RentalApplianceMessage> data, response status code and response headers
    def get_rental_appliances_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalAppliancesApi.get_rental_appliances ...'
      end
      # resource path
      local_var_path = '/v1/rentals/appliances'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'propertyids'] = @api_client.build_collection_param(opts[:'propertyids'], :multi) if !opts[:'propertyids'].nil?
      query_params[:'unitids'] = @api_client.build_collection_param(opts[:'unitids'], :multi) if !opts[:'unitids'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<RentalApplianceMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalAppliancesApi.get_rental_appliances",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalAppliancesApi#get_rental_appliances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an appliance
    # Updates a rental appliance.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param appliance_id [Integer] 
    # @param rental_appliance_put_message [RentalAppliancePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [RentalApplianceMessage]
    def update_rental_appliance(appliance_id, rental_appliance_put_message, opts = {})
      data, _status_code, _headers = update_rental_appliance_with_http_info(appliance_id, rental_appliance_put_message, opts)
      data
    end

    # Update an appliance
    # Updates a rental appliance.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param appliance_id [Integer] 
    # @param rental_appliance_put_message [RentalAppliancePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalApplianceMessage, Integer, Hash)>] RentalApplianceMessage data, response status code and response headers
    def update_rental_appliance_with_http_info(appliance_id, rental_appliance_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalAppliancesApi.update_rental_appliance ...'
      end
      # verify the required parameter 'appliance_id' is set
      if @api_client.config.client_side_validation && appliance_id.nil?
        fail ArgumentError, "Missing the required parameter 'appliance_id' when calling RentalAppliancesApi.update_rental_appliance"
      end
      # verify the required parameter 'rental_appliance_put_message' is set
      if @api_client.config.client_side_validation && rental_appliance_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'rental_appliance_put_message' when calling RentalAppliancesApi.update_rental_appliance"
      end
      # resource path
      local_var_path = '/v1/rentals/appliances/{applianceId}'.sub('{' + 'applianceId' + '}', CGI.escape(appliance_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rental_appliance_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalApplianceMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalAppliancesApi.update_rental_appliance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalAppliancesApi#update_rental_appliance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
