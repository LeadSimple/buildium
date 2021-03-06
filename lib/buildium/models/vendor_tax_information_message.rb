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
  # Vendor tax information.
  class VendorTaxInformationMessage
    # Indicates the type of tax payer id being specified in the request.
    attr_accessor :tax_payer_id_type

    # The tax payer identifier.
    attr_accessor :tax_payer_id

    # Tax payer name line 1.
    attr_accessor :tax_payer_name1

    # Tax payer name line 2.
    attr_accessor :tax_payer_name2

    # Indicates whether the vendor should be included in 1099 form generation.
    attr_accessor :include_in1099

    attr_accessor :address

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
        :'tax_payer_id_type' => :'TaxPayerIdType',
        :'tax_payer_id' => :'TaxPayerId',
        :'tax_payer_name1' => :'TaxPayerName1',
        :'tax_payer_name2' => :'TaxPayerName2',
        :'include_in1099' => :'IncludeIn1099',
        :'address' => :'Address'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'tax_payer_id_type' => :'String',
        :'tax_payer_id' => :'String',
        :'tax_payer_name1' => :'String',
        :'tax_payer_name2' => :'String',
        :'include_in1099' => :'Boolean',
        :'address' => :'AddressMessage'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::VendorTaxInformationMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::VendorTaxInformationMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'tax_payer_id_type')
        self.tax_payer_id_type = attributes[:'tax_payer_id_type']
      end

      if attributes.key?(:'tax_payer_id')
        self.tax_payer_id = attributes[:'tax_payer_id']
      end

      if attributes.key?(:'tax_payer_name1')
        self.tax_payer_name1 = attributes[:'tax_payer_name1']
      end

      if attributes.key?(:'tax_payer_name2')
        self.tax_payer_name2 = attributes[:'tax_payer_name2']
      end

      if attributes.key?(:'include_in1099')
        self.include_in1099 = attributes[:'include_in1099']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
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
      tax_payer_id_type_validator = EnumAttributeValidator.new('String', ["SSN", "EIN"])
      return false unless tax_payer_id_type_validator.valid?(@tax_payer_id_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_payer_id_type Object to be assigned
    def tax_payer_id_type=(tax_payer_id_type)
      validator = EnumAttributeValidator.new('String', ["SSN", "EIN"])
      unless validator.valid?(tax_payer_id_type)
        fail ArgumentError, "invalid value #{ tax_payer_id_type.inspect } for \"tax_payer_id_type\", must be one of #{validator.allowable_values}."
      end
      @tax_payer_id_type = tax_payer_id_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tax_payer_id_type == o.tax_payer_id_type &&
          tax_payer_id == o.tax_payer_id &&
          tax_payer_name1 == o.tax_payer_name1 &&
          tax_payer_name2 == o.tax_payer_name2 &&
          include_in1099 == o.include_in1099 &&
          address == o.address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [tax_payer_id_type, tax_payer_id, tax_payer_name1, tax_payer_name2, include_in1099, address].hash
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
