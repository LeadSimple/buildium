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
  # This is an object that represents a rental property.
  class RentalMessage
    # Rental property unique identifier.
    attr_accessor :id

    # Name of the rental property.
    attr_accessor :name

    # Description of the rental property structure.
    attr_accessor :structure_description

    # Number of units in the rental property.
    attr_accessor :number_units

    # Indicates whether the rental property is active within the Buildium platform.
    attr_accessor :is_active

    # The primary bank account that a rental property uses for its income and expenses.
    attr_accessor :operating_bank_account_id

    # A property reserve is cash that a property manager keeps on hand in case of unexpected expenses. It is available cash that isn't disbursed in an owner draw.
    attr_accessor :reserve

    attr_accessor :address

    # Year the rental property was built.
    attr_accessor :year_built

    # Indicates the type of rental property.
    attr_accessor :rental_type

    # Indicates the sub type of the rental property.
    attr_accessor :rental_sub_type

    attr_accessor :rental_manager

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
        :'name' => :'Name',
        :'structure_description' => :'StructureDescription',
        :'number_units' => :'NumberUnits',
        :'is_active' => :'IsActive',
        :'operating_bank_account_id' => :'OperatingBankAccountId',
        :'reserve' => :'Reserve',
        :'address' => :'Address',
        :'year_built' => :'YearBuilt',
        :'rental_type' => :'RentalType',
        :'rental_sub_type' => :'RentalSubType',
        :'rental_manager' => :'RentalManager'
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
        :'name' => :'String',
        :'structure_description' => :'String',
        :'number_units' => :'Integer',
        :'is_active' => :'Boolean',
        :'operating_bank_account_id' => :'Integer',
        :'reserve' => :'Float',
        :'address' => :'AddressMessage',
        :'year_built' => :'Integer',
        :'rental_type' => :'String',
        :'rental_sub_type' => :'String',
        :'rental_manager' => :'PropertyManagerMessage'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::RentalMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::RentalMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'structure_description')
        self.structure_description = attributes[:'structure_description']
      end

      if attributes.key?(:'number_units')
        self.number_units = attributes[:'number_units']
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

      if attributes.key?(:'operating_bank_account_id')
        self.operating_bank_account_id = attributes[:'operating_bank_account_id']
      end

      if attributes.key?(:'reserve')
        self.reserve = attributes[:'reserve']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'year_built')
        self.year_built = attributes[:'year_built']
      end

      if attributes.key?(:'rental_type')
        self.rental_type = attributes[:'rental_type']
      end

      if attributes.key?(:'rental_sub_type')
        self.rental_sub_type = attributes[:'rental_sub_type']
      end

      if attributes.key?(:'rental_manager')
        self.rental_manager = attributes[:'rental_manager']
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
      rental_type_validator = EnumAttributeValidator.new('String', ["None", "Residential", "Commercial"])
      return false unless rental_type_validator.valid?(@rental_type)
      rental_sub_type_validator = EnumAttributeValidator.new('String', ["CondoTownhome", "MultiFamily", "SingleFamily", "Industrial", "Office", "Retail", "ShoppingCenter", "Storage", "ParkingSpace"])
      return false unless rental_sub_type_validator.valid?(@rental_sub_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rental_type Object to be assigned
    def rental_type=(rental_type)
      validator = EnumAttributeValidator.new('String', ["None", "Residential", "Commercial"])
      unless validator.valid?(rental_type)
        fail ArgumentError, "invalid value #{ rental_type.inspect } for \"rental_type\", must be one of #{validator.allowable_values}."
      end
      @rental_type = rental_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] rental_sub_type Object to be assigned
    def rental_sub_type=(rental_sub_type)
      validator = EnumAttributeValidator.new('String', ["CondoTownhome", "MultiFamily", "SingleFamily", "Industrial", "Office", "Retail", "ShoppingCenter", "Storage", "ParkingSpace"])
      unless validator.valid?(rental_sub_type)
        fail ArgumentError, "invalid value #{ rental_sub_type.inspect } for \"rental_sub_type\", must be one of #{validator.allowable_values}."
      end
      @rental_sub_type = rental_sub_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          structure_description == o.structure_description &&
          number_units == o.number_units &&
          is_active == o.is_active &&
          operating_bank_account_id == o.operating_bank_account_id &&
          reserve == o.reserve &&
          address == o.address &&
          year_built == o.year_built &&
          rental_type == o.rental_type &&
          rental_sub_type == o.rental_sub_type &&
          rental_manager == o.rental_manager
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, structure_description, number_units, is_active, operating_bank_account_id, reserve, address, year_built, rental_type, rental_sub_type, rental_manager].hash
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