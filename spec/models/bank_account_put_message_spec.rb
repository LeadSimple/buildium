=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.     

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Buildium::BankAccountPutMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::BankAccountPutMessage do
  let(:instance) { Buildium::BankAccountPutMessage.new }

  describe 'test an instance of BankAccountPutMessage' do
    it 'should create an instance of BankAccountPutMessage' do
      expect(instance).to be_instance_of(Buildium::BankAccountPutMessage)
    end
  end
  describe 'test attribute "check_printing_info"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "bank_account_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Checking", "Savings"])
      # validator.allowable_values.each do |value|
      #   expect { instance.bank_account_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "country"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["UnitedStates", "Afghanistan", "Akrotiri", "Albania", "Algeria", "AmericanSamoa", "Andorra", "Angola", "Anguilla", "Antarctica", "AntiguaandBarbuda", "Argentina", "Armenia", "Aruba", "AshmoreandCartierIslands", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "BassasdaIndia", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "BosniaandHerzegovina", "Botswana", "BouvetIsland", "Brazil", "BritishIndianOceanTerritory", "BritishVirginIslands", "Brunei", "Bulgaria", "BurkinaFaso", "Burma", "Burundi", "Cambodia", "Cameroon", "Canada", "CapeVerde", "CaymanIslands", "CentralAfricanRepublic", "Chad", "Chile", "China", "ChristmasIsland", "ClippertonIsland", "CocosIslands", "Colombia", "Comoros", "DemocraticRepublicOfTheCongo", "RepublicOfTheCongo", "CookIslands", "CoralSeaIslands", "CostaRica", "CotedIvoire", "Croatia", "Cuba", "Cyprus", "CzechRepublic", "Denmark", "Dhekelia", "Djibouti", "Dominica", "DominicanRepublic", "Ecuador", "Egypt", "ElSalvador", "EquatorialGuinea", "Eritrea", "Estonia", "Ethiopia", "EuropaIsland", "FalklandIslands", "FaroeIslands", "Fiji", "Finland", "France", "FrenchGuiana", "FrenchPolynesia", "FrenchSouthernandAntarcticLands", "Gabon", "Gambia", "GazaStrip", "Georgia", "Germany", "Ghana", "Gibraltar", "GloriosoIslands", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guernsey", "Guinea", "GuineaBissau", "Guyana", "Haiti", "HeardIslandandMcDonaldIslands", "VaticanCity", "Honduras", "HongKong", "Hungary", "Iceland", "India", "Indonesia", "Iran", "Iraq", "Ireland", "IsleofMan", "Israel", "Italy", "Jamaica", "JanMayen", "Japan", "Jersey", "Jordan", "JuandeNovaIsland", "Kazakhstan", "Kenya", "Kiribati", "NorthKorea", "SouthKorea", "Kuwait", "Kyrgyzstan", "Laos", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "MarshallIslands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia", "Moldova", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Namibia", "Nauru", "NavassaIsland", "Nepal", "Netherlands", "NetherlandsAntilles", "NewCaledonia", "NewZealand", "Nicaragua", "Niger", "Nigeria", "Niue", "NorfolkIsland", "NorthernMarianaIslands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "PapuaNewGuinea", "ParacelIslands", "Paraguay", "Peru", "Philippines", "PitcairnIslands", "Poland", "Portugal", "PuertoRico", "Qatar", "Reunion", "Romania", "Russia", "Rwanda", "SaintHelena", "SaintKittsandNevis", "SaintLucia", "SaintPierreandMiquelon", "SaintVincentandtheGrenadines", "Samoa", "SanMarino", "SaoTomeandPrincipe", "SaudiArabia", "Senegal", "SerbiaandMontenegro", "Seychelles", "SierraLeone", "Singapore", "Slovakia", "Slovenia", "SolomonIslands", "Somalia", "SouthAfrica", "SouthGeorgiaandtheSouthSandwichIslands", "Spain", "SpratlyIslands", "SriLanka", "Sudan", "Suriname", "Svalbard", "Swaziland", "Sweden", "Switzerland", "Syria", "Taiwan", "Tajikistan", "Tanzania", "Thailand", "TimorLeste", "Togo", "Tokelau", "Tonga", "TrinidadandTobago", "TromelinIsland", "Tunisia", "Turkey", "Turkmenistan", "TurksandCaicosIslands", "Tuvalu", "Uganda", "Ukraine", "UnitedArabEmirates", "UnitedKingdom", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "VirginIslands", "WakeIsland", "WallisandFutuna", "WestBank", "WesternSahara", "Yemen", "Zambia", "Zimbabwe"])
      # validator.allowable_values.each do |value|
      #   expect { instance.country = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "account_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "routing_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
