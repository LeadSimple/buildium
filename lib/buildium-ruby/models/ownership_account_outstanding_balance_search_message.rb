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
  class OwnershipAccountOutstandingBalanceSearchMessage
    # Association unique identifier
    attr_accessor :association_id

    # List of ownership account statuses
    attr_accessor :ownership_account_statuses

    # List of ownership account ids
    attr_accessor :ownership_account_ids

    # Status of notification of outstanding balances
    attr_accessor :past_due_email

    # Duration of outstanding balances
    attr_accessor :balance_duration

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
        :'association_id' => :'AssociationId',
        :'ownership_account_statuses' => :'OwnershipAccountStatuses',
        :'ownership_account_ids' => :'OwnershipAccountIds',
        :'past_due_email' => :'PastDueEmail',
        :'balance_duration' => :'BalanceDuration'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'association_id' => :'Integer',
        :'ownership_account_statuses' => :'Array<String>',
        :'ownership_account_ids' => :'Array<Integer>',
        :'past_due_email' => :'String',
        :'balance_duration' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::OwnershipAccountOutstandingBalanceSearchMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::OwnershipAccountOutstandingBalanceSearchMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'association_id')
        self.association_id = attributes[:'association_id']
      end

      if attributes.key?(:'ownership_account_statuses')
        if (value = attributes[:'ownership_account_statuses']).is_a?(Array)
          self.ownership_account_statuses = value
        end
      end

      if attributes.key?(:'ownership_account_ids')
        if (value = attributes[:'ownership_account_ids']).is_a?(Array)
          self.ownership_account_ids = value
        end
      end

      if attributes.key?(:'past_due_email')
        self.past_due_email = attributes[:'past_due_email']
      end

      if attributes.key?(:'balance_duration')
        self.balance_duration = attributes[:'balance_duration']
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
      past_due_email_validator = EnumAttributeValidator.new('String', ["NoEmailAddress", "Sent"])
      return false unless past_due_email_validator.valid?(@past_due_email)
      balance_duration_validator = EnumAttributeValidator.new('String', ["TotalBalance", "Balance0to30Days", "Balance31to60Days", "Balance61to90Days", "BalanceOver90Days"])
      return false unless balance_duration_validator.valid?(@balance_duration)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] past_due_email Object to be assigned
    def past_due_email=(past_due_email)
      validator = EnumAttributeValidator.new('String', ["NoEmailAddress", "Sent"])
      unless validator.valid?(past_due_email)
        fail ArgumentError, "invalid value #{ past_due_email.inspect } for \"past_due_email\", must be one of #{validator.allowable_values}."
      end
      @past_due_email = past_due_email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_duration Object to be assigned
    def balance_duration=(balance_duration)
      validator = EnumAttributeValidator.new('String', ["TotalBalance", "Balance0to30Days", "Balance31to60Days", "Balance61to90Days", "BalanceOver90Days"])
      unless validator.valid?(balance_duration)
        fail ArgumentError, "invalid value #{ balance_duration.inspect } for \"balance_duration\", must be one of #{validator.allowable_values}."
      end
      @balance_duration = balance_duration
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          association_id == o.association_id &&
          ownership_account_statuses == o.ownership_account_statuses &&
          ownership_account_ids == o.ownership_account_ids &&
          past_due_email == o.past_due_email &&
          balance_duration == o.balance_duration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [association_id, ownership_account_statuses, ownership_account_ids, past_due_email, balance_duration].hash
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