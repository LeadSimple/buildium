=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Buildium::ApplicationResponseMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::ApplicationResponseMessage do
  let(:instance) { Buildium::ApplicationResponseMessage.new }

  describe 'test an instance of ApplicationResponseMessage' do
    it 'should create an instance of ApplicationResponseMessage' do
      expect(instance).to be_instance_of(Buildium::ApplicationResponseMessage)
    end
  end
  describe 'test attribute "section_label"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "section_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ApplicantInformation", "PropertyInformation", "RentalHistory", "Employment", "References", "Cosigners", "AdditionalOccupants", "Pets", "Vehicles", "TermsAndConditions", "Other"])
      # validator.allowable_values.each do |value|
      #   expect { instance.section_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "section_responses"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
