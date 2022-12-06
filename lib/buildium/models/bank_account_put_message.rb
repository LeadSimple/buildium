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
  class BankAccountPutMessage
    attr_accessor :check_printing_info

    # Bank account name.
    attr_accessor :name

    # Bank account description.
    attr_accessor :description

    # Type of bank account.
    attr_accessor :bank_account_type

    # The country the bank account exists in.
    attr_accessor :country

    # Bank account number.
    attr_accessor :account_number

    # Bank routing number. If the bank is in Canada, the routing number should be provided as a zero followed by the three digit institution number, followed by the five digit transit number.
    attr_accessor :routing_number

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
        :'check_printing_info' => :'CheckPrintingInfo',
        :'name' => :'Name',
        :'description' => :'Description',
        :'bank_account_type' => :'BankAccountType',
        :'country' => :'Country',
        :'account_number' => :'AccountNumber',
        :'routing_number' => :'RoutingNumber'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'check_printing_info' => :'CheckPrintingInfoPutMessage',
        :'name' => :'String',
        :'description' => :'String',
        :'bank_account_type' => :'String',
        :'country' => :'String',
        :'account_number' => :'String',
        :'routing_number' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::BankAccountPutMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::BankAccountPutMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'check_printing_info')
        self.check_printing_info = attributes[:'check_printing_info']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'bank_account_type')
        self.bank_account_type = attributes[:'bank_account_type']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'routing_number')
        self.routing_number = attributes[:'routing_number']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @check_printing_info.nil?
        invalid_properties.push('invalid value for "check_printing_info", check_printing_info cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @bank_account_type.nil?
        invalid_properties.push('invalid value for "bank_account_type", bank_account_type cannot be nil.')
      end

      if @country.nil?
        invalid_properties.push('invalid value for "country", country cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @check_printing_info.nil?
      return false if @name.nil?
      return false if @bank_account_type.nil?
      bank_account_type_validator = EnumAttributeValidator.new('String', ["Checking", "Savings"])
      return false unless bank_account_type_validator.valid?(@bank_account_type)
      return false if @country.nil?
      country_validator = EnumAttributeValidator.new('String', ["UnitedStates", "Afghanistan", "Akrotiri", "Albania", "Algeria", "AmericanSamoa", "Andorra", "Angola", "Anguilla", "Antarctica", "AntiguaandBarbuda", "Argentina", "Armenia", "Aruba", "AshmoreandCartierIslands", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "BassasdaIndia", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "BosniaandHerzegovina", "Botswana", "BouvetIsland", "Brazil", "BritishIndianOceanTerritory", "BritishVirginIslands", "Brunei", "Bulgaria", "BurkinaFaso", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "CapeVerde", "CaymanIslands", "CentralAfricanRepublic", "Chad", "Chile", "China", "ChristmasIsland", "ClippertonIsland", "CocosIslands", "Colombia", "Comoros", "DemocraticRepublicOfTheCongo", "RepublicOfTheCongo", "CookIslands", "CoralSeaIslands", "CostaRica", "CotedIvoire", "Croatia", "Cuba", "Cyprus", "CzechRepublic", "Denmark", "Dhekelia", "Djibouti", "Dominica", "DominicanRepublic", "Ecuador", "Egypt", "ElSalvador", "EquatorialGuinea", "Eritrea", "Estonia", "Ethiopia", "EuropaIsland", "FalklandIslands", "FaroeIslands", "Fiji", "Finland", "France", "FrenchGuiana", "FrenchPolynesia", "FrenchSouthernandAntarcticLands", "Gabon", "Gambia", "GazaStrip", "Georgia", "Germany", "Ghana", "Gibraltar", "GloriosoIslands", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea", "GuineaBissau", "Guyana", "Haiti", "HeardIslandandMcDonaldIslands", "VaticanCity", "Honduras", "HongKong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "IsleofMan", "Israel", "Italy", "Jamaica", "JanMayen", "Japan", "Jersey", "Jordan", "JuandeNovaIsland", "Kazakhstan", "Kenya", "Kiribati", "NorthKorea", "SouthKorea", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "MarshallIslands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Namibia", "Nauru", "NavassaIsland", "Nepal", "Netherlands", "NetherlandsAntilles", "NewCaledonia", "NewZealand", "Nicaragua", "Niger", "Nigeria", "Niue", "NorfolkIsland", "NorthernMarianaIslands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "PapuaNewGuinea", "ParacelIslands", "Paraguay", "Peru", "Philippines", "PitcairnIslands", "Poland", "Portugal", "PuertoRico", "Qatar", "Reunion", "Romania", "Russia", "Rwanda", "SaintHelena", "SaintKittsandNevis", "SaintLucia", "SaintPierreandMiquelon", "SaintVincentandtheGrenadines", "Samoa", "SanMarino", "SaoTomeandPrincipe", "SaudiArabia", "Senegal", "SerbiaandMontenegro", "Seychelles", "SierraLeone", "Singapore", "Slovakia", "Slovenia", "SolomonIslands", "Somalia", "SouthAfrica", "SouthGeorgiaandtheSouthSandwichIslands", "Spain", "SpratlyIslands", "SriLanka", "Sudan", "Suriname", "Svalbard", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "TimorLeste", "Togo", "Tokelau", "Tonga", "TrinidadandTobago", "TromelinIsland", "Tunisia", "Turkey", "Turkmenistan", "TurksandCaicosIslands", "Tuvalu", "Uganda", "Ukraine", "UnitedArabEmirates", "UnitedKingdom", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "VirginIslands", "WakeIsland", "WallisandFutuna", "WestBank", "WesternSahara", "Yemen", "Zambia", "Zimbabwe"])
      return false unless country_validator.valid?(@country)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_account_type Object to be assigned
    def bank_account_type=(bank_account_type)
      validator = EnumAttributeValidator.new('String', ["Checking", "Savings"])
      unless validator.valid?(bank_account_type)
        fail ArgumentError, "invalid value #{ bank_account_type.inspect } for \"bank_account_type\", must be one of #{validator.allowable_values}."
      end
      @bank_account_type = bank_account_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country)
      validator = EnumAttributeValidator.new('String', ["UnitedStates", "Afghanistan", "Akrotiri", "Albania", "Algeria", "AmericanSamoa", "Andorra", "Angola", "Anguilla", "Antarctica", "AntiguaandBarbuda", "Argentina", "Armenia", "Aruba", "AshmoreandCartierIslands", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "BassasdaIndia", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "BosniaandHerzegovina", "Botswana", "BouvetIsland", "Brazil", "BritishIndianOceanTerritory", "BritishVirginIslands", "Brunei", "Bulgaria", "BurkinaFaso", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "CapeVerde", "CaymanIslands", "CentralAfricanRepublic", "Chad", "Chile", "China", "ChristmasIsland", "ClippertonIsland", "CocosIslands", "Colombia", "Comoros", "DemocraticRepublicOfTheCongo", "RepublicOfTheCongo", "CookIslands", "CoralSeaIslands", "CostaRica", "CotedIvoire", "Croatia", "Cuba", "Cyprus", "CzechRepublic", "Denmark", "Dhekelia", "Djibouti", "Dominica", "DominicanRepublic", "Ecuador", "Egypt", "ElSalvador", "EquatorialGuinea", "Eritrea", "Estonia", "Ethiopia", "EuropaIsland", "FalklandIslands", "FaroeIslands", "Fiji", "Finland", "France", "FrenchGuiana", "FrenchPolynesia", "FrenchSouthernandAntarcticLands", "Gabon", "Gambia", "GazaStrip", "Georgia", "Germany", "Ghana", "Gibraltar", "GloriosoIslands", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea", "GuineaBissau", "Guyana", "Haiti", "HeardIslandandMcDonaldIslands", "VaticanCity", "Honduras", "HongKong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "IsleofMan", "Israel", "Italy", "Jamaica", "JanMayen", "Japan", "Jersey", "Jordan", "JuandeNovaIsland", "Kazakhstan", "Kenya", "Kiribati", "NorthKorea", "SouthKorea", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "MarshallIslands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Namibia", "Nauru", "NavassaIsland", "Nepal", "Netherlands", "NetherlandsAntilles", "NewCaledonia", "NewZealand", "Nicaragua", "Niger", "Nigeria", "Niue", "NorfolkIsland", "NorthernMarianaIslands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "PapuaNewGuinea", "ParacelIslands", "Paraguay", "Peru", "Philippines", "PitcairnIslands", "Poland", "Portugal", "PuertoRico", "Qatar", "Reunion", "Romania", "Russia", "Rwanda", "SaintHelena", "SaintKittsandNevis", "SaintLucia", "SaintPierreandMiquelon", "SaintVincentandtheGrenadines", "Samoa", "SanMarino", "SaoTomeandPrincipe", "SaudiArabia", "Senegal", "SerbiaandMontenegro", "Seychelles", "SierraLeone", "Singapore", "Slovakia", "Slovenia", "SolomonIslands", "Somalia", "SouthAfrica", "SouthGeorgiaandtheSouthSandwichIslands", "Spain", "SpratlyIslands", "SriLanka", "Sudan", "Suriname", "Svalbard", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "TimorLeste", "Togo", "Tokelau", "Tonga", "TrinidadandTobago", "TromelinIsland", "Tunisia", "Turkey", "Turkmenistan", "TurksandCaicosIslands", "Tuvalu", "Uganda", "Ukraine", "UnitedArabEmirates", "UnitedKingdom", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "VirginIslands", "WakeIsland", "WallisandFutuna", "WestBank", "WesternSahara", "Yemen", "Zambia", "Zimbabwe"])
      unless validator.valid?(country)
        fail ArgumentError, "invalid value #{ country.inspect } for \"country\", must be one of #{validator.allowable_values}."
      end
      @country = country
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          check_printing_info == o.check_printing_info &&
          name == o.name &&
          description == o.description &&
          bank_account_type == o.bank_account_type &&
          country == o.country &&
          account_number == o.account_number &&
          routing_number == o.routing_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [check_printing_info, name, description, bank_account_type, country, account_number, routing_number].hash
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
