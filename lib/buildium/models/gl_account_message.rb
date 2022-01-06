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
  # A message that represents a general ledger account.
  class GLAccountMessage
    # General ledger account unique identifier.
    attr_accessor :id

    # Name of the general ledger account.
    attr_accessor :name

    # Description of the general ledger account.
    attr_accessor :description

    # Describes the type of general ledger account.
    attr_accessor :type

    # Describes the subtype of the general ledger account.
    attr_accessor :sub_type

    # Indicates if the general ledger account is a default for auto populating fields.
    attr_accessor :is_default_gl_account

    # Indicates whether the account is a contra account.
    attr_accessor :is_contra_account

    # Indicates whether the account is a bank account.
    attr_accessor :is_bank_account

    # Describes the cash flow classification for the general ledger account.
    attr_accessor :cash_flow_classification

    # Indicates whether transactions associated with the account should be excluded from cash balances.
    attr_accessor :exclude_from_cash_balances

    # Children general ledger accounts. The relationship only goes one level deep.
    attr_accessor :sub_accounts

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
        :'description' => :'Description',
        :'type' => :'Type',
        :'sub_type' => :'SubType',
        :'is_default_gl_account' => :'IsDefaultGLAccount',
        :'is_contra_account' => :'IsContraAccount',
        :'is_bank_account' => :'IsBankAccount',
        :'cash_flow_classification' => :'CashFlowClassification',
        :'exclude_from_cash_balances' => :'ExcludeFromCashBalances',
        :'sub_accounts' => :'SubAccounts'
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
        :'description' => :'String',
        :'type' => :'String',
        :'sub_type' => :'String',
        :'is_default_gl_account' => :'Boolean',
        :'is_contra_account' => :'Boolean',
        :'is_bank_account' => :'Boolean',
        :'cash_flow_classification' => :'String',
        :'exclude_from_cash_balances' => :'Boolean',
        :'sub_accounts' => :'Array<GLAccountMessage>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::GLAccountMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::GLAccountMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'sub_type')
        self.sub_type = attributes[:'sub_type']
      end

      if attributes.key?(:'is_default_gl_account')
        self.is_default_gl_account = attributes[:'is_default_gl_account']
      end

      if attributes.key?(:'is_contra_account')
        self.is_contra_account = attributes[:'is_contra_account']
      end

      if attributes.key?(:'is_bank_account')
        self.is_bank_account = attributes[:'is_bank_account']
      end

      if attributes.key?(:'cash_flow_classification')
        self.cash_flow_classification = attributes[:'cash_flow_classification']
      end

      if attributes.key?(:'exclude_from_cash_balances')
        self.exclude_from_cash_balances = attributes[:'exclude_from_cash_balances']
      end

      if attributes.key?(:'sub_accounts')
        if (value = attributes[:'sub_accounts']).is_a?(Array)
          self.sub_accounts = value
        end
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
      type_validator = EnumAttributeValidator.new('String', ["Asset", "Liability", "Equity", "Income", "Expense"])
      return false unless type_validator.valid?(@type)
      sub_type_validator = EnumAttributeValidator.new('String', ["CurrentAsset", "FixedAsset", "CurrentLiability", "LongTermLiability", "Equity", "Income", "NonOperatingIncome", "OperatingExpenses", "NonOperatingExpenses"])
      return false unless sub_type_validator.valid?(@sub_type)
      cash_flow_classification_validator = EnumAttributeValidator.new('String', ["OperatingActivities", "InvestingActivities", "FinancingActivities"])
      return false unless cash_flow_classification_validator.valid?(@cash_flow_classification)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["Asset", "Liability", "Equity", "Income", "Expense"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sub_type Object to be assigned
    def sub_type=(sub_type)
      validator = EnumAttributeValidator.new('String', ["CurrentAsset", "FixedAsset", "CurrentLiability", "LongTermLiability", "Equity", "Income", "NonOperatingIncome", "OperatingExpenses", "NonOperatingExpenses"])
      unless validator.valid?(sub_type)
        fail ArgumentError, "invalid value for \"sub_type\", must be one of #{validator.allowable_values}."
      end
      @sub_type = sub_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cash_flow_classification Object to be assigned
    def cash_flow_classification=(cash_flow_classification)
      validator = EnumAttributeValidator.new('String', ["OperatingActivities", "InvestingActivities", "FinancingActivities"])
      unless validator.valid?(cash_flow_classification)
        fail ArgumentError, "invalid value for \"cash_flow_classification\", must be one of #{validator.allowable_values}."
      end
      @cash_flow_classification = cash_flow_classification
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          description == o.description &&
          type == o.type &&
          sub_type == o.sub_type &&
          is_default_gl_account == o.is_default_gl_account &&
          is_contra_account == o.is_contra_account &&
          is_bank_account == o.is_bank_account &&
          cash_flow_classification == o.cash_flow_classification &&
          exclude_from_cash_balances == o.exclude_from_cash_balances &&
          sub_accounts == o.sub_accounts
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, description, type, sub_type, is_default_gl_account, is_contra_account, is_bank_account, cash_flow_classification, exclude_from_cash_balances, sub_accounts].hash
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
