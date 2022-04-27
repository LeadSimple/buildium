=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.     

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Buildium::AdministrationApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AdministrationApi' do
  before do
    # run before each test
    @api_instance = Buildium::AdministrationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdministrationApi' do
    it 'should create an instance of AdministrationApi' do
      expect(@api_instance).to be_instance_of(Buildium::AdministrationApi)
    end
  end

  # unit tests for get_account_info
  # Retrieve Account Info
  # Retrieves account info.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; Account Information&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @return [AccountInfoMessage]
  describe 'get_account_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_user_roles
  # Retrieve all user roles
  # Retrieves a list of user roles.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; User Roles&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<UserRoleMessage>]
  describe 'get_all_user_roles test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_users
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
  # @return [Array<UserMessage>]
  describe 'get_all_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_by_id
  # Retrieve a user
  # Retrieve a specific user.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; Users&lt;/span&gt; - &#x60;View&#x60;
  # @param user_id The user identifier.
  # @param [Hash] opts the optional parameters
  # @return [UserMessage]
  describe 'get_user_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_role_by_id
  # Retrieve a user role
  # Retrieve a specific user role.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; User Roles&lt;/span&gt; - &#x60;View&#x60;
  # @param user_role_id The user role identifier.
  # @param [Hash] opts the optional parameters
  # @return [UserRoleMessage]
  describe 'get_user_role_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
