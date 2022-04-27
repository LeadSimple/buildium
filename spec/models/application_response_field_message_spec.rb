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

# Unit tests for Buildium::ApplicationResponseFieldMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::ApplicationResponseFieldMessage do
  let(:instance) { Buildium::ApplicationResponseFieldMessage.new }

  describe 'test an instance of ApplicationResponseFieldMessage' do
    it 'should create an instance of ApplicationResponseFieldMessage' do
      expect(instance).to be_instance_of(Buildium::ApplicationResponseFieldMessage)
    end
  end
  describe 'test attribute "field_category_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ApplicantName", "ApplicantEmail", "ApplicantSocialSecurityNumber", "ApplicantAlternateEmail", "ApplicantHomePhone", "ApplicantCellPhone", "ApplicantWorkPhone", "ApplicantFax", "ApplicantBirthDate", "ApplicantDriversLicense", "ApplicantCurrentAddress", "ApplicantAlternateAddress", "EmergencyContactName", "EmergencyContactRelationship", "EmergencyContactEmail", "EmergencyContactPhone", "OccupantName", "OccupantRelationship", "OccupantBirthDate", "OccupantEmail", "OccupantPhoneNumber", "CosignerName", "CosignerRelationship", "CosignerSocialSecurityNumber", "CosignerPhoneNumber", "CosignerEmail", "EmployerName", "EmployerAddress", "EmployerPhoneNumber", "EmployerEmail", "PositionHeld", "EmploymentDates", "MonthlyGrossSalary", "SupervisorName", "SupervisorTitle", "PetType", "PetName", "PetAge", "PetSpayedOrNeutered", "PetLicenseNumber", "PetWeight", "DesiredMoveInDate", "DesiredLeaseDuration", "DesiredRent", "DesiredNumberOfBedrooms", "DesiredNumberOfBathrooms", "ReferenceName", "ReferenceRelationship", "ReferencePhoneNumber", "ReferenceEmail", "RentalAddress", "RentalDates", "MonthlyRent", "ReasonForLeaving", "LandlordName", "LandlordPhoneNumber", "LandlordEmail", "VehicleMake", "VehicleModel", "VehicleColor", "VehicleYear", "VehicleLicensePlate", "AgreedTo", "AgreedBy", "CosignerAddress", "ApplicantAddress", "OtherComments", "EmailApplication"])
      # validator.allowable_values.each do |value|
      #   expect { instance.field_category_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "field_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TextSingleLine", "Email", "DateDayMonthYear", "Number", "DateMonthYear", "DateYear", "GroupHeading", "NumberOfBathrooms", "NumberOfBedrooms", "PhoneNumber", "SocialSecurityNumber", "TextMultipleLines", "TrueFalse", "YesNo", "Currency", "FirstName", "LastName", "DateRangeFromDate", "DateRangeToDate", "AddressCountry", "AddressStreet", "AddressCity", "AddressState", "AddressZip", "DriversLicenseNumber", "DriversLicenseState", "Attachment"])
      # validator.allowable_values.each do |value|
      #   expect { instance.field_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "field_label"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
