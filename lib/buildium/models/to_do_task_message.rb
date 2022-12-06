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
  class ToDoTaskMessage
    # Request unique identifier.
    attr_accessor :id

    attr_accessor :category

    # Request title.
    attr_accessor :title

    # Request description.
    attr_accessor :description

    attr_accessor :property

    # The unit unique identifier associated with the request.
    attr_accessor :unit_id

    # The unique identifier of the staff user assigned to the request.
    attr_accessor :assigned_to_user_id

    # Request status.
    attr_accessor :task_status

    # Request priority.
    attr_accessor :priority

    # Request due date.
    attr_accessor :due_date

    # The date and time the request was created.
    attr_accessor :created_date_time

    # The date and time the request was last updated.
    attr_accessor :last_updated_date_time

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
        :'category' => :'Category',
        :'title' => :'Title',
        :'description' => :'Description',
        :'property' => :'Property',
        :'unit_id' => :'UnitId',
        :'assigned_to_user_id' => :'AssignedToUserId',
        :'task_status' => :'TaskStatus',
        :'priority' => :'Priority',
        :'due_date' => :'DueDate',
        :'created_date_time' => :'CreatedDateTime',
        :'last_updated_date_time' => :'LastUpdatedDateTime'
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
        :'category' => :'TaskCategoryResponseMessage',
        :'title' => :'String',
        :'description' => :'String',
        :'property' => :'PropertyMessage',
        :'unit_id' => :'Integer',
        :'assigned_to_user_id' => :'Integer',
        :'task_status' => :'String',
        :'priority' => :'String',
        :'due_date' => :'Date',
        :'created_date_time' => :'Time',
        :'last_updated_date_time' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::ToDoTaskMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::ToDoTaskMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'property')
        self.property = attributes[:'property']
      end

      if attributes.key?(:'unit_id')
        self.unit_id = attributes[:'unit_id']
      end

      if attributes.key?(:'assigned_to_user_id')
        self.assigned_to_user_id = attributes[:'assigned_to_user_id']
      end

      if attributes.key?(:'task_status')
        self.task_status = attributes[:'task_status']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'due_date')
        self.due_date = attributes[:'due_date']
      end

      if attributes.key?(:'created_date_time')
        self.created_date_time = attributes[:'created_date_time']
      end

      if attributes.key?(:'last_updated_date_time')
        self.last_updated_date_time = attributes[:'last_updated_date_time']
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
      task_status_validator = EnumAttributeValidator.new('String', ["New", "InProgress", "Completed", "Deferred", "Closed"])
      return false unless task_status_validator.valid?(@task_status)
      priority_validator = EnumAttributeValidator.new('String', ["Low", "Normal", "High"])
      return false unless priority_validator.valid?(@priority)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] task_status Object to be assigned
    def task_status=(task_status)
      validator = EnumAttributeValidator.new('String', ["New", "InProgress", "Completed", "Deferred", "Closed"])
      unless validator.valid?(task_status)
        fail ArgumentError, "invalid value #{ task_status.inspect } for \"task_status\", must be one of #{validator.allowable_values}."
      end
      @task_status = task_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] priority Object to be assigned
    def priority=(priority)
      validator = EnumAttributeValidator.new('String', ["Low", "Normal", "High"])
      unless validator.valid?(priority)
        fail ArgumentError, "invalid value #{ priority.inspect } for \"priority\", must be one of #{validator.allowable_values}."
      end
      @priority = priority
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          category == o.category &&
          title == o.title &&
          description == o.description &&
          property == o.property &&
          unit_id == o.unit_id &&
          assigned_to_user_id == o.assigned_to_user_id &&
          task_status == o.task_status &&
          priority == o.priority &&
          due_date == o.due_date &&
          created_date_time == o.created_date_time &&
          last_updated_date_time == o.last_updated_date_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, category, title, description, property, unit_id, assigned_to_user_id, task_status, priority, due_date, created_date_time, last_updated_date_time].hash
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
