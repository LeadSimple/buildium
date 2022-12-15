=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Buildium::AccountingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AccountingApi' do
  before do
    # run before each test
    @api_instance = Buildium::AccountingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountingApi' do
    it 'should create an instance of AccountingApi' do
      expect(@api_instance).to be_instance_of(Buildium::AccountingApi)
    end
  end

  # unit tests for create_bill
  # Create a bill
  # Creates a bill.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param bill_post_message 
  # @param [Hash] opts the optional parameters
  # @return [BillMessage]
  describe 'create_bill test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_budget
  # Create a budget
  # Creates a budget.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Budgets&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param budget_post_message 
  # @param [Hash] opts the optional parameters
  # @return [BudgetMessage]
  describe 'create_budget test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_general_journal_entry
  # Create a general journal entry
  # Creates a general journal entry.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param general_journal_entry_post_message 
  # @param [Hash] opts the optional parameters
  # @return [GeneralLedgerTransactionMessage]
  describe 'create_general_journal_entry test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_general_ledger_account
  # Create a general ledger account
  # Creates a general ledger account.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param gl_account_post_message 
  # @param [Hash] opts the optional parameters
  # @return [GLAccountMessage]
  describe 'create_general_ledger_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_gl_accounts
  # Retrieve all general ledger accounts
  # Retrieves a list of general ledger accounts.&lt;br /&gt;&lt;br /&gt;General ledger accounts are used to categorize transactions for accounting purposes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :accounttypes Filters results by the specified general ledger account types.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<GLAccountMessage>]
  describe 'get_all_gl_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_transactions
  # Retrieve all general ledger transactions
  # Retrieves a list of general ledger transactions.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param startdate Filters results to any transaction whose date is greater than or equal to the specified value.
  # @param enddate Filters results to any transaction whose date is less than or equal to the specified value.
  # @param glaccountids Filters results to transactions whose general ledger account belongs to the specified set of general ledger account ids.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :selectionentityid Filters results to any transaction containing journal lines for an entity associated with the specified entity id value. The id must be of the type specified in SelectionEntityType.
  # @option opts [String] :selectionentitytype Specifies the type of entity that SelectionEntityId refers to.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<GeneralLedgerTransactionMessage>]
  describe 'get_all_transactions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bill_by_id
  # Retrieve a bill
  # Retrieves a single bill.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60;
  # @param bill_id 
  # @param [Hash] opts the optional parameters
  # @return [BillMessage]
  describe 'get_bill_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bill_payment_by_id
  # Retrieve a bill payment
  # Retrieves specific bill payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60;
  # @param bill_id 
  # @param payment_id 
  # @param [Hash] opts the optional parameters
  # @return [BillPaymentMessage]
  describe 'get_bill_payment_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bill_payments
  # Retrieve all bill payments
  # Retrieves a list of bill payments for a specific bill.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60;
  # @param bill_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<BillPaymentMessage>]
  describe 'get_bill_payments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bills_async
  # Retrieve all bills
  # Retrieves a list of bills.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :entityid Filters results to any bill containing line items associated with the specified entity identifier. This filter is used in conjunction with the &#x60;EntityType&#x60; field which must be set to the type of entity this identifier references.
  # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; refers to. This field is required if &#x60;EntityId&#x60; is specified.
  # @option opts [Integer] :vendorid Filters results to bills associated with a specific vendor.
  # @option opts [String] :referencenumber Filters results to bills whose reference number contains the specified value.
  # @option opts [String] :paidstatus Filters results by the bill&#39;s paid status. If no status is specified, bills with any status will be returned.
  # @option opts [Date] :frompaiddate Filters results to any bill whose paid date is greater than or equal to the specified value.
  # @option opts [Date] :topaiddate Filters results to any bill whose paid date is less than or equal to the specified value.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<BillMessage>]
  describe 'get_bills_async test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_budget_by_id
  # Retrieve a budget
  # Retrieves a budget.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Budgets&lt;/span&gt; - &#x60;View&#x60;
  # @param budget_id 
  # @param [Hash] opts the optional parameters
  # @return [BudgetMessage]
  describe 'get_budget_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_budgets
  # Retrieve all budgets
  # Retrieves all budgets.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Budgets&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :propertyids Filters results to any budget associated to any of the specified set of property ids.
  # @option opts [Integer] :fiscalyear Filters results to any budgets that end in the given fiscal year. FiscalYear must be a positive number.
  # @option opts [String] :name Filters results to any budgets whose name *contains* the specified value.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<BudgetMessage>]
  describe 'get_budgets test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_gl_account_balances
  # Retrieve all general ledger account balances
  # Retrieves all general ledger account balances as of a given date. The response includes the total balance of each account along with the subtotals for any accounting entities (company, associations or rental properties) that have transactions assigned to the account.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60;
  # @param accountingbasis The methodology in which revenues and expenses are recognized when calculating the balances. Specifying &#x60;Cash&#x60; calculates balances based on when money changes hands. Specifying &#x60;Accrual&#x60; calculates balances based on the period in which the transaction originally happened.
  # @param asofdate Indicates the end date through which the balances will be calculated. This will include all transactions in your account until this specified date.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :entitytype Specifies the type of entity that &#x60;EntityId&#x60; field refers to.
  # @option opts [Integer] :entityid Filters transactions used in calculating the general ledger account balances to only those containing journal lines for with the specified entity id value. The entity id specified must be of the type specified in &#x60;EntityType&#x60;.
  # @option opts [Array<Integer>] :glaccountids Filters results to the specified set of general ledger account identifiers.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<GLAccountBalanceMessage>]
  describe 'get_gl_account_balances test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_gl_account_by_id
  # Retrieve a general ledger account
  # Retrieves a specific general ledger account.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60;
  # @param gl_account_id The general ledger account identifier.
  # @param [Hash] opts the optional parameters
  # @return [GLAccountMessage]
  describe 'get_gl_account_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_transaction_by_id
  # Retrieve a general ledger transaction
  # Retrieves a specific general ledger transaction.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param transaction_id The general ledger transaction identifier.
  # @param [Hash] opts the optional parameters
  # @return [GeneralLedgerTransactionMessage]
  describe 'get_transaction_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_bill
  # Update a bill
  # Use this operation to update any of the writable fields of an existing bill resource. When updating this resource keep the following in mind: &lt;br /&gt;&lt;ul&gt;&lt;li&gt;Writable fields omitted from the request or that do not have a value in the request message are set to &#x60;NULL&#x60;. If you do not want to update the field, submit the original field value.&lt;/li&gt;&lt;li&gt;When a bill has an existing payment any edits to the line items that change the total bill amount must result in the new total bill amount being equal to or greater than the amount paid.&lt;/li&gt;&lt;li&gt;When adding a new line item leave the &#x60;LineItem.Id&#x60; field empty.&lt;/li&gt;&lt;/ul&gt;&lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bills&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param bill_id 
  # @param bill_put_message 
  # @param [Hash] opts the optional parameters
  # @return [BillMessage]
  describe 'update_bill test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_budget
  # Update a budget
  # Updates a budget.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Budgets&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param budget_id 
  # @param budget_put_message 
  # @param [Hash] opts the optional parameters
  # @return [BudgetMessage]
  describe 'update_budget test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_general_journal_entry
  # Update a general journal entry
  # Updates a general journal entry.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param journal_entry_id 
  # @param general_journal_entry_put_message 
  # @param [Hash] opts the optional parameters
  # @return [GeneralLedgerTransactionMessage]
  describe 'update_general_journal_entry test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_gl_account
  # Update a general ledger account
  # Updates a general ledger account.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param gl_account_id 
  # @param gl_account_put_message 
  # @param [Hash] opts the optional parameters
  # @return [GLAccountMessage]
  describe 'update_gl_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
