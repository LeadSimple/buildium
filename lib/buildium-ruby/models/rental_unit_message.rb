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
  # This object represents a rental property unit.
  class RentalUnitMessage
    # Rental unit unique identifier.
    attr_accessor :id

    # Rental property unique identifier that the unit belongs to.
    attr_accessor :property_id

    # Building name that the unit belongs to.
    attr_accessor :building_name

    # Unit number.
    attr_accessor :unit_number

    # Description of the unit.
    attr_accessor :description

    # Market rent of the unit. This value is separate from the lease rent and is typically used for rental listings. Null if no value is set.
    attr_accessor :market_rent

    attr_accessor :address

    # Number of bedrooms in the unit. Null if no value is set.
    attr_accessor :unit_bedrooms

    # Number of bathrooms in the unit. Null if no value is set.
    attr_accessor :unit_bathrooms

    # Size of the unit. Null if no value is set.
    attr_accessor :unit_size

    # Whether the unit is currently listed for rent.                Note: this value is transient and determined at query time based on whether an active listing exists for the unit. Because this value is not persisted in the database, changes to value are not reflected in the last updated date for the unit.
    attr_accessor :is_unit_listed

    # Whether the unit is currently being rented by a tenent.                Note: this value is transient and determined at query time based on whether an active lease exists for the unit. Because this value is not persisted in the database, changes to value are not reflected in the last updated date for the unit.
    attr_accessor :is_unit_occupied

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
        :'building_name' => :'BuildingName',
        :'unit_number' => :'UnitNumber',
        :'description' => :'Description',
        :'market_rent' => :'MarketRent',
        :'address' => :'Address',
        :'unit_bedrooms' => :'UnitBedrooms',
        :'unit_bathrooms' => :'UnitBathrooms',
        :'unit_size' => :'UnitSize',
        :'is_unit_listed' => :'IsUnitListed',
        :'is_unit_occupied' => :'IsUnitOccupied'
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
        :'building_name' => :'String',
        :'unit_number' => :'String',
        :'description' => :'String',
        :'market_rent' => :'Float',
        :'address' => :'AddressMessage',
        :'unit_bedrooms' => :'String',
        :'unit_bathrooms' => :'String',
        :'unit_size' => :'Integer',
        :'is_unit_listed' => :'Boolean',
        :'is_unit_occupied' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::RentalUnitMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::RentalUnitMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'property_id')
        self.property_id = attributes[:'property_id']
      end

      if attributes.key?(:'building_name')
        self.building_name = attributes[:'building_name']
      end

      if attributes.key?(:'unit_number')
        self.unit_number = attributes[:'unit_number']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'market_rent')
        self.market_rent = attributes[:'market_rent']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'unit_bedrooms')
        self.unit_bedrooms = attributes[:'unit_bedrooms']
      end

      if attributes.key?(:'unit_bathrooms')
        self.unit_bathrooms = attributes[:'unit_bathrooms']
      end

      if attributes.key?(:'unit_size')
        self.unit_size = attributes[:'unit_size']
      end

      if attributes.key?(:'is_unit_listed')
        self.is_unit_listed = attributes[:'is_unit_listed']
      end

      if attributes.key?(:'is_unit_occupied')
        self.is_unit_occupied = attributes[:'is_unit_occupied']
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
      unit_bedrooms_validator = EnumAttributeValidator.new('String', ["NotSet", "Studio", "OneBed", "TwoBed", "ThreeBed", "FourBed", "FiveBed", "SixBed", "SevenBed", "EightBed", "NineBedPlus"])
      return false unless unit_bedrooms_validator.valid?(@unit_bedrooms)
      unit_bathrooms_validator = EnumAttributeValidator.new('String', ["NotSet", "OneBath", "OnePointFiveBath", "TwoBath", "TwoPointFiveBath", "ThreeBath", "FourBath", "FiveBath", "FivePlusBath", "ThreePointFiveBath", "FourPointFiveBath"])
      return false unless unit_bathrooms_validator.valid?(@unit_bathrooms)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_bedrooms Object to be assigned
    def unit_bedrooms=(unit_bedrooms)
      validator = EnumAttributeValidator.new('String', ["NotSet", "Studio", "OneBed", "TwoBed", "ThreeBed", "FourBed", "FiveBed", "SixBed", "SevenBed", "EightBed", "NineBedPlus"])
      unless validator.valid?(unit_bedrooms)
        fail ArgumentError, "invalid value #{ unit_bedrooms.inspect } for \"unit_bedrooms\", must be one of #{validator.allowable_values}."
      end
      @unit_bedrooms = unit_bedrooms
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_bathrooms Object to be assigned
    def unit_bathrooms=(unit_bathrooms)
      validator = EnumAttributeValidator.new('String', ["NotSet", "OneBath", "OnePointFiveBath", "TwoBath", "TwoPointFiveBath", "ThreeBath", "FourBath", "FiveBath", "FivePlusBath", "ThreePointFiveBath", "FourPointFiveBath"])
      unless validator.valid?(unit_bathrooms)
        fail ArgumentError, "invalid value #{ unit_bathrooms.inspect } for \"unit_bathrooms\", must be one of #{validator.allowable_values}."
      end
      @unit_bathrooms = unit_bathrooms
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          property_id == o.property_id &&
          building_name == o.building_name &&
          unit_number == o.unit_number &&
          description == o.description &&
          market_rent == o.market_rent &&
          address == o.address &&
          unit_bedrooms == o.unit_bedrooms &&
          unit_bathrooms == o.unit_bathrooms &&
          unit_size == o.unit_size &&
          is_unit_listed == o.is_unit_listed &&
          is_unit_occupied == o.is_unit_occupied
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, property_id, building_name, unit_number, description, market_rent, address, unit_bedrooms, unit_bathrooms, unit_size, is_unit_listed, is_unit_occupied].hash
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
