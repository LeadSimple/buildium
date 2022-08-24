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
  class WorkOrderSearchMessage
    # Specifies the type of entity that the `EntityId` field refers to. This field is required if the `EntityId` field is populated.
    attr_accessor :entity_type

    # Filters results to any work order associated with the specified entity id value. The value must be of the type specified in the `EntityType` field.
    attr_accessor :entity_id

    # Filters results by the status of the task associated with the work order. If no status is specified, work orders with any status will be returned.
    attr_accessor :statuses

    # Filters results to any work order with an associated task with the task type specified.
    attr_accessor :type

    # Filters results to any work order associated with the unit identifier.
    attr_accessor :unit_id

    # Filters results to any work order associated with the unit agreement identifier specified.
    attr_accessor :unit_agreement_id

    # Filters results to any work orders were updated on or after the specified date. The value must be formatted as YYYY-MM-DD.
    attr_accessor :last_updated_from

    # Filters results to any work orders were updated on or before the specified date. The value must be formatted as YYYY-MM-DD.
    attr_accessor :last_updated_to

    # Filters results to any work orders with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD.
    attr_accessor :due_date_from

    # Filters results to any work orders with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD.
    attr_accessor :due_date_to

    # Filters results to any work orders whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned.
    attr_accessor :task_category_id

    # Filters results to any work orders that have been assigned to the specified staff user identifier.
    attr_accessor :priorities

    # Filters results to any work orders that have been assigned to the specified staff user identifier.
    attr_accessor :assigned_to_id

    # Filters results to any work orders that have been assigned to the specified vendor identifier.
    attr_accessor :vendor_ids

    # Filters results to any work orders whose total amounts are equal or greater than the specified amount.
    attr_accessor :amount_from

    # Filters results to any work orders whose total amounts are equal or less than the specified amount.
    attr_accessor :amount_to

    # Filters results to work orders that have an associated bill.
    attr_accessor :is_billed

    # Filters results to any work orders whose title *contains* the specified value.
    attr_accessor :title

    # Filters results to work orders that have an associated to a task in the specified list.
    attr_accessor :task_ids

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
        :'entity_type' => :'EntityType',
        :'entity_id' => :'EntityId',
        :'statuses' => :'Statuses',
        :'type' => :'Type',
        :'unit_id' => :'UnitId',
        :'unit_agreement_id' => :'UnitAgreementId',
        :'last_updated_from' => :'LastUpdatedFrom',
        :'last_updated_to' => :'LastUpdatedTo',
        :'due_date_from' => :'DueDateFrom',
        :'due_date_to' => :'DueDateTo',
        :'task_category_id' => :'TaskCategoryId',
        :'priorities' => :'Priorities',
        :'assigned_to_id' => :'AssignedToId',
        :'vendor_ids' => :'VendorIds',
        :'amount_from' => :'AmountFrom',
        :'amount_to' => :'AmountTo',
        :'is_billed' => :'IsBilled',
        :'title' => :'Title',
        :'task_ids' => :'TaskIds'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'entity_type' => :'String',
        :'entity_id' => :'Integer',
        :'statuses' => :'Array<String>',
        :'type' => :'String',
        :'unit_id' => :'Integer',
        :'unit_agreement_id' => :'Integer',
        :'last_updated_from' => :'Date',
        :'last_updated_to' => :'Date',
        :'due_date_from' => :'Date',
        :'due_date_to' => :'Date',
        :'task_category_id' => :'Integer',
        :'priorities' => :'Array<String>',
        :'assigned_to_id' => :'Integer',
        :'vendor_ids' => :'Array<Integer>',
        :'amount_from' => :'Float',
        :'amount_to' => :'Float',
        :'is_billed' => :'Boolean',
        :'title' => :'String',
        :'task_ids' => :'Array<Integer>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::WorkOrderSearchMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::WorkOrderSearchMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'entity_type')
        self.entity_type = attributes[:'entity_type']
      end

      if attributes.key?(:'entity_id')
        self.entity_id = attributes[:'entity_id']
      end

      if attributes.key?(:'statuses')
        if (value = attributes[:'statuses']).is_a?(Array)
          self.statuses = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'unit_id')
        self.unit_id = attributes[:'unit_id']
      end

      if attributes.key?(:'unit_agreement_id')
        self.unit_agreement_id = attributes[:'unit_agreement_id']
      end

      if attributes.key?(:'last_updated_from')
        self.last_updated_from = attributes[:'last_updated_from']
      end

      if attributes.key?(:'last_updated_to')
        self.last_updated_to = attributes[:'last_updated_to']
      end

      if attributes.key?(:'due_date_from')
        self.due_date_from = attributes[:'due_date_from']
      end

      if attributes.key?(:'due_date_to')
        self.due_date_to = attributes[:'due_date_to']
      end

      if attributes.key?(:'task_category_id')
        self.task_category_id = attributes[:'task_category_id']
      end

      if attributes.key?(:'priorities')
        if (value = attributes[:'priorities']).is_a?(Array)
          self.priorities = value
        end
      end

      if attributes.key?(:'assigned_to_id')
        self.assigned_to_id = attributes[:'assigned_to_id']
      end

      if attributes.key?(:'vendor_ids')
        if (value = attributes[:'vendor_ids']).is_a?(Array)
          self.vendor_ids = value
        end
      end

      if attributes.key?(:'amount_from')
        self.amount_from = attributes[:'amount_from']
      end

      if attributes.key?(:'amount_to')
        self.amount_to = attributes[:'amount_to']
      end

      if attributes.key?(:'is_billed')
        self.is_billed = attributes[:'is_billed']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'task_ids')
        if (value = attributes[:'task_ids']).is_a?(Array)
          self.task_ids = value
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
      entity_type_validator = EnumAttributeValidator.new('String', ["Rental", "RentalOwner", "Association"])
      return false unless entity_type_validator.valid?(@entity_type)
      type_validator = EnumAttributeValidator.new('String', ["ContactRequest", "ResidentRequest", "Todo", "RentalOwnerRequest"])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] entity_type Object to be assigned
    def entity_type=(entity_type)
      validator = EnumAttributeValidator.new('String', ["Rental", "RentalOwner", "Association"])
      unless validator.valid?(entity_type)
        fail ArgumentError, "invalid value #{ entity_type.inspect } for \"entity_type\", must be one of #{validator.allowable_values}."
      end
      @entity_type = entity_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["ContactRequest", "ResidentRequest", "Todo", "RentalOwnerRequest"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value #{ type.inspect } for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          entity_type == o.entity_type &&
          entity_id == o.entity_id &&
          statuses == o.statuses &&
          type == o.type &&
          unit_id == o.unit_id &&
          unit_agreement_id == o.unit_agreement_id &&
          last_updated_from == o.last_updated_from &&
          last_updated_to == o.last_updated_to &&
          due_date_from == o.due_date_from &&
          due_date_to == o.due_date_to &&
          task_category_id == o.task_category_id &&
          priorities == o.priorities &&
          assigned_to_id == o.assigned_to_id &&
          vendor_ids == o.vendor_ids &&
          amount_from == o.amount_from &&
          amount_to == o.amount_to &&
          is_billed == o.is_billed &&
          title == o.title &&
          task_ids == o.task_ids
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [entity_type, entity_id, statuses, type, unit_id, unit_agreement_id, last_updated_from, last_updated_to, due_date_from, due_date_to, task_category_id, priorities, assigned_to_id, vendor_ids, amount_from, amount_to, is_billed, title, task_ids].hash
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
