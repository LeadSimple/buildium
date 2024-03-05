=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'date'
require 'time'

module Buildium
  # This object represents the Association Owner to add to an existing Ownership Account
  class AssociationOwnerToExistingOwnershipAccountPostMessage
    # Ownership account Id for the owner.
    attr_accessor :ownership_account_id

    # Send a welcome email to any homeowner at the association
    attr_accessor :send_welcome_email

    attr_accessor :primary_address

    attr_accessor :alternate_address

    # First name of the owner. The value can not exceed 127 characters.
    attr_accessor :first_name

    # Last name of the owner. The value can not exceed 127 characters.
    attr_accessor :last_name

    attr_accessor :board_member_term

    # Indicates if the association owner occupies a unit(s) within the association.
    attr_accessor :is_owner_occupied

    # Email of owner.
    attr_accessor :email

    # Alternate email of owner.
    attr_accessor :alternate_email

    attr_accessor :phone_numbers

    # Date Of Birth for the owner. Must be formatted as `YYYY-MM-DD`.
    attr_accessor :date_of_birth

    attr_accessor :emergency_contact

    # Comments about the owner. The value can not exceed 65,535 characters.
    attr_accessor :comment

    # Mailing preferences for the owner. If an alternate address exists and this value is not provided then the primary address will be set as the preferred address.
    attr_accessor :mailing_preference

    # Taxpayer identification number of the owner. Examples of United States identification numbers are Social Security number or a Employer Identification Number. Valid formats are: `12-1234567`, `123-12-1234`, `123456789`.
    attr_accessor :tax_id

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
        :'ownership_account_id' => :'OwnershipAccountId',
        :'send_welcome_email' => :'SendWelcomeEmail',
        :'primary_address' => :'PrimaryAddress',
        :'alternate_address' => :'AlternateAddress',
        :'first_name' => :'FirstName',
        :'last_name' => :'LastName',
        :'board_member_term' => :'BoardMemberTerm',
        :'is_owner_occupied' => :'IsOwnerOccupied',
        :'email' => :'Email',
        :'alternate_email' => :'AlternateEmail',
        :'phone_numbers' => :'PhoneNumbers',
        :'date_of_birth' => :'DateOfBirth',
        :'emergency_contact' => :'EmergencyContact',
        :'comment' => :'Comment',
        :'mailing_preference' => :'MailingPreference',
        :'tax_id' => :'TaxId'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ownership_account_id' => :'Integer',
        :'send_welcome_email' => :'Boolean',
        :'primary_address' => :'SaveAddressMessage',
        :'alternate_address' => :'SaveAddressMessage',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'board_member_term' => :'AssociationOwnerBoardTermPostMessage',
        :'is_owner_occupied' => :'Boolean',
        :'email' => :'String',
        :'alternate_email' => :'String',
        :'phone_numbers' => :'PhoneNumbersMessage',
        :'date_of_birth' => :'Date',
        :'emergency_contact' => :'SaveEmergencyContactMessage',
        :'comment' => :'String',
        :'mailing_preference' => :'String',
        :'tax_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::AssociationOwnerToExistingOwnershipAccountPostMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::AssociationOwnerToExistingOwnershipAccountPostMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ownership_account_id')
        self.ownership_account_id = attributes[:'ownership_account_id']
      end

      if attributes.key?(:'send_welcome_email')
        self.send_welcome_email = attributes[:'send_welcome_email']
      end

      if attributes.key?(:'primary_address')
        self.primary_address = attributes[:'primary_address']
      end

      if attributes.key?(:'alternate_address')
        self.alternate_address = attributes[:'alternate_address']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'board_member_term')
        self.board_member_term = attributes[:'board_member_term']
      end

      if attributes.key?(:'is_owner_occupied')
        self.is_owner_occupied = attributes[:'is_owner_occupied']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'alternate_email')
        self.alternate_email = attributes[:'alternate_email']
      end

      if attributes.key?(:'phone_numbers')
        self.phone_numbers = attributes[:'phone_numbers']
      end

      if attributes.key?(:'date_of_birth')
        self.date_of_birth = attributes[:'date_of_birth']
      end

      if attributes.key?(:'emergency_contact')
        self.emergency_contact = attributes[:'emergency_contact']
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'mailing_preference')
        self.mailing_preference = attributes[:'mailing_preference']
      end

      if attributes.key?(:'tax_id')
        self.tax_id = attributes[:'tax_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @ownership_account_id.nil?
        invalid_properties.push('invalid value for "ownership_account_id", ownership_account_id cannot be nil.')
      end

      if @send_welcome_email.nil?
        invalid_properties.push('invalid value for "send_welcome_email", send_welcome_email cannot be nil.')
      end

      if @primary_address.nil?
        invalid_properties.push('invalid value for "primary_address", primary_address cannot be nil.')
      end

      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @is_owner_occupied.nil?
        invalid_properties.push('invalid value for "is_owner_occupied", is_owner_occupied cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @ownership_account_id.nil?
      return false if @send_welcome_email.nil?
      return false if @primary_address.nil?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return false if @is_owner_occupied.nil?
      mailing_preference_validator = EnumAttributeValidator.new('String', ["PrimaryAddress", "AlternateAddress"])
      return false unless mailing_preference_validator.valid?(@mailing_preference)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mailing_preference Object to be assigned
    def mailing_preference=(mailing_preference)
      validator = EnumAttributeValidator.new('String', ["PrimaryAddress", "AlternateAddress"])
      unless validator.valid?(mailing_preference)
        fail ArgumentError, "invalid value #{ mailing_preference.inspect } for \"mailing_preference\", must be one of #{validator.allowable_values}."
      end
      @mailing_preference = mailing_preference
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ownership_account_id == o.ownership_account_id &&
          send_welcome_email == o.send_welcome_email &&
          primary_address == o.primary_address &&
          alternate_address == o.alternate_address &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          board_member_term == o.board_member_term &&
          is_owner_occupied == o.is_owner_occupied &&
          email == o.email &&
          alternate_email == o.alternate_email &&
          phone_numbers == o.phone_numbers &&
          date_of_birth == o.date_of_birth &&
          emergency_contact == o.emergency_contact &&
          comment == o.comment &&
          mailing_preference == o.mailing_preference &&
          tax_id == o.tax_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ownership_account_id, send_welcome_email, primary_address, alternate_address, first_name, last_name, board_member_term, is_owner_occupied, email, alternate_email, phone_numbers, date_of_birth, emergency_contact, comment, mailing_preference, tax_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
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
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
