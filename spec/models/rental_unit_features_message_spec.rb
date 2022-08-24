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

# Unit tests for Buildium::RentalUnitFeaturesMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::RentalUnitFeaturesMessage do
  let(:instance) { Buildium::RentalUnitFeaturesMessage.new }

  describe 'test an instance of RentalUnitFeaturesMessage' do
    it 'should create an instance of RentalUnitFeaturesMessage' do
      expect(instance).to be_instance_of(Buildium::RentalUnitFeaturesMessage)
    end
  end
  describe 'test attribute "features"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["CableReady", "Microwave", "HardwoodFloors", "HighSpeedInternet", "AirConditioning", "Refrigerator", "Dishwasher", "WalkinClosets", "BalconyOrDeckOrPatio", "GarageParking", "Carport", "FencedYard", "LaundryRoomOrHookups", "Fireplace", "CableReadyCommercial", "HighSpeedInternetCommercial", "AirConditioningCommercial", "Heating", "OvenOrRange", "HeatElectric", "HeatGas", "HeatOil", "PetsAllowed", "Balcony", "PrivateBalcony", "PrivatePatio", "Dryer", "Heat", "WD_Hookup", "Washer", "AdditionalStorage", "Alarm", "Carpet", "CeilingFan", "ControlledAccess", "Courtyard", "Disposal", "DoubleSinkVanity", "FramedMirrors", "Furnished", "Handrails", "IndividualClimateControl", "IslandKitchen", "LinenCloset", "Pantry", "Satellite", "Skylight", "TileFlooring", "VaultedCeiling", "View", "VinylFlooring", "WheelChair", "WindowCoverings"])
      # validator.allowable_values.each do |value|
      #   expect { instance.features = value }.not_to raise_error
      # end
    end
  end

end
