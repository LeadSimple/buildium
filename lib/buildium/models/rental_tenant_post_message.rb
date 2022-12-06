=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module Buildium
  class RentalTenantPostMessage
    # Lease ID to associate the tenant with.
    attr_accessor :lease_id

    # First name of the tenant. The value cannot exceed 127 characters.
    attr_accessor :first_name

    # Last name of the tenant. The value cannot exceed 127 characters.
    attr_accessor :last_name

    # Email of the tenant.
    attr_accessor :email

    # Alternate email of the tenant.
    attr_accessor :alternate_email

    attr_accessor :phone_numbers

    # Date of birth for the tenant. Must be formatted as `YYYY-MM-DD`.
    attr_accessor :date_of_birth

    # Comments about the tenant. The value cannot exceed 65,535 characters.
    attr_accessor :comment

    # Tax identifier of the tenant. Valid formats are: `12-1234567`, `123-12-1234`, `123456789`
    attr_accessor :tax_id

    attr_accessor :emergency_contact

    attr_accessor :address

    attr_accessor :alternate_address

    # Mailing preference for the tenant. If an alternate address exists and this value is not provided then the primary address will be set as the preferred address.
    attr_accessor :mailing_preference

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
        :'lease_id' => :'LeaseId',
        :'first_name' => :'FirstName',
        :'last_name' => :'LastName',
        :'email' => :'Email',
        :'alternate_email' => :'AlternateEmail',
        :'phone_numbers' => :'PhoneNumbers',
        :'date_of_birth' => :'DateOfBirth',
        :'comment' => :'Comment',
        :'tax_id' => :'TaxId',
        :'emergency_contact' => :'EmergencyContact',
        :'address' => :'Address',
        :'alternate_address' => :'AlternateAddress',
        :'mailing_preference' => :'MailingPreference'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'lease_id' => :'Integer',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'email' => :'String',
        :'alternate_email' => :'String',
        :'phone_numbers' => :'PhoneNumbersMessage',
        :'date_of_birth' => :'Date',
        :'comment' => :'String',
        :'tax_id' => :'String',
        :'emergency_contact' => :'SaveEmergencyContactMessage',
        :'address' => :'SaveAddressMessage',
        :'alternate_address' => :'SaveAddressMessage',
        :'mailing_preference' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::RentalTenantPostMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::RentalTenantPostMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'lease_id')
        self.lease_id = attributes[:'lease_id']
      end

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
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

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'tax_id')
        self.tax_id = attributes[:'tax_id']
      end

      if attributes.key?(:'emergency_contact')
        self.emergency_contact = attributes[:'emergency_contact']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'alternate_address')
        self.alternate_address = attributes[:'alternate_address']
      end

      if attributes.key?(:'mailing_preference')
        self.mailing_preference = attributes[:'mailing_preference']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @lease_id.nil?
        invalid_properties.push('invalid value for "lease_id", lease_id cannot be nil.')
      end

      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @address.nil?
        invalid_properties.push('invalid value for "address", address cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @lease_id.nil?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return false if @address.nil?
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
          lease_id == o.lease_id &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          email == o.email &&
          alternate_email == o.alternate_email &&
          phone_numbers == o.phone_numbers &&
          date_of_birth == o.date_of_birth &&
          comment == o.comment &&
          tax_id == o.tax_id &&
          emergency_contact == o.emergency_contact &&
          address == o.address &&
          alternate_address == o.alternate_address &&
          mailing_preference == o.mailing_preference
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [lease_id, first_name, last_name, email, alternate_email, phone_numbers, date_of_birth, comment, tax_id, emergency_contact, address, alternate_address, mailing_preference].hash
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
