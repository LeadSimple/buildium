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

# Unit tests for Buildium::LeaseOutstandingBalanceSearchMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::LeaseOutstandingBalanceSearchMessage do
  let(:instance) { Buildium::LeaseOutstandingBalanceSearchMessage.new }

  describe 'test an instance of LeaseOutstandingBalanceSearchMessage' do
    it 'should create an instance of LeaseOutstandingBalanceSearchMessage' do
      expect(instance).to be_instance_of(Buildium::LeaseOutstandingBalanceSearchMessage)
    end
  end
  describe 'test attribute "entity_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Rental", "RentalOwner"])
      # validator.allowable_values.each do |value|
      #   expect { instance.entity_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "entity_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "lease_statuses"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Array<String>', ["Active", "Past", "Future"])
      # validator.allowable_values.each do |value|
      #   expect { instance.lease_statuses = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "lease_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "past_due_email"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NoEmailAddress", "Sent"])
      # validator.allowable_values.each do |value|
      #   expect { instance.past_due_email = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "balance_duration"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TotalBalance", "Balance0to30Days", "Balance31to60Days", "Balance61to90Days", "BalanceOver90Days"])
      # validator.allowable_values.each do |value|
      #   expect { instance.balance_duration = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "eviction_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["NotEvictionPending", "EvictionPending"])
      # validator.allowable_values.each do |value|
      #   expect { instance.eviction_status = value }.not_to raise_error
      # end
    end
  end

end
