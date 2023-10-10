=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <kbd><img src=\"app_settings.gif\" class=\"example_screen\" /></kbd>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***API Keys***. The page will open automatically.    3. Click ***Create API Key***. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <kbd><img src=\"key_gen.gif\" class=\"example_screen\" /></kbd>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Buildium::LeasesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LeasesApi' do
  before do
    # run before each test
    @api_instance = Buildium::LeasesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LeasesApi' do
    it 'should create an instance of LeasesApi' do
      expect(@api_instance).to be_instance_of(Buildium::LeasesApi)
    end
  end

  # unit tests for create_lease
  # Create a lease
  # Creates a signed lease.  &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;  &lt;br /&gt;&lt;h4&gt;Optional Permissions:&lt;/h4&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Applicants&lt;/span&gt; - &#x60;View&#x60; In order to add tenants to the lease using the ApplicantIds property, you must have this permission.
  # @param lease_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseMessage]
  describe 'create_lease test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_lease_auto_allocated_payment
  # Create a lease ledger payment with automatic allocations
  # Creates a payment on the lease ledger. Note that the recorded payment will be automatically allocated to the general ledger accounts based on the payment allocation settings. These settings can be found under the Settings &amp;gt; Application Settings &amp;gt; Residents page in your account. If you&#39;d like to specify the GL accounts the payment should apply to, please use the &lt;a href&#x3D;\&quot;#operation/CreatePayment\&quot;&gt;Create a payment&lt;/a&gt; endpoint.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param lease_auto_allocated_payment_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseTransactionMessage]
  describe 'create_lease_auto_allocated_payment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_lease_charge_recurring_transaction
  # Create a recurring charge
  # Creates a recurring charge transaction that will post automatically on the specified lease ledger.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param charge_recurring_transaction_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseChargeRecurringTransactionMessage]
  describe 'create_lease_charge_recurring_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_lease_credit
  # Create a credit
  # Creates a lease ledger credit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id The lease unique identifier.
  # @param lease_ledger_credit_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseTransactionMessage]
  describe 'create_lease_credit test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_lease_credit_recurring_transaction
  # Create a recurring credit
  # Creates a recurring credit transaction on the specified lease ledger.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param credit_recurring_transaction_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseRecurringCreditMessage]
  describe 'create_lease_credit_recurring_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_lease_ledger_charge
  # Create a charge
  # Creates a charge transaction on a specific lease ledger.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param lease_charge_post_message 
  # @param [Hash] opts the optional parameters
  # @return [Array<LeaseTransactionMessage>]
  describe 'create_lease_ledger_charge test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_lease_ledger_deposit_withholding
  # Create a deposit withholding
  # Withholds a resident deposit by reallocating the funds from a liability account to an income account to cover an expense(s).             &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease Ledger&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;             &lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; General Ledger Accounts&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param lease_ledger_deposit_withholding_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseTransactionMessage]
  describe 'create_lease_ledger_deposit_withholding test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_lease_ledger_refund
  # Create a refund
  # Creates a refund.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param lease_ledger_refund_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseLedgerRefundMessage]
  describe 'create_lease_ledger_refund test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_lease_note
  # Create a note
  # Creates a lease note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param note_post_message 
  # @param [Hash] opts the optional parameters
  # @return [NoteMessage]
  describe 'create_lease_note test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_lease_recurring_payment
  # Create a recurring payment
  # Creates a recurring payment that will post automatically on the specified lease ledger.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease Transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param payment_recurring_transaction_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseRecurringPaymentMessage]
  describe 'create_lease_recurring_payment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_lease_renewal
  # Create a lease renewal
  # Creates a lease renewal.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param lease_renewal_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseRenewalMessage]
  describe 'create_lease_renewal test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_lease_reverse_payment
  # Create a payment reversal
  # Reverses a lease ledger payment. Note, this action can only be taken on a payment that has been deposited.               &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id The lease unique identifier.
  # @param lease_ledger_reverse_payment_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseTransactionMessage]
  describe 'create_lease_reverse_payment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_move_out_data
  # Create a move out
  # Creates move out data for a single tenant on a given lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param lease_move_out_data_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseMoveOutDataMessage]
  describe 'create_move_out_data test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_payment
  # Create a payment
  # Creates a lease ledger payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id The lease unique identifier.
  # @param lease_ledger_payment_post_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseTransactionMessage]
  describe 'create_payment test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_lease_renewals
  # Retrieve renewal history for a lease.
  # Retrieves renewal history for a lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<LeaseRenewalMessage>]
  describe 'get_all_lease_renewals test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_lease_renewals_for_all_properties
  # Retrieve all lease renewals
  # Retrieves all lease renewals.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
  # @param esignaturestatuses Filters result to any lease renewal with an esignature status that matches the given statuses.
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :propertyids Filters results to only include leases whose unit belongs to the specified set of property ids.
  # @option opts [Array<Integer>] :rentalownerids Filters results to any lease whose unit belongs to a property with rental owner in the specified set of rental owner ids.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<LeaseRenewalMessage>]
  describe 'get_all_lease_renewals_for_all_properties test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_by_id
  # Retrieve a lease
  # Retrieves a specific lease.  &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id The lease identifier.
  # @param [Hash] opts the optional parameters
  # @return [LeaseMessage]
  describe 'get_lease_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_charge_recurring_transaction_by_id
  # Retrieve a recurring charge
  # Retrieves a recurring charge.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param transaction_id 
  # @param [Hash] opts the optional parameters
  # @return [LeaseChargeRecurringTransactionMessage]
  describe 'get_lease_charge_recurring_transaction_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_epay_settings_by_id
  # Retrieve ePay settings
  # Retrieves ePay settings for a lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param [Hash] opts the optional parameters
  # @return [EPaySettingsMessage]
  describe 'get_lease_epay_settings_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_ledger_refund_by_id
  # Retrieve a refund
  # Retrieves a refund.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Accounting &amp;gt; Bank Accounts&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param refund_id 
  # @param [Hash] opts the optional parameters
  # @return [LeaseLedgerRefundMessage]
  describe 'get_lease_ledger_refund_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_ledger_transaction_by_id
  # Retrieve a lease transaction
  # Retrieves a specific lease transaction.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease Transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param transaction_id 
  # @param [Hash] opts the optional parameters
  # @return [LeaseTransactionMessage]
  describe 'get_lease_ledger_transaction_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_ledgers
  # Retrieve all lease transactions
  # Retrieves all the transactions for a specific lease.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :transactiondatefrom Filters results to any lease transaction whose start date is greater than or equal to the specified value.
  # @option opts [Date] :transactiondateto Filters results to any lease transaction whose end date is less than or equal to the specified value.
  # @option opts [Array<String>] :transactiontypes Filters results to any lease transaction whose lease transaction type matches the specified status. If no type is specified, lease transactions with any type will be returned.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<LeaseTransactionMessage>]
  describe 'get_lease_ledgers test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_move_out_data_by_tenant_id
  # Retrieve a move out
  # Retrieves move out data for a single tenant on a given lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param tenant_id 
  # @param [Hash] opts the optional parameters
  # @return [LeaseMoveOutDataMessage]
  describe 'get_lease_move_out_data_by_tenant_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_move_out_information_by_id
  # Retrieve all move outs
  # Retrieves a list of move out dates for a given lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<LeaseMoveOutDataMessage>]
  describe 'get_lease_move_out_information_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_note_by_note_id
  # Retrieve a note
  # Retrieves a lease note.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param note_id 
  # @param [Hash] opts the optional parameters
  # @return [NoteMessage]
  describe 'get_lease_note_by_note_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_notes
  # Retrieve all notes
  # Retrieves all lease notes.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :updateddatetimefrom Filters results to any note whose updated date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  # @option opts [Time] :updateddatetimeto Filters results to any note whose updated date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  # @option opts [Integer] :lastupdatedbyuserid Filters results to only notes that were last updated by the specified user identifier.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<NoteMessage>]
  describe 'get_lease_notes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_outstanding_balances
  # Retrieve all outstanding balances
  # Retrieves a list of lease outstanding balances.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Outstanding Balances&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :entitytype 
  # @option opts [Integer] :entityid 
  # @option opts [Array<String>] :leasestatuses 
  # @option opts [Array<Integer>] :leaseids 
  # @option opts [String] :pastdueemail 
  # @option opts [String] :balanceduration 
  # @option opts [String] :evictionstatus 
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<LeaseOutstandingBalanceMessage>]
  describe 'get_lease_outstanding_balances test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_recurring_credit_by_id
  # Retrieve a recurring credit
  # Retrieves a recurring credit.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param transaction_id 
  # @param [Hash] opts the optional parameters
  # @return [LeaseRecurringCreditMessage]
  describe 'get_lease_recurring_credit_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_recurring_transactions
  # Retrieve all recurring transactions
  # Retrieves all recurring transactions.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<RecurringTransactionMessage>]
  describe 'get_lease_recurring_transactions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_lease_renewal_by_id
  # Retrieve a renewal history item for a lease.
  # Retrieves a renewal history item for a lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param renewal_id 
  # @param [Hash] opts the optional parameters
  # @return [LeaseRenewalMessage]
  describe 'get_lease_renewal_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_leases
  # Retrieve all leases
  # Retrieves a list of leases.  &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [Array<Integer>] :propertyids Filters results to any lease whose unit belongs to the specified set of property ids.
  # @option opts [Array<Integer>] :rentalownerids Filters results to any lease whose unit belongs to a property with a rental owner in the specified set of rental owner ids.
  # @option opts [String] :unitnumber Filters results to any lease whose unit number *contains* the specified value.
  # @option opts [String] :tenantname Filters results to any lease whose current tenants&#39; names *contain* the specified value.
  # @option opts [Date] :leasedatefrom Filters results to any lease whose start date is greater than or equal to the specified value.
  # @option opts [Date] :leasedateto Filters results to any lease whose end date is less than or equal to the specified value.
  # @option opts [Array<String>] :leasetypes Filters results to any lease whose lease type matches the specified status. If no type is specified, leases with any type will be returned.
  # @option opts [Array<String>] :leasestatuses Filters results to any lease whose lease term matches the specified status. If no status is specified, leases with any lease term status will be returned.
  # @option opts [Time] :createddatetimefrom Filters results to any lease whose created date and time are greater than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  # @option opts [Time] :createddatetimeto Filters results to any lease whose created date and time are less than or equal to the specified value. The value must be formatted as YYYY-MM-DD HH:MM:SS.
  # @option opts [Time] :lastupdatedfrom Filters results to any leases that were updated on or after the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  # @option opts [Time] :lastupdatedto Filters results to any leases that were updated on or before the specified date. The value must be in UTC and formatted as YYYY-MM-DDTHH:MM:SSZ.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<LeaseMessage>]
  describe 'get_leases test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_recurring_lease_payments_by_id
  # Retrieve a recurring payment
  # Retrieves a recurring payment.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease Transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param payment_id 
  # @param [Hash] opts the optional parameters
  # @return [LeaseRecurringPaymentMessage]
  describe 'get_recurring_lease_payments_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_rent
  # Retrieve all rent schedules
  # The rent schedule provides details (dollar amount, day of the month, etc) of the recurring charges that are applied to the lease ledger each rent cycle. A lease may have more than one rent schedule associated with it if the rent terms change within the duration of the lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<LeaseRentMessage>]
  describe 'get_rent test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_rent_by_id
  # Retrieve a rent schedule
  # Retrieves a specific rent schedule for a lease. The rent schedule provides details (dollar amount, day of the month, etc) of the recurring charges that are applied to the lease ledger each rent cycle.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param rent_id 
  # @param [Hash] opts the optional parameters
  # @return [LeaseRentMessage]
  describe 'get_rent_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_renters_insurance_policies
  # Retrieve all insurance policies
  # Retrieves all renters insurance policies for a lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<RentersInsurancePolicyMessage>]
  describe 'get_renters_insurance_policies test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_renters_insurance_policy_by_id
  # Retrieve an insurance policy
  # Retrieves a renters insurance policy.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param policy_id 
  # @param [Hash] opts the optional parameters
  # @return [RentersInsurancePolicyMessage]
  describe 'get_renters_insurance_policy_by_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for undo_tenant_moveout
  # Delete a move out
  # Deletes move out data for a tenant on a given lease.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required Permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;              &lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Tenants&lt;/span&gt; - &#x60;View&#x60;
  # @param lease_id 
  # @param tenant_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'undo_tenant_moveout test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_lease
  # Update a lease
  # Update a signed lease.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param lease_put_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseMessage]
  describe 'update_lease test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_lease_charge
  # Update a charge
  # Updates a charge.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Lease transactions&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param charge_id 
  # @param lease_charge_put_message 
  # @param [Hash] opts the optional parameters
  # @return [LeaseTransactionMessage]
  describe 'update_lease_charge test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_lease_epay_settings
  # Update ePay settings
  # Updates ePay settings for a lease              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param e_pay_settings_put_message 
  # @param [Hash] opts the optional parameters
  # @return [EPaySettingsMessage]
  describe 'update_lease_epay_settings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_lease_note
  # Update a note
  # Updates a lease note.              &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Rentals &amp;gt; Leases&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param lease_id 
  # @param note_id 
  # @param note_put_message 
  # @param [Hash] opts the optional parameters
  # @return [NoteMessage]
  describe 'update_lease_note test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
