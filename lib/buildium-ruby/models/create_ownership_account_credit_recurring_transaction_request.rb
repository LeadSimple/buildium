=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module Buildium
  class CreateOwnershipAccountCreditRecurringTransactionRequest
    # Indicates how the credit will be applied.  <ul><li>WaiveUnpaid - This credit type allows for reversing one or more charges without losing record of what has changed.</li><li>Exchange - This credit type allows for one of the following: 1) Reimburse a resident for a out-of-pocket expense, 2) Compensate for a service, 3) Write-off a resident balance considered uncollectable.</li><li>PreviouslyDeposited - This credit type allows for issuing a credit against payments that have already been deposited.</li></ul>
    attr_accessor :credit_type

    # Sets the offsetting general ledger account identifier for the credit.  <br />This value must be provided when the `CreditType` field is set to `Exchange` or `PreviouslyDeposited`.  <br />When the `CreditType` is `Exchange` this must be an *expense* general ledger account type.  <br />When the `CreditType` is `PreviouslyDeposited` this must be an *equity* general ledger account type.
    attr_accessor :offsetting_gl_account_id

    # Indicates whether to apply a posting rule when processing the transaction that would only record the credit if a prior payment has been made.  <br /><br />  Set the field value to the <b>Rent Income</b> general ledger account identifier if the credit should only be recorded when a payment was made and applied to the <b>Rent Income</b> general ledger account.  <br /><br />  Set the field value to the <b>Accounts Receivable</b> general ledger account identifier if the credit should only be recorded when a payment was made and applied to *any* general ledger account.  <br /><br />  Set the field value to <b>null</b> to always record the credit.
    attr_accessor :posting_rule_gl_account_id

    # Line items describing how the credit is to be allocated when the recurring credit is processed.
    attr_accessor :lines

    # Specifies the number of days ahead of the transaction date the credit will post on the lease ledger. This setting can be used to add the credit to the ledger ahead of the due date for visibility. For example, if the `FirstOccurrenceDate` is set to 8/10/2022 and this value is set to 5 then the charge will added to the ledger on 8/5/2022, but will have transaction date of 8/10/2022. Note, the value must be between 0 to 45 or set to 60, 75 or 90.
    attr_accessor :post_days_in_advance

    # Specifies the frequency at which the recurring credit will be processed.
    attr_accessor :frequency

    # Specifies the period of time/occurrences the recurring credit will be processed. Note, if the `Frequency` field is set to `OneTime` this field should be set to `NULL` as any submitted value will be ignored.
    attr_accessor :duration

    # Indicates the number of times the recurring credit should be processed. This value is required if the `Duration` field is set to `SpecificNumber`. This value can not exceed 100.
    attr_accessor :number_of_occurrences

    # The date the credit will first be processed. This value along with the `Frequency` is also used as the basis for the date set on the transactions in future occurrences.
    attr_accessor :first_occurrence_date

    # Memo associated with the recurring credit. This value cannot exceed 65 characters.
    attr_accessor :memo

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
        :'credit_type' => :'CreditType',
        :'offsetting_gl_account_id' => :'OffsettingGLAccountId',
        :'posting_rule_gl_account_id' => :'PostingRuleGlAccountId',
        :'lines' => :'Lines',
        :'post_days_in_advance' => :'PostDaysInAdvance',
        :'frequency' => :'Frequency',
        :'duration' => :'Duration',
        :'number_of_occurrences' => :'NumberOfOccurrences',
        :'first_occurrence_date' => :'FirstOccurrenceDate',
        :'memo' => :'Memo'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'credit_type' => :'String',
        :'offsetting_gl_account_id' => :'Integer',
        :'posting_rule_gl_account_id' => :'Integer',
        :'lines' => :'Array<RecurringTransactionLinePostMessage>',
        :'post_days_in_advance' => :'Integer',
        :'frequency' => :'String',
        :'duration' => :'String',
        :'number_of_occurrences' => :'Integer',
        :'first_occurrence_date' => :'Date',
        :'memo' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'CreditRecurringTransactionPostMessage'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::CreateOwnershipAccountCreditRecurringTransactionRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::CreateOwnershipAccountCreditRecurringTransactionRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'credit_type')
        self.credit_type = attributes[:'credit_type']
      end

      if attributes.key?(:'offsetting_gl_account_id')
        self.offsetting_gl_account_id = attributes[:'offsetting_gl_account_id']
      end

      if attributes.key?(:'posting_rule_gl_account_id')
        self.posting_rule_gl_account_id = attributes[:'posting_rule_gl_account_id']
      end

      if attributes.key?(:'lines')
        if (value = attributes[:'lines']).is_a?(Array)
          self.lines = value
        end
      end

      if attributes.key?(:'post_days_in_advance')
        self.post_days_in_advance = attributes[:'post_days_in_advance']
      end

      if attributes.key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'number_of_occurrences')
        self.number_of_occurrences = attributes[:'number_of_occurrences']
      end

      if attributes.key?(:'first_occurrence_date')
        self.first_occurrence_date = attributes[:'first_occurrence_date']
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @credit_type.nil?
        invalid_properties.push('invalid value for "credit_type", credit_type cannot be nil.')
      end

      if @post_days_in_advance.nil?
        invalid_properties.push('invalid value for "post_days_in_advance", post_days_in_advance cannot be nil.')
      end

      if @frequency.nil?
        invalid_properties.push('invalid value for "frequency", frequency cannot be nil.')
      end

      if @first_occurrence_date.nil?
        invalid_properties.push('invalid value for "first_occurrence_date", first_occurrence_date cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @credit_type.nil?
      credit_type_validator = EnumAttributeValidator.new('String', ["WaiveUnpaid", "Exchange", "PreviouslyDeposited"])
      return false unless credit_type_validator.valid?(@credit_type)
      return false if @post_days_in_advance.nil?
      return false if @frequency.nil?
      frequency_validator = EnumAttributeValidator.new('String', ["Monthly", "Weekly", "Every2Weeks", "Quarterly", "Yearly", "Every2Months", "Daily", "Every6Months", "OneTime"])
      return false unless frequency_validator.valid?(@frequency)
      duration_validator = EnumAttributeValidator.new('String', ["UntilEndOfTerm", "SpecificNumber"])
      return false unless duration_validator.valid?(@duration)
      return false if @first_occurrence_date.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credit_type Object to be assigned
    def credit_type=(credit_type)
      validator = EnumAttributeValidator.new('String', ["WaiveUnpaid", "Exchange", "PreviouslyDeposited"])
      unless validator.valid?(credit_type)
        fail ArgumentError, "invalid value #{ credit_type.inspect } for \"credit_type\", must be one of #{validator.allowable_values}."
      end
      @credit_type = credit_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] frequency Object to be assigned
    def frequency=(frequency)
      validator = EnumAttributeValidator.new('String', ["Monthly", "Weekly", "Every2Weeks", "Quarterly", "Yearly", "Every2Months", "Daily", "Every6Months", "OneTime"])
      unless validator.valid?(frequency)
        fail ArgumentError, "invalid value #{ frequency.inspect } for \"frequency\", must be one of #{validator.allowable_values}."
      end
      @frequency = frequency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] duration Object to be assigned
    def duration=(duration)
      validator = EnumAttributeValidator.new('String', ["UntilEndOfTerm", "SpecificNumber"])
      unless validator.valid?(duration)
        fail ArgumentError, "invalid value #{ duration.inspect } for \"duration\", must be one of #{validator.allowable_values}."
      end
      @duration = duration
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          credit_type == o.credit_type &&
          offsetting_gl_account_id == o.offsetting_gl_account_id &&
          posting_rule_gl_account_id == o.posting_rule_gl_account_id &&
          lines == o.lines &&
          post_days_in_advance == o.post_days_in_advance &&
          frequency == o.frequency &&
          duration == o.duration &&
          number_of_occurrences == o.number_of_occurrences &&
          first_occurrence_date == o.first_occurrence_date &&
          memo == o.memo
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [credit_type, offsetting_gl_account_id, posting_rule_gl_account_id, lines, post_days_in_advance, frequency, duration, number_of_occurrences, first_occurrence_date, memo].hash
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
      return nil unless attributes.is_a?(Hash)
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
