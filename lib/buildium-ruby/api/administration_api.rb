=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'cgi'

module Buildium
  class AdministrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve account info
    # Retrieves information related to the Buildium account.   <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration &gt; Account Information</span> - `View`
    # @param [Hash] opts the optional parameters
    # @return [AccountInfoMessage]
    def get_account_info(opts = {})
      data, _status_code, _headers = get_account_info_with_http_info(opts)
      data
    end

    # Retrieve account info
    # Retrieves information related to the Buildium account.   &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; Account Information&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountInfoMessage, Integer, Hash)>] AccountInfoMessage data, response status code and response headers
    def get_account_info_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdministrationApi.get_account_info ...'
      end
      # resource path
      local_var_path = '/v1/administration/account'

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
      return_type = opts[:debug_return_type] || 'AccountInfoMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AdministrationApi.get_account_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#get_account_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve accounting lock periods
    # Retrieves accounting lock periods.              <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration &gt; Application Settings</span> - `View`
    # @param [Hash] opts the optional parameters
    # @return [AccountingLockPeriodMessage]
    def get_accounting_lock_period_settings(opts = {})
      data, _status_code, _headers = get_accounting_lock_period_settings_with_http_info(opts)
      data
    end

    # Retrieve accounting lock periods
    # Retrieves accounting lock periods.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; Application Settings&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountingLockPeriodMessage, Integer, Hash)>] AccountingLockPeriodMessage data, response status code and response headers
    def get_accounting_lock_period_settings_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdministrationApi.get_accounting_lock_period_settings ...'
      end
      # resource path
      local_var_path = '/v1/administration/accountinglockperiod'

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
      return_type = opts[:debug_return_type] || 'AccountingLockPeriodMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AdministrationApi.get_accounting_lock_period_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#get_accounting_lock_period_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all user roles
    # Retrieves a list of user roles.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration &gt; User Roles</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<UserRoleMessage>]
    def get_all_user_roles(opts = {})
      data, _status_code, _headers = get_all_user_roles_with_http_info(opts)
      data
    end

    # Retrieve all user roles
    # Retrieves a list of user roles.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; User Roles&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<UserRoleMessage>, Integer, Hash)>] Array<UserRoleMessage> data, response status code and response headers
    def get_all_user_roles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdministrationApi.get_all_user_roles ...'
      end
      # resource path
      local_var_path = '/v1/userroles'

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
      return_type = opts[:debug_return_type] || 'Array<UserRoleMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AdministrationApi.get_all_user_roles",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#get_all_user_roles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve all users
    # Retrieves a list of users.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration &gt; Users</span> - `View`
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :roleids Describes the role of the user.
    # @option opts [Array<String>] :usertypes Describes the user type of the user.
    # @option opts [String] :status Filters results by the status of the user. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; staff members will be returned.
    # @option opts [String] :name Filters results to only records whose name *contains* the specified value.
    # @option opts [String] :email Filters results to only records whose email *contains* the specified value.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<UserMessage>]
    def get_all_users(opts = {})
      data, _status_code, _headers = get_all_users_with_http_info(opts)
      data
    end

    # Retrieve all users
    # Retrieves a list of users.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; Users&lt;/span&gt; - &#x60;View&#x60;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :roleids Describes the role of the user.
    # @option opts [Array<String>] :usertypes Describes the user type of the user.
    # @option opts [String] :status Filters results by the status of the user. If no status is specified both &#x60;active&#x60; and &#x60;inactive&#x60; staff members will be returned.
    # @option opts [String] :name Filters results to only records whose name *contains* the specified value.
    # @option opts [String] :email Filters results to only records whose email *contains* the specified value.
    # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
    # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
    # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
    # @return [Array<(Array<UserMessage>, Integer, Hash)>] Array<UserMessage> data, response status code and response headers
    def get_all_users_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdministrationApi.get_all_users ...'
      end
      allowable_values = ["Staff", "RentalOwner", "Vendor"]
      if @api_client.config.client_side_validation && opts[:'usertypes'] && !opts[:'usertypes'].all? { |item| allowable_values.include?(item) }
        fail ArgumentError, "invalid value for \"usertypes\", must include one of #{allowable_values}"
      end
      allowable_values = ["Inactive", "Active"]
      if @api_client.config.client_side_validation && opts[:'status'] && !allowable_values.include?(opts[:'status'])
        fail ArgumentError, "invalid value for \"status\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/v1/users'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'roleids'] = @api_client.build_collection_param(opts[:'roleids'], :multi) if !opts[:'roleids'].nil?
      query_params[:'usertypes'] = @api_client.build_collection_param(opts[:'usertypes'], :multi) if !opts[:'usertypes'].nil?
      query_params[:'status'] = opts[:'status'] if !opts[:'status'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'email'] = opts[:'email'] if !opts[:'email'].nil?
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
      return_type = opts[:debug_return_type] || 'Array<UserMessage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AdministrationApi.get_all_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#get_all_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a user
    # Retrieve a specific user.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration &gt; Users</span> - `View`
    # @param user_id [Integer] The user identifier.
    # @param [Hash] opts the optional parameters
    # @return [UserMessage]
    def get_user_by_id(user_id, opts = {})
      data, _status_code, _headers = get_user_by_id_with_http_info(user_id, opts)
      data
    end

    # Retrieve a user
    # Retrieve a specific user.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; Users&lt;/span&gt; - &#x60;View&#x60;
    # @param user_id [Integer] The user identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserMessage, Integer, Hash)>] UserMessage data, response status code and response headers
    def get_user_by_id_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdministrationApi.get_user_by_id ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AdministrationApi.get_user_by_id"
      end
      # resource path
      local_var_path = '/v1/users/{userId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UserMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AdministrationApi.get_user_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#get_user_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a user role
    # Retrieve a specific user role.  <br /><br /><h4>Required permission(s):</h4><span class=\"permissionBlock\">Administration &gt; User Roles</span> - `View`
    # @param user_role_id [Integer] The user role identifier.
    # @param [Hash] opts the optional parameters
    # @return [UserRoleMessage]
    def get_user_role_by_id(user_role_id, opts = {})
      data, _status_code, _headers = get_user_role_by_id_with_http_info(user_role_id, opts)
      data
    end

    # Retrieve a user role
    # Retrieve a specific user role.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; User Roles&lt;/span&gt; - &#x60;View&#x60;
    # @param user_role_id [Integer] The user role identifier.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserRoleMessage, Integer, Hash)>] UserRoleMessage data, response status code and response headers
    def get_user_role_by_id_with_http_info(user_role_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AdministrationApi.get_user_role_by_id ...'
      end
      # verify the required parameter 'user_role_id' is set
      if @api_client.config.client_side_validation && user_role_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_role_id' when calling AdministrationApi.get_user_role_by_id"
      end
      # resource path
      local_var_path = '/v1/userroles/{userRoleId}'.sub('{' + 'userRoleId' + '}', CGI.escape(user_role_id.to_s))

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
      return_type = opts[:debug_return_type] || 'UserRoleMessage'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['clientId', 'clientSecret']

      new_options = opts.merge(
        :operation => :"AdministrationApi.get_user_role_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#get_user_role_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end