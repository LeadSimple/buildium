=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

require 'date'
require 'time'

module Buildium
  # This is an object that represents a bank account.
  class BankAccountMessage
    # Bank account unique identifier.
    attr_accessor :id

    attr_accessor :gl_account

    attr_accessor :check_printing_info

    attr_accessor :electronic_payments

    # Bank Account name.
    attr_accessor :name

    # Bank account description.
    attr_accessor :description

    # Type of bank account. Values are `Checking` or `Savings`.
    attr_accessor :bank_account_type

    # The country the bank account is in.
    attr_accessor :country

    # Bank account number.
    attr_accessor :account_number

    # Bank routing number.
    attr_accessor :routing_number

    # Bank Account Status
    attr_accessor :is_active

    # Bank Account balance
    attr_accessor :balance

    # Unmasked bank account number
    attr_accessor :account_number_unmasked

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
        :'gl_account' => :'GLAccount',
        :'check_printing_info' => :'CheckPrintingInfo',
        :'electronic_payments' => :'ElectronicPayments',
        :'name' => :'Name',
        :'description' => :'Description',
        :'bank_account_type' => :'BankAccountType',
        :'country' => :'Country',
        :'account_number' => :'AccountNumber',
        :'routing_number' => :'RoutingNumber',
        :'is_active' => :'IsActive',
        :'balance' => :'Balance',
        :'account_number_unmasked' => :'AccountNumberUnmasked'
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
        :'gl_account' => :'BankAccountMessageGLAccount',
        :'check_printing_info' => :'BankAccountMessageCheckPrintingInfo',
        :'electronic_payments' => :'BankAccountMessageElectronicPayments',
        :'name' => :'String',
        :'description' => :'String',
        :'bank_account_type' => :'String',
        :'country' => :'String',
        :'account_number' => :'String',
        :'routing_number' => :'String',
        :'is_active' => :'Boolean',
        :'balance' => :'Float',
        :'account_number_unmasked' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Buildium::BankAccountMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Buildium::BankAccountMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'gl_account')
        self.gl_account = attributes[:'gl_account']
      end

      if attributes.key?(:'check_printing_info')
        self.check_printing_info = attributes[:'check_printing_info']
      end

      if attributes.key?(:'electronic_payments')
        self.electronic_payments = attributes[:'electronic_payments']
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

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

      if attributes.key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.key?(:'account_number_unmasked')
        self.account_number_unmasked = attributes[:'account_number_unmasked']
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
      country_validator = EnumAttributeValidator.new('String', ["Afghanistan", "Akrotiri", "Albania", "Algeria", "AmericanSamoa", "Andorra", "Angola", "Anguilla", "Antarctica", "AntiguaandBarbuda", "Argentina", "Armenia", "Aruba", "AshmoreandCartierIslands", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "BassasdaIndia", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "BosniaandHerzegovina", "Botswana", "BouvetIsland", "Brazil", "BritishIndianOceanTerritory", "BritishVirginIslands", "Brunei", "Bulgaria", "BurkinaFaso", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "CapeVerde", "CaymanIslands", "CentralAfricanRepublic", "Chad", "Chile", "China", "ChristmasIsland", "ClippertonIsland", "CocosIslands", "Colombia", "Comoros", "DemocraticRepublicOfTheCongo", "RepublicOfTheCongo", "CookIslands", "CoralSeaIslands", "CostaRica", "CotedIvoire", "Croatia", "Cuba", "Cyprus", "CzechRepublic", "Denmark", "Dhekelia", "Djibouti", "Dominica", "DominicanRepublic", "Ecuador", "Egypt", "ElSalvador", "EquatorialGuinea", "Eritrea", "Estonia", "Ethiopia", "EuropaIsland", "FalklandIslands", "FaroeIslands", "Fiji", "Finland", "France", "FrenchGuiana", "FrenchPolynesia", "FrenchSouthernandAntarcticLands", "Gabon", "Gambia", "GazaStrip", "Georgia", "Germany", "Ghana", "Gibraltar", "GloriosoIslands", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea", "GuineaBissau", "Guyana", "Haiti", "HeardIslandandMcDonaldIslands", "VaticanCity", "Honduras", "HongKong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "IsleofMan", "Israel", "Italy", "Jamaica", "JanMayen", "Japan", "Jersey", "Jordan", "JuandeNovaIsland", "Kazakhstan", "Kenya", "Kiribati", "NorthKorea", "SouthKorea", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "MarshallIslands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Namibia", "Nauru", "NavassaIsland", "Nepal", "Netherlands", "NetherlandsAntilles", "NewCaledonia", "NewZealand", "Nicaragua", "Niger", "Nigeria", "Niue", "NorfolkIsland", "NorthernMarianaIslands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "PapuaNewGuinea", "ParacelIslands", "Paraguay", "Peru", "Philippines", "PitcairnIslands", "Poland", "Portugal", "PuertoRico", "Qatar", "Reunion", "Romania", "Russia", "Rwanda", "SaintHelena", "SaintKittsandNevis", "SaintLucia", "SaintPierreandMiquelon", "SaintVincentandtheGrenadines", "Samoa", "SanMarino", "SaoTomeandPrincipe", "SaudiArabia", "Senegal", "SerbiaandMontenegro", "Seychelles", "SierraLeone", "Singapore", "Slovakia", "Slovenia", "SolomonIslands", "Somalia", "SouthAfrica", "SouthGeorgiaandtheSouthSandwichIslands", "Spain", "SpratlyIslands", "SriLanka", "Sudan", "Suriname", "Svalbard", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "TimorLeste", "Togo", "Tokelau", "Tonga", "TrinidadandTobago", "TromelinIsland", "Tunisia", "Turkey", "Turkmenistan", "TurksandCaicosIslands", "Tuvalu", "Uganda", "Ukraine", "UnitedArabEmirates", "UnitedKingdom", "UnitedStates", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "VirginIslands", "WakeIsland", "WallisandFutuna", "WestBank", "WesternSahara", "Yemen", "Zambia", "Zimbabwe"])
      return false unless country_validator.valid?(@country)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country)
      validator = EnumAttributeValidator.new('String', ["Afghanistan", "Akrotiri", "Albania", "Algeria", "AmericanSamoa", "Andorra", "Angola", "Anguilla", "Antarctica", "AntiguaandBarbuda", "Argentina", "Armenia", "Aruba", "AshmoreandCartierIslands", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "BassasdaIndia", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "BosniaandHerzegovina", "Botswana", "BouvetIsland", "Brazil", "BritishIndianOceanTerritory", "BritishVirginIslands", "Brunei", "Bulgaria", "BurkinaFaso", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "CapeVerde", "CaymanIslands", "CentralAfricanRepublic", "Chad", "Chile", "China", "ChristmasIsland", "ClippertonIsland", "CocosIslands", "Colombia", "Comoros", "DemocraticRepublicOfTheCongo", "RepublicOfTheCongo", "CookIslands", "CoralSeaIslands", "CostaRica", "CotedIvoire", "Croatia", "Cuba", "Cyprus", "CzechRepublic", "Denmark", "Dhekelia", "Djibouti", "Dominica", "DominicanRepublic", "Ecuador", "Egypt", "ElSalvador", "EquatorialGuinea", "Eritrea", "Estonia", "Ethiopia", "EuropaIsland", "FalklandIslands", "FaroeIslands", "Fiji", "Finland", "France", "FrenchGuiana", "FrenchPolynesia", "FrenchSouthernandAntarcticLands", "Gabon", "Gambia", "GazaStrip", "Georgia", "Germany", "Ghana", "Gibraltar", "GloriosoIslands", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea", "GuineaBissau", "Guyana", "Haiti", "HeardIslandandMcDonaldIslands", "VaticanCity", "Honduras", "HongKong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "IsleofMan", "Israel", "Italy", "Jamaica", "JanMayen", "Japan", "Jersey", "Jordan", "JuandeNovaIsland", "Kazakhstan", "Kenya", "Kiribati", "NorthKorea", "SouthKorea", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "MarshallIslands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Namibia", "Nauru", "NavassaIsland", "Nepal", "Netherlands", "NetherlandsAntilles", "NewCaledonia", "NewZealand", "Nicaragua", "Niger", "Nigeria", "Niue", "NorfolkIsland", "NorthernMarianaIslands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "PapuaNewGuinea", "ParacelIslands", "Paraguay", "Peru", "Philippines", "PitcairnIslands", "Poland", "Portugal", "PuertoRico", "Qatar", "Reunion", "Romania", "Russia", "Rwanda", "SaintHelena", "SaintKittsandNevis", "SaintLucia", "SaintPierreandMiquelon", "SaintVincentandtheGrenadines", "Samoa", "SanMarino", "SaoTomeandPrincipe", "SaudiArabia", "Senegal", "SerbiaandMontenegro", "Seychelles", "SierraLeone", "Singapore", "Slovakia", "Slovenia", "SolomonIslands", "Somalia", "SouthAfrica", "SouthGeorgiaandtheSouthSandwichIslands", "Spain", "SpratlyIslands", "SriLanka", "Sudan", "Suriname", "Svalbard", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "TimorLeste", "Togo", "Tokelau", "Tonga", "TrinidadandTobago", "TromelinIsland", "Tunisia", "Turkey", "Turkmenistan", "TurksandCaicosIslands", "Tuvalu", "Uganda", "Ukraine", "UnitedArabEmirates", "UnitedKingdom", "UnitedStates", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "VirginIslands", "WakeIsland", "WallisandFutuna", "WestBank", "WesternSahara", "Yemen", "Zambia", "Zimbabwe"])
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
          id == o.id &&
          gl_account == o.gl_account &&
          check_printing_info == o.check_printing_info &&
          electronic_payments == o.electronic_payments &&
          name == o.name &&
          description == o.description &&
          bank_account_type == o.bank_account_type &&
          country == o.country &&
          account_number == o.account_number &&
          routing_number == o.routing_number &&
          is_active == o.is_active &&
          balance == o.balance &&
          account_number_unmasked == o.account_number_unmasked
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, gl_account, check_printing_info, electronic_payments, name, description, bank_account_type, country, account_number, routing_number, is_active, balance, account_number_unmasked].hash
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
