=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.     

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Buildium::AssociationBoardMemberPostMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::AssociationBoardMemberPostMessage do
  let(:instance) { Buildium::AssociationBoardMemberPostMessage.new }

  describe 'test an instance of AssociationBoardMemberPostMessage' do
    it 'should create an instance of AssociationBoardMemberPostMessage' do
      expect(instance).to be_instance_of(Buildium::AssociationBoardMemberPostMessage)
    end
  end
  describe 'test attribute "association_owner_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "board_position_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["President", "VicePresident", "Treasurer", "Secretary", "BoardMember"])
      # validator.allowable_values.each do |value|
      #   expect { instance.board_position_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "start_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
