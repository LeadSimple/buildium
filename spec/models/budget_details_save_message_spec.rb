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

# Unit tests for Buildium::BudgetDetailsSaveMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::BudgetDetailsSaveMessage do
  let(:instance) { Buildium::BudgetDetailsSaveMessage.new }

  describe 'test an instance of BudgetDetailsSaveMessage' do
    it 'should create an instance of BudgetDetailsSaveMessage' do
      expect(instance).to be_instance_of(Buildium::BudgetDetailsSaveMessage)
    end
  end
  describe 'test attribute "gl_account_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "monthly_amounts"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
