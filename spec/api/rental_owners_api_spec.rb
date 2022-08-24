=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Buildium::RentalOwnersApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RentalOwnersApi' do
  before do
    # run before each test
    @api_instance = Buildium::RentalOwnersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RentalOwnersApi' do
    it 'should create an instance of RentalOwnersApi' do
      expect(@api_instance).to be_instance_of(Buildium::RentalOwnersApi)
    end
  end

  # unit tests for create_rental_owner
  # Create an owner
  # Creates a rental owner.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param rental_owner_post_message 
  # @param [Hash] opts the optional parameters
  # @return [RentalOwnerMessage]
  describe 'create_rental_owner test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_rental_owner_note
  # Create a note
  # Creates a new Rental Owner note.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param rental_owner_id 
  # @param note_post_message 
  # @param [Hash] opts the optional parameters
  # @return [NoteMessage]
  describe 'create_rental_owner_note test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_rental_owner_by_id
  # Retrieve an owner
  # Retrieves a specific rental owner.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60;
  # @param rental_owner_id The rental owner identifier.
  # @param [Hash] opts the optional parameters
  # @return [RentalOwnerMessage]
  describe 'get_rental_owner_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_rental_owner_note_by_id
  # Retrieve a note
  # Retrieves a rental owner note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60;
  # @param rental_owner_id 
  # @param note_id 
  # @param [Hash] opts the optional parameters
  # @return [NoteMessage]
  describe 'get_rental_owner_note_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_rental_owner_notes
  # Retrieves all notes
  # Retrieves all rental owner notes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60;
  # @param rental_owner_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<NoteMessage>]
  describe 'get_rental_owner_notes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_rental_owners
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
  # @return [Array<RentalOwnerMessage>]
  describe 'get_rental_owners test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_rental_owner
  # Update an owner
  # Updates a rental owner.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param rental_owner_id The identifier of the rental owner to update.
  # @param rental_owner_put_message 
  # @param [Hash] opts the optional parameters
  # @return [RentalOwnerMessage]
  describe 'update_rental_owner test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_rental_owner_note
  # Update a note
  # Updates a Rental Owner note.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Property Rental Owners&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param rental_owner_id 
  # @param note_id 
  # @param note_put_message 
  # @param [Hash] opts the optional parameters
  # @return [NoteMessage]
  describe 'update_rental_owner_note test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
