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
  class RecurringTransactionMessage
    # The unique identifier for the recurring transaction schedule.
    attr_accessor :id

    # Indicates the type of transaction to be applied to the ledger.
    attr_accessor :transaction_type

    # Indicates if the recurring transaction schedule has expired.
    attr_accessor :is_expired

    # The unique identifier of the scheduled Rent entity. This field is only applicable for `Charge` transaction types.
    attr_accessor :rent_id

    # Offsetting general ledger account identifier. The offsetting general ledger account acts as the expense account. Note, this field is only applicable for `Credit` transaction types.
    attr_accessor :offsetting_gl_account_id

    # Line items describing how the transaction is to be allocated when it is processed.
    attr_accessor :lines

    # Total amount of the recurring transaction.
    attr_accessor :amount

    # Memo associated with the recurring transaction.
    attr_accessor :memo

    # The next date the scheduled transaction will be processed.
    attr_accessor :next_occurrence_date

    # The number of days ahead of the transaction date the transaction will post on the lease ledger. This setting is used to add the transaction to the ledger ahead of it's due date for visibility. For example, if the `FirstOccurrenceDate` is set to 8/10/2022 and this value is set to 5 then the charge will added to the ledger on 8/5/2022, but will have transaction date of 8/10/2022.
    attr_accessor :post_days_in_advance

    # Indicates the frequency at which the recurring transaction is processed.
    attr_accessor :frequency

    # Specifies the period of time/occurrences the recurring transaction will be processed. Note, if the `Frequency` field is set to `OneTime` this field should be set to `NULL` as any submitted value will be ignored.
    attr_accessor :duration

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
        :'transaction_type' => :'TransactionType',
        :'is_expired' => :'IsExpired',
        :'rent_id' => :'RentId',
        :'offsetting_gl_account_id' => :'OffsettingGLAccountId',
        :'lines' => :'Lines',
        :'amount' => :'Amount',
        :'memo' => :'Memo',
        :'next_occurrence_date' => :'NextOccurrenceDate',
        :'post_days_in_advance' => :'PostDaysInAdvance',
        :'frequency' => :'Frequency',
        :'duration' => :'Duration'
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
        :'transaction_type' => :'String',
        :'is_expired' => :'Boolean',
        :'rent_id' => :'Integer',
        :'offsetting_gl_account_id' => :'Integer',
        :'lines' => :'Array<RecurringTransactionLineMessage>',
        :'amount' => :'Float',
        :'memo' => :'String',
        :'next_occurrence_date' => :'Date',
        :'post_days_in_advance' => :'Integer',
        :'frequency' => :'String',
        :'duration' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::RecurringTransactionMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::RecurringTransactionMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'transaction_type')
        self.transaction_type = attributes[:'transaction_type']
      end

      if attributes.key?(:'is_expired')
        self.is_expired = attributes[:'is_expired']
      end

      if attributes.key?(:'rent_id')
        self.rent_id = attributes[:'rent_id']
      end

      if attributes.key?(:'offsetting_gl_account_id')
        self.offsetting_gl_account_id = attributes[:'offsetting_gl_account_id']
      end

      if attributes.key?(:'lines')
        if (value = attributes[:'lines']).is_a?(Array)
          self.lines = value
        end
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.key?(:'next_occurrence_date')
        self.next_occurrence_date = attributes[:'next_occurrence_date']
      end

      if attributes.key?(:'post_days_in_advance')
        self.post_days_in_advance = attributes[:'post_days_in_advance']
      end

      if attributes.key?(:'frequency')
        self.frequency = attributes[:'frequency']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
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
      transaction_type_validator = EnumAttributeValidator.new('String', ["Bill", "Check", "Charge", "Payment", "Credit", "Refund", "ApplyDeposit", "ElectronicFundsTransfer", "Other", "Deposit", "GeneralJournalEntry", "OwnerContribution", "ReversePayment", "ReverseElectronicFundsTransfer", "VendorCredit", "RentalApplicationFeePayment", "ReverseRentalApplicationFeePayment", "ReverseOwnerContribution", "VendorRefund", "UnreversedPayment", "UnreversedElectronicFundsTransfer", "UnreversedOwnerContribution", "UnreversedRentalApplicationFeePayment"])
      return false unless transaction_type_validator.valid?(@transaction_type)
      frequency_validator = EnumAttributeValidator.new('String', ["Monthly", "Weekly", "Every2Weeks", "Quarterly", "Yearly", "Every2Months", "Daily", "Every6Months", "OneTime"])
      return false unless frequency_validator.valid?(@frequency)
      duration_validator = EnumAttributeValidator.new('String', ["Unspecified", "UntilEndOfTerm", "SpecificNumber", "SpecificDate"])
      return false unless duration_validator.valid?(@duration)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_type Object to be assigned
    def transaction_type=(transaction_type)
      validator = EnumAttributeValidator.new('String', ["Bill", "Check", "Charge", "Payment", "Credit", "Refund", "ApplyDeposit", "ElectronicFundsTransfer", "Other", "Deposit", "GeneralJournalEntry", "OwnerContribution", "ReversePayment", "ReverseElectronicFundsTransfer", "VendorCredit", "RentalApplicationFeePayment", "ReverseRentalApplicationFeePayment", "ReverseOwnerContribution", "VendorRefund", "UnreversedPayment", "UnreversedElectronicFundsTransfer", "UnreversedOwnerContribution", "UnreversedRentalApplicationFeePayment"])
      unless validator.valid?(transaction_type)
        fail ArgumentError, "invalid value #{ transaction_type.inspect } for \"transaction_type\", must be one of #{validator.allowable_values}."
      end
      @transaction_type = transaction_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] frequency Object to be assigned
    def frequency=(frequency)
      validator = EnumAttributeValidator.new('String', ["Monthly", "Weekly", "Every2Weeks", "Quarterly", "Yearly", "Every2Months", "Daily", "Every6Months", "OneTime"])
      unless validator.valid?(frequency)
        fail ArgumentError, "invalid value #{ frequency.inspect } for \"frequency\", must be one of #{validator.allowable_values}."
      end
      @frequency = frequency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] duration Object to be assigned
    def duration=(duration)
      validator = EnumAttributeValidator.new('String', ["Unspecified", "UntilEndOfTerm", "SpecificNumber", "SpecificDate"])
      unless validator.valid?(duration)
        fail ArgumentError, "invalid value #{ duration.inspect } for \"duration\", must be one of #{validator.allowable_values}."
      end
      @duration = duration
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          transaction_type == o.transaction_type &&
          is_expired == o.is_expired &&
          rent_id == o.rent_id &&
          offsetting_gl_account_id == o.offsetting_gl_account_id &&
          lines == o.lines &&
          amount == o.amount &&
          memo == o.memo &&
          next_occurrence_date == o.next_occurrence_date &&
          post_days_in_advance == o.post_days_in_advance &&
          frequency == o.frequency &&
          duration == o.duration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, transaction_type, is_expired, rent_id, offsetting_gl_account_id, lines, amount, memo, next_occurrence_date, post_days_in_advance, frequency, duration].hash
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
