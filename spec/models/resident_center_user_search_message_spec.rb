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

# Unit tests for Buildium::ResidentCenterUserSearchMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::ResidentCenterUserSearchMessage do
  let(:instance) { Buildium::ResidentCenterUserSearchMessage.new }

  describe 'test an instance of ResidentCenterUserSearchMessage' do
    it 'should create an instance of ResidentCenterUserSearchMessage' do
      expect(instance).to be_instance_of(Buildium::ResidentCenterUserSearchMessage)
    end
  end
  describe 'test attribute "unit_agreement_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "user_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "user_types"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["Tenant", "AssociationOwner"])
      # validator.allowable_values.each do |value|
      #   expect { instance.user_types = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "resident_center_user_statuses"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["AccountExistsButNoEmailSent", "PasswordSent", "EmailFailed", "SignedIn", "Blocked"])
      # validator.allowable_values.each do |value|
      #   expect { instance.resident_center_user_statuses = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "is_auto_pay_enabled"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
