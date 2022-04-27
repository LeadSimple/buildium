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

# Unit tests for Buildium::RentalUnitPutMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::RentalUnitPutMessage do
  let(:instance) { Buildium::RentalUnitPutMessage.new }

  describe 'test an instance of RentalUnitPutMessage' do
    it 'should create an instance of RentalUnitPutMessage' do
      expect(instance).to be_instance_of(Buildium::RentalUnitPutMessage)
    end
  end
  describe 'test attribute "unit_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unit_size"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "market_rent"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "address"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "unit_bedrooms"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NotSet", "Studio", "OneBed", "TwoBed", "ThreeBed", "FourBed", "FiveBed", "SixBed", "SevenBed", "EightBed", "NineBedPlus"])
      # validator.allowable_values.each do |value|
      #   expect { instance.unit_bedrooms = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "unit_bathrooms"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NotSet", "OneBath", "OnePointFiveBath", "TwoBath", "TwoPointFiveBath", "ThreeBath", "FourBath", "FiveBath", "FivePlusBath", "ThreePointFiveBath", "FourPointFiveBath"])
      # validator.allowable_values.each do |value|
      #   expect { instance.unit_bathrooms = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
