=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <kbd><img src=\"app_settings.gif\" class=\"example_screen\" /></kbd>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***API Keys***. The page will open automatically.    3. Click ***Create API Key***. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <kbd><img src=\"key_gen.gif\" class=\"example_screen\" /></kbd>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module Buildium
  # A message that represents a general ledger account.
  class GLAccountMessage
    # General ledger account unique identifier.
    attr_accessor :id

    # General ledger account number.
    attr_accessor :account_number

    # Name of the general ledger account.
    attr_accessor :name

    # Description of the general ledger account.
    attr_accessor :description

    # Describes the type of general ledger account.
    attr_accessor :type

    # Describes the subtype of the general ledger account.
    attr_accessor :sub_type

    # Indicates if the general ledger account is a default for auto populating fields.
    attr_accessor :is_default_gl_account

    # Indicates the original name of the general ledger account if it is a default account.
    attr_accessor :default_account_name

    # Indicates whether the account is a contra account.
    attr_accessor :is_contra_account

    # Indicates whether the account is a bank account.
    attr_accessor :is_bank_account

    # Describes the cash flow classification for the general ledger account.
    attr_accessor :cash_flow_classification

    # Indicates whether transactions associated with the account should be excluded from cash balances.
    attr_accessor :exclude_from_cash_balances

    # Children general ledger accounts. The relationship only goes one level deep.
    attr_accessor :sub_accounts

    # Indicates whether the account is active.
    attr_accessor :is_active

    # Unique identifier of the parent general ledger account, if applicable.
    attr_accessor :parent_gl_account_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'Id',
        :'account_number' => :'AccountNumber',
        :'name' => :'Name',
        :'description' => :'Description',
        :'type' => :'Type',
        :'sub_type' => :'SubType',
        :'is_default_gl_account' => :'IsDefaultGLAccount',
        :'default_account_name' => :'DefaultAccountName',
        :'is_contra_account' => :'IsContraAccount',
        :'is_bank_account' => :'IsBankAccount',
        :'cash_flow_classification' => :'CashFlowClassification',
        :'exclude_from_cash_balances' => :'ExcludeFromCashBalances',
        :'sub_accounts' => :'SubAccounts',
        :'is_active' => :'IsActive',
        :'parent_gl_account_id' => :'ParentGLAccountId'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'account_number' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'type' => :'String',
        :'sub_type' => :'String',
        :'is_default_gl_account' => :'Boolean',
        :'default_account_name' => :'String',
        :'is_contra_account' => :'Boolean',
        :'is_bank_account' => :'Boolean',
        :'cash_flow_classification' => :'String',
        :'exclude_from_cash_balances' => :'Boolean',
        :'sub_accounts' => :'Array<GLAccountMessage>',
        :'is_active' => :'Boolean',
        :'parent_gl_account_id' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::GLAccountMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::GLAccountMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'sub_type')
        self.sub_type = attributes[:'sub_type']
      end

      if attributes.key?(:'is_default_gl_account')
        self.is_default_gl_account = attributes[:'is_default_gl_account']
      end

      if attributes.key?(:'default_account_name')
        self.default_account_name = attributes[:'default_account_name']
      end

      if attributes.key?(:'is_contra_account')
        self.is_contra_account = attributes[:'is_contra_account']
      end

      if attributes.key?(:'is_bank_account')
        self.is_bank_account = attributes[:'is_bank_account']
      end

      if attributes.key?(:'cash_flow_classification')
        self.cash_flow_classification = attributes[:'cash_flow_classification']
      end

      if attributes.key?(:'exclude_from_cash_balances')
        self.exclude_from_cash_balances = attributes[:'exclude_from_cash_balances']
      end

      if attributes.key?(:'sub_accounts')
        if (value = attributes[:'sub_accounts']).is_a?(Array)
          self.sub_accounts = value
        end
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

      if attributes.key?(:'parent_gl_account_id')
        self.parent_gl_account_id = attributes[:'parent_gl_account_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ["Asset", "Liability", "Equity", "Income", "Expense"])
      return false unless type_validator.valid?(@type)
      sub_type_validator = EnumAttributeValidator.new('String', ["CurrentAsset", "FixedAsset", "CurrentLiability", "LongTermLiability", "Equity", "Income", "NonOperatingIncome", "OperatingExpenses", "NonOperatingExpenses"])
      return false unless sub_type_validator.valid?(@sub_type)
      cash_flow_classification_validator = EnumAttributeValidator.new('String', ["OperatingActivities", "InvestingActivities", "FinancingActivities"])
      return false unless cash_flow_classification_validator.valid?(@cash_flow_classification)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Asset", "Liability", "Equity", "Income", "Expense"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value #{ type.inspect } for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sub_type Object to be assigned
    def sub_type=(sub_type)
      validator = EnumAttributeValidator.new('String', ["CurrentAsset", "FixedAsset", "CurrentLiability", "LongTermLiability", "Equity", "Income", "NonOperatingIncome", "OperatingExpenses", "NonOperatingExpenses"])
      unless validator.valid?(sub_type)
        fail ArgumentError, "invalid value #{ sub_type.inspect } for \"sub_type\", must be one of #{validator.allowable_values}."
      end
      @sub_type = sub_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cash_flow_classification Object to be assigned
    def cash_flow_classification=(cash_flow_classification)
      validator = EnumAttributeValidator.new('String', ["OperatingActivities", "InvestingActivities", "FinancingActivities"])
      unless validator.valid?(cash_flow_classification)
        fail ArgumentError, "invalid value #{ cash_flow_classification.inspect } for \"cash_flow_classification\", must be one of #{validator.allowable_values}."
      end
      @cash_flow_classification = cash_flow_classification
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          account_number == o.account_number &&
          name == o.name &&
          description == o.description &&
          type == o.type &&
          sub_type == o.sub_type &&
          is_default_gl_account == o.is_default_gl_account &&
          default_account_name == o.default_account_name &&
          is_contra_account == o.is_contra_account &&
          is_bank_account == o.is_bank_account &&
          cash_flow_classification == o.cash_flow_classification &&
          exclude_from_cash_balances == o.exclude_from_cash_balances &&
          sub_accounts == o.sub_accounts &&
          is_active == o.is_active &&
          parent_gl_account_id == o.parent_gl_account_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, account_number, name, description, type, sub_type, is_default_gl_account, default_account_name, is_contra_account, is_bank_account, cash_flow_classification, exclude_from_cash_balances, sub_accounts, is_active, parent_gl_account_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Buildium.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
