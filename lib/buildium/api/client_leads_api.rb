=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.     

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'cgi'

module Buildium
  class ClientLeadsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve all client leads
    # Retrieves all client leads              <br /><br />              Note: When using the `orderby` query string parameter, the only supported options are DateReceived.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration &gt; All Property Management</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :leadstatuses Filters results to any client leads that are in one of the given statuses.
    # @option opts [Array<String>] :propertytypes Filters results to any client leads that have a property in one of the given property types.
    # @option opts [Time] :datereceivedfrom Filters results to any client leads that were received on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Time] :datereceivedto Filters results to any client leads that were received on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Boolean] :includecreditedleads This will also return client leads that were credited. By default credited leads will not be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<ClientLeadMessage>]
    def get_client_leads(opts = {})
      data, _status_code, _headers = get_client_leads_with_http_info(opts)
      data
    end

    # Retrieve all client leads
    # Retrieves all client leads              &lt;br /&gt;&lt;br /&gt;              Note: When using the &#x60;orderby&#x60; query string parameter, the only supported options are DateReceived.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; All Property Management&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :leadstatuses Filters results to any client leads that are in one of the given statuses.
    # @option opts [Array<String>] :propertytypes Filters results to any client leads that have a property in one of the given property types.
    # @option opts [Time] :datereceivedfrom Filters results to any client leads that were received on or after the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Time] :datereceivedto Filters results to any client leads that were received on or before the specified date. The value must be formatted as YYYY-MM-DD.
    # @option opts [Boolean] :includecreditedleads This will also return client leads that were credited. By default credited leads will not be returned.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<ClientLeadMessage>, Integer, Hash)>] Array<ClientLeadMessage> data, response status code and response headers
    def get_client_leads_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientLeadsApi.get_client_leads ...'
      end
      allowable_values = ["Unknown", "New", "Contacting", "Qualifying", "Closing", "ClosedWon", "ClosedLost"]
      if @api_client.config.client_side_validation && opts[:'leadstatuses'] && !opts[:'leadstatuses'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"leadstatuses\", must include one of #{allowable_values}"
      end
      allowable_values = ["SingleHomeUpToThreeHundredThousand", "SingleHomeThreeHundredToFiveHundredThousand", "SingleHomeFiveHundredThousandToOneMillion", "SingleHomeOverOneMillion", "MultiFamilyTwoToFourUnits", "MultiFamilyFiveToNineteenUnits", "MultiFamilyTwentyToFortyNineUnits", "MultiFamilyOverOneHundredUnits", "OfficeLessThanTenThousandSqFt", "OfficeTenThousandToOneHundredThousandSqFt", "OfficeOverOneHundredThousandSqFt", "RetailLessThanTenThousandSqFt", "RetailTenThousandToOneHundredThousandSqFt", "RetailOverOneHundredThousandSqFt", "LightManufacturingUpToOneHundredThousandSqFt", "LightManufacturingOverOneHundredThousandSqFt", "WarehouseUpToOneHundredThousandSqFt", "WarehouseOverOneHundredThousandSqFt", "VacationOneToTwoUnits", "VacationOverThreeUnits", "ParkingGarage", "OtherAssociation", "BiotechMissionCritical", "HOATwoToFortyNineUnits", "HOAFiftyToNinetyNineUnits", "HOAOverOneHundredUnits", "COATwoToFortyNineUnits", "COAFiftyToNinetyNineUnits", "COAOverOneHundredUnits", "MobileHomeCommunity"]
      if @api_client.config.client_side_validation && opts[:'propertytypes'] && !opts[:'propertytypes'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"propertytypes\", must include one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/clientleads'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'leadstatuses'] = @api_client.build_collection_param(opts[:'leadstatuses'], :multi) if !opts[:'leadstatuses'].nil?
      query_params[:'propertytypes'] = @api_client.build_collection_param(opts[:'propertytypes'], :multi) if !opts[:'propertytypes'].nil?
      query_params[:'datereceivedfrom'] = opts[:'datereceivedfrom'] if !opts[:'datereceivedfrom'].nil?
      query_params[:'datereceivedto'] = opts[:'datereceivedto'] if !opts[:'datereceivedto'].nil?
      query_params[:'includecreditedleads'] = opts[:'includecreditedleads'] if !opts[:'includecreditedleads'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<ClientLeadMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ClientLeadsApi.get_client_leads",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientLeadsApi#get_client_leads\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a client lead
    # Retrieves a specific client lead              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration &gt; All Property Management</span> - `View`
    # @param client_lead_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [ClientLeadMessage]
    def get_prospective_client(client_lead_id, opts = {})
      data, _status_code, _headers = get_prospective_client_with_http_info(client_lead_id, opts)
      data
    end

    # Retrieve a client lead
    # Retrieves a specific client lead              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; All Property Management&lt;/span&gt; - &#x60;View&#x60;
    # @param client_lead_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientLeadMessage, Integer, Hash)>] ClientLeadMessage data, response status code and response headers
    def get_prospective_client_with_http_info(client_lead_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ClientLeadsApi.get_prospective_client ...'
      end
      # verify the required parameter 'client_lead_id' is set
      if @api_client.config.client_side_validation && client_lead_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_lead_id' when calling ClientLeadsApi.get_prospective_client"
      end
      # resource path
      local_var_path = '/v1/clientleads/{clientLeadId}'.sub('{' + 'clientLeadId' + '}', CGI.escape(client_lead_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ClientLeadMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ClientLeadsApi.get_prospective_client",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ClientLeadsApi#get_prospective_client\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end