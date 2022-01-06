# Buildium

A Ruby client library for interacting with the [Buildium API](https://developer.buildium.com), created and maintained by LeadSimple. This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project.

**DO NOT EDIT THIS README**. Edit the one in `bin/README.md` instead and rerun the `rebuild.sh` file, see below.

## Getting Started

1. Add this gem to your dependencies

    ```ruby
    # In your .gemspec, if any
    s.add_runtime_dependency "buildium", "~> 1.0.0"

    # In your Gemfile
    gem "buildium", github: "leadsimple/buildium"
    ```

2. Get a Buildium API client ID and secret from Buildium, [as described in their docs](https://developer.buildium.com/#section/Getting-Started).

### Usage Examples

You can configure the gem in two ways.

#### Global Configuration
All requests will use a single API key. Use this when you only expect to make requests on behalf of one Buildium account.

```ruby
# Load the gem
require 'buildium'

# Setup authorization
Buildium.configure do |config|
  # Configure API key authorization: clientId
  config.api_key['clientId'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientId'] = 'Bearer'

  # Configure API key authorization: clientSecret
  config.api_key['clientSecret'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['clientSecret'] = 'Bearer'
end

api_instance = Buildium::AccountingApi.new
bill_post_message = Buildium::BillPostMessage.new({date: Date.today, due_date: Date.today, vendor_id: 37, lines: [Buildium::BillLineSaveMessage.new({accounting_entity: Buildium::BillAccountingEntitySaveMessage.new({id: 37, accounting_entity_type: 'Association'}), gl_account_id: 37, amount: 3.56})]}) # BillPostMessage | 

begin
  #Create a bill
  result = api_instance.create_bill(bill_post_message)
  p result
rescue Buildium::ApiError => e
  puts "Exception when calling AccountingApi->create_bill: #{e}"
end
```

#### Per-Request Configuration
If you need to make requests on behalf of several Buildium accounts, then you will want to configure each request individually. Here's an example of how to do that:

```ruby
require "buildium"

# Create a configuration object
config = Buildium::Configuration.new
config.api_key = {
  "clientId" => "YOUR CLIENT ID",
  "clientSecret" => "YOUR CLIENT SECRET"
}

# If your keys are sandbox keys, you will also need the following two lines
config.host = "apisandbox.buildium.com"
config.server_index = nil

# Build an API client
api_client = Buildium::ApiClient.new(config)
rental_properties_api = Buildium::RentalPropertiesApi.new(api_client)
rental_properties_api.get_all_rentals()
# => [<Buildium::RentalPropertyMessage ...>]
```

## Documentation
Read the [generated docs here](../docs/README.md). They're actually pretty good!

## How to Regenerate This Library

1. Download a new `swagger.json` file from [developer.buildium.com](https://developer.buildium.com)
2. Replace the `bin/swagger.json` file with it
3. Add the following `securitySchemes` JSON under "components" in the `swagger.json` file:
   ```json
   "components": {
     "securitySchemes": {
       "clientId": {
         "type": "apiKey",
         "in": "header",
         "name": "x-buildium-client-id"
       },
       "clientSecret": {
         "type": "apiKey",
         "in": "header",
         "name": "x-buildium-client-secret"
       }
     },
     // more stuff here ...
   }
   ```
4. Add a top-level `security` key to the `swagger.json` file:
   ```json
   "security": [{ "clientId": [] }, { "clientSecret": [] }]
   ```
5. Increment the `gemVersion` key in `bin/config.yml`
6. Run the `bin/rebuild.sh` script to rebuild everything