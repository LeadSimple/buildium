=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Buildium::WorkOrdersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WorkOrdersApi' do
  before do
    # run before each test
    @api_instance = Buildium::WorkOrdersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkOrdersApi' do
    it 'should create an instance of WorkOrdersApi' do
      expect(@api_instance).to be_instance_of(Buildium::WorkOrdersApi)
    end
  end

  # unit tests for create_work_order
  # Create a work order
  # Creates a work order.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Work Orders&lt;/span&gt; - &#x60;Edit&#x60;
  # @param work_order_post_message 
  # @param [Hash] opts the optional parameters
  # @return [WorkOrderMessage]
  describe 'create_work_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_work_orders
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
  # @return [Array<WorkOrderMessage>]
  describe 'get_all_work_orders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_work_order_by_id
  # Retrieve a work order
  # Retrieves a specific work order.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Work Orders&lt;/span&gt; - &#x60;Read&#x60;
  # @param work_order_id 
  # @param [Hash] opts the optional parameters
  # @return [WorkOrderMessage]
  describe 'get_work_order_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_work_order
  # Update a work order
  # Updates a work order.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Maintenance &amp;gt; Work Orders&lt;/span&gt; - &#x60;Edit&#x60;
  # @param work_order_id 
  # @param work_order_put_message 
  # @param [Hash] opts the optional parameters
  # @return [WorkOrderMessage]
  describe 'update_work_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
