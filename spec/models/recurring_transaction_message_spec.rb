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

# Unit tests for Buildium::RecurringTransactionMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::RecurringTransactionMessage do
  let(:instance) { Buildium::RecurringTransactionMessage.new }

  describe 'test an instance of RecurringTransactionMessage' do
    it 'should create an instance of RecurringTransactionMessage' do
      expect(instance).to be_instance_of(Buildium::RecurringTransactionMessage)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "transaction_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Bill", "Check", "Charge", "Payment", "Credit", "Refund", "ApplyDeposit", "ElectronicFundsTransfer", "Other", "Deposit", "GeneralJournalEntry", "OwnerContribution", "ReversePayment", "ReverseElectronicFundsTransfer", "VendorCredit", "RentalApplicationFeePayment", "ReverseRentalApplicationFeePayment", "ReverseOwnerContribution", "VendorRefund", "UnreversedPayment", "UnreversedElectronicFundsTransfer", "UnreversedOwnerContribution", "UnreversedRentalApplicationFeePayment"])
      # validator.allowable_values.each do |value|
      #   expect { instance.transaction_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "is_expired"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "rent_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "offsetting_gl_account_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "lines"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "memo"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "next_occurrence_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "post_days_in_advance"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "frequency"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Monthly", "Weekly", "Every2Weeks", "Quarterly", "Yearly", "Every2Months", "Daily", "Every6Months", "OneTime"])
      # validator.allowable_values.each do |value|
      #   expect { instance.frequency = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "duration"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Unspecified", "UntilEndOfTerm", "SpecificNumber", "SpecificDate"])
      # validator.allowable_values.each do |value|
      #   expect { instance.duration = value }.not_to raise_error
      # end
    end
  end

end