=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.     

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'date'
require 'time'

module Buildium
  class LeasePostMessage
    # Describes the type of lease.<br /><br />  `AtWill` leases are month-to-month leases. Setting a lease as at will tells Buildium when the tenant's lease initially started, but since there is no lease end date, Buildium will never move the lease to expired, and it will continue to post any automatic transactions (like recurring monthly rent charges or late fees) until you manually end the lease.  <br /><br />  `Fixed` leases are leases that have specific start and end dates.When the end date occurs, the lease will move from active to expired, and any transactions set to post automatically(like recurring monthly rent charges or late fees) will stop posting.  <br /><br />  `FixedWithRollover` leases are similar to fixed leases, but instead of Buildium moving this lease to expired as of the end date, it will move the lease to an at will status, which tells Buildium to continue posting monthly rent charges, late fees for you until you manually end the lease.
    attr_accessor :lease_type

    # Unit unique identifier associated with the lease.
    attr_accessor :unit_id

    # Start date of the lease.
    attr_accessor :lease_from_date

    # End date of the lease.
    attr_accessor :lease_to_date

    # Indicates whether to send a welcome email to all tenants on the lease inviting them to the resident center website.
    attr_accessor :send_welcome_email

    # List of the tenants on the lease.
    attr_accessor :tenants

    # List of the cosigners on the lease.
    attr_accessor :cosigners

    attr_accessor :rent

    attr_accessor :security_deposit

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
        :'lease_type' => :'LeaseType',
        :'unit_id' => :'UnitId',
        :'lease_from_date' => :'LeaseFromDate',
        :'lease_to_date' => :'LeaseToDate',
        :'send_welcome_email' => :'SendWelcomeEmail',
        :'tenants' => :'Tenants',
        :'cosigners' => :'Cosigners',
        :'rent' => :'Rent',
        :'security_deposit' => :'SecurityDeposit'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'lease_type' => :'String',
        :'unit_id' => :'Integer',
        :'lease_from_date' => :'Date',
        :'lease_to_date' => :'Date',
        :'send_welcome_email' => :'Boolean',
        :'tenants' => :'Array<RentalTenantPutMessage>',
        :'cosigners' => :'Array<LeaseCosignerPostMessage>',
        :'rent' => :'LeaseRentPostMessage',
        :'security_deposit' => :'LeaseSecurityDepositPostMessage'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::LeasePostMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::LeasePostMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'lease_type')
        self.lease_type = attributes[:'lease_type']
      end

      if attributes.key?(:'unit_id')
        self.unit_id = attributes[:'unit_id']
      end

      if attributes.key?(:'lease_from_date')
        self.lease_from_date = attributes[:'lease_from_date']
      end

      if attributes.key?(:'lease_to_date')
        self.lease_to_date = attributes[:'lease_to_date']
      end

      if attributes.key?(:'send_welcome_email')
        self.send_welcome_email = attributes[:'send_welcome_email']
      end

      if attributes.key?(:'tenants')
        if (value = attributes[:'tenants']).is_a?(Array)
          self.tenants = value
        end
      end

      if attributes.key?(:'cosigners')
        if (value = attributes[:'cosigners']).is_a?(Array)
          self.cosigners = value
        end
      end

      if attributes.key?(:'rent')
        self.rent = attributes[:'rent']
      end

      if attributes.key?(:'security_deposit')
        self.security_deposit = attributes[:'security_deposit']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @lease_type.nil?
        invalid_properties.push('invalid value for "lease_type", lease_type cannot be nil.')
      end

      if @unit_id.nil?
        invalid_properties.push('invalid value for "unit_id", unit_id cannot be nil.')
      end

      if @lease_from_date.nil?
        invalid_properties.push('invalid value for "lease_from_date", lease_from_date cannot be nil.')
      end

      if @send_welcome_email.nil?
        invalid_properties.push('invalid value for "send_welcome_email", send_welcome_email cannot be nil.')
      end

      if @tenants.nil?
        invalid_properties.push('invalid value for "tenants", tenants cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @lease_type.nil?
      lease_type_validator = EnumAttributeValidator.new('String', ["Fixed", "FixedWithRollover", "AtWill"])
      return false unless lease_type_validator.valid?(@lease_type)
      return false if @unit_id.nil?
      return false if @lease_from_date.nil?
      return false if @send_welcome_email.nil?
      return false if @tenants.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lease_type Object to be assigned
    def lease_type=(lease_type)
      validator = EnumAttributeValidator.new('String', ["Fixed", "FixedWithRollover", "AtWill"])
      unless validator.valid?(lease_type)
        fail ArgumentError, "invalid value #{ lease_type.inspect } for \"lease_type\", must be one of #{validator.allowable_values}."
      end
      @lease_type = lease_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          lease_type == o.lease_type &&
          unit_id == o.unit_id &&
          lease_from_date == o.lease_from_date &&
          lease_to_date == o.lease_to_date &&
          send_welcome_email == o.send_welcome_email &&
          tenants == o.tenants &&
          cosigners == o.cosigners &&
          rent == o.rent &&
          security_deposit == o.security_deposit
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [lease_type, unit_id, lease_from_date, lease_to_date, send_welcome_email, tenants, cosigners, rent, security_deposit].hash
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
