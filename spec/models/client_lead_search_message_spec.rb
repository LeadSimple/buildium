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

# Unit tests for Buildium::ClientLeadSearchMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::ClientLeadSearchMessage do
  let(:instance) { Buildium::ClientLeadSearchMessage.new }

  describe 'test an instance of ClientLeadSearchMessage' do
    it 'should create an instance of ClientLeadSearchMessage' do
      expect(instance).to be_instance_of(Buildium::ClientLeadSearchMessage)
    end
  end
  describe 'test attribute "lead_statuses"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["Unknown", "New", "Contacting", "Qualifying", "Closing", "ClosedWon", "ClosedLost"])
      # validator.allowable_values.each do |value|
      #   expect { instance.lead_statuses = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "property_types"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["SingleHomeUpToThreeHundredThousand", "SingleHomeThreeHundredToFiveHundredThousand", "SingleHomeFiveHundredThousandToOneMillion", "SingleHomeOverOneMillion", "MultiFamilyTwoToFourUnits", "MultiFamilyFiveToNineteenUnits", "MultiFamilyTwentyToFortyNineUnits", "MultiFamilyOverOneHundredUnits", "OfficeLessThanTenThousandSqFt", "OfficeTenThousandToOneHundredThousandSqFt", "OfficeOverOneHundredThousandSqFt", "RetailLessThanTenThousandSqFt", "RetailTenThousandToOneHundredThousandSqFt", "RetailOverOneHundredThousandSqFt", "LightManufacturingUpToOneHundredThousandSqFt", "LightManufacturingOverOneHundredThousandSqFt", "WarehouseUpToOneHundredThousandSqFt", "WarehouseOverOneHundredThousandSqFt", "VacationOneToTwoUnits", "VacationOverThreeUnits", "ParkingGarage", "OtherAssociation", "BiotechMissionCritical", "HOATwoToFortyNineUnits", "HOAFiftyToNinetyNineUnits", "HOAOverOneHundredUnits", "COATwoToFortyNineUnits", "COAFiftyToNinetyNineUnits", "COAOverOneHundredUnits", "MobileHomeCommunity"])
      # validator.allowable_values.each do |value|
      #   expect { instance.property_types = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "date_received_from"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "date_received_to"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "include_credited_leads"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
