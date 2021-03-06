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
  class ElectronicPaymentsMessage
    # Debit transaction limit
    attr_accessor :debit_transaction_limit

    # Credit transaction limit
    attr_accessor :credit_transaction_limit

    # Monthly debt limit
    attr_accessor :debit_monthly_limit

    # Monthly credit limit
    attr_accessor :credit_monthly_limit

    # Fee charged per transaction by EFT
    attr_accessor :resident_eft_convience_fee_amount

    # Fee charged per transaction by Credit Card
    attr_accessor :resident_credit_card_convenience_fee_amount

    # Fee charged for using a Credit Card in transactions
    attr_accessor :credit_card_service_fee_percentage

    # Whether the credit card service fee is paid by residents
    attr_accessor :is_credit_card_service_fee_paid_by_resident

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'debit_transaction_limit' => :'DebitTransactionLimit',
        :'credit_transaction_limit' => :'CreditTransactionLimit',
        :'debit_monthly_limit' => :'DebitMonthlyLimit',
        :'credit_monthly_limit' => :'CreditMonthlyLimit',
        :'resident_eft_convience_fee_amount' => :'ResidentEFTConvienceFeeAmount',
        :'resident_credit_card_convenience_fee_amount' => :'ResidentCreditCardConvenienceFeeAmount',
        :'credit_card_service_fee_percentage' => :'CreditCardServiceFeePercentage',
        :'is_credit_card_service_fee_paid_by_resident' => :'IsCreditCardServiceFeePaidByResident'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'debit_transaction_limit' => :'Float',
        :'credit_transaction_limit' => :'Float',
        :'debit_monthly_limit' => :'Float',
        :'credit_monthly_limit' => :'Float',
        :'resident_eft_convience_fee_amount' => :'Float',
        :'resident_credit_card_convenience_fee_amount' => :'Float',
        :'credit_card_service_fee_percentage' => :'Float',
        :'is_credit_card_service_fee_paid_by_resident' => :'Boolean'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::ElectronicPaymentsMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::ElectronicPaymentsMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'debit_transaction_limit')
        self.debit_transaction_limit = attributes[:'debit_transaction_limit']
      end

      if attributes.key?(:'credit_transaction_limit')
        self.credit_transaction_limit = attributes[:'credit_transaction_limit']
      end

      if attributes.key?(:'debit_monthly_limit')
        self.debit_monthly_limit = attributes[:'debit_monthly_limit']
      end

      if attributes.key?(:'credit_monthly_limit')
        self.credit_monthly_limit = attributes[:'credit_monthly_limit']
      end

      if attributes.key?(:'resident_eft_convience_fee_amount')
        self.resident_eft_convience_fee_amount = attributes[:'resident_eft_convience_fee_amount']
      end

      if attributes.key?(:'resident_credit_card_convenience_fee_amount')
        self.resident_credit_card_convenience_fee_amount = attributes[:'resident_credit_card_convenience_fee_amount']
      end

      if attributes.key?(:'credit_card_service_fee_percentage')
        self.credit_card_service_fee_percentage = attributes[:'credit_card_service_fee_percentage']
      end

      if attributes.key?(:'is_credit_card_service_fee_paid_by_resident')
        self.is_credit_card_service_fee_paid_by_resident = attributes[:'is_credit_card_service_fee_paid_by_resident']
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
          debit_transaction_limit == o.debit_transaction_limit &&
          credit_transaction_limit == o.credit_transaction_limit &&
          debit_monthly_limit == o.debit_monthly_limit &&
          credit_monthly_limit == o.credit_monthly_limit &&
          resident_eft_convience_fee_amount == o.resident_eft_convience_fee_amount &&
          resident_credit_card_convenience_fee_amount == o.resident_credit_card_convenience_fee_amount &&
          credit_card_service_fee_percentage == o.credit_card_service_fee_percentage &&
          is_credit_card_service_fee_paid_by_resident == o.is_credit_card_service_fee_paid_by_resident
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [debit_transaction_limit, credit_transaction_limit, debit_monthly_limit, credit_monthly_limit, resident_eft_convience_fee_amount, resident_credit_card_convenience_fee_amount, credit_card_service_fee_percentage, is_credit_card_service_fee_paid_by_resident].hash
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
