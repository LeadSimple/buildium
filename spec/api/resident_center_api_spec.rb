=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Buildium::ResidentCenterApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ResidentCenterApi' do
  before do
    # run before each test
    @api_instance = Buildium::ResidentCenterApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResidentCenterApi' do
    it 'should create an instance of ResidentCenterApi' do
      expect(@api_instance).to be_instance_of(Buildium::ResidentCenterApi)
    end
  end

  # unit tests for get_resident_center_users
  # Retrieve all resident center users
  # Retrieves all resident center users for both rentals and associations.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Communications &amp;gt; Resident Center Users&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60; is required to retrieve resident center users that are tenants.              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Association owners and tenants&lt;/span&gt; - &#x60;View&#x60; is required to retrieve resident center users that are association owners.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :unitagreementids Filters results to any resident center user who is associated with the specified lease and/or association ownership account identifiers.
  # @option opts [Array<Integer>] :userids Filters results to any resident center user with the specified tenant and/or association owner identifiers.
  # @option opts [Array<String>] :usertypes Filters results to any resident center user with the specified types.
  # @option opts [Array<String>] :residentcenteruserstatuses Filters results to any resident center user with the specified resident center user statuses.
  # @option opts [Boolean] :isautopayenabled If true, filters results to any resident center users who have automatic payments scheduled for the future. If false, filters results to any resident center users  who do not have automatic payments scheduled for the future. If not provided, will not filter results based on automatic payments.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<ResidentCenterUserMessage>]
  describe 'get_resident_center_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
