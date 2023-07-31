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
  class LeaseRenewalPostMessage
    # Describes the type of lease.
    attr_accessor :lease_type

    # End date of the lease. This is required if `LeaseType` is `Fixed` or `FixedWithRollover`
    attr_accessor :lease_to_date

    # Indicates whether to automatically move out all tenants assigned to the lease and set the lease status to past when the lease ends.
    attr_accessor :automatically_move_out_tenants

    attr_accessor :rent

    # List of the cosigners to create on the lease.
    attr_accessor :cosigners

    # Unique identifiers of existing tenants to include on the lease. The request must include at least one tenant in this property OR the `Tenants` property.
    attr_accessor :tenant_ids

    # List of new tenants to create on the lease. The request must include at least one tenant in this property OR the `TenantIds` property.
    attr_accessor :tenants

    # Indicates whether to send a welcome email to all tenants on the lease inviting them to the resident center website.
    attr_accessor :send_welcome_email

    # Unique identifiers of existing recurring charges on the lease to stop.
    attr_accessor :recurring_charges_to_stop

    # List of new recurring charges to create.
    attr_accessor :recurring_charges_to_create

    # List of existing recurring charges to update.
    attr_accessor :recurring_charges_to_update

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
        :'lease_to_date' => :'LeaseToDate',
        :'automatically_move_out_tenants' => :'AutomaticallyMoveOutTenants',
        :'rent' => :'Rent',
        :'cosigners' => :'Cosigners',
        :'tenant_ids' => :'TenantIds',
        :'tenants' => :'Tenants',
        :'send_welcome_email' => :'SendWelcomeEmail',
        :'recurring_charges_to_stop' => :'RecurringChargesToStop',
        :'recurring_charges_to_create' => :'RecurringChargesToCreate',
        :'recurring_charges_to_update' => :'RecurringChargesToUpdate'
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
        :'lease_to_date' => :'Date',
        :'automatically_move_out_tenants' => :'Boolean',
        :'rent' => :'LeaseRentPostMessage',
        :'cosigners' => :'Array<LeaseCosignerPostMessage>',
        :'tenant_ids' => :'Array<Integer>',
        :'tenants' => :'Array<RentalTenantRenewalPostMessage>',
        :'send_welcome_email' => :'Boolean',
        :'recurring_charges_to_stop' => :'Array<Integer>',
        :'recurring_charges_to_create' => :'Array<ChargeRecurringTransactionPostMessage>',
        :'recurring_charges_to_update' => :'Array<ChargeRecurringTransactionPutMessage>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::LeaseRenewalPostMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::LeaseRenewalPostMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'lease_type')
        self.lease_type = attributes[:'lease_type']
      end

      if attributes.key?(:'lease_to_date')
        self.lease_to_date = attributes[:'lease_to_date']
      end

      if attributes.key?(:'automatically_move_out_tenants')
        self.automatically_move_out_tenants = attributes[:'automatically_move_out_tenants']
      end

      if attributes.key?(:'rent')
        self.rent = attributes[:'rent']
      end

      if attributes.key?(:'cosigners')
        if (value = attributes[:'cosigners']).is_a?(Array)
          self.cosigners = value
        end
      end

      if attributes.key?(:'tenant_ids')
        if (value = attributes[:'tenant_ids']).is_a?(Array)
          self.tenant_ids = value
        end
      end

      if attributes.key?(:'tenants')
        if (value = attributes[:'tenants']).is_a?(Array)
          self.tenants = value
        end
      end

      if attributes.key?(:'send_welcome_email')
        self.send_welcome_email = attributes[:'send_welcome_email']
      end

      if attributes.key?(:'recurring_charges_to_stop')
        if (value = attributes[:'recurring_charges_to_stop']).is_a?(Array)
          self.recurring_charges_to_stop = value
        end
      end

      if attributes.key?(:'recurring_charges_to_create')
        if (value = attributes[:'recurring_charges_to_create']).is_a?(Array)
          self.recurring_charges_to_create = value
        end
      end

      if attributes.key?(:'recurring_charges_to_update')
        if (value = attributes[:'recurring_charges_to_update']).is_a?(Array)
          self.recurring_charges_to_update = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @lease_type.nil?
        invalid_properties.push('invalid value for "lease_type", lease_type cannot be nil.')
      end

      if @rent.nil?
        invalid_properties.push('invalid value for "rent", rent cannot be nil.')
      end

      if @send_welcome_email.nil?
        invalid_properties.push('invalid value for "send_welcome_email", send_welcome_email cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @lease_type.nil?
      lease_type_validator = EnumAttributeValidator.new('String', ["Fixed", "FixedWithRollover", "AtWill"])
      return false unless lease_type_validator.valid?(@lease_type)
      return false if @rent.nil?
      return false if @send_welcome_email.nil?
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
          lease_to_date == o.lease_to_date &&
          automatically_move_out_tenants == o.automatically_move_out_tenants &&
          rent == o.rent &&
          cosigners == o.cosigners &&
          tenant_ids == o.tenant_ids &&
          tenants == o.tenants &&
          send_welcome_email == o.send_welcome_email &&
          recurring_charges_to_stop == o.recurring_charges_to_stop &&
          recurring_charges_to_create == o.recurring_charges_to_create &&
          recurring_charges_to_update == o.recurring_charges_to_update
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [lease_type, lease_to_date, automatically_move_out_tenants, rent, cosigners, tenant_ids, tenants, send_welcome_email, recurring_charges_to_stop, recurring_charges_to_create, recurring_charges_to_update].hash
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