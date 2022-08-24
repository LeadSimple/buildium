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

# Unit tests for Buildium::GLAccountBalanceSearchMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::GLAccountBalanceSearchMessage do
  let(:instance) { Buildium::GLAccountBalanceSearchMessage.new }

  describe 'test an instance of GLAccountBalanceSearchMessage' do
    it 'should create an instance of GLAccountBalanceSearchMessage' do
      expect(instance).to be_instance_of(Buildium::GLAccountBalanceSearchMessage)
    end
  end
  describe 'test attribute "entity_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Association", "Rental", "RentalOwner"])
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

  describe 'test attribute "gl_account_ids"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "accounting_basis"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Accrual", "Cash"])
      # validator.allowable_values.each do |value|
      #   expect { instance.accounting_basis = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "as_of_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
