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
  # This object represents a bill.
  class BillPostMessage
    # The date that an bill was received. This date typically corresponds with a Bill Received Date, Invoice Date, or Invoice Received Date from an invoice. The date must be formatted as YYYY-MM-DD.
    attr_accessor :date

    # The date that payment is due to the vendor. The due date must be after the value in the `Date` field. The date must be formatted as YYYY-MM-DD.
    attr_accessor :due_date

    # A description of what the invoice was for. The value cannot exceed 245 characters.
    attr_accessor :memo

    # The unique identifier of the vendor or supplier who sent you an invoice.
    attr_accessor :vendor_id

    # Unique identifier of the work order associated with this bill.
    attr_accessor :work_order_id

    # The reference or invoice number that the vendor assigned to the invoice. The value cannot exceed 40 characters.
    attr_accessor :reference_number

    # A collection of line items associated with the bill.
    attr_accessor :lines

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'date' => :'Date',
        :'due_date' => :'DueDate',
        :'memo' => :'Memo',
        :'vendor_id' => :'VendorId',
        :'work_order_id' => :'WorkOrderId',
        :'reference_number' => :'ReferenceNumber',
        :'lines' => :'Lines'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'date' => :'Date',
        :'due_date' => :'Date',
        :'memo' => :'String',
        :'vendor_id' => :'Integer',
        :'work_order_id' => :'Integer',
        :'reference_number' => :'String',
        :'lines' => :'Array<BillLinePostMessage>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::BillPostMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::BillPostMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'memo')
        self.memo = attributes[:'memo']
      end

      if attributes.key?(:'vendor_id')
        self.vendor_id = attributes[:'vendor_id']
      end

      if attributes.key?(:'work_order_id')
        self.work_order_id = attributes[:'work_order_id']
      end

      if attributes.key?(:'reference_number')
        self.reference_number = attributes[:'reference_number']
      end

      if attributes.key?(:'lines')
        if (value = attributes[:'lines']).is_a?(Array)
          self.lines = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @due_date.nil?
        invalid_properties.push('invalid value for "due_date", due_date cannot be nil.')
      end

      if @vendor_id.nil?
        invalid_properties.push('invalid value for "vendor_id", vendor_id cannot be nil.')
      end

      if @lines.nil?
        invalid_properties.push('invalid value for "lines", lines cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @date.nil?
      return false if @due_date.nil?
      return false if @vendor_id.nil?
      return false if @lines.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          date == o.date &&
          due_date == o.due_date &&
          memo == o.memo &&
          vendor_id == o.vendor_id &&
          work_order_id == o.work_order_id &&
          reference_number == o.reference_number &&
          lines == o.lines
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [date, due_date, memo, vendor_id, work_order_id, reference_number, lines].hash
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
