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

# Unit tests for Buildium::RentalFeaturesMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::RentalFeaturesMessage do
  let(:instance) { Buildium::RentalFeaturesMessage.new }

  describe 'test an instance of RentalFeaturesMessage' do
    it 'should create an instance of RentalFeaturesMessage' do
      expect(instance).to be_instance_of(Buildium::RentalFeaturesMessage)
    end
  end
  describe 'test attribute "features"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["LaundryRoom", "WheelchairAccess", "DoorAttendant", "Elevator", "Parking", "StorageUnits", "Pool", "FitnessCenter", "TennisCourt", "ClubHouse", "Power", "ParkingCommercial", "SprinklerSystem", "DockHighDoorsOrLoadingAvailable", "Availability24Hours", "AccentWalls", "BasketballCourt", "Bilingual", "BoatDocks", "BusinessCenter", "CarWashArea", "ChildCare", "ClubDiscount", "ConferenceRoom", "Concierge", "FreeWeights", "FurnishedAvailable", "GamingStations", "Garage", "Gate", "GroceryService", "GroupExercise", "GuestRoom", "Housekeeping", "HouseSitting", "JoggingWalkingTrails", "LakeFront", "LakeAccess", "Library", "MealService", "MediaRoom", "MultiUseRoom", "NightPatrol", "OnSiteMaintenance", "OnSiteManagement", "PackageReceiving", "PerDiemAccepted", "PlayGround", "Racquetball", "RecRoom", "Recycling", "Sauna", "ShortTermLease", "SmokeFree", "Spa", "Sundeck", "Transportation", "TVLounge", "ValetTrash", "Vintage", "VolleyballCourt", "WirelessInternet", "HighSpeedInternet"])
      # validator.allowable_values.each do |value|
      #   expect { instance.features = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "included_in_rent"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["Gas", "Electric", "Trash", "Water", "HotWater", "Telephone", "Heat", "Cable", "AirCon", "Satellite", "Sewer", "BroadbandInternet"])
      # validator.allowable_values.each do |value|
      #   expect { instance.included_in_rent = value }.not_to raise_error
      # end
    end
  end

end