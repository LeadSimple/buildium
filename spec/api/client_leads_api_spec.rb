=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.     

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Buildium::ClientLeadsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ClientLeadsApi' do
  before do
    # run before each test
    @api_instance = Buildium::ClientLeadsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ClientLeadsApi' do
    it 'should create an instance of ClientLeadsApi' do
      expect(@api_instance).to be_instance_of(Buildium::ClientLeadsApi)
    end
  end

  # unit tests for get_client_leads
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
  # @return [Array<ClientLeadMessage>]
  describe 'get_client_leads test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_prospective_client
  # Retrieve a client lead
  # Retrieves a specific client lead              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Administration &amp;gt; All Property Management&lt;/span&gt; - &#x60;View&#x60;
  # @param client_lead_id 
  # @param [Hash] opts the optional parameters
  # @return [ClientLeadMessage]
  describe 'get_prospective_client test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
