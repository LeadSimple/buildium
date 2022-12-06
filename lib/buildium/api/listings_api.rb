=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class ListingsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a listing contact
    # Create a listing contact. Note, at least one contact field (phone number, email or website) is required for the listing contact.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View` `Edit`
    # @param listing_contact_save_message [ListingContactSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [ListingContactMessage]
    def create_listing_contact(listing_contact_save_message, opts = {})
      data, _status_code, _headers = create_listing_contact_with_http_info(listing_contact_save_message, opts)
      data
    end

    # Create a listing contact
    # Create a listing contact. Note, at least one contact field (phone number, email or website) is required for the listing contact.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Listings&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param listing_contact_save_message [ListingContactSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListingContactMessage, Integer, Hash)>] ListingContactMessage data, response status code and response headers
    def create_listing_contact_with_http_info(listing_contact_save_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.create_listing_contact ...'
      end
      # verify the required parameter 'listing_contact_save_message' is set
      if @api_client.config.client_side_validation && listing_contact_save_message.nil?
        fail ArgumentError, "Missing the required parameter 'listing_contact_save_message' when calling ListingsApi.create_listing_contact"
      end
      # resource path
      local_var_path = '/v1/rentals/units/listingcontacts'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(listing_contact_save_message)

      # return_type
      return_type = opts[:debug_return_type] || 'ListingContactMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.create_listing_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#create_listing_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a listing
    # Deleting a listing will immediately remove it from your Buildium public website. The listing will also be removed  from any syndicated sites within 24-48 hours.<br /><br />Listings manually created on craigslist using the Buildium  guided tool will not be removed. The listing must be removed using craigslist's tools provided in your craigslist account.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View` `Edit` `Delete`
    # @param unit_id [Integer] The rental property unit identifier.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delist_unit(unit_id, opts = {})
      delist_unit_with_http_info(unit_id, opts)
      nil
    end

    # Delete a listing
    # Deleting a listing will immediately remove it from your Buildium public website. The listing will also be removed  from any syndicated sites within 24-48 hours.&lt;br /&gt;&lt;br /&gt;Listings manually created on craigslist using the Buildium  guided tool will not be removed. The listing must be removed using craigslist&#39;s tools provided in your craigslist account.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Listings&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60; &#x60;Delete&#x60;
    # @param unit_id [Integer] The rental property unit identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delist_unit_with_http_info(unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.delist_unit ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling ListingsApi.delist_unit"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/listing'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
        :operation => :"ListingsApi.delist_unit",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#delist_unit\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all listing contacts
    # Retrieves all listing contacts.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<ListingContactMessage>]
    def get_all_listing_contacts(opts = {})
      data, _status_code, _headers = get_all_listing_contacts_with_http_info(opts)
      data
    end

    # Retrieve all listing contacts
    # Retrieves all listing contacts.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Listings&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<ListingContactMessage>, Integer, Hash)>] Array<ListingContactMessage> data, response status code and response headers
    def get_all_listing_contacts_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_all_listing_contacts ...'
      end
      # resource path
      local_var_path = '/v1/rentals/units/listingcontacts'

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
      return_type = opts[:debug_return_type] || 'Array<ListingContactMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.get_all_listing_contacts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#get_all_listing_contacts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a listing contact
    # Retrieves a specific listing contact.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View`
    # @param listing_contact_id [Integer] The listing contact identifier.
    # @param [Hash] opts the optional parameters
    # @return [ListingContactMessage]
    def get_listing_contact_by_id(listing_contact_id, opts = {})
      data, _status_code, _headers = get_listing_contact_by_id_with_http_info(listing_contact_id, opts)
      data
    end

    # Retrieve a listing contact
    # Retrieves a specific listing contact.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Listings&lt;/span&gt; - &#x60;View&#x60;
    # @param listing_contact_id [Integer] The listing contact identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListingContactMessage, Integer, Hash)>] ListingContactMessage data, response status code and response headers
    def get_listing_contact_by_id_with_http_info(listing_contact_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_listing_contact_by_id ...'
      end
      # verify the required parameter 'listing_contact_id' is set
      if @api_client.config.client_side_validation && listing_contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_contact_id' when calling ListingsApi.get_listing_contact_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/units/listingcontacts/{listingContactId}'.sub('{' + 'listingContactId' + '}', CGI.escape(listing_contact_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListingContactMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.get_listing_contact_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#get_listing_contact_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a listing
    # Retrieves a specific listing.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View`  <br /><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param unit_id [Integer] The rental unit identifier.
    # @param [Hash] opts the optional parameters
    # @return [ListingMessage]
    def get_listing_for_unit_async(unit_id, opts = {})
      data, _status_code, _headers = get_listing_for_unit_async_with_http_info(unit_id, opts)
      data
    end

    # Retrieve a listing
    # Retrieves a specific listing.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Listings&lt;/span&gt; - &#x60;View&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param unit_id [Integer] The rental unit identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListingMessage, Integer, Hash)>] ListingMessage data, response status code and response headers
    def get_listing_for_unit_async_with_http_info(unit_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_listing_for_unit_async ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling ListingsApi.get_listing_for_unit_async"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/listing'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ListingMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.get_listing_for_unit_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#get_listing_for_unit_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all listings
    # Retrieves all listings.  <br /><br /><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View`  <br /><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; refers to.
    # @option opts [Integer] :entityid Filters results to only listings that are associated with the specified entity id value. The id must be of the type specified in &#x60;EntityType&#x60; property.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<ListingMessage>]
    def get_listings_async(opts = {})
      data, _status_code, _headers = get_listings_async_with_http_info(opts)
      data
    end

    # Retrieve all listings
    # Retrieves all listings.  &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Listings&lt;/span&gt; - &#x60;View&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; refers to.
    # @option opts [Integer] :entityid Filters results to only listings that are associated with the specified entity id value. The id must be of the type specified in &#x60;EntityType&#x60; property.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<ListingMessage>, Integer, Hash)>] Array<ListingMessage> data, response status code and response headers
    def get_listings_async_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.get_listings_async ...'
      end
      allowable_values = ["Property", "RentalOwner"]
      if @api_client.config.client_side_validation && opts[:'entitytype'] && !allowable_values.include?(opts[:'entitytype'])
        fail ArgumentError, "invalid value for \"entitytype\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/rentals/units/listings'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'entitytype'] = opts[:'entitytype'] if !opts[:'entitytype'].nil?
      query_params[:'entityid'] = opts[:'entityid'] if !opts[:'entityid'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<ListingMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.get_listings_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#get_listings_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a listing contact
    # Update a listing contact. Note, at least one contact field (phone number, email or website) is required for the listing contact.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View` `Edit`
    # @param listing_contact_id [Integer] The listing contact identifier.
    # @param listing_contact_save_message [ListingContactSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [ListingContactMessage]
    def update_listing_contact(listing_contact_id, listing_contact_save_message, opts = {})
      data, _status_code, _headers = update_listing_contact_with_http_info(listing_contact_id, listing_contact_save_message, opts)
      data
    end

    # Update a listing contact
    # Update a listing contact. Note, at least one contact field (phone number, email or website) is required for the listing contact.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Listings&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param listing_contact_id [Integer] The listing contact identifier.
    # @param listing_contact_save_message [ListingContactSaveMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListingContactMessage, Integer, Hash)>] ListingContactMessage data, response status code and response headers
    def update_listing_contact_with_http_info(listing_contact_id, listing_contact_save_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.update_listing_contact ...'
      end
      # verify the required parameter 'listing_contact_id' is set
      if @api_client.config.client_side_validation && listing_contact_id.nil?
        fail ArgumentError, "Missing the required parameter 'listing_contact_id' when calling ListingsApi.update_listing_contact"
      end
      # verify the required parameter 'listing_contact_save_message' is set
      if @api_client.config.client_side_validation && listing_contact_save_message.nil?
        fail ArgumentError, "Missing the required parameter 'listing_contact_save_message' when calling ListingsApi.update_listing_contact"
      end
      # resource path
      local_var_path = '/v1/rentals/units/listingcontacts/{listingContactId}'.sub('{' + 'listingContactId' + '}', CGI.escape(listing_contact_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(listing_contact_save_message)

      # return_type
      return_type = opts[:debug_return_type] || 'ListingContactMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.update_listing_contact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#update_listing_contact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a listing
    # Listings will automatically pull in the information, features, and media that exists for the property and unit details.  <br /><br />  The listing will post immediately to your Buildium public website, and will post to the selected syndicated sites within 24-48 hours.  <br /><br />  Note, a unit can only ever have one active listing. When this endpoint is called if no listing exists one will be created, otherwise the existing listing will be updated.   <br /><br /><span class=\"permissionBlock\">Rentals &gt; Listings</span> - `View` `Edit`  <br /><span class=\"permissionBlock\">Rentals &gt; Rental properties and units</span> - `View` `Edit`
    # @param unit_id [Integer] 
    # @param listing_put_message [ListingPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [ListingMessage]
    def upsert_listings_async(unit_id, listing_put_message, opts = {})
      data, _status_code, _headers = upsert_listings_async_with_http_info(unit_id, listing_put_message, opts)
      data
    end

    # Create a listing
    # Listings will automatically pull in the information, features, and media that exists for the property and unit details.  &lt;br /&gt;&lt;br /&gt;  The listing will post immediately to your Buildium public website, and will post to the selected syndicated sites within 24-48 hours.  &lt;br /&gt;&lt;br /&gt;  Note, a unit can only ever have one active listing. When this endpoint is called if no listing exists one will be created, otherwise the existing listing will be updated.   &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Listings&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Rental properties and units&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param unit_id [Integer] 
    # @param listing_put_message [ListingPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListingMessage, Integer, Hash)>] ListingMessage data, response status code and response headers
    def upsert_listings_async_with_http_info(unit_id, listing_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ListingsApi.upsert_listings_async ...'
      end
      # verify the required parameter 'unit_id' is set
      if @api_client.config.client_side_validation && unit_id.nil?
        fail ArgumentError, "Missing the required parameter 'unit_id' when calling ListingsApi.upsert_listings_async"
      end
      # verify the required parameter 'listing_put_message' is set
      if @api_client.config.client_side_validation && listing_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'listing_put_message' when calling ListingsApi.upsert_listings_async"
      end
      # resource path
      local_var_path = '/v1/rentals/units/{unitId}/listing'.sub('{' + 'unitId' + '}', CGI.escape(unit_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(listing_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'ListingMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"ListingsApi.upsert_listings_async",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ListingsApi#upsert_listings_async\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
