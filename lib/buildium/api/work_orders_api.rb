=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.     

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'cgi'

module Buildium
  class WorkOrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a work order
    # Creates a work order.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Work Orders</span> - `Edit`
    # @param work_order_post_message [WorkOrderPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [WorkOrderMessage]
    def create_work_order(work_order_post_message, opts = {})
      data, _status_code, _headers = create_work_order_with_http_info(work_order_post_message, opts)
      data
    end

    # Create a work order
    # Creates a work order.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Work Orders&lt;/span&gt; - &#x60;Edit&#x60;
    # @param work_order_post_message [WorkOrderPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkOrderMessage, Integer, Hash)>] WorkOrderMessage data, response status code and response headers
    def create_work_order_with_http_info(work_order_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkOrdersApi.create_work_order ...'
      end
      # verify the required parameter 'work_order_post_message' is set
      if @api_client.config.client_side_validation && work_order_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'work_order_post_message' when calling WorkOrdersApi.create_work_order"
      end
      # resource path
      local_var_path = '/v1/workorders'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(work_order_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'WorkOrderMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"WorkOrdersApi.create_work_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkOrdersApi#create_work_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all work orders
    # Retrieves a list of work orders.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Work Orders</span> - `Read`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is populated.
    # @option opts [Integer] :entityid Filters results to any work order associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field.
    # @option opts [Array<String>] :statuses Filters results by the status of the task associated with the work order. If no status is specified, work orders with any status will be returned.
    # @option opts [String] :type Filters results to any work order with an associated task with the task type specified.
    # @option opts [Integer] :unitid Filters results to any work order associated with the unit identifier.
    # @option opts [Integer] :unitagreementid Filters results to any work order associated with the unit agreement identifier specified.
    # @option opts [Date] :lastupdatedfrom Filters results to any work orders were updated on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :lastupdatedto Filters results to any work orders were updated on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :duedatefrom Filters results to any work orders with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :duedateto Filters results to any work orders with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Integer] :taskcategoryid Filters results to any work orders whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned.
    # @option opts [Array<String>] :priorities Filters results to any work orders that have been assigned to the specified staff user identifier.
    # @option opts [Integer] :assignedtoid Filters results to any work orders that have been assigned to the specified staff user identifier.
    # @option opts [Array<Integer>] :vendorids Filters results to any work orders that have been assigned to the specified vendor identifier.
    # @option opts [Float] :amountfrom Filters results to any work orders whose total amounts are equal or greater than the specified amount.
    # @option opts [Float] :amountto Filters results to any work orders whose total amounts are equal or less than the specified amount.
    # @option opts [Boolean] :isbilled Filters results to work orders that have an associated bill.
    # @option opts [String] :title Filters results to any work orders whose title *contains* the specified value.
    # @option opts [Array<Integer>] :taskids Filters results to work orders that have an associated to a task in the specified list.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<WorkOrderMessage>]
    def get_all_work_orders(opts = {})
      data, _status_code, _headers = get_all_work_orders_with_http_info(opts)
      data
    end

    # Retrieve all work orders
    # Retrieves a list of work orders.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Work Orders&lt;/span&gt; - &#x60;Read&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is populated.
    # @option opts [Integer] :entityid Filters results to any work order associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field.
    # @option opts [Array<String>] :statuses Filters results by the status of the task associated with the work order. If no status is specified, work orders with any status will be returned.
    # @option opts [String] :type Filters results to any work order with an associated task with the task type specified.
    # @option opts [Integer] :unitid Filters results to any work order associated with the unit identifier.
    # @option opts [Integer] :unitagreementid Filters results to any work order associated with the unit agreement identifier specified.
    # @option opts [Date] :lastupdatedfrom Filters results to any work orders were updated on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :lastupdatedto Filters results to any work orders were updated on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :duedatefrom Filters results to any work orders with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Date] :duedateto Filters results to any work orders with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Integer] :taskcategoryid Filters results to any work orders whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned.
    # @option opts [Array<String>] :priorities Filters results to any work orders that have been assigned to the specified staff user identifier.
    # @option opts [Integer] :assignedtoid Filters results to any work orders that have been assigned to the specified staff user identifier.
    # @option opts [Array<Integer>] :vendorids Filters results to any work orders that have been assigned to the specified vendor identifier.
    # @option opts [Float] :amountfrom Filters results to any work orders whose total amounts are equal or greater than the specified amount.
    # @option opts [Float] :amountto Filters results to any work orders whose total amounts are equal or less than the specified amount.
    # @option opts [Boolean] :isbilled Filters results to work orders that have an associated bill.
    # @option opts [String] :title Filters results to any work orders whose title *contains* the specified value.
    # @option opts [Array<Integer>] :taskids Filters results to work orders that have an associated to a task in the specified list.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<WorkOrderMessage>, Integer, Hash)>] Array<WorkOrderMessage> data, response status code and response headers
    def get_all_work_orders_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkOrdersApi.get_all_work_orders ...'
      end
      allowable_values = ["Rental", "RentalOwner", "Association"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      allowable_values = ["New", "InProgress", "Completed", "Deferred", "Closed"]
      if @api_client.config.client_side_validation && opts[:'statuses'] && !opts[:'statuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"statuses\", must include one of #{allowable_values}"
      end
      allowable_values = ["ContactRequest", "ResidentRequest", "Todo", "RentalOwnerRequest"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      allowable_values = ["Low", "Normal", "High"]
      if @api_client.config.client_side_validation && opts[:'priorities'] && !opts[:'priorities'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"priorities\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/workorders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
      query_params[:'statuses'] = @api_client.build_collection_param(opts[:'statuses'], :multi) if !opts[:'statuses'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'unitid'] = opts[:'unitid'] if !opts[:'unitid'].nil?
      query_params[:'unitagreementid'] = opts[:'unitagreementid'] if !opts[:'unitagreementid'].nil?
      query_params[:'lastupdatedfrom'] = opts[:'lastupdatedfrom'] if !opts[:'lastupdatedfrom'].nil?
      query_params[:'lastupdatedto'] = opts[:'lastupdatedto'] if !opts[:'lastupdatedto'].nil?
      query_params[:'duedatefrom'] = opts[:'duedatefrom'] if !opts[:'duedatefrom'].nil?
      query_params[:'duedateto'] = opts[:'duedateto'] if !opts[:'duedateto'].nil?
      query_params[:'taskcategoryid'] = opts[:'taskcategoryid'] if !opts[:'taskcategoryid'].nil?
      query_params[:'priorities'] = @api_client.build_collection_param(opts[:'priorities'], :multi) if !opts[:'priorities'].nil?
      query_params[:'assignedtoid'] = opts[:'assignedtoid'] if !opts[:'assignedtoid'].nil?
      query_params[:'vendorids'] = @api_client.build_collection_param(opts[:'vendorids'], :multi) if !opts[:'vendorids'].nil?
      query_params[:'amountfrom'] = opts[:'amountfrom'] if !opts[:'amountfrom'].nil?
      query_params[:'amountto'] = opts[:'amountto'] if !opts[:'amountto'].nil?
      query_params[:'isbilled'] = opts[:'isbilled'] if !opts[:'isbilled'].nil?
      query_params[:'title'] = opts[:'title'] if !opts[:'title'].nil?
      query_params[:'taskids'] = @api_client.build_collection_param(opts[:'taskids'], :multi) if !opts[:'taskids'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<WorkOrderMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"WorkOrdersApi.get_all_work_orders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkOrdersApi#get_all_work_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a work order
    # Retrieves a specific work order.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Work Orders</span> - `Read`
    # @param work_order_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [WorkOrderMessage]
    def get_work_order_by_id(work_order_id, opts = {})
      data, _status_code, _headers = get_work_order_by_id_with_http_info(work_order_id, opts)
      data
    end

    # Retrieve a work order
    # Retrieves a specific work order.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Work Orders&lt;/span&gt; - &#x60;Read&#x60;
    # @param work_order_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkOrderMessage, Integer, Hash)>] WorkOrderMessage data, response status code and response headers
    def get_work_order_by_id_with_http_info(work_order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkOrdersApi.get_work_order_by_id ...'
      end
      # verify the required parameter 'work_order_id' is set
      if @api_client.config.client_side_validation && work_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'work_order_id' when calling WorkOrdersApi.get_work_order_by_id"
      end
      # resource path
      local_var_path = '/v1/workorders/{workOrderId}'.sub('{' + 'workOrderId' + '}', CGI.escape(work_order_id.to_s))

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
      return_type = opts[:debug_return_type] || 'WorkOrderMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"WorkOrdersApi.get_work_order_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkOrdersApi#get_work_order_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a work order
    # Updates a work order.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Maintenance &gt; Work Orders</span> - `Edit`
    # @param work_order_id [Integer] 
    # @param work_order_put_message [WorkOrderPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [WorkOrderMessage]
    def update_work_order(work_order_id, work_order_put_message, opts = {})
      data, _status_code, _headers = update_work_order_with_http_info(work_order_id, work_order_put_message, opts)
      data
    end

    # Update a work order
    # Updates a work order.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Work Orders&lt;/span&gt; - &#x60;Edit&#x60;
    # @param work_order_id [Integer] 
    # @param work_order_put_message [WorkOrderPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkOrderMessage, Integer, Hash)>] WorkOrderMessage data, response status code and response headers
    def update_work_order_with_http_info(work_order_id, work_order_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkOrdersApi.update_work_order ...'
      end
      # verify the required parameter 'work_order_id' is set
      if @api_client.config.client_side_validation && work_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'work_order_id' when calling WorkOrdersApi.update_work_order"
      end
      # verify the required parameter 'work_order_put_message' is set
      if @api_client.config.client_side_validation && work_order_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'work_order_put_message' when calling WorkOrdersApi.update_work_order"
      end
      # resource path
      local_var_path = '/v1/workorders/{workOrderId}'.sub('{' + 'workOrderId' + '}', CGI.escape(work_order_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(work_order_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'WorkOrderMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"WorkOrdersApi.update_work_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkOrdersApi#update_work_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
