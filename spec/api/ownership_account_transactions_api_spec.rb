=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Buildium::OwnershipAccountTransactionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OwnershipAccountTransactionsApi' do
  before do
    # run before each test
    @api_instance = Buildium::OwnershipAccountTransactionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OwnershipAccountTransactionsApi' do
    it 'should create an instance of OwnershipAccountTransactionsApi' do
      expect(@api_instance).to be_instance_of(Buildium::OwnershipAccountTransactionsApi)
    end
  end

  # unit tests for create_ownership_account_auto_allocated_payment
  # Create a payment (auto allocated)
  # Creates a payment on the ownership account ledger. Note that the recorded payment will be automatically allocated to the general ledger accounts based on the payment allocation settings. These settings can be found under the Settings &amp;gt; Application Settings &amp;gt; Residents page in your account. If you&#39;d like to specify the general ledger accounts the payment should apply to, please use the &lt;a href&#x3D;\&quot;#operation/CreateOwnershipAccountLedgerPayment\&quot;&gt;Create a payment&lt;/a&gt; endpoint.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param ownership_account_id 
  # @param ownership_account_auto_allocated_payment_post_message 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountTransactionMessage]
  describe 'create_ownership_account_auto_allocated_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_ownership_account_credit
  # Create a credit
  # Creates a ledger credit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param ownership_account_id 
  # @param ownership_account_credit_post_message 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountTransactionMessage]
  describe 'create_ownership_account_credit test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_ownership_account_credit_recurring_transaction
  # Create a recurring credit
  # Creates a recurring credit transaction that will post automatically on the specified ownership account ledger.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param ownership_account_id 
  # @param credit_recurring_transaction_post_message 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountRecurringCreditMessage]
  describe 'create_ownership_account_credit_recurring_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_ownership_account_deposit_withholding
  # Create a deposit withholding
  # Withholds an association owner deposit by reallocating the funds from a liability account to an income account to cover an expense(s).              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60;
  # @param ownership_account_id 
  # @param ownership_account_deposit_withholding_post_message 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountTransactionMessage]
  describe 'create_ownership_account_deposit_withholding test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_ownership_account_ledger_charge
  # Create a charge
  # Creates a ledger charge.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;
  # @param ownership_account_id The ownership account identifier.
  # @param ownership_account_ledger_charge_post_message 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountTransactionMessage]
  describe 'create_ownership_account_ledger_charge test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_ownership_account_ledger_payment
  # Create a payment
  # Creates a ledger payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param ownership_account_id 
  # @param ownership_account_ledger_payment_post_message 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountTransactionMessage]
  describe 'create_ownership_account_ledger_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_ownership_account_recurring_payment
  # Create a recurring payment
  # Creates a recurring payment that will post automatically on the specified ownership account ledger.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param ownership_account_id 
  # @param payment_recurring_transaction_post_message 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountRecurringPaymentMessage]
  describe 'create_ownership_account_recurring_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_ownership_account_refund
  # Create a refund
  # Creates a refund.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param ownership_account_id 
  # @param ownership_account_refund_post_message 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountRefundMessage]
  describe 'create_ownership_account_refund test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_ownership_accounts_charge_recurring_transaction
  # Create a recurring charge
  # Creates a recurring charge transaction that will post automatically on the specified ownership account ledger.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param ownership_account_id 
  # @param charge_recurring_transaction_post_message 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountChargeRecurringTransactionMessage]
  describe 'create_ownership_accounts_charge_recurring_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_association_recurring_transaction
  # Retrieve all recurring transactions
  # Retrieves all recurring transactions for an ownership account.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param ownership_account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<RecurringTransactionMessage>]
  describe 'get_association_recurring_transaction test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_ownership_account_ledger
  # Retrieve all transactions
  # Retrieves all ledger transactions for a specific ownership account.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param ownership_account_id The ownership account identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :transactiondatefrom Filters results to any lease transaction whose start date is greater than or equal to the specified value.
  # @option opts [Date] :transactiondateto Filters results to any lease transaction whose end date is less than or equal to the specified value.
  # @option opts [Array<String>] :transactiontypes Filters results to any lease transaction whose lease transaction type matches the specified status. If no type is specified, lease transactions with any type will be returned.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<OwnershipAccountTransactionMessage>]
  describe 'get_ownership_account_ledger test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_ownership_account_outstanding_balances
  # Retrieve all outstanding balances
  # Retrieves a list of ownership account outstanding balances.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Outstanding Balances&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :associationid Association unique identifier
  # @option opts [Array<String>] :ownershipaccountstatuses List of ownership account statuses
  # @option opts [Array<Integer>] :ownershipaccountids List of ownership account ids
  # @option opts [String] :pastdueemail Status of notification of outstanding balances
  # @option opts [String] :balanceduration Duration of outstanding balances
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<OwnershipAccountOutstandingBalanceMessage>]
  describe 'get_ownership_account_outstanding_balances test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_ownership_account_recurring_credit_by_id
  # Retrieve a recurring credit
  # Retrieves a recurring credit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param ownership_account_id 
  # @param transaction_id 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountRecurringCreditMessage]
  describe 'get_ownership_account_recurring_credit_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_ownership_account_refund_by_id
  # Retrieve a refund
  # Retrieves a refund.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60;
  # @param ownership_account_id 
  # @param refund_id 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountRefundMessage]
  describe 'get_ownership_account_refund_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_ownership_account_transaction_by_id
  # Retrieve a transaction
  # Retrieves a specific ownership account ledger transaction.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param ownership_account_id The ownership account identifier.
  # @param transaction_id The transaction identifier.
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountTransactionMessage]
  describe 'get_ownership_account_transaction_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_ownership_accounts_charge_recurring_transaction_by_id
  # Retrieve a recurring charge
  # Retrieves a recurring charge.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param ownership_account_id 
  # @param transaction_id 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountChargeRecurringTransactionMessage]
  describe 'get_ownership_accounts_charge_recurring_transaction_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_recurring_ownership_account_payments_by_id
  # Retrieve a recurring payment
  # Retrieves a recurring payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param ownership_account_id 
  # @param payment_id 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountRecurringPaymentMessage]
  describe 'get_recurring_ownership_account_payments_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_ownership_account_charge
  # Update a charge
  # Updates a charge.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;br /&gt;
  # @param ownership_account_id The ownership account identifier.
  # @param charge_id The charge identifier.
  # @param ownership_account_ledger_charge_put_message 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountTransactionMessage]
  describe 'update_ownership_account_charge test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_ownership_account_ledger_payment
  # Update a payment
  # Updates a ledger payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Associations &amp;gt; Ownership account transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param ownership_account_id 
  # @param payment_id 
  # @param ownership_account_ledger_payment_put_message 
  # @param [Hash] opts the optional parameters
  # @return [OwnershipAccountTransactionMessage]
  describe 'update_ownership_account_ledger_payment test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
