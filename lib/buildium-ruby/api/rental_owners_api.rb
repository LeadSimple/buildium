=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class RentalOwnersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an owner
    # Creates a rental owner.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Property Rental Owners</span> - `View` `Edit`
    # @param rental_owner_post_message [RentalOwnerPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [RentalOwnerMessage]
    def create_rental_owner(rental_owner_post_message, opts = {})
      data, _status_code, _headers = create_rental_owner_with_http_info(rental_owner_post_message, opts)
      data
    end

    # Create an owner
    # Creates a rental owner.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param rental_owner_post_message [RentalOwnerPostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalOwnerMessage, Integer, Hash)>] RentalOwnerMessage data, response status code and response headers
    def create_rental_owner_with_http_info(rental_owner_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.create_rental_owner ...'
      end
      # verify the required parameter 'rental_owner_post_message' is set
      if @api_client.config.client_side_validation && rental_owner_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_post_message' when calling RentalOwnersApi.create_rental_owner"
      end
      # resource path
      local_var_path = '/v1/rentals/owners'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rental_owner_post_message)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalOwnerMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalOwnersApi.create_rental_owner",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#create_rental_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a note
    # Creates a new Rental Owner note.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Property Rental Owners</span> - `View` `Edit`
    # @param rental_owner_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def create_rental_owner_note(rental_owner_id, note_post_message, opts = {})
      data, _status_code, _headers = create_rental_owner_note_with_http_info(rental_owner_id, note_post_message, opts)
      data
    end

    # Create a note
    # Creates a new Rental Owner note.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param rental_owner_id [Integer] 
    # @param note_post_message [NotePostMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def create_rental_owner_note_with_http_info(rental_owner_id, note_post_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.create_rental_owner_note ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.create_rental_owner_note"
      end
      # verify the required parameter 'note_post_message' is set
      if @api_client.config.client_side_validation && note_post_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_post_message' when calling RentalOwnersApi.create_rental_owner_note"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}/notes'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s))

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
        :operation => :"RentalOwnersApi.create_rental_owner_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#create_rental_owner_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve an owner
    # Retrieves a specific rental owner.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Property Rental Owners</span> - `View`
    # @param rental_owner_id [Integer] The rental owner identifier.
    # @param [Hash] opts the optional parameters
    # @return [RentalOwnerMessage]
    def get_rental_owner_by_id(rental_owner_id, opts = {})
      data, _status_code, _headers = get_rental_owner_by_id_with_http_info(rental_owner_id, opts)
      data
    end

    # Retrieve an owner
    # Retrieves a specific rental owner.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60;
    # @param rental_owner_id [Integer] The rental owner identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalOwnerMessage, Integer, Hash)>] RentalOwnerMessage data, response status code and response headers
    def get_rental_owner_by_id_with_http_info(rental_owner_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.get_rental_owner_by_id ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.get_rental_owner_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RentalOwnerMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalOwnersApi.get_rental_owner_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#get_rental_owner_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a note
    # Retrieves a rental owner note.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Property Rental Owners</span> - `View`
    # @param rental_owner_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def get_rental_owner_note_by_id(rental_owner_id, note_id, opts = {})
      data, _status_code, _headers = get_rental_owner_note_by_id_with_http_info(rental_owner_id, note_id, opts)
      data
    end

    # Retrieve a note
    # Retrieves a rental owner note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60;
    # @param rental_owner_id [Integer] 
    # @param note_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def get_rental_owner_note_by_id_with_http_info(rental_owner_id, note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.get_rental_owner_note_by_id ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.get_rental_owner_note_by_id"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling RentalOwnersApi.get_rental_owner_note_by_id"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}/notes/{noteId}'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"RentalOwnersApi.get_rental_owner_note_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#get_rental_owner_note_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieves all notes
    # Retrieves all rental owner notes.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Property Rental Owners</span> - `View`
    # @param rental_owner_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<NoteMessage>]
    def get_rental_owner_notes(rental_owner_id, opts = {})
      data, _status_code, _headers = get_rental_owner_notes_with_http_info(rental_owner_id, opts)
      data
    end

    # Retrieves all notes
    # Retrieves all rental owner notes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60;
    # @param rental_owner_id [Integer] 
    # @param [Hash] opts the optional parameters
    # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
    # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<NoteMessage>, Integer, Hash)>] Array<NoteMessage> data, response status code and response headers
    def get_rental_owner_notes_with_http_info(rental_owner_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.get_rental_owner_notes ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.get_rental_owner_notes"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}/notes'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s))

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
        :operation => :"RentalOwnersApi.get_rental_owner_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#get_rental_owner_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all owners
    # Retrieves a list of rental owners.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Property Rental Owners</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to any lease whose unit belongs to the specified set of property ids.
    # @option opts [String] :status Filters results by the status of the user. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; users will be returned.
    # @option opts [Integer] :agreementdaysremaining Filters results by the days remaining on their lease agreement.
    # @option opts [String] :ownername Filters results to any owner whose name *contains* the specified value.
    # @option opts [String] :phone Filters results to any owner who has a phone number that *contains* the specified value.
    # @option opts [Time] :lastupdatedfrom Filters results to any rental owners that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any rental owners that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<RentalOwnerMessage>]
    def get_rental_owners(opts = {})
      data, _status_code, _headers = get_rental_owners_with_http_info(opts)
      data
    end

    # Retrieve all owners
    # Retrieves a list of rental owners.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :propertyids Filters results to any lease whose unit belongs to the specified set of property ids.
    # @option opts [String] :status Filters results by the status of the user. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; users will be returned.
    # @option opts [Integer] :agreementdaysremaining Filters results by the days remaining on their lease agreement.
    # @option opts [String] :ownername Filters results to any owner whose name *contains* the specified value.
    # @option opts [String] :phone Filters results to any owner who has a phone number that *contains* the specified value.
    # @option opts [Time] :lastupdatedfrom Filters results to any rental owners that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [Time] :lastupdatedto Filters results to any rental owners that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<RentalOwnerMessage>, Integer, Hash)>] Array<RentalOwnerMessage> data, response status code and response headers
    def get_rental_owners_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.get_rental_owners ...'
      end
      allowable_values = ["Inactive", "Active"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/rentals/owners'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'propertyids'] = @api_client.build_collection_param(opts[:'propertyids'], :multi) if !opts[:'propertyids'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'agreementdaysremaining'] = opts[:'agreementdaysremaining'] if !opts[:'agreementdaysremaining'].nil?
      query_params[:'ownername'] = opts[:'ownername'] if !opts[:'ownername'].nil?
      query_params[:'phone'] = opts[:'phone'] if !opts[:'phone'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<RentalOwnerMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalOwnersApi.get_rental_owners",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#get_rental_owners\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an owner
    # Updates a rental owner.  <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Property Rental Owners</span> - `View` `Edit`
    # @param rental_owner_id [Integer] The identifier of the rental owner to update.
    # @param rental_owner_put_message [RentalOwnerPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [RentalOwnerMessage]
    def update_rental_owner(rental_owner_id, rental_owner_put_message, opts = {})
      data, _status_code, _headers = update_rental_owner_with_http_info(rental_owner_id, rental_owner_put_message, opts)
      data
    end

    # Update an owner
    # Updates a rental owner.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param rental_owner_id [Integer] The identifier of the rental owner to update.
    # @param rental_owner_put_message [RentalOwnerPutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RentalOwnerMessage, Integer, Hash)>] RentalOwnerMessage data, response status code and response headers
    def update_rental_owner_with_http_info(rental_owner_id, rental_owner_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.update_rental_owner ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.update_rental_owner"
      end
      # verify the required parameter 'rental_owner_put_message' is set
      if @api_client.config.client_side_validation && rental_owner_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_put_message' when calling RentalOwnersApi.update_rental_owner"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(rental_owner_put_message)

      # return_type
      return_type = opts[:debug_return_type] || 'RentalOwnerMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"RentalOwnersApi.update_rental_owner",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#update_rental_owner\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a note
    # Updates a Rental Owner note.              <br /><br /><strong>NOTE:</strong> Any field not included in the update request will be set to either an empty string or `null` in the database depending on the field definition. <br />The recommended workflow to ensure no data is inadvertently overwritten is to execute a `GET` request for the resource you're about to update and then use this response to fill any of the fields that are not being updated.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Rentals &gt; Property Rental Owners</span> - `View` `Edit`
    # @param rental_owner_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [NoteMessage]
    def update_rental_owner_note(rental_owner_id, note_id, note_put_message, opts = {})
      data, _status_code, _headers = update_rental_owner_note_with_http_info(rental_owner_id, note_id, note_put_message, opts)
      data
    end

    # Update a note
    # Updates a Rental Owner note.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
    # @param rental_owner_id [Integer] 
    # @param note_id [Integer] 
    # @param note_put_message [NotePutMessage] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NoteMessage, Integer, Hash)>] NoteMessage data, response status code and response headers
    def update_rental_owner_note_with_http_info(rental_owner_id, note_id, note_put_message, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: RentalOwnersApi.update_rental_owner_note ...'
      end
      # verify the required parameter 'rental_owner_id' is set
      if @api_client.config.client_side_validation && rental_owner_id.nil?
        fail ArgumentError, "Missing the required parameter 'rental_owner_id' when calling RentalOwnersApi.update_rental_owner_note"
      end
      # verify the required parameter 'note_id' is set
      if @api_client.config.client_side_validation && note_id.nil?
        fail ArgumentError, "Missing the required parameter 'note_id' when calling RentalOwnersApi.update_rental_owner_note"
      end
      # verify the required parameter 'note_put_message' is set
      if @api_client.config.client_side_validation && note_put_message.nil?
        fail ArgumentError, "Missing the required parameter 'note_put_message' when calling RentalOwnersApi.update_rental_owner_note"
      end
      # resource path
      local_var_path = '/v1/rentals/owners/{rentalOwnerId}/notes/{noteId}'.sub('{' + 'rentalOwnerId' + '}', CGI.escape(rental_owner_id.to_s)).sub('{' + 'noteId' + '}', CGI.escape(note_id.to_s))

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
        :operation => :"RentalOwnersApi.update_rental_owner_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RentalOwnersApi#update_rental_owner_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end