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
  # This object represents a rental property lease.
  class LeaseMessage
    # Lease unique identifier.
    attr_accessor :id

    # Rental property unique identifier.
    attr_accessor :property_id

    # Unit unique identifier.
    attr_accessor :unit_id

    # Unit number specified in the lease.
    attr_accessor :unit_number

    # Start date of the lease.
    attr_accessor :lease_from_date

    # End date of the lease.
    attr_accessor :lease_to_date

    # Describes the type of lease.
    attr_accessor :lease_type

    # Indicates the status of the lease.
    attr_accessor :lease_status

    # Indicates whether the lease has an eviction pending.
    attr_accessor :is_eviction_pending

    # Describes the term type of the lease.
    attr_accessor :term_type

    # Describes the status of the renewal offer. Null if no renewal offer exists.
    attr_accessor :renewal_offer_status

    # List of the current tenants on the lease.
    attr_accessor :current_tenants

    # Count of current tenants.
    attr_accessor :current_number_of_occupants

    attr_accessor :account_details

    # List of the cosigners on the lease.
    attr_accessor :cosigners

    # Indicates whether to automatically move out all tenants assigned to the lease and set the lease status to past when the lease ends.
    attr_accessor :automatically_move_out_tenants

    # Date and time the lease was created.
    attr_accessor :created_date_time

    # The date and time the lease was last updated.
    attr_accessor :last_updated_date_time

    # Move out data of lease
    attr_accessor :move_out_data

    # Day of the month payment is due.
    attr_accessor :payment_due_day

    # List of all tenants ever associated with the lease
    attr_accessor :tenants

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
        :'property_id' => :'PropertyId',
        :'unit_id' => :'UnitId',
        :'unit_number' => :'UnitNumber',
        :'lease_from_date' => :'LeaseFromDate',
        :'lease_to_date' => :'LeaseToDate',
        :'lease_type' => :'LeaseType',
        :'lease_status' => :'LeaseStatus',
        :'is_eviction_pending' => :'IsEvictionPending',
        :'term_type' => :'TermType',
        :'renewal_offer_status' => :'RenewalOfferStatus',
        :'current_tenants' => :'CurrentTenants',
        :'current_number_of_occupants' => :'CurrentNumberOfOccupants',
        :'account_details' => :'AccountDetails',
        :'cosigners' => :'Cosigners',
        :'automatically_move_out_tenants' => :'AutomaticallyMoveOutTenants',
        :'created_date_time' => :'CreatedDateTime',
        :'last_updated_date_time' => :'LastUpdatedDateTime',
        :'move_out_data' => :'MoveOutData',
        :'payment_due_day' => :'PaymentDueDay',
        :'tenants' => :'Tenants'
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
        :'property_id' => :'Integer',
        :'unit_id' => :'Integer',
        :'unit_number' => :'String',
        :'lease_from_date' => :'Date',
        :'lease_to_date' => :'Date',
        :'lease_type' => :'String',
        :'lease_status' => :'String',
        :'is_eviction_pending' => :'Boolean',
        :'term_type' => :'String',
        :'renewal_offer_status' => :'String',
        :'current_tenants' => :'Array<TenantMessage>',
        :'current_number_of_occupants' => :'Integer',
        :'account_details' => :'LeaseAccountDetailMessage',
        :'cosigners' => :'Array<CosignerMessage>',
        :'automatically_move_out_tenants' => :'Boolean',
        :'created_date_time' => :'Time',
        :'last_updated_date_time' => :'Time',
        :'move_out_data' => :'Array<LeaseMoveOutDataMessage>',
        :'payment_due_day' => :'Integer',
        :'tenants' => :'Array<LeaseTenantMessage>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::LeaseMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::LeaseMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'property_id')
        self.property_id = attributes[:'property_id']
      end

      if attributes.key?(:'unit_id')
        self.unit_id = attributes[:'unit_id']
      end

      if attributes.key?(:'unit_number')
        self.unit_number = attributes[:'unit_number']
      end

      if attributes.key?(:'lease_from_date')
        self.lease_from_date = attributes[:'lease_from_date']
      end

      if attributes.key?(:'lease_to_date')
        self.lease_to_date = attributes[:'lease_to_date']
      end

      if attributes.key?(:'lease_type')
        self.lease_type = attributes[:'lease_type']
      end

      if attributes.key?(:'lease_status')
        self.lease_status = attributes[:'lease_status']
      end

      if attributes.key?(:'is_eviction_pending')
        self.is_eviction_pending = attributes[:'is_eviction_pending']
      end

      if attributes.key?(:'term_type')
        self.term_type = attributes[:'term_type']
      end

      if attributes.key?(:'renewal_offer_status')
        self.renewal_offer_status = attributes[:'renewal_offer_status']
      end

      if attributes.key?(:'current_tenants')
        if (value = attributes[:'current_tenants']).is_a?(Array)
          self.current_tenants = value
        end
      end

      if attributes.key?(:'current_number_of_occupants')
        self.current_number_of_occupants = attributes[:'current_number_of_occupants']
      end

      if attributes.key?(:'account_details')
        self.account_details = attributes[:'account_details']
      end

      if attributes.key?(:'cosigners')
        if (value = attributes[:'cosigners']).is_a?(Array)
          self.cosigners = value
        end
      end

      if attributes.key?(:'automatically_move_out_tenants')
        self.automatically_move_out_tenants = attributes[:'automatically_move_out_tenants']
      end

      if attributes.key?(:'created_date_time')
        self.created_date_time = attributes[:'created_date_time']
      end

      if attributes.key?(:'last_updated_date_time')
        self.last_updated_date_time = attributes[:'last_updated_date_time']
      end

      if attributes.key?(:'move_out_data')
        if (value = attributes[:'move_out_data']).is_a?(Array)
          self.move_out_data = value
        end
      end

      if attributes.key?(:'payment_due_day')
        self.payment_due_day = attributes[:'payment_due_day']
      end

      if attributes.key?(:'tenants')
        if (value = attributes[:'tenants']).is_a?(Array)
          self.tenants = value
        end
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
      lease_type_validator = EnumAttributeValidator.new('String', ["None", "Fixed", "FixedWithRollover", "AtWill"])
      return false unless lease_type_validator.valid?(@lease_type)
      lease_status_validator = EnumAttributeValidator.new('String', ["Active", "Past", "Future"])
      return false unless lease_status_validator.valid?(@lease_status)
      term_type_validator = EnumAttributeValidator.new('String', ["MonthToMonth", "Standard", "Owner"])
      return false unless term_type_validator.valid?(@term_type)
      renewal_offer_status_validator = EnumAttributeValidator.new('String', ["NotSet", "NotStarted", "Generated", "Declined", "Renewed", "Draft", "Unsigned", "PartiallySigned", "Countersign", "Activated", "Sent", "Accepted"])
      return false unless renewal_offer_status_validator.valid?(@renewal_offer_status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lease_type Object to be assigned
    def lease_type=(lease_type)
      validator = EnumAttributeValidator.new('String', ["None", "Fixed", "FixedWithRollover", "AtWill"])
      unless validator.valid?(lease_type)
        fail ArgumentError, "invalid value #{ lease_type.inspect } for \"lease_type\", must be one of #{validator.allowable_values}."
      end
      @lease_type = lease_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lease_status Object to be assigned
    def lease_status=(lease_status)
      validator = EnumAttributeValidator.new('String', ["Active", "Past", "Future"])
      unless validator.valid?(lease_status)
        fail ArgumentError, "invalid value #{ lease_status.inspect } for \"lease_status\", must be one of #{validator.allowable_values}."
      end
      @lease_status = lease_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] term_type Object to be assigned
    def term_type=(term_type)
      validator = EnumAttributeValidator.new('String', ["MonthToMonth", "Standard", "Owner"])
      unless validator.valid?(term_type)
        fail ArgumentError, "invalid value #{ term_type.inspect } for \"term_type\", must be one of #{validator.allowable_values}."
      end
      @term_type = term_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] renewal_offer_status Object to be assigned
    def renewal_offer_status=(renewal_offer_status)
      validator = EnumAttributeValidator.new('String', ["NotSet", "NotStarted", "Generated", "Declined", "Renewed", "Draft", "Unsigned", "PartiallySigned", "Countersign", "Activated", "Sent", "Accepted"])
      unless validator.valid?(renewal_offer_status)
        fail ArgumentError, "invalid value #{ renewal_offer_status.inspect } for \"renewal_offer_status\", must be one of #{validator.allowable_values}."
      end
      @renewal_offer_status = renewal_offer_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          property_id == o.property_id &&
          unit_id == o.unit_id &&
          unit_number == o.unit_number &&
          lease_from_date == o.lease_from_date &&
          lease_to_date == o.lease_to_date &&
          lease_type == o.lease_type &&
          lease_status == o.lease_status &&
          is_eviction_pending == o.is_eviction_pending &&
          term_type == o.term_type &&
          renewal_offer_status == o.renewal_offer_status &&
          current_tenants == o.current_tenants &&
          current_number_of_occupants == o.current_number_of_occupants &&
          account_details == o.account_details &&
          cosigners == o.cosigners &&
          automatically_move_out_tenants == o.automatically_move_out_tenants &&
          created_date_time == o.created_date_time &&
          last_updated_date_time == o.last_updated_date_time &&
          move_out_data == o.move_out_data &&
          payment_due_day == o.payment_due_day &&
          tenants == o.tenants
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, property_id, unit_id, unit_number, lease_from_date, lease_to_date, lease_type, lease_status, is_eviction_pending, term_type, renewal_offer_status, current_tenants, current_number_of_occupants, account_details, cosigners, automatically_move_out_tenants, created_date_time, last_updated_date_time, move_out_data, payment_due_day, tenants].hash
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
