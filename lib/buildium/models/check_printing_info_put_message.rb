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
  class CheckPrintingInfoPutMessage
    # Indicates whether remote check printing is enabled.
    attr_accessor :enable_remote_check_printing

    # Indicates whether local check printing is enabled.
    attr_accessor :enable_local_check_printing

    # The check layout type.
    attr_accessor :check_layout_type

    # The signature heading.
    attr_accessor :signature_heading

    # The fractional form of the routing number. Typically is used to identify the bank of the check in cases where the MICR is unreadable.
    attr_accessor :fractional_number

    # Bank information line 1.
    attr_accessor :bank_information_line1

    # Bank information line 2.
    attr_accessor :bank_information_line2

    # Bank information line 3.
    attr_accessor :bank_information_line3

    # Bank information line 4.
    attr_accessor :bank_information_line4

    # Bank information line 5.
    attr_accessor :bank_information_line5

    # Company information 1.
    attr_accessor :company_information_line1

    # Company information 2.
    attr_accessor :company_information_line2

    # Company information 3.
    attr_accessor :company_information_line3

    # Company information 4.
    attr_accessor :company_information_line4

    # Company information 5.
    attr_accessor :company_information_line5

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
        :'enable_remote_check_printing' => :'EnableRemoteCheckPrinting',
        :'enable_local_check_printing' => :'EnableLocalCheckPrinting',
        :'check_layout_type' => :'CheckLayoutType',
        :'signature_heading' => :'SignatureHeading',
        :'fractional_number' => :'FractionalNumber',
        :'bank_information_line1' => :'BankInformationLine1',
        :'bank_information_line2' => :'BankInformationLine2',
        :'bank_information_line3' => :'BankInformationLine3',
        :'bank_information_line4' => :'BankInformationLine4',
        :'bank_information_line5' => :'BankInformationLine5',
        :'company_information_line1' => :'CompanyInformationLine1',
        :'company_information_line2' => :'CompanyInformationLine2',
        :'company_information_line3' => :'CompanyInformationLine3',
        :'company_information_line4' => :'CompanyInformationLine4',
        :'company_information_line5' => :'CompanyInformationLine5'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'enable_remote_check_printing' => :'Boolean',
        :'enable_local_check_printing' => :'Boolean',
        :'check_layout_type' => :'String',
        :'signature_heading' => :'String',
        :'fractional_number' => :'String',
        :'bank_information_line1' => :'String',
        :'bank_information_line2' => :'String',
        :'bank_information_line3' => :'String',
        :'bank_information_line4' => :'String',
        :'bank_information_line5' => :'String',
        :'company_information_line1' => :'String',
        :'company_information_line2' => :'String',
        :'company_information_line3' => :'String',
        :'company_information_line4' => :'String',
        :'company_information_line5' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::CheckPrintingInfoPutMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::CheckPrintingInfoPutMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'enable_remote_check_printing')
        self.enable_remote_check_printing = attributes[:'enable_remote_check_printing']
      end

      if attributes.key?(:'enable_local_check_printing')
        self.enable_local_check_printing = attributes[:'enable_local_check_printing']
      end

      if attributes.key?(:'check_layout_type')
        self.check_layout_type = attributes[:'check_layout_type']
      end

      if attributes.key?(:'signature_heading')
        self.signature_heading = attributes[:'signature_heading']
      end

      if attributes.key?(:'fractional_number')
        self.fractional_number = attributes[:'fractional_number']
      end

      if attributes.key?(:'bank_information_line1')
        self.bank_information_line1 = attributes[:'bank_information_line1']
      end

      if attributes.key?(:'bank_information_line2')
        self.bank_information_line2 = attributes[:'bank_information_line2']
      end

      if attributes.key?(:'bank_information_line3')
        self.bank_information_line3 = attributes[:'bank_information_line3']
      end

      if attributes.key?(:'bank_information_line4')
        self.bank_information_line4 = attributes[:'bank_information_line4']
      end

      if attributes.key?(:'bank_information_line5')
        self.bank_information_line5 = attributes[:'bank_information_line5']
      end

      if attributes.key?(:'company_information_line1')
        self.company_information_line1 = attributes[:'company_information_line1']
      end

      if attributes.key?(:'company_information_line2')
        self.company_information_line2 = attributes[:'company_information_line2']
      end

      if attributes.key?(:'company_information_line3')
        self.company_information_line3 = attributes[:'company_information_line3']
      end

      if attributes.key?(:'company_information_line4')
        self.company_information_line4 = attributes[:'company_information_line4']
      end

      if attributes.key?(:'company_information_line5')
        self.company_information_line5 = attributes[:'company_information_line5']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @enable_remote_check_printing.nil?
        invalid_properties.push('invalid value for "enable_remote_check_printing", enable_remote_check_printing cannot be nil.')
      end

      if @enable_local_check_printing.nil?
        invalid_properties.push('invalid value for "enable_local_check_printing", enable_local_check_printing cannot be nil.')
      end

      if @check_layout_type.nil?
        invalid_properties.push('invalid value for "check_layout_type", check_layout_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @enable_remote_check_printing.nil?
      return false if @enable_local_check_printing.nil?
      return false if @check_layout_type.nil?
      check_layout_type_validator = EnumAttributeValidator.new('String', ["Voucher1StubBottomMemo1Signature", "Voucher2StubBottomMemo1Signature", "Voucher2StubBottomMemo2Signatures", "Voucher2StubTopMemo", "Voucher2StubsPrePrintedLayout"])
      return false unless check_layout_type_validator.valid?(@check_layout_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] check_layout_type Object to be assigned
    def check_layout_type=(check_layout_type)
      validator = EnumAttributeValidator.new('String', ["Voucher1StubBottomMemo1Signature", "Voucher2StubBottomMemo1Signature", "Voucher2StubBottomMemo2Signatures", "Voucher2StubTopMemo", "Voucher2StubsPrePrintedLayout"])
      unless validator.valid?(check_layout_type)
        fail ArgumentError, "invalid value #{ check_layout_type.inspect } for \"check_layout_type\", must be one of #{validator.allowable_values}."
      end
      @check_layout_type = check_layout_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          enable_remote_check_printing == o.enable_remote_check_printing &&
          enable_local_check_printing == o.enable_local_check_printing &&
          check_layout_type == o.check_layout_type &&
          signature_heading == o.signature_heading &&
          fractional_number == o.fractional_number &&
          bank_information_line1 == o.bank_information_line1 &&
          bank_information_line2 == o.bank_information_line2 &&
          bank_information_line3 == o.bank_information_line3 &&
          bank_information_line4 == o.bank_information_line4 &&
          bank_information_line5 == o.bank_information_line5 &&
          company_information_line1 == o.company_information_line1 &&
          company_information_line2 == o.company_information_line2 &&
          company_information_line3 == o.company_information_line3 &&
          company_information_line4 == o.company_information_line4 &&
          company_information_line5 == o.company_information_line5
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [enable_remote_check_printing, enable_local_check_printing, check_layout_type, signature_heading, fractional_number, bank_information_line1, bank_information_line2, bank_information_line3, bank_information_line4, bank_information_line5, company_information_line1, company_information_line2, company_information_line3, company_information_line4, company_information_line5].hash
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
