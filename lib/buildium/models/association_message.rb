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
  # This is an object that represents home owner associations.
  class AssociationMessage
    # Association unique identifier.
    attr_accessor :id

    # Association name.
    attr_accessor :name

    # Indicates whether the association is active within the Buildium platform.
    attr_accessor :is_active

    # A property reserve is cash that a property manager keeps on hand in case of unexpected expenses. It is available cash that simply isn't disbursed in an owner draw.
    attr_accessor :reserve

    # Description of the association.
    attr_accessor :description

    # Indicates the year the association was built. Null if no value is set.
    attr_accessor :year_built

    # Primary bank account that an association uses for its income and expenses.
    attr_accessor :operating_bank_account

    # Primary bank account unique identifier that an association uses for its income and expenses.
    attr_accessor :operating_bank_account_id

    attr_accessor :address

    attr_accessor :association_manager

    # The day the fiscal year ends for the association.
    attr_accessor :fiscal_year_end_day

    # The month the fiscal year ends for the association.
    attr_accessor :fiscal_year_end_month

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'Id',
        :'name' => :'Name',
        :'is_active' => :'IsActive',
        :'reserve' => :'Reserve',
        :'description' => :'Description',
        :'year_built' => :'YearBuilt',
        :'operating_bank_account' => :'OperatingBankAccount',
        :'operating_bank_account_id' => :'OperatingBankAccountId',
        :'address' => :'Address',
        :'association_manager' => :'AssociationManager',
        :'fiscal_year_end_day' => :'FiscalYearEndDay',
        :'fiscal_year_end_month' => :'FiscalYearEndMonth'
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
        :'is_active' => :'Boolean',
        :'reserve' => :'Float',
        :'description' => :'String',
        :'year_built' => :'Integer',
        :'operating_bank_account' => :'String',
        :'operating_bank_account_id' => :'Integer',
        :'address' => :'AddressMessage',
        :'association_manager' => :'PropertyManagerMessage',
        :'fiscal_year_end_day' => :'Integer',
        :'fiscal_year_end_month' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::AssociationMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::AssociationMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

      if attributes.key?(:'reserve')
        self.reserve = attributes[:'reserve']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'year_built')
        self.year_built = attributes[:'year_built']
      end

      if attributes.key?(:'operating_bank_account')
        self.operating_bank_account = attributes[:'operating_bank_account']
      end

      if attributes.key?(:'operating_bank_account_id')
        self.operating_bank_account_id = attributes[:'operating_bank_account_id']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'association_manager')
        self.association_manager = attributes[:'association_manager']
      end

      if attributes.key?(:'fiscal_year_end_day')
        self.fiscal_year_end_day = attributes[:'fiscal_year_end_day']
      end

      if attributes.key?(:'fiscal_year_end_month')
        self.fiscal_year_end_month = attributes[:'fiscal_year_end_month']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          is_active == o.is_active &&
          reserve == o.reserve &&
          description == o.description &&
          year_built == o.year_built &&
          operating_bank_account == o.operating_bank_account &&
          operating_bank_account_id == o.operating_bank_account_id &&
          address == o.address &&
          association_manager == o.association_manager &&
          fiscal_year_end_day == o.fiscal_year_end_day &&
          fiscal_year_end_month == o.fiscal_year_end_month
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, is_active, reserve, description, year_built, operating_bank_account, operating_bank_account_id, address, association_manager, fiscal_year_end_day, fiscal_year_end_month].hash
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
