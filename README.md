# buildium-ruby

Buildium - the Ruby gem for the Open API, powered by Buildium

**DO NOT EDIT THIS README**. Edit the one in `bin/README.md` instead and rerun the `rebuild.sh` file, see below.

# Introduction
### Welcome!

Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.

Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!


### What's in this Guide?

This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.

Topics include:

* choosing the right resources for your use case
* making HTTP requests to any resource
* understanding data and response codes

<br />

# Getting Started
Excited to get going? We’ll walk you through the setup process.
>  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.

## Account Configuration
Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.

<br />

### Enabling the API
In order to start creating your keys and making requests, you’ll need to enable the API.


>  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.

<br />

​ **Let's Begin!**

1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.

2. Open the ***Settings*** menu and click ***Application settings***.

3. Under ***System preferences***, click ***Api settings***. A modal will appear.

4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.

<video width=\"100%\" autoplay loop muted>
  <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />
</video>


Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.
<br />
<br />
If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.

<br />


## API Keys
Account-level API keys authenticate every request and keep things secure.

API keys have two components: a “client ID” and a “secret”.

* **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.
* **Secrets** are similar to passwords. They must be kept confidential.

Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.

>  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!

## Creating API Keys
Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!

>  **Tip:** You’ll need an administrator user role to complete this step, too.

<br />

**How to create an API key**

1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.

2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.

3. Click the ***Create API Key*** button. A modal will appear.

4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.

5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.

6. You successfully created an API key!

> **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.

<br />

<video width=\"100%\" autoplay loop muted>
  <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />
</video>

<br />

You have now successfully created an API key and have everything you need to  send requests to the Buildium API!

Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.  
<br />
If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.
<br />


## Keeping API Keys Safe

Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.


### Recommended Practices

- Avoid hard-coding client IDs and secrets inside source files.
- Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.
- Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).
- Avoid sharing client IDs and secrets across public, insecure platforms.
- Establish a process to regularly recreate your client IDs and secrets from your Buildium account.
  <br />
  <br />

## How to Make a Request

You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!


> **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.


<br />

### Let's Get Started!

#### Step 1: Get Your API Key

If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.

See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.

#### Step 2: Install a HTTP client
The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.


#### Step 3: Make a Sample Request

Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.
* A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address. 


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Package version: 3.1.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build buildium-ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./buildium-ruby-3.1.0.gem
```

(for development, run `gem install --dev ./buildium-ruby-3.1.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'buildium-ruby', '~> 3.1.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'buildium-ruby', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'buildium-ruby'

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

api_instance = Buildium::AdministrationApi.new

begin
  #Retrieve account info
  result = api_instance.get_account_info
  p result
rescue Buildium::ApiError => e
  puts "Exception when calling AdministrationApi->get_account_info: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.buildium.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Buildium::AdministrationApi* | [**get_account_info**](docs/AdministrationApi.md#get_account_info) | **GET** /v1/administration/account | Retrieve account info
*Buildium::AdministrationApi* | [**get_accounting_lock_period_settings**](docs/AdministrationApi.md#get_accounting_lock_period_settings) | **GET** /v1/administration/accountinglockperiod | Retrieve accounting lock periods
*Buildium::AdministrationApi* | [**get_all_user_roles**](docs/AdministrationApi.md#get_all_user_roles) | **GET** /v1/userroles | Retrieve all user roles
*Buildium::AdministrationApi* | [**get_all_users**](docs/AdministrationApi.md#get_all_users) | **GET** /v1/users | Retrieve all users
*Buildium::AdministrationApi* | [**get_global_partial_payment_settings**](docs/AdministrationApi.md#get_global_partial_payment_settings) | **GET** /v1/administration/residentsettings/partialpaymentsettings | Retrieve the partial payment settings for residents
*Buildium::AdministrationApi* | [**get_user_by_id**](docs/AdministrationApi.md#get_user_by_id) | **GET** /v1/users/{userId} | Retrieve a user
*Buildium::AdministrationApi* | [**get_user_role_by_id**](docs/AdministrationApi.md#get_user_role_by_id) | **GET** /v1/userroles/{userRoleId} | Retrieve a user role
*Buildium::AdministrationApi* | [**patch_global_partial_payment_settings**](docs/AdministrationApi.md#patch_global_partial_payment_settings) | **PATCH** /v1/administration/residentsettings/partialpaymentsettings | Update the partial payment settings for residents
*Buildium::AppliancesApi* | [**create_association_appliance**](docs/AppliancesApi.md#create_association_appliance) | **POST** /v1/associations/appliances | Create an appliance
*Buildium::AppliancesApi* | [**create_association_appliance_service_history**](docs/AppliancesApi.md#create_association_appliance_service_history) | **POST** /v1/associations/appliances/{applianceId}/servicehistory | Create a service history
*Buildium::AppliancesApi* | [**delete_association_appliances**](docs/AppliancesApi.md#delete_association_appliances) | **DELETE** /v1/associations/appliances/{applianceId} | Delete an appliance
*Buildium::AppliancesApi* | [**get_all_association_appliance_service_history**](docs/AppliancesApi.md#get_all_association_appliance_service_history) | **GET** /v1/associations/appliances/{applianceId}/servicehistory | Retrieve all service history
*Buildium::AppliancesApi* | [**get_association_appliance_by_id**](docs/AppliancesApi.md#get_association_appliance_by_id) | **GET** /v1/associations/appliances/{applianceId} | Retrieve an appliance
*Buildium::AppliancesApi* | [**get_association_appliance_service_history_by_id**](docs/AppliancesApi.md#get_association_appliance_service_history_by_id) | **GET** /v1/associations/appliances/{applianceId}/servicehistory/{serviceHistoryId} | Retrieve a service history
*Buildium::AppliancesApi* | [**get_association_appliances**](docs/AppliancesApi.md#get_association_appliances) | **GET** /v1/associations/appliances | Retrieve all appliances
*Buildium::AppliancesApi* | [**update_association_appliance**](docs/AppliancesApi.md#update_association_appliance) | **PUT** /v1/associations/appliances/{applianceId} | Update an appliance
*Buildium::ApplicantsApi* | [**create_applicant**](docs/ApplicantsApi.md#create_applicant) | **POST** /v1/applicants | Create an applicant
*Buildium::ApplicantsApi* | [**create_applicant_group**](docs/ApplicantsApi.md#create_applicant_group) | **POST** /v1/applicants/groups | Create an applicant group
*Buildium::ApplicantsApi* | [**create_applicant_note**](docs/ApplicantsApi.md#create_applicant_note) | **POST** /v1/applicants/{applicantId}/notes | Create an applicant note
*Buildium::ApplicantsApi* | [**create_application_group_note**](docs/ApplicantsApi.md#create_application_group_note) | **POST** /v1/applicants/groups/{applicantGroupId}/notes | Create an applicant group note
*Buildium::ApplicantsApi* | [**get_all_applicant_notes**](docs/ApplicantsApi.md#get_all_applicant_notes) | **GET** /v1/applicants/{applicantId}/notes | Retrieve all applicant notes
*Buildium::ApplicantsApi* | [**get_applicant_by_id**](docs/ApplicantsApi.md#get_applicant_by_id) | **GET** /v1/applicants/{applicantId} | Retrieve an applicant
*Buildium::ApplicantsApi* | [**get_applicant_group_by_id**](docs/ApplicantsApi.md#get_applicant_group_by_id) | **GET** /v1/applicants/groups/{applicantGroupId} | Retrieve an applicant group
*Buildium::ApplicantsApi* | [**get_applicant_group_note_by_note_id**](docs/ApplicantsApi.md#get_applicant_group_note_by_note_id) | **GET** /v1/applicants/groups/{applicantGroupId}/notes/{noteId} | Retrieve an applicant group note
*Buildium::ApplicantsApi* | [**get_applicant_group_notes**](docs/ApplicantsApi.md#get_applicant_group_notes) | **GET** /v1/applicants/groups/{applicantGroupId}/notes | Retrieve all applicant group notes
*Buildium::ApplicantsApi* | [**get_applicant_groups**](docs/ApplicantsApi.md#get_applicant_groups) | **GET** /v1/applicants/groups | Retrieve all applicant groups
*Buildium::ApplicantsApi* | [**get_applicant_note_by_id**](docs/ApplicantsApi.md#get_applicant_note_by_id) | **GET** /v1/applicants/{applicantId}/notes/{noteId} | Retrieve an applicant note
*Buildium::ApplicantsApi* | [**get_applicants**](docs/ApplicantsApi.md#get_applicants) | **GET** /v1/applicants | Retrieve all applicants
*Buildium::ApplicantsApi* | [**get_application_for_applicant_by_id**](docs/ApplicantsApi.md#get_application_for_applicant_by_id) | **GET** /v1/applicants/{applicantId}/applications/{applicationId} | Retrieve an application
*Buildium::ApplicantsApi* | [**get_applications_for_applicant**](docs/ApplicantsApi.md#get_applications_for_applicant) | **GET** /v1/applicants/{applicantId}/applications | Retrieve all applications
*Buildium::ApplicantsApi* | [**update_applicant**](docs/ApplicantsApi.md#update_applicant) | **PUT** /v1/applicants/{applicantId} | Update an applicant
*Buildium::ApplicantsApi* | [**update_applicant_group**](docs/ApplicantsApi.md#update_applicant_group) | **PUT** /v1/applicants/groups/{applicantGroupId} | Update an applicant group
*Buildium::ApplicantsApi* | [**update_application**](docs/ApplicantsApi.md#update_application) | **PUT** /v1/applicants/{applicantId}/applications/{applicationId} | Update an application
*Buildium::ApplicantsApi* | [**update_application_group_note**](docs/ApplicantsApi.md#update_application_group_note) | **PUT** /v1/applicants/groups/{applicantGroupId}/notes/{noteId} | Update an applicant group note
*Buildium::ArchitecturalRequestsApi* | [**create_architectural_request_async**](docs/ArchitecturalRequestsApi.md#create_architectural_request_async) | **POST** /v1/associations/ownershipaccounts/architecturalrequests | Create an architectural request
*Buildium::ArchitecturalRequestsApi* | [**create_upload_file_request**](docs/ArchitecturalRequestsApi.md#create_upload_file_request) | **POST** /v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files/uploadrequests | Upload an architectural request file
*Buildium::ArchitecturalRequestsApi* | [**download_architectural_request_file_async**](docs/ArchitecturalRequestsApi.md#download_architectural_request_file_async) | **POST** /v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files/{fileId}/downloadrequests | Download an architectural request file
*Buildium::ArchitecturalRequestsApi* | [**get_architectural_request_by_id**](docs/ArchitecturalRequestsApi.md#get_architectural_request_by_id) | **GET** /v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId} | Retrieve an architectural request
*Buildium::ArchitecturalRequestsApi* | [**get_architectural_request_file_async**](docs/ArchitecturalRequestsApi.md#get_architectural_request_file_async) | **GET** /v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files/{fileId} | Retrieve an architectural request file
*Buildium::ArchitecturalRequestsApi* | [**get_architectural_request_files_history_paged_async**](docs/ArchitecturalRequestsApi.md#get_architectural_request_files_history_paged_async) | **GET** /v1/associations/ownershipaccounts/architecturalrequests/{architecturalRequestId}/files | Retrieve all files for an architectural request
*Buildium::ArchitecturalRequestsApi* | [**get_architectural_requests**](docs/ArchitecturalRequestsApi.md#get_architectural_requests) | **GET** /v1/associations/ownershipaccounts/architecturalrequests | Retrieve all architectural requests
*Buildium::AssociationMeterReadingsApi* | [**delete_meter_reading_details_for_association**](docs/AssociationMeterReadingsApi.md#delete_meter_reading_details_for_association) | **DELETE** /v1/associations/{associationId}/meterreadings/summary | Delete meter reading details for a given date
*Buildium::AssociationMeterReadingsApi* | [**get_association_meter_reading_details_async**](docs/AssociationMeterReadingsApi.md#get_association_meter_reading_details_async) | **GET** /v1/associations/{associationId}/meterreadings/summary | Retrieve all meter reading details
*Buildium::AssociationMeterReadingsApi* | [**get_meter_readings_for_association**](docs/AssociationMeterReadingsApi.md#get_meter_readings_for_association) | **GET** /v1/associations/{associationId}/meterreadings | Retrieve all meter readings
*Buildium::AssociationMeterReadingsApi* | [**upsert_association_meter_reading_details_async**](docs/AssociationMeterReadingsApi.md#upsert_association_meter_reading_details_async) | **PUT** /v1/associations/{associationId}/meterreadings/summary | Create/Update meter reading details
*Buildium::AssociationOwnersApi* | [**create_association_owner**](docs/AssociationOwnersApi.md#create_association_owner) | **POST** /v1/associations/owners | Create an owner
*Buildium::AssociationOwnersApi* | [**create_association_owner_note**](docs/AssociationOwnersApi.md#create_association_owner_note) | **POST** /v1/associations/owners/{ownerId}/notes | Create a note
*Buildium::AssociationOwnersApi* | [**get_all_association_owners**](docs/AssociationOwnersApi.md#get_all_association_owners) | **GET** /v1/associations/owners | Retrieve all owners
*Buildium::AssociationOwnersApi* | [**get_association_owner_by_id**](docs/AssociationOwnersApi.md#get_association_owner_by_id) | **GET** /v1/associations/owners/{ownerId} | Retrieve an owner
*Buildium::AssociationOwnersApi* | [**get_association_owner_note_by_note_id**](docs/AssociationOwnersApi.md#get_association_owner_note_by_note_id) | **GET** /v1/associations/owners/{ownerId}/notes/{noteId} | Retrieve a note
*Buildium::AssociationOwnersApi* | [**get_association_owner_notes**](docs/AssociationOwnersApi.md#get_association_owner_notes) | **GET** /v1/associations/owners/{ownerId}/notes | Retrieve all notes
*Buildium::AssociationOwnersApi* | [**get_unit_occupancy_statuses_by_id_for_association_owner**](docs/AssociationOwnersApi.md#get_unit_occupancy_statuses_by_id_for_association_owner) | **GET** /v1/associations/owners/{ownerId}/units/{unitId} | Retrieve an occupancy status
*Buildium::AssociationOwnersApi* | [**get_unit_occupancy_statuses_for_association_owner**](docs/AssociationOwnersApi.md#get_unit_occupancy_statuses_for_association_owner) | **GET** /v1/associations/owners/{ownerId}/units | Retrieve all occupancy statuses
*Buildium::AssociationOwnersApi* | [**update_association_owner**](docs/AssociationOwnersApi.md#update_association_owner) | **PUT** /v1/associations/owners/{ownerId} | Update an owner
*Buildium::AssociationOwnersApi* | [**update_association_owner_note**](docs/AssociationOwnersApi.md#update_association_owner_note) | **PUT** /v1/associations/owners/{ownerId}/notes/{noteId} | Update a note
*Buildium::AssociationOwnersApi* | [**update_association_owner_occupancy_status**](docs/AssociationOwnersApi.md#update_association_owner_occupancy_status) | **PUT** /v1/associations/owners/{ownerId}/units/{unitId} | Update occupancy status
*Buildium::AssociationTenantsApi* | [**create_association_tenant**](docs/AssociationTenantsApi.md#create_association_tenant) | **POST** /v1/associations/tenants | Create a tenant
*Buildium::AssociationTenantsApi* | [**create_association_tenant_note**](docs/AssociationTenantsApi.md#create_association_tenant_note) | **POST** /v1/associations/tenants/{tenantId}/notes | Create a note
*Buildium::AssociationTenantsApi* | [**get_association_tenant_by_id**](docs/AssociationTenantsApi.md#get_association_tenant_by_id) | **GET** /v1/associations/tenants/{tenantId} | Retrieve a tenant
*Buildium::AssociationTenantsApi* | [**get_association_tenant_note_by_id**](docs/AssociationTenantsApi.md#get_association_tenant_note_by_id) | **GET** /v1/associations/tenants/{tenantId}/notes/{noteId} | Retrieve a note
*Buildium::AssociationTenantsApi* | [**get_association_tenant_notes**](docs/AssociationTenantsApi.md#get_association_tenant_notes) | **GET** /v1/associations/tenants/{tenantId}/notes | Retrieve all notes
*Buildium::AssociationTenantsApi* | [**get_association_tenants**](docs/AssociationTenantsApi.md#get_association_tenants) | **GET** /v1/associations/tenants | Retrieve all tenants
*Buildium::AssociationTenantsApi* | [**update_association_tenant**](docs/AssociationTenantsApi.md#update_association_tenant) | **PUT** /v1/associations/tenants/{tenantId} | Update a tenant
*Buildium::AssociationTenantsApi* | [**update_association_tenant_note**](docs/AssociationTenantsApi.md#update_association_tenant_note) | **PUT** /v1/associations/tenants/{tenantId}/notes/{noteId} | Update a note
*Buildium::AssociationUnitsApi* | [**create_association_unit**](docs/AssociationUnitsApi.md#create_association_unit) | **POST** /v1/associations/units | Create a unit
*Buildium::AssociationUnitsApi* | [**create_association_unit_note**](docs/AssociationUnitsApi.md#create_association_unit_note) | **POST** /v1/associations/units/{unitId}/notes | Create a note
*Buildium::AssociationUnitsApi* | [**get_all_association_units**](docs/AssociationUnitsApi.md#get_all_association_units) | **GET** /v1/associations/units | Retrieve all units
*Buildium::AssociationUnitsApi* | [**get_association_unit_by_id**](docs/AssociationUnitsApi.md#get_association_unit_by_id) | **GET** /v1/associations/units/{unitId} | Retrieve a unit
*Buildium::AssociationUnitsApi* | [**get_association_unit_note_by_note_id**](docs/AssociationUnitsApi.md#get_association_unit_note_by_note_id) | **GET** /v1/associations/units/{unitId}/notes/{noteId} | Retrieve a note
*Buildium::AssociationUnitsApi* | [**get_association_unit_notes**](docs/AssociationUnitsApi.md#get_association_unit_notes) | **GET** /v1/associations/units/{unitId}/notes | Retrieve all notes
*Buildium::AssociationUnitsApi* | [**update_association_unit**](docs/AssociationUnitsApi.md#update_association_unit) | **PUT** /v1/associations/units/{unitId} | Update a unit
*Buildium::AssociationUnitsApi* | [**update_association_unit_note**](docs/AssociationUnitsApi.md#update_association_unit_note) | **PUT** /v1/associations/units/{unitId}/notes/{noteId} | Update a note
*Buildium::AssociationsApi* | [**create_association**](docs/AssociationsApi.md#create_association) | **POST** /v1/associations | Create an association
*Buildium::AssociationsApi* | [**create_association_note**](docs/AssociationsApi.md#create_association_note) | **POST** /v1/associations/{associationId}/notes | Create a note
*Buildium::AssociationsApi* | [**get_association_by_id**](docs/AssociationsApi.md#get_association_by_id) | **GET** /v1/associations/{associationId} | Retrieve an association
*Buildium::AssociationsApi* | [**get_association_note_by_note_id**](docs/AssociationsApi.md#get_association_note_by_note_id) | **GET** /v1/associations/{associationId}/notes/{noteId} | Retrieve a note
*Buildium::AssociationsApi* | [**get_association_notes**](docs/AssociationsApi.md#get_association_notes) | **GET** /v1/associations/{associationId}/notes | Retrieve all notes
*Buildium::AssociationsApi* | [**get_association_preferred_vendors**](docs/AssociationsApi.md#get_association_preferred_vendors) | **GET** /v1/associations/{associationId}/vendors | Retrieve all preferred vendors
*Buildium::AssociationsApi* | [**get_associations**](docs/AssociationsApi.md#get_associations) | **GET** /v1/associations | Retrieve all associations
*Buildium::AssociationsApi* | [**get_bank_lock_box_data**](docs/AssociationsApi.md#get_bank_lock_box_data) | **GET** /v1/associations/banklockboxdata | Retrieve all association bank lockbox data
*Buildium::AssociationsApi* | [**get_e_pay_settings_for_association_by_id**](docs/AssociationsApi.md#get_e_pay_settings_for_association_by_id) | **GET** /v1/associations/{associationId}/epaysettings | Retrieve ePay settings
*Buildium::AssociationsApi* | [**inactivate_association**](docs/AssociationsApi.md#inactivate_association) | **POST** /v1/associations/{associationId}/inactivationrequest | Inactivate an association
*Buildium::AssociationsApi* | [**reactivate_association**](docs/AssociationsApi.md#reactivate_association) | **POST** /v1/associations/{associationId}/reactivationrequest | Reactivate an association
*Buildium::AssociationsApi* | [**update_association**](docs/AssociationsApi.md#update_association) | **PUT** /v1/associations/{associationId} | Update an association
*Buildium::AssociationsApi* | [**update_association_note**](docs/AssociationsApi.md#update_association_note) | **PUT** /v1/associations/{associationId}/notes/{noteId} | Update a note
*Buildium::AssociationsApi* | [**update_association_preferred_vendors**](docs/AssociationsApi.md#update_association_preferred_vendors) | **PUT** /v1/associations/{associationId}/vendors | Update preferred vendors
*Buildium::AssociationsApi* | [**update_e_pay_settings_for_association**](docs/AssociationsApi.md#update_e_pay_settings_for_association) | **PUT** /v1/associations/{associationId}/epaysettings | Update ePay settings
*Buildium::BankAccountsApi* | [**clear_transactions**](docs/BankAccountsApi.md#clear_transactions) | **POST** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/cleartransactionsrequest | Clear transactions for a reconciliation
*Buildium::BankAccountsApi* | [**create_bank_account**](docs/BankAccountsApi.md#create_bank_account) | **POST** /v1/bankaccounts | Create a bank account
*Buildium::BankAccountsApi* | [**create_bank_account_check**](docs/BankAccountsApi.md#create_bank_account_check) | **POST** /v1/bankaccounts/{bankAccountId}/checks | Create a check
*Buildium::BankAccountsApi* | [**create_bank_account_deposit**](docs/BankAccountsApi.md#create_bank_account_deposit) | **POST** /v1/bankaccounts/{bankAccountId}/deposits | Create a deposit
*Buildium::BankAccountsApi* | [**create_bank_account_transfer**](docs/BankAccountsApi.md#create_bank_account_transfer) | **POST** /v1/bankaccounts/{bankAccountId}/transfers | Create a transfer
*Buildium::BankAccountsApi* | [**create_check_upload_file_request**](docs/BankAccountsApi.md#create_check_upload_file_request) | **POST** /v1/bankaccounts/{bankAccountId}/checks/{checkId}/files/uploadrequests | Upload a file for a check
*Buildium::BankAccountsApi* | [**create_pending_reconciliations**](docs/BankAccountsApi.md#create_pending_reconciliations) | **POST** /v1/bankaccounts/{bankAccountId}/reconciliations | Create a reconciliation
*Buildium::BankAccountsApi* | [**create_quick_deposit**](docs/BankAccountsApi.md#create_quick_deposit) | **POST** /v1/bankaccounts/{bankAccountId}/quickdeposits | Create a quick deposit
*Buildium::BankAccountsApi* | [**create_withdrawal_for_bank_account**](docs/BankAccountsApi.md#create_withdrawal_for_bank_account) | **POST** /v1/bankaccounts/{bankAccountId}/withdrawals | Create a withdrawal
*Buildium::BankAccountsApi* | [**delete_bank_account_check_file**](docs/BankAccountsApi.md#delete_bank_account_check_file) | **DELETE** /v1/bankaccounts/{bankAccountId}/checks/{checkId}/files/{fileId} | Delete a file for a check
*Buildium::BankAccountsApi* | [**download_check_file**](docs/BankAccountsApi.md#download_check_file) | **POST** /v1/bankaccounts/{bankAccountId}/checks/{checkId}/files/{fileId}/downloadrequests | Download a file for a check
*Buildium::BankAccountsApi* | [**finalize_reconciliation**](docs/BankAccountsApi.md#finalize_reconciliation) | **POST** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/finalizerequest | Finalize a manual reconciliation
*Buildium::BankAccountsApi* | [**get_all_bank_accounts**](docs/BankAccountsApi.md#get_all_bank_accounts) | **GET** /v1/bankaccounts | Retrieve all bank accounts
*Buildium::BankAccountsApi* | [**get_all_quick_deposits**](docs/BankAccountsApi.md#get_all_quick_deposits) | **GET** /v1/bankaccounts/{bankAccountId}/quickdeposits | Retrieve all quick deposits
*Buildium::BankAccountsApi* | [**get_bank_account**](docs/BankAccountsApi.md#get_bank_account) | **GET** /v1/bankaccounts/{bankAccountId} | Retrieve a bank account
*Buildium::BankAccountsApi* | [**get_bank_account_check_file_by_id**](docs/BankAccountsApi.md#get_bank_account_check_file_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/checks/{checkId}/files/{fileId} | Retrieve a file for a check
*Buildium::BankAccountsApi* | [**get_bank_account_checks**](docs/BankAccountsApi.md#get_bank_account_checks) | **GET** /v1/bankaccounts/{bankAccountId}/checks | Retrieve all checks
*Buildium::BankAccountsApi* | [**get_bank_account_deposit_by_id**](docs/BankAccountsApi.md#get_bank_account_deposit_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/deposits/{depositId} | Retrieve a deposit
*Buildium::BankAccountsApi* | [**get_bank_account_deposits**](docs/BankAccountsApi.md#get_bank_account_deposits) | **GET** /v1/bankaccounts/{bankAccountId}/deposits | Retrieve all deposits
*Buildium::BankAccountsApi* | [**get_bank_account_reconciliation_transactions**](docs/BankAccountsApi.md#get_bank_account_reconciliation_transactions) | **GET** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/transactions | Retrieve all transactions for a reconciliation
*Buildium::BankAccountsApi* | [**get_bank_account_transaction_by_id**](docs/BankAccountsApi.md#get_bank_account_transaction_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/transactions/{transactionId} | Retrieve a transaction
*Buildium::BankAccountsApi* | [**get_bank_account_transactions**](docs/BankAccountsApi.md#get_bank_account_transactions) | **GET** /v1/bankaccounts/{bankAccountId}/transactions | Retrieve all transactions
*Buildium::BankAccountsApi* | [**get_bank_account_transfer_by_id**](docs/BankAccountsApi.md#get_bank_account_transfer_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/transfers/{transferId} | Retrieve a transfer
*Buildium::BankAccountsApi* | [**get_bank_account_transfers**](docs/BankAccountsApi.md#get_bank_account_transfers) | **GET** /v1/bankaccounts/{bankAccountId}/transfers | Retrieve all transfers
*Buildium::BankAccountsApi* | [**get_bank_account_withdrawal_by_id**](docs/BankAccountsApi.md#get_bank_account_withdrawal_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/withdrawals/{withdrawalId} | Retrieve a withdrawal
*Buildium::BankAccountsApi* | [**get_bank_account_withdrawals**](docs/BankAccountsApi.md#get_bank_account_withdrawals) | **GET** /v1/bankaccounts/{bankAccountId}/withdrawals | Retrieve all withdrawals
*Buildium::BankAccountsApi* | [**get_check_for_bank_account**](docs/BankAccountsApi.md#get_check_for_bank_account) | **GET** /v1/bankaccounts/{bankAccountId}/checks/{checkId} | Retrieve a check
*Buildium::BankAccountsApi* | [**get_files_for_bank_account_check**](docs/BankAccountsApi.md#get_files_for_bank_account_check) | **GET** /v1/bankaccounts/{bankAccountId}/checks/{checkId}/files | Retrieve all files for a check
*Buildium::BankAccountsApi* | [**get_quick_deposit_by_id**](docs/BankAccountsApi.md#get_quick_deposit_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/quickdeposits/{quickDepositId} | Retrieve a quick deposit
*Buildium::BankAccountsApi* | [**get_reconciliation_balance_by_id**](docs/BankAccountsApi.md#get_reconciliation_balance_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/balances | Retrieve a reconciliation's balance
*Buildium::BankAccountsApi* | [**get_reconciliation_by_id**](docs/BankAccountsApi.md#get_reconciliation_by_id) | **GET** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId} | Retrieve a reconciliation
*Buildium::BankAccountsApi* | [**get_reconciliations**](docs/BankAccountsApi.md#get_reconciliations) | **GET** /v1/bankaccounts/{bankAccountId}/reconciliations | Retrieve all reconciliations
*Buildium::BankAccountsApi* | [**get_undeposited_funds**](docs/BankAccountsApi.md#get_undeposited_funds) | **GET** /v1/bankaccounts/{bankAccountId}/undepositedfunds | Retrieve all undeposited funds
*Buildium::BankAccountsApi* | [**unclear_transactions**](docs/BankAccountsApi.md#unclear_transactions) | **POST** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/uncleartransactionsrequest | Un-clear transactions for a reconciliation
*Buildium::BankAccountsApi* | [**update_bank_account**](docs/BankAccountsApi.md#update_bank_account) | **PUT** /v1/bankaccounts/{bankAccountId} | Update a bank account
*Buildium::BankAccountsApi* | [**update_bank_account_deposit**](docs/BankAccountsApi.md#update_bank_account_deposit) | **PUT** /v1/bankaccounts/{bankAccountId}/deposits/{depositId} | Update a deposit
*Buildium::BankAccountsApi* | [**update_bank_account_transfer**](docs/BankAccountsApi.md#update_bank_account_transfer) | **PUT** /v1/bankaccounts/{bankAccountId}/transfers/{transferId} | Update a transfer
*Buildium::BankAccountsApi* | [**update_bank_account_withdrawal**](docs/BankAccountsApi.md#update_bank_account_withdrawal) | **PUT** /v1/bankaccounts/{bankAccountId}/withdrawals/{withdrawalId} | Update a withdrawal
*Buildium::BankAccountsApi* | [**update_check_for_bank_account**](docs/BankAccountsApi.md#update_check_for_bank_account) | **PUT** /v1/bankaccounts/{bankAccountId}/checks/{checkId} | Update a check
*Buildium::BankAccountsApi* | [**update_quick_deposit**](docs/BankAccountsApi.md#update_quick_deposit) | **PUT** /v1/bankaccounts/{bankAccountId}/quickdeposits/{quickDepositId} | Update a quick deposit
*Buildium::BankAccountsApi* | [**update_reconciliation**](docs/BankAccountsApi.md#update_reconciliation) | **PUT** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId} | Update a reconciliation
*Buildium::BankAccountsApi* | [**update_reconciliation_balances**](docs/BankAccountsApi.md#update_reconciliation_balances) | **PUT** /v1/bankaccounts/{bankAccountId}/reconciliations/{reconciliationId}/balances | Update a reconciliation's balance
*Buildium::BillsApi* | [**create_bill**](docs/BillsApi.md#create_bill) | **POST** /v1/bills | Create a bill
*Buildium::BillsApi* | [**create_bill_payment**](docs/BillsApi.md#create_bill_payment) | **POST** /v1/bills/{billId}/payments | Create a bill payment
*Buildium::BillsApi* | [**create_bill_upload_file_request**](docs/BillsApi.md#create_bill_upload_file_request) | **POST** /v1/bills/{billId}/files/uploadrequests | Upload a bill file
*Buildium::BillsApi* | [**create_multiple_bill_payments**](docs/BillsApi.md#create_multiple_bill_payments) | **POST** /v1/bills/payments | Create a payment for multiple bills with one check
*Buildium::BillsApi* | [**delete_bill_file**](docs/BillsApi.md#delete_bill_file) | **DELETE** /v1/bills/{billId}/files/{fileId} | Delete a bill file
*Buildium::BillsApi* | [**download_bill_file**](docs/BillsApi.md#download_bill_file) | **POST** /v1/bills/{billId}/files/{fileId}/downloadrequest | Download a bill file
*Buildium::BillsApi* | [**get_all_files_for_bill**](docs/BillsApi.md#get_all_files_for_bill) | **GET** /v1/bills/{billId}/files | Retrieve all files for a bill
*Buildium::BillsApi* | [**get_bill_by_id**](docs/BillsApi.md#get_bill_by_id) | **GET** /v1/bills/{billId} | Retrieve a bill
*Buildium::BillsApi* | [**get_bill_file_by_id**](docs/BillsApi.md#get_bill_file_by_id) | **GET** /v1/bills/{billId}/files/{fileId} | Retrieve a file for a bill
*Buildium::BillsApi* | [**get_bill_payment_by_id**](docs/BillsApi.md#get_bill_payment_by_id) | **GET** /v1/bills/{billId}/payments/{paymentId} | Retrieve a bill payment
*Buildium::BillsApi* | [**get_bill_payments**](docs/BillsApi.md#get_bill_payments) | **GET** /v1/bills/{billId}/payments | Retrieve all bill payments
*Buildium::BillsApi* | [**get_bills_async**](docs/BillsApi.md#get_bills_async) | **GET** /v1/bills | Retrieve all bills
*Buildium::BillsApi* | [**patch_bill**](docs/BillsApi.md#patch_bill) | **PATCH** /v1/bills/{billId} | Update a bill
*Buildium::BillsApi* | [**update_bill**](docs/BillsApi.md#update_bill) | **PUT** /v1/bills/{billId} | Update a bill
*Buildium::BoardMembersApi* | [**create_board_member**](docs/BoardMembersApi.md#create_board_member) | **POST** /v1/associations/{associationId}/boardmembers | Create a board member
*Buildium::BoardMembersApi* | [**delete_board_member**](docs/BoardMembersApi.md#delete_board_member) | **DELETE** /v1/associations/{associationId}/boardmembers/{boardMemberId} | Delete a board member
*Buildium::BoardMembersApi* | [**get_all_association_board_members**](docs/BoardMembersApi.md#get_all_association_board_members) | **GET** /v1/associations/{associationId}/boardmembers | Retrieve all board members
*Buildium::BoardMembersApi* | [**get_association_board_member_by_id**](docs/BoardMembersApi.md#get_association_board_member_by_id) | **GET** /v1/associations/{associationId}/boardmembers/{boardMemberId} | Retrieve a board member
*Buildium::BoardMembersApi* | [**update_board_member**](docs/BoardMembersApi.md#update_board_member) | **PUT** /v1/associations/{associationId}/boardmembers/{boardMemberId} | Update a board member
*Buildium::BudgetsApi* | [**create_budget_async**](docs/BudgetsApi.md#create_budget_async) | **POST** /v1/budgets | Create a budget
*Buildium::BudgetsApi* | [**get_budget_by_id**](docs/BudgetsApi.md#get_budget_by_id) | **GET** /v1/budgets/{budgetId} | Retrieve a budget
*Buildium::BudgetsApi* | [**get_budgets**](docs/BudgetsApi.md#get_budgets) | **GET** /v1/budgets | Retrieve all budgets
*Buildium::BudgetsApi* | [**update_budget**](docs/BudgetsApi.md#update_budget) | **PUT** /v1/budgets/{budgetId} | Update a budget
*Buildium::ClientLeadsApi* | [**get_client_leads**](docs/ClientLeadsApi.md#get_client_leads) | **GET** /v1/clientleads | Retrieve all client leads
*Buildium::ClientLeadsApi* | [**get_prospective_client**](docs/ClientLeadsApi.md#get_prospective_client) | **GET** /v1/clientleads/{clientLeadId} | Retrieve a client lead
*Buildium::CommunicationsApi* | [**create_announcement**](docs/CommunicationsApi.md#create_announcement) | **POST** /v1/communications/announcements | Create an announcement
*Buildium::CommunicationsApi* | [**create_email**](docs/CommunicationsApi.md#create_email) | **POST** /v1/communications/emails | Send an email
*Buildium::CommunicationsApi* | [**create_phone_log**](docs/CommunicationsApi.md#create_phone_log) | **POST** /v1/communications/phonelogs | Create a phone log
*Buildium::CommunicationsApi* | [**expire_announcement**](docs/CommunicationsApi.md#expire_announcement) | **POST** /v1/communications/announcements/{announcementId}/expirationrequest | Expire an announcement
*Buildium::CommunicationsApi* | [**get_all_announcements**](docs/CommunicationsApi.md#get_all_announcements) | **GET** /v1/communications/announcements | Retrieve all announcements
*Buildium::CommunicationsApi* | [**get_announcement_by_id**](docs/CommunicationsApi.md#get_announcement_by_id) | **GET** /v1/communications/announcements/{announcementId} | Retrieve an announcement
*Buildium::CommunicationsApi* | [**get_announcement_properties**](docs/CommunicationsApi.md#get_announcement_properties) | **GET** /v1/communications/announcements/{announcementId}/properties | Retrieve all announcement properties
*Buildium::CommunicationsApi* | [**get_email_by_id**](docs/CommunicationsApi.md#get_email_by_id) | **GET** /v1/communications/emails/{emailId} | Retrieve an email
*Buildium::CommunicationsApi* | [**get_email_recipients**](docs/CommunicationsApi.md#get_email_recipients) | **GET** /v1/communications/emails/{emailId}/recipients | Retrieve all email recipients
*Buildium::CommunicationsApi* | [**get_emails**](docs/CommunicationsApi.md#get_emails) | **GET** /v1/communications/emails | Retrieve all emails
*Buildium::CommunicationsApi* | [**get_mailing_templates**](docs/CommunicationsApi.md#get_mailing_templates) | **GET** /v1/communications/templates | Retrieve all communication templates
*Buildium::CommunicationsApi* | [**get_mailing_templates_by_id**](docs/CommunicationsApi.md#get_mailing_templates_by_id) | **GET** /v1/communications/templates/{templateId} | Retrieve a communication template
*Buildium::CommunicationsApi* | [**get_phone_log_by_id**](docs/CommunicationsApi.md#get_phone_log_by_id) | **GET** /v1/communications/phonelogs/{phoneLogId} | Retrieve a phone log
*Buildium::CommunicationsApi* | [**get_phone_logs**](docs/CommunicationsApi.md#get_phone_logs) | **GET** /v1/communications/phonelogs | Retrieve all phone logs
*Buildium::CommunicationsApi* | [**update_phone_log**](docs/CommunicationsApi.md#update_phone_log) | **PUT** /v1/communications/phonelogs/{phoneLogId} | Update a phone log
*Buildium::ContactRequestsApi* | [**create_contact_request_task**](docs/ContactRequestsApi.md#create_contact_request_task) | **POST** /v1/tasks/contactrequests | Create a contact request
*Buildium::ContactRequestsApi* | [**get_contact_request_task_by_id**](docs/ContactRequestsApi.md#get_contact_request_task_by_id) | **GET** /v1/tasks/contactrequests/{contactRequestTaskId} | Retrieve a contact request
*Buildium::ContactRequestsApi* | [**get_contact_request_tasks**](docs/ContactRequestsApi.md#get_contact_request_tasks) | **GET** /v1/tasks/contactrequests | Retrieve all contact requests
*Buildium::ContactRequestsApi* | [**update_contact_request_task**](docs/ContactRequestsApi.md#update_contact_request_task) | **PUT** /v1/tasks/contactrequests/{contactRequestTaskId} | Update a contact request
*Buildium::FilesApi* | [**create_file_category**](docs/FilesApi.md#create_file_category) | **POST** /v1/files/categories | Create a category
*Buildium::FilesApi* | [**create_upload_file_request_async**](docs/FilesApi.md#create_upload_file_request_async) | **POST** /v1/files/uploadrequests | Upload a file
*Buildium::FilesApi* | [**get_file_by_id**](docs/FilesApi.md#get_file_by_id) | **GET** /v1/files/{fileId} | Retrieve a file
*Buildium::FilesApi* | [**get_file_categories**](docs/FilesApi.md#get_file_categories) | **GET** /v1/files/categories | Retrieve all categories
*Buildium::FilesApi* | [**get_file_category_by_id**](docs/FilesApi.md#get_file_category_by_id) | **GET** /v1/files/categories/{fileCategoryId} | Retrieve a category
*Buildium::FilesApi* | [**get_file_download_url_async**](docs/FilesApi.md#get_file_download_url_async) | **POST** /v1/files/{fileId}/downloadrequest | Download a file
*Buildium::FilesApi* | [**get_file_share_settings_by_id**](docs/FilesApi.md#get_file_share_settings_by_id) | **GET** /v1/files/{fileId}/sharing | Retrieve file share settings
*Buildium::FilesApi* | [**get_files**](docs/FilesApi.md#get_files) | **GET** /v1/files | Retrieve all files
*Buildium::FilesApi* | [**update_file**](docs/FilesApi.md#update_file) | **PUT** /v1/files/{fileId} | Update a file
*Buildium::FilesApi* | [**update_file_category**](docs/FilesApi.md#update_file_category) | **PUT** /v1/files/categories/{fileCategoryId} | Update a category
*Buildium::FilesApi* | [**update_file_sharing_setting**](docs/FilesApi.md#update_file_sharing_setting) | **PUT** /v1/files/{fileId}/sharing | Update file share settings
*Buildium::GeneralLedgerApi* | [**create_general_journal_entry**](docs/GeneralLedgerApi.md#create_general_journal_entry) | **POST** /v1/generalledger/journalentries | Create a general journal entry
*Buildium::GeneralLedgerApi* | [**create_general_ledger_account**](docs/GeneralLedgerApi.md#create_general_ledger_account) | **POST** /v1/glaccounts | Create a general ledger account
*Buildium::GeneralLedgerApi* | [**get_all_gl_accounts**](docs/GeneralLedgerApi.md#get_all_gl_accounts) | **GET** /v1/glaccounts | Retrieve all general ledger accounts
*Buildium::GeneralLedgerApi* | [**get_all_transactions**](docs/GeneralLedgerApi.md#get_all_transactions) | **GET** /v1/generalledger/transactions | Retrieve all general ledger transactions
*Buildium::GeneralLedgerApi* | [**get_general_ledger_entries**](docs/GeneralLedgerApi.md#get_general_ledger_entries) | **GET** /v1/generalledger | Retrieve all general ledger entries
*Buildium::GeneralLedgerApi* | [**get_gl_account_balances**](docs/GeneralLedgerApi.md#get_gl_account_balances) | **GET** /v1/glaccounts/balances | Retrieve all general ledger account balances
*Buildium::GeneralLedgerApi* | [**get_gl_account_by_id**](docs/GeneralLedgerApi.md#get_gl_account_by_id) | **GET** /v1/glaccounts/{glAccountId} | Retrieve a general ledger account
*Buildium::GeneralLedgerApi* | [**get_transaction_by_id**](docs/GeneralLedgerApi.md#get_transaction_by_id) | **GET** /v1/generalledger/transactions/{transactionId} | Retrieve a general ledger transaction
*Buildium::GeneralLedgerApi* | [**update_general_journal_entry**](docs/GeneralLedgerApi.md#update_general_journal_entry) | **PUT** /v1/generalledger/journalentries/{journalEntryId} | Update a general journal entry
*Buildium::GeneralLedgerApi* | [**update_gl_account**](docs/GeneralLedgerApi.md#update_gl_account) | **PUT** /v1/glaccounts/{glAccountId} | Update a general ledger account
*Buildium::LeaseTransactionsApi* | [**create_lease_auto_allocated_payment**](docs/LeaseTransactionsApi.md#create_lease_auto_allocated_payment) | **POST** /v1/leases/{leaseId}/autoallocatedpayments | Create a payment (auto allocated)
*Buildium::LeaseTransactionsApi* | [**create_lease_charge_recurring_transaction**](docs/LeaseTransactionsApi.md#create_lease_charge_recurring_transaction) | **POST** /v1/leases/{leaseId}/recurringcharges | Create a recurring charge
*Buildium::LeaseTransactionsApi* | [**create_lease_credit**](docs/LeaseTransactionsApi.md#create_lease_credit) | **POST** /v1/leases/{leaseId}/credits | Create a credit
*Buildium::LeaseTransactionsApi* | [**create_lease_credit_recurring_transaction**](docs/LeaseTransactionsApi.md#create_lease_credit_recurring_transaction) | **POST** /v1/leases/{leaseId}/recurringcredits | Create a recurring credit
*Buildium::LeaseTransactionsApi* | [**create_lease_ledger_charge**](docs/LeaseTransactionsApi.md#create_lease_ledger_charge) | **POST** /v1/leases/{leaseId}/charges | Create a charge
*Buildium::LeaseTransactionsApi* | [**create_lease_ledger_deposit_withholding**](docs/LeaseTransactionsApi.md#create_lease_ledger_deposit_withholding) | **POST** /v1/leases/{leaseId}/applieddeposits | Create a deposit withholding
*Buildium::LeaseTransactionsApi* | [**create_lease_ledger_refund**](docs/LeaseTransactionsApi.md#create_lease_ledger_refund) | **POST** /v1/leases/{leaseId}/refunds | Create a refund
*Buildium::LeaseTransactionsApi* | [**create_lease_recurring_payment**](docs/LeaseTransactionsApi.md#create_lease_recurring_payment) | **POST** /v1/leases/{leaseId}/recurringpayments | Create a recurring payment
*Buildium::LeaseTransactionsApi* | [**create_lease_reverse_payment**](docs/LeaseTransactionsApi.md#create_lease_reverse_payment) | **POST** /v1/leases/{leaseId}/reversepayments | Create a payment reversal
*Buildium::LeaseTransactionsApi* | [**create_payment**](docs/LeaseTransactionsApi.md#create_payment) | **POST** /v1/leases/{leaseId}/payments | Create a payment
*Buildium::LeaseTransactionsApi* | [**get_all_charges**](docs/LeaseTransactionsApi.md#get_all_charges) | **GET** /v1/leases/{leaseId}/charges | Retrieve all charges
*Buildium::LeaseTransactionsApi* | [**get_charge_by_id**](docs/LeaseTransactionsApi.md#get_charge_by_id) | **GET** /v1/leases/{leaseId}/charges/{chargeId} | Retrieve a charge
*Buildium::LeaseTransactionsApi* | [**get_lease_charge_recurring_transaction_by_id**](docs/LeaseTransactionsApi.md#get_lease_charge_recurring_transaction_by_id) | **GET** /v1/leases/{leaseId}/recurringcharges/{transactionId} | Retrieve a recurring charge
*Buildium::LeaseTransactionsApi* | [**get_lease_ledger_refund_by_id**](docs/LeaseTransactionsApi.md#get_lease_ledger_refund_by_id) | **GET** /v1/leases/{leaseId}/refunds/{refundId} | Retrieve a refund
*Buildium::LeaseTransactionsApi* | [**get_lease_ledger_transaction_by_id**](docs/LeaseTransactionsApi.md#get_lease_ledger_transaction_by_id) | **GET** /v1/leases/{leaseId}/transactions/{transactionId} | Retrieve a lease transaction
*Buildium::LeaseTransactionsApi* | [**get_lease_ledgers**](docs/LeaseTransactionsApi.md#get_lease_ledgers) | **GET** /v1/leases/{leaseId}/transactions | Retrieve all lease transactions
*Buildium::LeaseTransactionsApi* | [**get_lease_outstanding_balances**](docs/LeaseTransactionsApi.md#get_lease_outstanding_balances) | **GET** /v1/leases/outstandingbalances | Retrieve all outstanding balances
*Buildium::LeaseTransactionsApi* | [**get_lease_recurring_credit_by_id**](docs/LeaseTransactionsApi.md#get_lease_recurring_credit_by_id) | **GET** /v1/leases/{leaseId}/recurringcredits/{transactionId} | Retrieve a recurring credit
*Buildium::LeaseTransactionsApi* | [**get_lease_recurring_transactions**](docs/LeaseTransactionsApi.md#get_lease_recurring_transactions) | **GET** /v1/leases/{leaseId}/recurringtransactions | Retrieve all recurring transactions
*Buildium::LeaseTransactionsApi* | [**get_recurring_lease_payments_by_id**](docs/LeaseTransactionsApi.md#get_recurring_lease_payments_by_id) | **GET** /v1/leases/{leaseId}/recurringpayments/{paymentId} | Retrieve a recurring payment
*Buildium::LeaseTransactionsApi* | [**update_deposit_withholding**](docs/LeaseTransactionsApi.md#update_deposit_withholding) | **PUT** /v1/leases/{leaseId}/applieddeposits/{depositId} | Update a deposit withholding
*Buildium::LeaseTransactionsApi* | [**update_lease_charge**](docs/LeaseTransactionsApi.md#update_lease_charge) | **PUT** /v1/leases/{leaseId}/charges/{chargeId} | Update a charge
*Buildium::LeaseTransactionsApi* | [**update_lease_ledger_payment**](docs/LeaseTransactionsApi.md#update_lease_ledger_payment) | **PUT** /v1/leases/{leaseId}/payments/{paymentId} | Update a payment
*Buildium::LeasesApi* | [**create_lease**](docs/LeasesApi.md#create_lease) | **POST** /v1/leases | Create a lease
*Buildium::LeasesApi* | [**create_lease_note**](docs/LeasesApi.md#create_lease_note) | **POST** /v1/leases/{leaseId}/notes | Create a note
*Buildium::LeasesApi* | [**create_lease_renewal**](docs/LeasesApi.md#create_lease_renewal) | **POST** /v1/leases/{leaseId}/renewals | Create a lease renewal
*Buildium::LeasesApi* | [**create_move_out_data**](docs/LeasesApi.md#create_move_out_data) | **POST** /v1/leases/{leaseId}/moveouts | Create a move out
*Buildium::LeasesApi* | [**create_rent_schedule**](docs/LeasesApi.md#create_rent_schedule) | **POST** /v1/leases/{leaseId}/rent | Create a rent schedule
*Buildium::LeasesApi* | [**get_all_lease_renewals**](docs/LeasesApi.md#get_all_lease_renewals) | **GET** /v1/leases/{leaseId}/renewals | Retrieve all renewals
*Buildium::LeasesApi* | [**get_all_lease_renewals_for_all_properties**](docs/LeasesApi.md#get_all_lease_renewals_for_all_properties) | **GET** /v1/leases/renewals | Retrieve all upcoming renewals
*Buildium::LeasesApi* | [**get_lease_by_id**](docs/LeasesApi.md#get_lease_by_id) | **GET** /v1/leases/{leaseId} | Retrieve a lease
*Buildium::LeasesApi* | [**get_lease_epay_settings_by_id**](docs/LeasesApi.md#get_lease_epay_settings_by_id) | **GET** /v1/leases/{leaseId}/epaysettings | Retrieve ePay settings
*Buildium::LeasesApi* | [**get_lease_move_out_data_by_tenant_id**](docs/LeasesApi.md#get_lease_move_out_data_by_tenant_id) | **GET** /v1/leases/{leaseId}/moveouts/{tenantId} | Retrieve a move out
*Buildium::LeasesApi* | [**get_lease_move_out_information_by_id**](docs/LeasesApi.md#get_lease_move_out_information_by_id) | **GET** /v1/leases/{leaseId}/moveouts | Retrieve all move outs
*Buildium::LeasesApi* | [**get_lease_note_by_note_id**](docs/LeasesApi.md#get_lease_note_by_note_id) | **GET** /v1/leases/{leaseId}/notes/{noteId} | Retrieve a note
*Buildium::LeasesApi* | [**get_lease_notes**](docs/LeasesApi.md#get_lease_notes) | **GET** /v1/leases/{leaseId}/notes | Retrieve all notes
*Buildium::LeasesApi* | [**get_lease_partial_payment_settings**](docs/LeasesApi.md#get_lease_partial_payment_settings) | **GET** /v1/leases/{leaseId}/partialpaymentsettings | Retrieve all partial payment settings for a lease
*Buildium::LeasesApi* | [**get_lease_renewal_by_id**](docs/LeasesApi.md#get_lease_renewal_by_id) | **GET** /v1/leases/{leaseId}/renewals/{renewalId} | Retrieve a renewal
*Buildium::LeasesApi* | [**get_leases**](docs/LeasesApi.md#get_leases) | **GET** /v1/leases | Retrieve all leases
*Buildium::LeasesApi* | [**get_rent**](docs/LeasesApi.md#get_rent) | **GET** /v1/leases/{leaseId}/rent | Retrieve all rent schedules
*Buildium::LeasesApi* | [**get_rent_by_id**](docs/LeasesApi.md#get_rent_by_id) | **GET** /v1/leases/{leaseId}/rent/{rentId} | Retrieve a rent schedule
*Buildium::LeasesApi* | [**get_renters_insurance_policies**](docs/LeasesApi.md#get_renters_insurance_policies) | **GET** /v1/leases/{leaseId}/rentersinsurance | Retrieve all insurance policies
*Buildium::LeasesApi* | [**get_renters_insurance_policy_by_id**](docs/LeasesApi.md#get_renters_insurance_policy_by_id) | **GET** /v1/leases/{leaseId}/rentersinsurance/{policyId} | Retrieve an insurance policy
*Buildium::LeasesApi* | [**patch_lease_partial_payment_settings**](docs/LeasesApi.md#patch_lease_partial_payment_settings) | **PATCH** /v1/leases/{leaseId}/partialpaymentsettings | Update partial payment settings for a lease
*Buildium::LeasesApi* | [**undo_tenant_moveout**](docs/LeasesApi.md#undo_tenant_moveout) | **DELETE** /v1/leases/{leaseId}/moveouts/{tenantId} | Delete a move out
*Buildium::LeasesApi* | [**update_lease**](docs/LeasesApi.md#update_lease) | **PUT** /v1/leases/{leaseId} | Update a lease
*Buildium::LeasesApi* | [**update_lease_epay_settings**](docs/LeasesApi.md#update_lease_epay_settings) | **PUT** /v1/leases/{leaseId}/epaysettings | Update ePay settings
*Buildium::LeasesApi* | [**update_lease_note**](docs/LeasesApi.md#update_lease_note) | **PUT** /v1/leases/{leaseId}/notes/{noteId} | Update a note
*Buildium::LeasesApi* | [**update_rent_schedule**](docs/LeasesApi.md#update_rent_schedule) | **PUT** /v1/leases/{leaseId}/rent/{rentId} | Update a rent schedule
*Buildium::ListingsApi* | [**create_listing_contact**](docs/ListingsApi.md#create_listing_contact) | **POST** /v1/rentals/units/listingcontacts | Create a listing contact
*Buildium::ListingsApi* | [**delist_unit**](docs/ListingsApi.md#delist_unit) | **DELETE** /v1/rentals/units/{unitId}/listing | Delete a listing
*Buildium::ListingsApi* | [**get_all_listing_contacts**](docs/ListingsApi.md#get_all_listing_contacts) | **GET** /v1/rentals/units/listingcontacts | Retrieve all listing contacts
*Buildium::ListingsApi* | [**get_listing_contact_by_id**](docs/ListingsApi.md#get_listing_contact_by_id) | **GET** /v1/rentals/units/listingcontacts/{listingContactId} | Retrieve a listing contact
*Buildium::ListingsApi* | [**get_listing_for_unit_async**](docs/ListingsApi.md#get_listing_for_unit_async) | **GET** /v1/rentals/units/{unitId}/listing | Retrieve a listing
*Buildium::ListingsApi* | [**get_listings_async**](docs/ListingsApi.md#get_listings_async) | **GET** /v1/rentals/units/listings | Retrieve all listings
*Buildium::ListingsApi* | [**update_listing_contact**](docs/ListingsApi.md#update_listing_contact) | **PUT** /v1/rentals/units/listingcontacts/{listingContactId} | Update a listing contact
*Buildium::ListingsApi* | [**upsert_listings_async**](docs/ListingsApi.md#upsert_listings_async) | **PUT** /v1/rentals/units/{unitId}/listing | Create/Update a listing
*Buildium::OwnershipAccountTransactionsApi* | [**create_ownership_account_auto_allocated_payment**](docs/OwnershipAccountTransactionsApi.md#create_ownership_account_auto_allocated_payment) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/autoallocatedpayments | Create a payment (auto allocated)
*Buildium::OwnershipAccountTransactionsApi* | [**create_ownership_account_credit**](docs/OwnershipAccountTransactionsApi.md#create_ownership_account_credit) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/credits | Create a credit
*Buildium::OwnershipAccountTransactionsApi* | [**create_ownership_account_credit_recurring_transaction**](docs/OwnershipAccountTransactionsApi.md#create_ownership_account_credit_recurring_transaction) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcredits | Create a recurring credit
*Buildium::OwnershipAccountTransactionsApi* | [**create_ownership_account_deposit_withholding**](docs/OwnershipAccountTransactionsApi.md#create_ownership_account_deposit_withholding) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/applieddeposits | Create a deposit withholding
*Buildium::OwnershipAccountTransactionsApi* | [**create_ownership_account_ledger_charge**](docs/OwnershipAccountTransactionsApi.md#create_ownership_account_ledger_charge) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/charges | Create a charge
*Buildium::OwnershipAccountTransactionsApi* | [**create_ownership_account_ledger_payment**](docs/OwnershipAccountTransactionsApi.md#create_ownership_account_ledger_payment) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/payments | Create a payment
*Buildium::OwnershipAccountTransactionsApi* | [**create_ownership_account_recurring_payment**](docs/OwnershipAccountTransactionsApi.md#create_ownership_account_recurring_payment) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringpayments | Create a recurring payment
*Buildium::OwnershipAccountTransactionsApi* | [**create_ownership_account_refund**](docs/OwnershipAccountTransactionsApi.md#create_ownership_account_refund) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/refunds | Create a refund
*Buildium::OwnershipAccountTransactionsApi* | [**create_ownership_accounts_charge_recurring_transaction**](docs/OwnershipAccountTransactionsApi.md#create_ownership_accounts_charge_recurring_transaction) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcharges | Create a recurring charge
*Buildium::OwnershipAccountTransactionsApi* | [**get_all_ownership_account_charges**](docs/OwnershipAccountTransactionsApi.md#get_all_ownership_account_charges) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/charges | Retrieve all charges
*Buildium::OwnershipAccountTransactionsApi* | [**get_association_recurring_transaction**](docs/OwnershipAccountTransactionsApi.md#get_association_recurring_transaction) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringtransactions | Retrieve all recurring transactions
*Buildium::OwnershipAccountTransactionsApi* | [**get_ownership_account_charge_by_id**](docs/OwnershipAccountTransactionsApi.md#get_ownership_account_charge_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/charges/{chargeId} | Retrieve a charge
*Buildium::OwnershipAccountTransactionsApi* | [**get_ownership_account_ledger**](docs/OwnershipAccountTransactionsApi.md#get_ownership_account_ledger) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/transactions | Retrieve all transactions
*Buildium::OwnershipAccountTransactionsApi* | [**get_ownership_account_outstanding_balances**](docs/OwnershipAccountTransactionsApi.md#get_ownership_account_outstanding_balances) | **GET** /v1/associations/ownershipaccounts/outstandingbalances | Retrieve all outstanding balances
*Buildium::OwnershipAccountTransactionsApi* | [**get_ownership_account_recurring_credit_by_id**](docs/OwnershipAccountTransactionsApi.md#get_ownership_account_recurring_credit_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcredits/{transactionId} | Retrieve a recurring credit
*Buildium::OwnershipAccountTransactionsApi* | [**get_ownership_account_refund_by_id**](docs/OwnershipAccountTransactionsApi.md#get_ownership_account_refund_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/refunds/{refundId} | Retrieve a refund
*Buildium::OwnershipAccountTransactionsApi* | [**get_ownership_account_transaction_by_id**](docs/OwnershipAccountTransactionsApi.md#get_ownership_account_transaction_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/transactions/{transactionId} | Retrieve a transaction
*Buildium::OwnershipAccountTransactionsApi* | [**get_ownership_accounts_charge_recurring_transaction_by_id**](docs/OwnershipAccountTransactionsApi.md#get_ownership_accounts_charge_recurring_transaction_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringcharges/{transactionId} | Retrieve a recurring charge
*Buildium::OwnershipAccountTransactionsApi* | [**get_recurring_ownership_account_payments_by_id**](docs/OwnershipAccountTransactionsApi.md#get_recurring_ownership_account_payments_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/recurringpayments/{paymentId} | Retrieve a recurring payment
*Buildium::OwnershipAccountTransactionsApi* | [**update_ownership_account_charge**](docs/OwnershipAccountTransactionsApi.md#update_ownership_account_charge) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId}/charges/{chargeId} | Update a charge
*Buildium::OwnershipAccountTransactionsApi* | [**update_ownership_account_deposit_withholding**](docs/OwnershipAccountTransactionsApi.md#update_ownership_account_deposit_withholding) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId}/applieddeposits/{depositId} | Update a deposit withholding
*Buildium::OwnershipAccountTransactionsApi* | [**update_ownership_account_ledger_payment**](docs/OwnershipAccountTransactionsApi.md#update_ownership_account_ledger_payment) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId}/payments/{paymentId} | Update a payment
*Buildium::OwnershipAccountsApi* | [**create_association_ownership_account**](docs/OwnershipAccountsApi.md#create_association_ownership_account) | **POST** /v1/associations/ownershipaccounts | Create an ownership account
*Buildium::OwnershipAccountsApi* | [**create_association_ownership_account_note**](docs/OwnershipAccountsApi.md#create_association_ownership_account_note) | **POST** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes | Create a note
*Buildium::OwnershipAccountsApi* | [**get_all_ownership_accounts**](docs/OwnershipAccountsApi.md#get_all_ownership_accounts) | **GET** /v1/associations/ownershipaccounts | Retrieve all ownership accounts
*Buildium::OwnershipAccountsApi* | [**get_association_ownership_account_note_by_note_id**](docs/OwnershipAccountsApi.md#get_association_ownership_account_note_by_note_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes/{noteId} | Retrieve a note
*Buildium::OwnershipAccountsApi* | [**get_association_ownership_account_notes**](docs/OwnershipAccountsApi.md#get_association_ownership_account_notes) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes | Retrieve all notes
*Buildium::OwnershipAccountsApi* | [**get_ownership_account_by_id**](docs/OwnershipAccountsApi.md#get_ownership_account_by_id) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId} | Retrieve an ownership account
*Buildium::OwnershipAccountsApi* | [**get_ownership_account_partial_payment_settings**](docs/OwnershipAccountsApi.md#get_ownership_account_partial_payment_settings) | **GET** /v1/associations/ownershipaccounts/{ownershipAccountId}/partialpaymentsettings | Retrieve all partial payment settings for an ownership account
*Buildium::OwnershipAccountsApi* | [**patch_ownership_account_partial_payment**](docs/OwnershipAccountsApi.md#patch_ownership_account_partial_payment) | **PATCH** /v1/associations/ownershipaccounts/{ownershipAccountId}/partialpaymentsettings | Update partial payment settings for an ownership account
*Buildium::OwnershipAccountsApi* | [**update_association_ownership_account**](docs/OwnershipAccountsApi.md#update_association_ownership_account) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId} | Update an ownership account
*Buildium::OwnershipAccountsApi* | [**update_association_ownership_account_note**](docs/OwnershipAccountsApi.md#update_association_ownership_account_note) | **PUT** /v1/associations/ownershipaccounts/{ownershipAccountId}/notes/{noteId} | Update a note
*Buildium::PropertyGroupsApi* | [**create_property_group**](docs/PropertyGroupsApi.md#create_property_group) | **POST** /v1/propertygroups | Create a property group
*Buildium::PropertyGroupsApi* | [**get_property_group_by_id**](docs/PropertyGroupsApi.md#get_property_group_by_id) | **GET** /v1/propertygroups/{propertyGroupId} | Retrieve a property group
*Buildium::PropertyGroupsApi* | [**get_property_groups**](docs/PropertyGroupsApi.md#get_property_groups) | **GET** /v1/propertygroups | Retrieve all property groups
*Buildium::PropertyGroupsApi* | [**update_property_group**](docs/PropertyGroupsApi.md#update_property_group) | **PUT** /v1/propertygroups/{propertyGroupId} | Update a property group
*Buildium::RentalAppliancesApi* | [**create_rental_appliance**](docs/RentalAppliancesApi.md#create_rental_appliance) | **POST** /v1/rentals/appliances | Create an appliance
*Buildium::RentalAppliancesApi* | [**create_rental_appliance_service_history**](docs/RentalAppliancesApi.md#create_rental_appliance_service_history) | **POST** /v1/rentals/appliances/{applianceId}/servicehistory | Create a service history
*Buildium::RentalAppliancesApi* | [**delete_rental_appliances**](docs/RentalAppliancesApi.md#delete_rental_appliances) | **DELETE** /v1/rentals/appliances/{applianceId} | Delete an appliance
*Buildium::RentalAppliancesApi* | [**get_rental_appliance_by_id**](docs/RentalAppliancesApi.md#get_rental_appliance_by_id) | **GET** /v1/rentals/appliances/{applianceId} | Retrieve an appliance
*Buildium::RentalAppliancesApi* | [**get_rental_appliance_service_history**](docs/RentalAppliancesApi.md#get_rental_appliance_service_history) | **GET** /v1/rentals/appliances/{applianceId}/servicehistory | Retrieve all service history
*Buildium::RentalAppliancesApi* | [**get_rental_appliance_service_history_by_id**](docs/RentalAppliancesApi.md#get_rental_appliance_service_history_by_id) | **GET** /v1/rentals/appliances/{applianceId}/servicehistory/{serviceHistoryId} | Retrieve a service history
*Buildium::RentalAppliancesApi* | [**get_rental_appliances**](docs/RentalAppliancesApi.md#get_rental_appliances) | **GET** /v1/rentals/appliances | Retrieve all appliances
*Buildium::RentalAppliancesApi* | [**update_rental_appliance**](docs/RentalAppliancesApi.md#update_rental_appliance) | **PUT** /v1/rentals/appliances/{applianceId} | Update an appliance
*Buildium::RentalMeterReadingsApi* | [**delete_meter_reading_details_for_rental**](docs/RentalMeterReadingsApi.md#delete_meter_reading_details_for_rental) | **DELETE** /v1/rentals/{propertyId}/meterreadings/summary | Delete meter reading details for a given date
*Buildium::RentalMeterReadingsApi* | [**get_meter_reading_details_for_rental_async**](docs/RentalMeterReadingsApi.md#get_meter_reading_details_for_rental_async) | **GET** /v1/rentals/{propertyId}/meterreadings/summary | Retrieve all meter reading details
*Buildium::RentalMeterReadingsApi* | [**get_meter_readings_for_rental**](docs/RentalMeterReadingsApi.md#get_meter_readings_for_rental) | **GET** /v1/rentals/{propertyId}/meterreadings | Retrieve all meter readings
*Buildium::RentalMeterReadingsApi* | [**upsert_meter_reading_details_for_rental_async**](docs/RentalMeterReadingsApi.md#upsert_meter_reading_details_for_rental_async) | **PUT** /v1/rentals/{propertyId}/meterreadings/summary | Create/Update meter reading details
*Buildium::RentalOwnerRequestsApi* | [**create_rental_owner_request_task**](docs/RentalOwnerRequestsApi.md#create_rental_owner_request_task) | **POST** /v1/tasks/rentalownerrequests | Create a rental owner request
*Buildium::RentalOwnerRequestsApi* | [**get_all_rental_owner_request_tasks**](docs/RentalOwnerRequestsApi.md#get_all_rental_owner_request_tasks) | **GET** /v1/tasks/rentalownerrequests | Retrieve all rental owner requests
*Buildium::RentalOwnerRequestsApi* | [**get_rental_owner_request_task_by_id**](docs/RentalOwnerRequestsApi.md#get_rental_owner_request_task_by_id) | **GET** /v1/tasks/rentalownerrequests/{rentalOwnerRequestTaskId} | Retrieve a rental owner request
*Buildium::RentalOwnerRequestsApi* | [**get_rental_owner_request_task_contribution_data**](docs/RentalOwnerRequestsApi.md#get_rental_owner_request_task_contribution_data) | **GET** /v1/tasks/rentalownerrequests/{rentalOwnerRequestTaskId}/contributiondata | Retrieve rental owner contribution request
*Buildium::RentalOwnerRequestsApi* | [**update_rental_owner_request_task**](docs/RentalOwnerRequestsApi.md#update_rental_owner_request_task) | **PUT** /v1/tasks/rentalownerrequests/{rentalOwnerRequestTaskId} | Update a rental owner request
*Buildium::RentalOwnerRequestsApi* | [**update_rental_owner_request_task_contribution_data**](docs/RentalOwnerRequestsApi.md#update_rental_owner_request_task_contribution_data) | **PUT** /v1/tasks/rentalownerrequests/{rentalOwnerRequestTaskId}/contributiondata | Update a rental owner contribution request
*Buildium::RentalOwnersApi* | [**create_rental_owner**](docs/RentalOwnersApi.md#create_rental_owner) | **POST** /v1/rentals/owners | Create an owner
*Buildium::RentalOwnersApi* | [**create_rental_owner_note**](docs/RentalOwnersApi.md#create_rental_owner_note) | **POST** /v1/rentals/owners/{rentalOwnerId}/notes | Create a note
*Buildium::RentalOwnersApi* | [**get_rental_owner_by_id**](docs/RentalOwnersApi.md#get_rental_owner_by_id) | **GET** /v1/rentals/owners/{rentalOwnerId} | Retrieve an owner
*Buildium::RentalOwnersApi* | [**get_rental_owner_note_by_id**](docs/RentalOwnersApi.md#get_rental_owner_note_by_id) | **GET** /v1/rentals/owners/{rentalOwnerId}/notes/{noteId} | Retrieve a note
*Buildium::RentalOwnersApi* | [**get_rental_owner_notes**](docs/RentalOwnersApi.md#get_rental_owner_notes) | **GET** /v1/rentals/owners/{rentalOwnerId}/notes | Retrieves all notes
*Buildium::RentalOwnersApi* | [**get_rental_owners**](docs/RentalOwnersApi.md#get_rental_owners) | **GET** /v1/rentals/owners | Retrieve all owners
*Buildium::RentalOwnersApi* | [**update_rental_owner**](docs/RentalOwnersApi.md#update_rental_owner) | **PUT** /v1/rentals/owners/{rentalOwnerId} | Update an owner
*Buildium::RentalOwnersApi* | [**update_rental_owner_note**](docs/RentalOwnersApi.md#update_rental_owner_note) | **PUT** /v1/rentals/owners/{rentalOwnerId}/notes/{noteId} | Update a note
*Buildium::RentalPropertiesApi* | [**create_rental_image_upload_file_request_async**](docs/RentalPropertiesApi.md#create_rental_image_upload_file_request_async) | **POST** /v1/rentals/{propertyId}/images/uploadrequests | Upload a rental image
*Buildium::RentalPropertiesApi* | [**create_rental_property**](docs/RentalPropertiesApi.md#create_rental_property) | **POST** /v1/rentals | Create a property
*Buildium::RentalPropertiesApi* | [**create_rental_property_note**](docs/RentalPropertiesApi.md#create_rental_property_note) | **POST** /v1/rentals/{propertyId}/notes | Create a note
*Buildium::RentalPropertiesApi* | [**create_rental_unit**](docs/RentalPropertiesApi.md#create_rental_unit) | **POST** /v1/rentals/units | Create a unit
*Buildium::RentalPropertiesApi* | [**create_video_link_request**](docs/RentalPropertiesApi.md#create_video_link_request) | **POST** /v1/rentals/{propertyId}/images/videolinkrequests | Create an image for a rental using a video link
*Buildium::RentalPropertiesApi* | [**delete_rental_image**](docs/RentalPropertiesApi.md#delete_rental_image) | **DELETE** /v1/rentals/{propertyId}/images/{imageId} | Delete a property image
*Buildium::RentalPropertiesApi* | [**get_all_rental_units**](docs/RentalPropertiesApi.md#get_all_rental_units) | **GET** /v1/rentals/units | Retrieve all units
*Buildium::RentalPropertiesApi* | [**get_all_rentals**](docs/RentalPropertiesApi.md#get_all_rentals) | **GET** /v1/rentals | Retrieve all properties
*Buildium::RentalPropertiesApi* | [**get_e_pay_settings_for_rental_property**](docs/RentalPropertiesApi.md#get_e_pay_settings_for_rental_property) | **GET** /v1/rentals/{propertyId}/epaysettings | Retrieve ePay settings
*Buildium::RentalPropertiesApi* | [**get_features_by_rental_property_id**](docs/RentalPropertiesApi.md#get_features_by_rental_property_id) | **GET** /v1/rentals/{propertyId}/amenities | Retrieve all amenities
*Buildium::RentalPropertiesApi* | [**get_rental_by_id**](docs/RentalPropertiesApi.md#get_rental_by_id) | **GET** /v1/rentals/{propertyId} | Retrieve a property
*Buildium::RentalPropertiesApi* | [**get_rental_image_by_id**](docs/RentalPropertiesApi.md#get_rental_image_by_id) | **GET** /v1/rentals/{propertyId}/images/{imageId} | Retrieve a property image
*Buildium::RentalPropertiesApi* | [**get_rental_image_download_url_by_id**](docs/RentalPropertiesApi.md#get_rental_image_download_url_by_id) | **POST** /v1/rentals/{propertyId}/images/{imageId}/downloadrequests | Download a property image
*Buildium::RentalPropertiesApi* | [**get_rental_images**](docs/RentalPropertiesApi.md#get_rental_images) | **GET** /v1/rentals/{propertyId}/images | Retrieve all property images
*Buildium::RentalPropertiesApi* | [**get_rental_note_by_note_id**](docs/RentalPropertiesApi.md#get_rental_note_by_note_id) | **GET** /v1/rentals/{propertyId}/notes/{noteId} | Retrieve a note
*Buildium::RentalPropertiesApi* | [**get_rental_notes**](docs/RentalPropertiesApi.md#get_rental_notes) | **GET** /v1/rentals/{propertyId}/notes | Retrieve all notes
*Buildium::RentalPropertiesApi* | [**get_rental_preferred_vendors**](docs/RentalPropertiesApi.md#get_rental_preferred_vendors) | **GET** /v1/rentals/{propertyId}/vendors | Retrieve all preferred vendors
*Buildium::RentalPropertiesApi* | [**get_rental_unit_by_id**](docs/RentalPropertiesApi.md#get_rental_unit_by_id) | **GET** /v1/rentals/units/{unitId} | Retrieve a unit
*Buildium::RentalPropertiesApi* | [**inactivate_rental_property**](docs/RentalPropertiesApi.md#inactivate_rental_property) | **POST** /v1/rentals/{propertyId}/inactivationrequest | Inactivate a property
*Buildium::RentalPropertiesApi* | [**reactivate_rental_property**](docs/RentalPropertiesApi.md#reactivate_rental_property) | **POST** /v1/rentals/{propertyId}/reactivationrequest | Reactivate a property
*Buildium::RentalPropertiesApi* | [**reorder_rental_images**](docs/RentalPropertiesApi.md#reorder_rental_images) | **PUT** /v1/rentals/{propertyId}/images/order | Update property image order
*Buildium::RentalPropertiesApi* | [**update_e_pay_settings_for_rental**](docs/RentalPropertiesApi.md#update_e_pay_settings_for_rental) | **PUT** /v1/rentals/{propertyId}/epaysettings | Update ePay settings
*Buildium::RentalPropertiesApi* | [**update_rental_features**](docs/RentalPropertiesApi.md#update_rental_features) | **PUT** /v1/rentals/{propertyId}/amenities | Update amenities
*Buildium::RentalPropertiesApi* | [**update_rental_image**](docs/RentalPropertiesApi.md#update_rental_image) | **PUT** /v1/rentals/{propertyId}/images/{imageId} | Update a property image
*Buildium::RentalPropertiesApi* | [**update_rental_preferred_vendors**](docs/RentalPropertiesApi.md#update_rental_preferred_vendors) | **PUT** /v1/rentals/{propertyId}/vendors | Update preferred vendors
*Buildium::RentalPropertiesApi* | [**update_rental_property**](docs/RentalPropertiesApi.md#update_rental_property) | **PUT** /v1/rentals/{propertyId} | Update a property
*Buildium::RentalPropertiesApi* | [**update_rental_property_note**](docs/RentalPropertiesApi.md#update_rental_property_note) | **PUT** /v1/rentals/{propertyId}/notes/{noteId} | Update a note
*Buildium::RentalPropertiesApi* | [**update_rental_unit**](docs/RentalPropertiesApi.md#update_rental_unit) | **PUT** /v1/rentals/units/{unitId} | Update a unit
*Buildium::RentalTenantsApi* | [**create_rental_tenant**](docs/RentalTenantsApi.md#create_rental_tenant) | **POST** /v1/leases/tenants | Create a tenant
*Buildium::RentalTenantsApi* | [**create_tenant_note**](docs/RentalTenantsApi.md#create_tenant_note) | **POST** /v1/leases/tenants/{tenantId}/notes | Create a note
*Buildium::RentalTenantsApi* | [**get_all_tenant_notes**](docs/RentalTenantsApi.md#get_all_tenant_notes) | **GET** /v1/leases/tenants/{tenantId}/notes | Retrieve all notes
*Buildium::RentalTenantsApi* | [**get_all_tenants**](docs/RentalTenantsApi.md#get_all_tenants) | **GET** /v1/leases/tenants | Retrieve all tenants
*Buildium::RentalTenantsApi* | [**get_tenant_by_id**](docs/RentalTenantsApi.md#get_tenant_by_id) | **GET** /v1/leases/tenants/{tenantId} | Retrieve a tenant
*Buildium::RentalTenantsApi* | [**get_tenant_note_by_id**](docs/RentalTenantsApi.md#get_tenant_note_by_id) | **GET** /v1/leases/tenants/{tenantId}/notes/{noteId} | Retrieve a note
*Buildium::RentalTenantsApi* | [**update_lease_tenant_note**](docs/RentalTenantsApi.md#update_lease_tenant_note) | **PUT** /v1/leases/tenants/{tenantId}/notes/{noteId} | Update a note
*Buildium::RentalTenantsApi* | [**update_rental_tenant**](docs/RentalTenantsApi.md#update_rental_tenant) | **PUT** /v1/leases/tenants/{tenantId} | Update a tenant
*Buildium::RentalUnitsApi* | [**create_rental_unit_image_upload_file_request_async**](docs/RentalUnitsApi.md#create_rental_unit_image_upload_file_request_async) | **POST** /v1/rentals/units/{unitId}/images/uploadrequests | Upload a unit image
*Buildium::RentalUnitsApi* | [**create_rental_unit_note**](docs/RentalUnitsApi.md#create_rental_unit_note) | **POST** /v1/rentals/units/{unitId}/notes | Create a note
*Buildium::RentalUnitsApi* | [**create_unit_video_link_request**](docs/RentalUnitsApi.md#create_unit_video_link_request) | **POST** /v1/rentals/units/{unitId}/images/videolinkrequests | Create an image for a unit using a video link
*Buildium::RentalUnitsApi* | [**delete_rental_unit_image**](docs/RentalUnitsApi.md#delete_rental_unit_image) | **DELETE** /v1/rentals/units/{unitId}/images/{imageId} | Delete a unit image
*Buildium::RentalUnitsApi* | [**get_features_for_rental_unit_by_id**](docs/RentalUnitsApi.md#get_features_for_rental_unit_by_id) | **GET** /v1/rentals/units/{unitId}/amenities | Retrieve all amenities
*Buildium::RentalUnitsApi* | [**get_rental_unit_image_by_id**](docs/RentalUnitsApi.md#get_rental_unit_image_by_id) | **GET** /v1/rentals/units/{unitId}/images/{imageId} | Retrieve a unit image
*Buildium::RentalUnitsApi* | [**get_rental_unit_image_download_url_by_id**](docs/RentalUnitsApi.md#get_rental_unit_image_download_url_by_id) | **POST** /v1/rentals/units/{unitId}/images/{imageId}/downloadrequests | Download a unit image
*Buildium::RentalUnitsApi* | [**get_rental_unit_images**](docs/RentalUnitsApi.md#get_rental_unit_images) | **GET** /v1/rentals/units/{unitId}/images | Retrieve all unit images
*Buildium::RentalUnitsApi* | [**get_rental_unit_note_by_note_id**](docs/RentalUnitsApi.md#get_rental_unit_note_by_note_id) | **GET** /v1/rentals/units/{unitId}/notes/{noteId} | Retrieve a note
*Buildium::RentalUnitsApi* | [**get_rental_unit_notes**](docs/RentalUnitsApi.md#get_rental_unit_notes) | **GET** /v1/rentals/units/{unitId}/notes | Retrieve all notes
*Buildium::RentalUnitsApi* | [**reorder_rental_unit_images**](docs/RentalUnitsApi.md#reorder_rental_unit_images) | **PUT** /v1/rentals/units/{unitId}/images/order | Update unit image order
*Buildium::RentalUnitsApi* | [**update_note_for_rental_unit**](docs/RentalUnitsApi.md#update_note_for_rental_unit) | **PUT** /v1/rentals/units/{unitId}/notes/{noteId} | Update a note
*Buildium::RentalUnitsApi* | [**update_rental_unit_features**](docs/RentalUnitsApi.md#update_rental_unit_features) | **PUT** /v1/rentals/units/{unitId}/amenities | Update amenities
*Buildium::RentalUnitsApi* | [**update_rental_unit_image**](docs/RentalUnitsApi.md#update_rental_unit_image) | **PUT** /v1/rentals/units/{unitId}/images/{imageId} | Update a unit image
*Buildium::ResidentCenterApi* | [**get_resident_center_users**](docs/ResidentCenterApi.md#get_resident_center_users) | **GET** /v1/residentCenterUsers | Retrieve all resident center users
*Buildium::ResidentCenterApi* | [**get_retail_cash_user**](docs/ResidentCenterApi.md#get_retail_cash_user) | **GET** /v1/retailcashusers/{userId}/{unitAgreementId} | Retrieve a retail cash user
*Buildium::ResidentCenterApi* | [**get_retail_cash_users**](docs/ResidentCenterApi.md#get_retail_cash_users) | **GET** /v1/retailcashusers | Retrieve all retail cash users
*Buildium::ResidentCenterApi* | [**update_retail_cash_user**](docs/ResidentCenterApi.md#update_retail_cash_user) | **PUT** /v1/retailcashusers/{userId}/{unitAgreementId} | Update a retail cash user
*Buildium::ResidentRequestsApi* | [**create_resource**](docs/ResidentRequestsApi.md#create_resource) | **POST** /v1/tasks/residentrequests | Create a resident request
*Buildium::ResidentRequestsApi* | [**get_resident_request_task**](docs/ResidentRequestsApi.md#get_resident_request_task) | **GET** /v1/tasks/residentrequests/{residentRequestTaskId} | Retrieve a resident request
*Buildium::ResidentRequestsApi* | [**get_resident_request_tasks**](docs/ResidentRequestsApi.md#get_resident_request_tasks) | **GET** /v1/tasks/residentrequests | Retrieve all resident requests
*Buildium::ResidentRequestsApi* | [**update_resource**](docs/ResidentRequestsApi.md#update_resource) | **PUT** /v1/tasks/residentrequests/{residentRequestTaskId} | Update a resident request
*Buildium::TasksApi* | [**create_task_category**](docs/TasksApi.md#create_task_category) | **POST** /v1/tasks/categories | Create a task category
*Buildium::TasksApi* | [**delete_task_history_file**](docs/TasksApi.md#delete_task_history_file) | **DELETE** /v1/tasks/{taskId}/history/{taskHistoryId}/files/{fileId} | Delete task history file
*Buildium::TasksApi* | [**get_all_task_categories**](docs/TasksApi.md#get_all_task_categories) | **GET** /v1/tasks/categories | Retrieve all task categories
*Buildium::TasksApi* | [**get_all_task_history_files**](docs/TasksApi.md#get_all_task_history_files) | **GET** /v1/tasks/{taskId}/history/{taskHistoryId}/files | Retrieve all task history files
*Buildium::TasksApi* | [**get_all_tasks**](docs/TasksApi.md#get_all_tasks) | **GET** /v1/tasks | Retrieve all tasks
*Buildium::TasksApi* | [**get_file_download_request**](docs/TasksApi.md#get_file_download_request) | **POST** /v1/tasks/{taskId}/history/{taskHistoryId}/files/{fileId}/downloadrequest | Download a task history file
*Buildium::TasksApi* | [**get_task_by_id**](docs/TasksApi.md#get_task_by_id) | **GET** /v1/tasks/{taskId} | Retrieve a task
*Buildium::TasksApi* | [**get_task_category_by_id**](docs/TasksApi.md#get_task_category_by_id) | **GET** /v1/tasks/categories/{taskCategoryId} | Retrieve a task category
*Buildium::TasksApi* | [**get_task_histories**](docs/TasksApi.md#get_task_histories) | **GET** /v1/tasks/{taskId}/history | Retrieve all task history
*Buildium::TasksApi* | [**get_task_history_by_id**](docs/TasksApi.md#get_task_history_by_id) | **GET** /v1/tasks/{taskId}/history/{taskHistoryId} | Retrieve a task history
*Buildium::TasksApi* | [**get_task_history_file_by_id**](docs/TasksApi.md#get_task_history_file_by_id) | **GET** /v1/tasks/{taskId}/history/{taskHistoryId}/files/{fileId} | Retrieve a task history file
*Buildium::TasksApi* | [**update_task_category**](docs/TasksApi.md#update_task_category) | **PUT** /v1/tasks/categories/{taskCategoryId} | Update a task category
*Buildium::TasksApi* | [**update_task_history**](docs/TasksApi.md#update_task_history) | **PUT** /v1/tasks/{taskId}/history/{taskHistoryId} | Update a task history
*Buildium::TasksApi* | [**upload_task_history_file_request_async**](docs/TasksApi.md#upload_task_history_file_request_async) | **POST** /v1/tasks/{taskId}/history/{taskHistoryId}/files/uploadrequests | Upload a task history file
*Buildium::ToDoRequestsApi* | [**create_to_do_task**](docs/ToDoRequestsApi.md#create_to_do_task) | **POST** /v1/tasks/todorequests | Create a to do request
*Buildium::ToDoRequestsApi* | [**get_to_do_task_by_id**](docs/ToDoRequestsApi.md#get_to_do_task_by_id) | **GET** /v1/tasks/todorequests/{toDoTaskId} | Retrieve a to do request
*Buildium::ToDoRequestsApi* | [**get_to_do_tasks**](docs/ToDoRequestsApi.md#get_to_do_tasks) | **GET** /v1/tasks/todorequests | Retrieve all to do requests
*Buildium::ToDoRequestsApi* | [**update_to_do_task**](docs/ToDoRequestsApi.md#update_to_do_task) | **PUT** /v1/tasks/todorequests/{toDoTaskId} | Update a to do request
*Buildium::VendorsApi* | [**create_vendor**](docs/VendorsApi.md#create_vendor) | **POST** /v1/vendors | Create a vendor
*Buildium::VendorsApi* | [**create_vendor_category**](docs/VendorsApi.md#create_vendor_category) | **POST** /v1/vendors/categories | Create a vendor category
*Buildium::VendorsApi* | [**create_vendor_credit**](docs/VendorsApi.md#create_vendor_credit) | **POST** /v1/vendors/{vendorId}/credits | Create a credit
*Buildium::VendorsApi* | [**create_vendor_note**](docs/VendorsApi.md#create_vendor_note) | **POST** /v1/vendors/{vendorId}/notes | Create a note
*Buildium::VendorsApi* | [**create_vendor_refund**](docs/VendorsApi.md#create_vendor_refund) | **POST** /v1/vendors/{vendorId}/refunds | Create a refund
*Buildium::VendorsApi* | [**get_all_vendor_categories**](docs/VendorsApi.md#get_all_vendor_categories) | **GET** /v1/vendors/categories | Retrieve all vendor categories
*Buildium::VendorsApi* | [**get_all_vendor_transactions**](docs/VendorsApi.md#get_all_vendor_transactions) | **GET** /v1/vendors/{vendorId}/transactions | Retrieve all transactions
*Buildium::VendorsApi* | [**get_all_vendors**](docs/VendorsApi.md#get_all_vendors) | **GET** /v1/vendors | Retrieve all vendors
*Buildium::VendorsApi* | [**get_vendor_by_id**](docs/VendorsApi.md#get_vendor_by_id) | **GET** /v1/vendors/{vendorId} | Retrieve a vendor
*Buildium::VendorsApi* | [**get_vendor_category_by_id**](docs/VendorsApi.md#get_vendor_category_by_id) | **GET** /v1/vendors/categories/{vendorCategoryId} | Retrieve a vendor category
*Buildium::VendorsApi* | [**get_vendor_credit**](docs/VendorsApi.md#get_vendor_credit) | **GET** /v1/vendors/{vendorId}/credits/{vendorCreditId} | Retrieve a credit
*Buildium::VendorsApi* | [**get_vendor_note_by_note_id**](docs/VendorsApi.md#get_vendor_note_by_note_id) | **GET** /v1/vendors/{vendorId}/notes/{noteId} | Retrieve a note
*Buildium::VendorsApi* | [**get_vendor_notes**](docs/VendorsApi.md#get_vendor_notes) | **GET** /v1/vendors/{vendorId}/notes | Retrieve all notes
*Buildium::VendorsApi* | [**get_vendor_refund**](docs/VendorsApi.md#get_vendor_refund) | **GET** /v1/vendors/{vendorId}/refunds/{vendorRefundId} | Retrieve a refund
*Buildium::VendorsApi* | [**update_vendor**](docs/VendorsApi.md#update_vendor) | **PUT** /v1/vendors/{vendorId} | Update a vendor
*Buildium::VendorsApi* | [**update_vendor_category**](docs/VendorsApi.md#update_vendor_category) | **PUT** /v1/vendors/categories/{vendorCategoryId} | Update a vendor category
*Buildium::VendorsApi* | [**update_vendor_note**](docs/VendorsApi.md#update_vendor_note) | **PUT** /v1/vendors/{vendorId}/notes/{noteId} | Update a note
*Buildium::WorkOrdersApi* | [**create_work_order**](docs/WorkOrdersApi.md#create_work_order) | **POST** /v1/workorders | Create a work order
*Buildium::WorkOrdersApi* | [**get_all_work_orders**](docs/WorkOrdersApi.md#get_all_work_orders) | **GET** /v1/workorders | Retrieve all work orders
*Buildium::WorkOrdersApi* | [**get_work_order_by_id**](docs/WorkOrdersApi.md#get_work_order_by_id) | **GET** /v1/workorders/{workOrderId} | Retrieve a work order
*Buildium::WorkOrdersApi* | [**update_work_order**](docs/WorkOrdersApi.md#update_work_order) | **PUT** /v1/workorders/{workOrderId} | Update a work order


## Documentation for Models

 - [Buildium::AccountInfoMessage](docs/AccountInfoMessage.md)
 - [Buildium::AccountInfoMessageAccountingSettings](docs/AccountInfoMessageAccountingSettings.md)
 - [Buildium::AccountInfoMessageContact](docs/AccountInfoMessageContact.md)
 - [Buildium::AccountingEntityMessage](docs/AccountingEntityMessage.md)
 - [Buildium::AccountingEntityMessageUnit](docs/AccountingEntityMessageUnit.md)
 - [Buildium::AccountingEntityPatchMessage](docs/AccountingEntityPatchMessage.md)
 - [Buildium::AccountingEntitySaveMessage](docs/AccountingEntitySaveMessage.md)
 - [Buildium::AccountingLockPeriodMessage](docs/AccountingLockPeriodMessage.md)
 - [Buildium::AccountingLockPeriodMessageGlobal](docs/AccountingLockPeriodMessageGlobal.md)
 - [Buildium::AccountingSettingsMessage](docs/AccountingSettingsMessage.md)
 - [Buildium::AddressMessage](docs/AddressMessage.md)
 - [Buildium::AllTasksMessage](docs/AllTasksMessage.md)
 - [Buildium::AllTasksMessageCategory](docs/AllTasksMessageCategory.md)
 - [Buildium::AllTasksMessageProperty](docs/AllTasksMessageProperty.md)
 - [Buildium::AllTasksMessageRequestedByUserEntity](docs/AllTasksMessageRequestedByUserEntity.md)
 - [Buildium::AllTasksMessageUnitAgreement](docs/AllTasksMessageUnitAgreement.md)
 - [Buildium::AnnouncementMessage](docs/AnnouncementMessage.md)
 - [Buildium::AnnouncementMessageSender](docs/AnnouncementMessageSender.md)
 - [Buildium::AnnouncementPostMessage](docs/AnnouncementPostMessage.md)
 - [Buildium::AnnouncementSenderMessage](docs/AnnouncementSenderMessage.md)
 - [Buildium::ApiError](docs/ApiError.md)
 - [Buildium::ApiErrorResponse](docs/ApiErrorResponse.md)
 - [Buildium::ApplianceMessage](docs/ApplianceMessage.md)
 - [Buildium::ApplicantApplicationMessage](docs/ApplicantApplicationMessage.md)
 - [Buildium::ApplicantGroupMessage](docs/ApplicantGroupMessage.md)
 - [Buildium::ApplicantGroupPostMessage](docs/ApplicantGroupPostMessage.md)
 - [Buildium::ApplicantGroupPutMessage](docs/ApplicantGroupPutMessage.md)
 - [Buildium::ApplicantMessage](docs/ApplicantMessage.md)
 - [Buildium::ApplicantPostMessage](docs/ApplicantPostMessage.md)
 - [Buildium::ApplicantPostMessagePhoneNumbers](docs/ApplicantPostMessagePhoneNumbers.md)
 - [Buildium::ApplicantPutMessage](docs/ApplicantPutMessage.md)
 - [Buildium::ApplicantPutMessagePhoneNumbers](docs/ApplicantPutMessagePhoneNumbers.md)
 - [Buildium::ApplicationMessage](docs/ApplicationMessage.md)
 - [Buildium::ApplicationPutMessage](docs/ApplicationPutMessage.md)
 - [Buildium::ApplicationResponseFieldMessage](docs/ApplicationResponseFieldMessage.md)
 - [Buildium::ApplicationResponseMessage](docs/ApplicationResponseMessage.md)
 - [Buildium::ApplicationSectionResponseMessage](docs/ApplicationSectionResponseMessage.md)
 - [Buildium::AppliedVendorCreditMessage](docs/AppliedVendorCreditMessage.md)
 - [Buildium::ArchitecturalRequestsPostMessage](docs/ArchitecturalRequestsPostMessage.md)
 - [Buildium::AssociationApplianceMessage](docs/AssociationApplianceMessage.md)
 - [Buildium::AssociationAppliancePostMessage](docs/AssociationAppliancePostMessage.md)
 - [Buildium::AssociationAppliancePutMessage](docs/AssociationAppliancePutMessage.md)
 - [Buildium::AssociationApplianceServiceHistoryMessage](docs/AssociationApplianceServiceHistoryMessage.md)
 - [Buildium::AssociationApplianceServiceHistoryPostMessage](docs/AssociationApplianceServiceHistoryPostMessage.md)
 - [Buildium::AssociationArchitecturalRequestFileMessage](docs/AssociationArchitecturalRequestFileMessage.md)
 - [Buildium::AssociationArchitecturalRequestMessage](docs/AssociationArchitecturalRequestMessage.md)
 - [Buildium::AssociationArchitecturalRequestMessageCreatedByUser](docs/AssociationArchitecturalRequestMessageCreatedByUser.md)
 - [Buildium::AssociationArchitecturalRequestMessageLastUpdatedByUser](docs/AssociationArchitecturalRequestMessageLastUpdatedByUser.md)
 - [Buildium::AssociationBoardMemberMessage](docs/AssociationBoardMemberMessage.md)
 - [Buildium::AssociationBoardMemberPostMessage](docs/AssociationBoardMemberPostMessage.md)
 - [Buildium::AssociationBoardMemberPutMessage](docs/AssociationBoardMemberPutMessage.md)
 - [Buildium::AssociationMessage](docs/AssociationMessage.md)
 - [Buildium::AssociationMessageAddress](docs/AssociationMessageAddress.md)
 - [Buildium::AssociationMessageAssociationManager](docs/AssociationMessageAssociationManager.md)
 - [Buildium::AssociationMessageTaxInformation](docs/AssociationMessageTaxInformation.md)
 - [Buildium::AssociationOwnerBoardTermMessage](docs/AssociationOwnerBoardTermMessage.md)
 - [Buildium::AssociationOwnerBoardTermPostMessage](docs/AssociationOwnerBoardTermPostMessage.md)
 - [Buildium::AssociationOwnerMessage](docs/AssociationOwnerMessage.md)
 - [Buildium::AssociationOwnerMessageAlternateAddress](docs/AssociationOwnerMessageAlternateAddress.md)
 - [Buildium::AssociationOwnerMessageEmergencyContact](docs/AssociationOwnerMessageEmergencyContact.md)
 - [Buildium::AssociationOwnerMessagePrimaryAddress](docs/AssociationOwnerMessagePrimaryAddress.md)
 - [Buildium::AssociationOwnerPostMessage](docs/AssociationOwnerPostMessage.md)
 - [Buildium::AssociationOwnerPostMessageAlternateAddress](docs/AssociationOwnerPostMessageAlternateAddress.md)
 - [Buildium::AssociationOwnerPostMessageBoardMemberTerm](docs/AssociationOwnerPostMessageBoardMemberTerm.md)
 - [Buildium::AssociationOwnerPostMessageEmergencyContact](docs/AssociationOwnerPostMessageEmergencyContact.md)
 - [Buildium::AssociationOwnerPostMessagePhoneNumbers](docs/AssociationOwnerPostMessagePhoneNumbers.md)
 - [Buildium::AssociationOwnerPostMessagePrimaryAddress](docs/AssociationOwnerPostMessagePrimaryAddress.md)
 - [Buildium::AssociationOwnerPutMessage](docs/AssociationOwnerPutMessage.md)
 - [Buildium::AssociationOwnerPutMessagePhoneNumbers](docs/AssociationOwnerPutMessagePhoneNumbers.md)
 - [Buildium::AssociationOwnerToExistingOwnershipAccountPostMessage](docs/AssociationOwnerToExistingOwnershipAccountPostMessage.md)
 - [Buildium::AssociationOwnerToExistingOwnershipAccountPostMessageEmergencyContact](docs/AssociationOwnerToExistingOwnershipAccountPostMessageEmergencyContact.md)
 - [Buildium::AssociationOwnerToExistingOwnershipAccountPostMessagePhoneNumbers](docs/AssociationOwnerToExistingOwnershipAccountPostMessagePhoneNumbers.md)
 - [Buildium::AssociationOwnerUnitOccupancyPutMessage](docs/AssociationOwnerUnitOccupancyPutMessage.md)
 - [Buildium::AssociationOwnerUnitOccupancyStatusMessage](docs/AssociationOwnerUnitOccupancyStatusMessage.md)
 - [Buildium::AssociationOwnershipAccountMessage](docs/AssociationOwnershipAccountMessage.md)
 - [Buildium::AssociationOwnershipAccountPostMessage](docs/AssociationOwnershipAccountPostMessage.md)
 - [Buildium::AssociationOwnershipAccountPutMessage](docs/AssociationOwnershipAccountPutMessage.md)
 - [Buildium::AssociationPostMessage](docs/AssociationPostMessage.md)
 - [Buildium::AssociationPostMessageAddress](docs/AssociationPostMessageAddress.md)
 - [Buildium::AssociationPostMessageTaxInformation](docs/AssociationPostMessageTaxInformation.md)
 - [Buildium::AssociationPreferredVendorMessage](docs/AssociationPreferredVendorMessage.md)
 - [Buildium::AssociationPreferredVendorPutMessage](docs/AssociationPreferredVendorPutMessage.md)
 - [Buildium::AssociationPutMessage](docs/AssociationPutMessage.md)
 - [Buildium::AssociationTaxInformationMessage](docs/AssociationTaxInformationMessage.md)
 - [Buildium::AssociationTaxInformationMessageAddress](docs/AssociationTaxInformationMessageAddress.md)
 - [Buildium::AssociationTenantMessage](docs/AssociationTenantMessage.md)
 - [Buildium::AssociationTenantPostMessage](docs/AssociationTenantPostMessage.md)
 - [Buildium::AssociationTenantPostMessageAlternateAddress](docs/AssociationTenantPostMessageAlternateAddress.md)
 - [Buildium::AssociationTenantPostMessageEmergencyContact](docs/AssociationTenantPostMessageEmergencyContact.md)
 - [Buildium::AssociationTenantPostMessagePhoneNumbers](docs/AssociationTenantPostMessagePhoneNumbers.md)
 - [Buildium::AssociationTenantPostMessagePrimaryAddress](docs/AssociationTenantPostMessagePrimaryAddress.md)
 - [Buildium::AssociationTenantPutMessage](docs/AssociationTenantPutMessage.md)
 - [Buildium::AssociationTenantPutMessagePhoneNumbers](docs/AssociationTenantPutMessagePhoneNumbers.md)
 - [Buildium::AssociationUnitMessage](docs/AssociationUnitMessage.md)
 - [Buildium::AssociationUnitMessageAddress](docs/AssociationUnitMessageAddress.md)
 - [Buildium::AssociationUnitPutMessage](docs/AssociationUnitPutMessage.md)
 - [Buildium::AssociationUnitPutMessageAddress](docs/AssociationUnitPutMessageAddress.md)
 - [Buildium::AssociationUnitsPostMessage](docs/AssociationUnitsPostMessage.md)
 - [Buildium::BankAccountCheckAccountingEntitySaveMessage](docs/BankAccountCheckAccountingEntitySaveMessage.md)
 - [Buildium::BankAccountCheckFileMessage](docs/BankAccountCheckFileMessage.md)
 - [Buildium::BankAccountCheckLineMessage](docs/BankAccountCheckLineMessage.md)
 - [Buildium::BankAccountCheckLineMessageAccountingEntity](docs/BankAccountCheckLineMessageAccountingEntity.md)
 - [Buildium::BankAccountCheckLineSaveMessage](docs/BankAccountCheckLineSaveMessage.md)
 - [Buildium::BankAccountCheckLineSaveMessageAccountingEntity](docs/BankAccountCheckLineSaveMessageAccountingEntity.md)
 - [Buildium::BankAccountCheckMessage](docs/BankAccountCheckMessage.md)
 - [Buildium::BankAccountCheckMessagePayee](docs/BankAccountCheckMessagePayee.md)
 - [Buildium::BankAccountCheckPayeeMessage](docs/BankAccountCheckPayeeMessage.md)
 - [Buildium::BankAccountCheckPayeeSaveMessage](docs/BankAccountCheckPayeeSaveMessage.md)
 - [Buildium::BankAccountCheckPostMessage](docs/BankAccountCheckPostMessage.md)
 - [Buildium::BankAccountCheckPostMessagePayee](docs/BankAccountCheckPostMessagePayee.md)
 - [Buildium::BankAccountCheckPutMessage](docs/BankAccountCheckPutMessage.md)
 - [Buildium::BankAccountDepositLineMessage](docs/BankAccountDepositLineMessage.md)
 - [Buildium::BankAccountDepositLineMessageAccountingEntity](docs/BankAccountDepositLineMessageAccountingEntity.md)
 - [Buildium::BankAccountDepositLineSaveMessage](docs/BankAccountDepositLineSaveMessage.md)
 - [Buildium::BankAccountDepositLineSaveMessageAccountingEntity](docs/BankAccountDepositLineSaveMessageAccountingEntity.md)
 - [Buildium::BankAccountDepositMessage](docs/BankAccountDepositMessage.md)
 - [Buildium::BankAccountDepositPostMessage](docs/BankAccountDepositPostMessage.md)
 - [Buildium::BankAccountDepositPutMessage](docs/BankAccountDepositPutMessage.md)
 - [Buildium::BankAccountMessage](docs/BankAccountMessage.md)
 - [Buildium::BankAccountMessageCheckPrintingInfo](docs/BankAccountMessageCheckPrintingInfo.md)
 - [Buildium::BankAccountMessageElectronicPayments](docs/BankAccountMessageElectronicPayments.md)
 - [Buildium::BankAccountMessageGLAccount](docs/BankAccountMessageGLAccount.md)
 - [Buildium::BankAccountPostMessage](docs/BankAccountPostMessage.md)
 - [Buildium::BankAccountPostMessageCheckPrintingInfo](docs/BankAccountPostMessageCheckPrintingInfo.md)
 - [Buildium::BankAccountPutMessage](docs/BankAccountPutMessage.md)
 - [Buildium::BankAccountPutMessageCheckPrintingInfo](docs/BankAccountPutMessageCheckPrintingInfo.md)
 - [Buildium::BankAccountQuickDepositMessage](docs/BankAccountQuickDepositMessage.md)
 - [Buildium::BankAccountQuickDepositMessageAccountingEntity](docs/BankAccountQuickDepositMessageAccountingEntity.md)
 - [Buildium::BankAccountQuickDepositSaveMessage](docs/BankAccountQuickDepositSaveMessage.md)
 - [Buildium::BankAccountQuickDepositSaveMessageAccountingEntity](docs/BankAccountQuickDepositSaveMessageAccountingEntity.md)
 - [Buildium::BankAccountReconciliationBalanceMessage](docs/BankAccountReconciliationBalanceMessage.md)
 - [Buildium::BankAccountReconciliationBalanceMessageClearedBalance](docs/BankAccountReconciliationBalanceMessageClearedBalance.md)
 - [Buildium::BankAccountReconciliationBalanceMessageStatementBalance](docs/BankAccountReconciliationBalanceMessageStatementBalance.md)
 - [Buildium::BankAccountReconciliationBalancePutMessage](docs/BankAccountReconciliationBalancePutMessage.md)
 - [Buildium::BankAccountReconciliationMessage](docs/BankAccountReconciliationMessage.md)
 - [Buildium::BankAccountReconciliationTransactionMessage](docs/BankAccountReconciliationTransactionMessage.md)
 - [Buildium::BankAccountTransactionMessage](docs/BankAccountTransactionMessage.md)
 - [Buildium::BankAccountTransferAccountingEntitySaveMessage](docs/BankAccountTransferAccountingEntitySaveMessage.md)
 - [Buildium::BankAccountTransferMessage](docs/BankAccountTransferMessage.md)
 - [Buildium::BankAccountTransferMessageAccountingEntity](docs/BankAccountTransferMessageAccountingEntity.md)
 - [Buildium::BankAccountTransferSaveMessage](docs/BankAccountTransferSaveMessage.md)
 - [Buildium::BankAccountTransferSaveMessageAccountingEntity](docs/BankAccountTransferSaveMessageAccountingEntity.md)
 - [Buildium::BankAccountWithdrawalMessage](docs/BankAccountWithdrawalMessage.md)
 - [Buildium::BankAccountWithdrawalMessageAccountingEntity](docs/BankAccountWithdrawalMessageAccountingEntity.md)
 - [Buildium::BankAccountWithdrawalSaveMessage](docs/BankAccountWithdrawalSaveMessage.md)
 - [Buildium::BankAccountWithdrawalSaveMessageAccountingEntity](docs/BankAccountWithdrawalSaveMessageAccountingEntity.md)
 - [Buildium::BankLockboxDataAssociationMessage](docs/BankLockboxDataAssociationMessage.md)
 - [Buildium::BankLockboxDataAssociationOwnerMessage](docs/BankLockboxDataAssociationOwnerMessage.md)
 - [Buildium::BankLockboxDataMessage](docs/BankLockboxDataMessage.md)
 - [Buildium::BankLockboxDataMessageAssociation](docs/BankLockboxDataMessageAssociation.md)
 - [Buildium::BankLockboxDataOwnershipAccountMessage](docs/BankLockboxDataOwnershipAccountMessage.md)
 - [Buildium::BankLockboxDataOwnershipAccountMessageUnitAddress](docs/BankLockboxDataOwnershipAccountMessageUnitAddress.md)
 - [Buildium::BankPendingReconciliationPostMessage](docs/BankPendingReconciliationPostMessage.md)
 - [Buildium::BankReconciliationClearTransactionsPostMessage](docs/BankReconciliationClearTransactionsPostMessage.md)
 - [Buildium::BankReconciliationClearedBalanceMessage](docs/BankReconciliationClearedBalanceMessage.md)
 - [Buildium::BankReconciliationPutMessage](docs/BankReconciliationPutMessage.md)
 - [Buildium::BankReconciliationStatementBalanceMessage](docs/BankReconciliationStatementBalanceMessage.md)
 - [Buildium::BankReconciliationUnclearTransactionsPostMessage](docs/BankReconciliationUnclearTransactionsPostMessage.md)
 - [Buildium::BillFileMessage](docs/BillFileMessage.md)
 - [Buildium::BillLineItemPatchMessage](docs/BillLineItemPatchMessage.md)
 - [Buildium::BillLineItemPatchMessageAccountingEntity](docs/BillLineItemPatchMessageAccountingEntity.md)
 - [Buildium::BillLineItemPatchMessageMarkup](docs/BillLineItemPatchMessageMarkup.md)
 - [Buildium::BillLineMessage](docs/BillLineMessage.md)
 - [Buildium::BillLineMessageAccountingEntity](docs/BillLineMessageAccountingEntity.md)
 - [Buildium::BillLineMessageGLAccount](docs/BillLineMessageGLAccount.md)
 - [Buildium::BillLineMessageMarkup](docs/BillLineMessageMarkup.md)
 - [Buildium::BillLinePostMessage](docs/BillLinePostMessage.md)
 - [Buildium::BillLinePostMessageAccountingEntity](docs/BillLinePostMessageAccountingEntity.md)
 - [Buildium::BillLinePostMessageMarkup](docs/BillLinePostMessageMarkup.md)
 - [Buildium::BillLinePutMessage](docs/BillLinePutMessage.md)
 - [Buildium::BillMarkupMessage](docs/BillMarkupMessage.md)
 - [Buildium::BillMarkupPatchMessage](docs/BillMarkupPatchMessage.md)
 - [Buildium::BillMarkupSaveMessage](docs/BillMarkupSaveMessage.md)
 - [Buildium::BillMessage](docs/BillMessage.md)
 - [Buildium::BillPatchMessage](docs/BillPatchMessage.md)
 - [Buildium::BillPaymentAccountingEntityMessage](docs/BillPaymentAccountingEntityMessage.md)
 - [Buildium::BillPaymentLineMessage](docs/BillPaymentLineMessage.md)
 - [Buildium::BillPaymentLineMessageAccountingEntity](docs/BillPaymentLineMessageAccountingEntity.md)
 - [Buildium::BillPaymentLinePostMessage](docs/BillPaymentLinePostMessage.md)
 - [Buildium::BillPaymentMessage](docs/BillPaymentMessage.md)
 - [Buildium::BillPaymentPostMessage](docs/BillPaymentPostMessage.md)
 - [Buildium::BillPostMessage](docs/BillPostMessage.md)
 - [Buildium::BillPutMessage](docs/BillPutMessage.md)
 - [Buildium::BudgetDetailsMessage](docs/BudgetDetailsMessage.md)
 - [Buildium::BudgetDetailsMessageMonthlyAmounts](docs/BudgetDetailsMessageMonthlyAmounts.md)
 - [Buildium::BudgetDetailsSaveMessage](docs/BudgetDetailsSaveMessage.md)
 - [Buildium::BudgetDetailsSaveMessageMonthlyAmounts](docs/BudgetDetailsSaveMessageMonthlyAmounts.md)
 - [Buildium::BudgetMessage](docs/BudgetMessage.md)
 - [Buildium::BudgetMessageProperty](docs/BudgetMessageProperty.md)
 - [Buildium::BudgetMonthlyAmountsMessage](docs/BudgetMonthlyAmountsMessage.md)
 - [Buildium::BudgetMonthlyAmountsSaveMessage](docs/BudgetMonthlyAmountsSaveMessage.md)
 - [Buildium::BudgetPostMessage](docs/BudgetPostMessage.md)
 - [Buildium::BudgetPutMessage](docs/BudgetPutMessage.md)
 - [Buildium::CCPaymentsMessage](docs/CCPaymentsMessage.md)
 - [Buildium::CCPaymentsPutMessage](docs/CCPaymentsPutMessage.md)
 - [Buildium::ChargeRecurringTransactionPostMessage](docs/ChargeRecurringTransactionPostMessage.md)
 - [Buildium::ChargeRecurringTransactionPutMessage](docs/ChargeRecurringTransactionPutMessage.md)
 - [Buildium::CheckPrintingInfoMessage](docs/CheckPrintingInfoMessage.md)
 - [Buildium::CheckPrintingInfoPostMessage](docs/CheckPrintingInfoPostMessage.md)
 - [Buildium::CheckPrintingInfoPutMessage](docs/CheckPrintingInfoPutMessage.md)
 - [Buildium::ClearTransactionsRequest](docs/ClearTransactionsRequest.md)
 - [Buildium::ClientLeadCreditRequestMessage](docs/ClientLeadCreditRequestMessage.md)
 - [Buildium::ClientLeadMessage](docs/ClientLeadMessage.md)
 - [Buildium::ClientLeadMessageAddress](docs/ClientLeadMessageAddress.md)
 - [Buildium::ClientLeadMessageCreditRequest](docs/ClientLeadMessageCreditRequest.md)
 - [Buildium::ContactDetailMessage](docs/ContactDetailMessage.md)
 - [Buildium::ContactDetailMessagePhoneNumbers](docs/ContactDetailMessagePhoneNumbers.md)
 - [Buildium::ContactDetailPhoneMessage](docs/ContactDetailPhoneMessage.md)
 - [Buildium::ContactDetailSaveMessage](docs/ContactDetailSaveMessage.md)
 - [Buildium::ContactDetailSaveMessagePhoneNumbers](docs/ContactDetailSaveMessagePhoneNumbers.md)
 - [Buildium::ContactDetailSavePhoneMessage](docs/ContactDetailSavePhoneMessage.md)
 - [Buildium::ContactInfoMessage](docs/ContactInfoMessage.md)
 - [Buildium::ContactInfoMessageAddress](docs/ContactInfoMessageAddress.md)
 - [Buildium::ContactRequestTaskMessage](docs/ContactRequestTaskMessage.md)
 - [Buildium::ContactRequestTaskMessageCategory](docs/ContactRequestTaskMessageCategory.md)
 - [Buildium::ContactRequestTaskMessageContactDetail](docs/ContactRequestTaskMessageContactDetail.md)
 - [Buildium::ContactRequestTaskMessageProperty](docs/ContactRequestTaskMessageProperty.md)
 - [Buildium::ContactRequestTaskPostMessage](docs/ContactRequestTaskPostMessage.md)
 - [Buildium::ContactRequestTaskPostMessageContactDetail](docs/ContactRequestTaskPostMessageContactDetail.md)
 - [Buildium::ContactRequestTaskPutMessage](docs/ContactRequestTaskPutMessage.md)
 - [Buildium::ContactRequestTaskPutMessageContactDetail](docs/ContactRequestTaskPutMessageContactDetail.md)
 - [Buildium::CosignerMessage](docs/CosignerMessage.md)
 - [Buildium::CosignerMessageAddress](docs/CosignerMessageAddress.md)
 - [Buildium::CosignerMessageAlternateAddress](docs/CosignerMessageAlternateAddress.md)
 - [Buildium::CreateAnnouncementRequest](docs/CreateAnnouncementRequest.md)
 - [Buildium::CreateApplicantGroupRequest](docs/CreateApplicantGroupRequest.md)
 - [Buildium::CreateApplicantRequest](docs/CreateApplicantRequest.md)
 - [Buildium::CreateArchitecturalRequestAsyncRequest](docs/CreateArchitecturalRequestAsyncRequest.md)
 - [Buildium::CreateAssociationApplianceRequest](docs/CreateAssociationApplianceRequest.md)
 - [Buildium::CreateAssociationApplianceServiceHistoryRequest](docs/CreateAssociationApplianceServiceHistoryRequest.md)
 - [Buildium::CreateAssociationOwnerRequest](docs/CreateAssociationOwnerRequest.md)
 - [Buildium::CreateAssociationOwnershipAccountRequest](docs/CreateAssociationOwnershipAccountRequest.md)
 - [Buildium::CreateAssociationRequest](docs/CreateAssociationRequest.md)
 - [Buildium::CreateAssociationTenantRequest](docs/CreateAssociationTenantRequest.md)
 - [Buildium::CreateAssociationUnitRequest](docs/CreateAssociationUnitRequest.md)
 - [Buildium::CreateBankAccountCheckRequest](docs/CreateBankAccountCheckRequest.md)
 - [Buildium::CreateBankAccountDepositRequest](docs/CreateBankAccountDepositRequest.md)
 - [Buildium::CreateBankAccountRequest](docs/CreateBankAccountRequest.md)
 - [Buildium::CreateBankAccountTransferRequest](docs/CreateBankAccountTransferRequest.md)
 - [Buildium::CreateBillPaymentRequest](docs/CreateBillPaymentRequest.md)
 - [Buildium::CreateBillRequest](docs/CreateBillRequest.md)
 - [Buildium::CreateBoardMemberRequest](docs/CreateBoardMemberRequest.md)
 - [Buildium::CreateBudgetAsyncRequest](docs/CreateBudgetAsyncRequest.md)
 - [Buildium::CreateContactRequestTaskRequest](docs/CreateContactRequestTaskRequest.md)
 - [Buildium::CreateEmailRequest](docs/CreateEmailRequest.md)
 - [Buildium::CreateFileCategoryRequest](docs/CreateFileCategoryRequest.md)
 - [Buildium::CreateGeneralJournalEntryRequest](docs/CreateGeneralJournalEntryRequest.md)
 - [Buildium::CreateGeneralLedgerAccountRequest](docs/CreateGeneralLedgerAccountRequest.md)
 - [Buildium::CreateLeaseAutoAllocatedPaymentRequest](docs/CreateLeaseAutoAllocatedPaymentRequest.md)
 - [Buildium::CreateLeaseCreditRequest](docs/CreateLeaseCreditRequest.md)
 - [Buildium::CreateLeaseLedgerChargeRequest](docs/CreateLeaseLedgerChargeRequest.md)
 - [Buildium::CreateLeaseLedgerDepositWithholdingRequest](docs/CreateLeaseLedgerDepositWithholdingRequest.md)
 - [Buildium::CreateLeaseLedgerRefundRequest](docs/CreateLeaseLedgerRefundRequest.md)
 - [Buildium::CreateLeaseNoteRequest](docs/CreateLeaseNoteRequest.md)
 - [Buildium::CreateLeaseRenewalRequest](docs/CreateLeaseRenewalRequest.md)
 - [Buildium::CreateLeaseRequest](docs/CreateLeaseRequest.md)
 - [Buildium::CreateLeaseReversePaymentRequest](docs/CreateLeaseReversePaymentRequest.md)
 - [Buildium::CreateListingContactRequest](docs/CreateListingContactRequest.md)
 - [Buildium::CreateMoveOutDataRequest](docs/CreateMoveOutDataRequest.md)
 - [Buildium::CreateMultipleBillPaymentsRequest](docs/CreateMultipleBillPaymentsRequest.md)
 - [Buildium::CreateOwnershipAccountAutoAllocatedPaymentRequest](docs/CreateOwnershipAccountAutoAllocatedPaymentRequest.md)
 - [Buildium::CreateOwnershipAccountCreditRecurringTransactionRequest](docs/CreateOwnershipAccountCreditRecurringTransactionRequest.md)
 - [Buildium::CreateOwnershipAccountCreditRequest](docs/CreateOwnershipAccountCreditRequest.md)
 - [Buildium::CreateOwnershipAccountDepositWithholdingRequest](docs/CreateOwnershipAccountDepositWithholdingRequest.md)
 - [Buildium::CreateOwnershipAccountLedgerChargeRequest](docs/CreateOwnershipAccountLedgerChargeRequest.md)
 - [Buildium::CreateOwnershipAccountLedgerPaymentRequest](docs/CreateOwnershipAccountLedgerPaymentRequest.md)
 - [Buildium::CreateOwnershipAccountRecurringPaymentRequest](docs/CreateOwnershipAccountRecurringPaymentRequest.md)
 - [Buildium::CreateOwnershipAccountRefundRequest](docs/CreateOwnershipAccountRefundRequest.md)
 - [Buildium::CreateOwnershipAccountsChargeRecurringTransactionRequest](docs/CreateOwnershipAccountsChargeRecurringTransactionRequest.md)
 - [Buildium::CreatePaymentRequest](docs/CreatePaymentRequest.md)
 - [Buildium::CreatePendingReconciliationsRequest](docs/CreatePendingReconciliationsRequest.md)
 - [Buildium::CreatePhoneLogRequest](docs/CreatePhoneLogRequest.md)
 - [Buildium::CreatePropertyGroupRequest](docs/CreatePropertyGroupRequest.md)
 - [Buildium::CreateQuickDepositRequest](docs/CreateQuickDepositRequest.md)
 - [Buildium::CreateRentScheduleRequest](docs/CreateRentScheduleRequest.md)
 - [Buildium::CreateRentalApplianceRequest](docs/CreateRentalApplianceRequest.md)
 - [Buildium::CreateRentalApplianceServiceHistoryRequest](docs/CreateRentalApplianceServiceHistoryRequest.md)
 - [Buildium::CreateRentalImageUploadFileRequestAsyncRequest](docs/CreateRentalImageUploadFileRequestAsyncRequest.md)
 - [Buildium::CreateRentalOwnerRequest](docs/CreateRentalOwnerRequest.md)
 - [Buildium::CreateRentalOwnerRequestTaskRequest](docs/CreateRentalOwnerRequestTaskRequest.md)
 - [Buildium::CreateRentalPropertyRequest](docs/CreateRentalPropertyRequest.md)
 - [Buildium::CreateRentalTenantRequest](docs/CreateRentalTenantRequest.md)
 - [Buildium::CreateRentalUnitRequest](docs/CreateRentalUnitRequest.md)
 - [Buildium::CreateResourceRequest](docs/CreateResourceRequest.md)
 - [Buildium::CreateTaskCategoryRequest](docs/CreateTaskCategoryRequest.md)
 - [Buildium::CreateToDoTaskRequest](docs/CreateToDoTaskRequest.md)
 - [Buildium::CreateUploadFileRequestAsyncRequest](docs/CreateUploadFileRequestAsyncRequest.md)
 - [Buildium::CreateUploadFileRequestRequest](docs/CreateUploadFileRequestRequest.md)
 - [Buildium::CreateVendorCategoryRequest](docs/CreateVendorCategoryRequest.md)
 - [Buildium::CreateVendorCreditRequest](docs/CreateVendorCreditRequest.md)
 - [Buildium::CreateVendorRefundRequest](docs/CreateVendorRefundRequest.md)
 - [Buildium::CreateVendorRequest](docs/CreateVendorRequest.md)
 - [Buildium::CreateVideoLinkRequestRequest](docs/CreateVideoLinkRequestRequest.md)
 - [Buildium::CreateWithdrawalForBankAccountRequest](docs/CreateWithdrawalForBankAccountRequest.md)
 - [Buildium::CreateWorkOrderRequest](docs/CreateWorkOrderRequest.md)
 - [Buildium::CreatedByUserMessage](docs/CreatedByUserMessage.md)
 - [Buildium::CreditRecurringTransactionPostMessage](docs/CreditRecurringTransactionPostMessage.md)
 - [Buildium::DepositDetailMessage](docs/DepositDetailMessage.md)
 - [Buildium::EFTPaymentsMessage](docs/EFTPaymentsMessage.md)
 - [Buildium::EFTPaymentsPutMessage](docs/EFTPaymentsPutMessage.md)
 - [Buildium::EPaySettingsMessage](docs/EPaySettingsMessage.md)
 - [Buildium::EPaySettingsMessageCreditCardPayments](docs/EPaySettingsMessageCreditCardPayments.md)
 - [Buildium::EPaySettingsMessageEFTPayments](docs/EPaySettingsMessageEFTPayments.md)
 - [Buildium::EPaySettingsMessageOfflinePayments](docs/EPaySettingsMessageOfflinePayments.md)
 - [Buildium::EPaySettingsPutMessage](docs/EPaySettingsPutMessage.md)
 - [Buildium::EPaySettingsPutMessageCreditCardPayments](docs/EPaySettingsPutMessageCreditCardPayments.md)
 - [Buildium::EPaySettingsPutMessageEFTPayments](docs/EPaySettingsPutMessageEFTPayments.md)
 - [Buildium::EPaySettingsPutMessageOfflinePayments](docs/EPaySettingsPutMessageOfflinePayments.md)
 - [Buildium::ElectronicPaymentsMessage](docs/ElectronicPaymentsMessage.md)
 - [Buildium::EmailMessage](docs/EmailMessage.md)
 - [Buildium::EmailMessageSender](docs/EmailMessageSender.md)
 - [Buildium::EmailPostMessage](docs/EmailPostMessage.md)
 - [Buildium::EmailRecipientMessage](docs/EmailRecipientMessage.md)
 - [Buildium::EmailSenderMessage](docs/EmailSenderMessage.md)
 - [Buildium::EmergencyContactMessage](docs/EmergencyContactMessage.md)
 - [Buildium::FileCategoryMessage](docs/FileCategoryMessage.md)
 - [Buildium::FileCategoryPostMessage](docs/FileCategoryPostMessage.md)
 - [Buildium::FileCategoryPutMessage](docs/FileCategoryPutMessage.md)
 - [Buildium::FileDownloadMessage](docs/FileDownloadMessage.md)
 - [Buildium::FileEntityMessage](docs/FileEntityMessage.md)
 - [Buildium::FileMessage](docs/FileMessage.md)
 - [Buildium::FileMessageFileEntity](docs/FileMessageFileEntity.md)
 - [Buildium::FileNamePostMessage](docs/FileNamePostMessage.md)
 - [Buildium::FilePutMessage](docs/FilePutMessage.md)
 - [Buildium::FileSharingAccountMessage](docs/FileSharingAccountMessage.md)
 - [Buildium::FileSharingAccountPutMessage](docs/FileSharingAccountPutMessage.md)
 - [Buildium::FileSharingAssociationMessage](docs/FileSharingAssociationMessage.md)
 - [Buildium::FileSharingAssociationOwnerMessage](docs/FileSharingAssociationOwnerMessage.md)
 - [Buildium::FileSharingAssociationOwnerPutMessage](docs/FileSharingAssociationOwnerPutMessage.md)
 - [Buildium::FileSharingAssociationPutMessage](docs/FileSharingAssociationPutMessage.md)
 - [Buildium::FileSharingAssociationUnitMessage](docs/FileSharingAssociationUnitMessage.md)
 - [Buildium::FileSharingAssociationUnitPutMessage](docs/FileSharingAssociationUnitPutMessage.md)
 - [Buildium::FileSharingCommitteeMessage](docs/FileSharingCommitteeMessage.md)
 - [Buildium::FileSharingCommitteePutMessage](docs/FileSharingCommitteePutMessage.md)
 - [Buildium::FileSharingLeaseMessage](docs/FileSharingLeaseMessage.md)
 - [Buildium::FileSharingLeasePutMessage](docs/FileSharingLeasePutMessage.md)
 - [Buildium::FileSharingMessage](docs/FileSharingMessage.md)
 - [Buildium::FileSharingMessageAccount](docs/FileSharingMessageAccount.md)
 - [Buildium::FileSharingMessageAssociation](docs/FileSharingMessageAssociation.md)
 - [Buildium::FileSharingMessageAssociationOwner](docs/FileSharingMessageAssociationOwner.md)
 - [Buildium::FileSharingMessageAssociationUnit](docs/FileSharingMessageAssociationUnit.md)
 - [Buildium::FileSharingMessageCommittee](docs/FileSharingMessageCommittee.md)
 - [Buildium::FileSharingMessageLease](docs/FileSharingMessageLease.md)
 - [Buildium::FileSharingMessageOwnershipAccount](docs/FileSharingMessageOwnershipAccount.md)
 - [Buildium::FileSharingMessageRental](docs/FileSharingMessageRental.md)
 - [Buildium::FileSharingMessageRentalOwner](docs/FileSharingMessageRentalOwner.md)
 - [Buildium::FileSharingMessageRentalUnit](docs/FileSharingMessageRentalUnit.md)
 - [Buildium::FileSharingMessageTenant](docs/FileSharingMessageTenant.md)
 - [Buildium::FileSharingMessageVendor](docs/FileSharingMessageVendor.md)
 - [Buildium::FileSharingOwnershipAccountMessage](docs/FileSharingOwnershipAccountMessage.md)
 - [Buildium::FileSharingOwnershipAccountPutMessage](docs/FileSharingOwnershipAccountPutMessage.md)
 - [Buildium::FileSharingPutMessage](docs/FileSharingPutMessage.md)
 - [Buildium::FileSharingPutMessageAccount](docs/FileSharingPutMessageAccount.md)
 - [Buildium::FileSharingPutMessageAssociation](docs/FileSharingPutMessageAssociation.md)
 - [Buildium::FileSharingPutMessageAssociationOwner](docs/FileSharingPutMessageAssociationOwner.md)
 - [Buildium::FileSharingPutMessageAssociationUnit](docs/FileSharingPutMessageAssociationUnit.md)
 - [Buildium::FileSharingPutMessageCommittee](docs/FileSharingPutMessageCommittee.md)
 - [Buildium::FileSharingPutMessageLease](docs/FileSharingPutMessageLease.md)
 - [Buildium::FileSharingPutMessageOwnershipAccount](docs/FileSharingPutMessageOwnershipAccount.md)
 - [Buildium::FileSharingPutMessageRental](docs/FileSharingPutMessageRental.md)
 - [Buildium::FileSharingPutMessageRentalOwner](docs/FileSharingPutMessageRentalOwner.md)
 - [Buildium::FileSharingPutMessageRentalUnit](docs/FileSharingPutMessageRentalUnit.md)
 - [Buildium::FileSharingPutMessageTenant](docs/FileSharingPutMessageTenant.md)
 - [Buildium::FileSharingPutMessageVendor](docs/FileSharingPutMessageVendor.md)
 - [Buildium::FileSharingRentalMessage](docs/FileSharingRentalMessage.md)
 - [Buildium::FileSharingRentalOwnerMessage](docs/FileSharingRentalOwnerMessage.md)
 - [Buildium::FileSharingRentalOwnerPutMessage](docs/FileSharingRentalOwnerPutMessage.md)
 - [Buildium::FileSharingRentalPutMessage](docs/FileSharingRentalPutMessage.md)
 - [Buildium::FileSharingRentalUnitMesage](docs/FileSharingRentalUnitMesage.md)
 - [Buildium::FileSharingRentalUnitPutMesage](docs/FileSharingRentalUnitPutMesage.md)
 - [Buildium::FileSharingTenantMessage](docs/FileSharingTenantMessage.md)
 - [Buildium::FileSharingTenantPutMessage](docs/FileSharingTenantPutMessage.md)
 - [Buildium::FileSharingVendorMessage](docs/FileSharingVendorMessage.md)
 - [Buildium::FileSharingVendorPutMessage](docs/FileSharingVendorPutMessage.md)
 - [Buildium::FileUploadPostMessage](docs/FileUploadPostMessage.md)
 - [Buildium::FileUploadTicketMessage](docs/FileUploadTicketMessage.md)
 - [Buildium::GLAccountBalanceItemMessage](docs/GLAccountBalanceItemMessage.md)
 - [Buildium::GLAccountBalanceItemMessageAccountingEntity](docs/GLAccountBalanceItemMessageAccountingEntity.md)
 - [Buildium::GLAccountBalanceMessage](docs/GLAccountBalanceMessage.md)
 - [Buildium::GLAccountBalanceMessageGLAccount](docs/GLAccountBalanceMessageGLAccount.md)
 - [Buildium::GLAccountMessage](docs/GLAccountMessage.md)
 - [Buildium::GLAccountPostMessage](docs/GLAccountPostMessage.md)
 - [Buildium::GLAccountPutMessage](docs/GLAccountPutMessage.md)
 - [Buildium::GLTransactionMessageV1](docs/GLTransactionMessageV1.md)
 - [Buildium::GeneralJournalEntryLineSaveMessage](docs/GeneralJournalEntryLineSaveMessage.md)
 - [Buildium::GeneralJournalEntryPostMessage](docs/GeneralJournalEntryPostMessage.md)
 - [Buildium::GeneralJournalEntryPostMessageAccountingEntity](docs/GeneralJournalEntryPostMessageAccountingEntity.md)
 - [Buildium::GeneralJournalEntryPutMessage](docs/GeneralJournalEntryPutMessage.md)
 - [Buildium::GeneralLedgerEntryMessage](docs/GeneralLedgerEntryMessage.md)
 - [Buildium::GeneralLedgerEntryMessageAccountingEntity](docs/GeneralLedgerEntryMessageAccountingEntity.md)
 - [Buildium::GeneralLedgerJournalLineMessage](docs/GeneralLedgerJournalLineMessage.md)
 - [Buildium::GeneralLedgerJournalLineMessageAccountingEntity](docs/GeneralLedgerJournalLineMessageAccountingEntity.md)
 - [Buildium::GeneralLedgerJournalLineMessageGLAccount](docs/GeneralLedgerJournalLineMessageGLAccount.md)
 - [Buildium::GeneralLedgerJournalMessage](docs/GeneralLedgerJournalMessage.md)
 - [Buildium::GeneralLedgerMessage](docs/GeneralLedgerMessage.md)
 - [Buildium::GeneralLedgerTransactionMessage](docs/GeneralLedgerTransactionMessage.md)
 - [Buildium::GeneralLedgerTransactionMessageDepositDetails](docs/GeneralLedgerTransactionMessageDepositDetails.md)
 - [Buildium::GeneralLedgerTransactionMessageJournal](docs/GeneralLedgerTransactionMessageJournal.md)
 - [Buildium::GeneralLedgerTransactionMessagePaymentDetail](docs/GeneralLedgerTransactionMessagePaymentDetail.md)
 - [Buildium::GeneralLedgerTransactionMessageUnitAgreement](docs/GeneralLedgerTransactionMessageUnitAgreement.md)
 - [Buildium::ImageReorderRequestPutMessage](docs/ImageReorderRequestPutMessage.md)
 - [Buildium::InsuredTenantMessage](docs/InsuredTenantMessage.md)
 - [Buildium::InternalTransactionStatusMessage](docs/InternalTransactionStatusMessage.md)
 - [Buildium::JavaScriptEncoder](docs/JavaScriptEncoder.md)
 - [Buildium::JournalLineMessage](docs/JournalLineMessage.md)
 - [Buildium::JournalMessage](docs/JournalMessage.md)
 - [Buildium::JsonPatchOperation](docs/JsonPatchOperation.md)
 - [Buildium::LastUpdatedByUserMessage](docs/LastUpdatedByUserMessage.md)
 - [Buildium::LeaseAccountDetailMessage](docs/LeaseAccountDetailMessage.md)
 - [Buildium::LeaseAutoAllocatedPaymentPostMessage](docs/LeaseAutoAllocatedPaymentPostMessage.md)
 - [Buildium::LeaseChargeLineMessage](docs/LeaseChargeLineMessage.md)
 - [Buildium::LeaseChargeLineSaveMessage](docs/LeaseChargeLineSaveMessage.md)
 - [Buildium::LeaseChargeMessage](docs/LeaseChargeMessage.md)
 - [Buildium::LeaseChargePostMessage](docs/LeaseChargePostMessage.md)
 - [Buildium::LeaseChargePutMessage](docs/LeaseChargePutMessage.md)
 - [Buildium::LeaseChargeRecurringTransactionMessage](docs/LeaseChargeRecurringTransactionMessage.md)
 - [Buildium::LeaseCosignerPostMessage](docs/LeaseCosignerPostMessage.md)
 - [Buildium::LeaseCosignerPostMessageAddress](docs/LeaseCosignerPostMessageAddress.md)
 - [Buildium::LeaseCosignerPostMessageAlternateAddress](docs/LeaseCosignerPostMessageAlternateAddress.md)
 - [Buildium::LeaseCosignerPostMessagePhoneNumbers](docs/LeaseCosignerPostMessagePhoneNumbers.md)
 - [Buildium::LeaseLedgerCreditLinePostMessage](docs/LeaseLedgerCreditLinePostMessage.md)
 - [Buildium::LeaseLedgerCreditPostMessage](docs/LeaseLedgerCreditPostMessage.md)
 - [Buildium::LeaseLedgerDepositWithholdingLinePostMessage](docs/LeaseLedgerDepositWithholdingLinePostMessage.md)
 - [Buildium::LeaseLedgerDepositWithholdingLinePutMessage](docs/LeaseLedgerDepositWithholdingLinePutMessage.md)
 - [Buildium::LeaseLedgerDepositWithholdingPostMessage](docs/LeaseLedgerDepositWithholdingPostMessage.md)
 - [Buildium::LeaseLedgerDepositWithholdingPutMessage](docs/LeaseLedgerDepositWithholdingPutMessage.md)
 - [Buildium::LeaseLedgerPaymentLineSaveMessage](docs/LeaseLedgerPaymentLineSaveMessage.md)
 - [Buildium::LeaseLedgerPaymentPostMessage](docs/LeaseLedgerPaymentPostMessage.md)
 - [Buildium::LeaseLedgerPaymentPutMessage](docs/LeaseLedgerPaymentPutMessage.md)
 - [Buildium::LeaseLedgerRefundLineMessage](docs/LeaseLedgerRefundLineMessage.md)
 - [Buildium::LeaseLedgerRefundLinePostMessage](docs/LeaseLedgerRefundLinePostMessage.md)
 - [Buildium::LeaseLedgerRefundMessage](docs/LeaseLedgerRefundMessage.md)
 - [Buildium::LeaseLedgerRefundMessageAddress](docs/LeaseLedgerRefundMessageAddress.md)
 - [Buildium::LeaseLedgerRefundPostMessage](docs/LeaseLedgerRefundPostMessage.md)
 - [Buildium::LeaseLedgerRefundPostMessageAddress](docs/LeaseLedgerRefundPostMessageAddress.md)
 - [Buildium::LeaseLedgerReversePaymentNSFChargePostMessage](docs/LeaseLedgerReversePaymentNSFChargePostMessage.md)
 - [Buildium::LeaseLedgerReversePaymentOtherBankChargePostMessage](docs/LeaseLedgerReversePaymentOtherBankChargePostMessage.md)
 - [Buildium::LeaseLedgerReversePaymentPostMessage](docs/LeaseLedgerReversePaymentPostMessage.md)
 - [Buildium::LeaseLedgerReversePaymentPostMessageBankFee](docs/LeaseLedgerReversePaymentPostMessageBankFee.md)
 - [Buildium::LeaseLedgerReversePaymentPostMessageNSFCharge](docs/LeaseLedgerReversePaymentPostMessageNSFCharge.md)
 - [Buildium::LeaseMessage](docs/LeaseMessage.md)
 - [Buildium::LeaseMessageAccountDetails](docs/LeaseMessageAccountDetails.md)
 - [Buildium::LeaseMoveOutDataMessage](docs/LeaseMoveOutDataMessage.md)
 - [Buildium::LeaseMoveOutDataPostMessage](docs/LeaseMoveOutDataPostMessage.md)
 - [Buildium::LeaseOutstandingBalanceMessage](docs/LeaseOutstandingBalanceMessage.md)
 - [Buildium::LeasePostMessage](docs/LeasePostMessage.md)
 - [Buildium::LeasePostMessageRent](docs/LeasePostMessageRent.md)
 - [Buildium::LeasePostMessageSecurityDeposit](docs/LeasePostMessageSecurityDeposit.md)
 - [Buildium::LeasePutMessage](docs/LeasePutMessage.md)
 - [Buildium::LeaseRecurringCreditMessage](docs/LeaseRecurringCreditMessage.md)
 - [Buildium::LeaseRecurringPaymentMessage](docs/LeaseRecurringPaymentMessage.md)
 - [Buildium::LeaseRecurringPaymentMessagePayer](docs/LeaseRecurringPaymentMessagePayer.md)
 - [Buildium::LeaseRenewalMessage](docs/LeaseRenewalMessage.md)
 - [Buildium::LeaseRenewalPostMessage](docs/LeaseRenewalPostMessage.md)
 - [Buildium::LeaseRenewalPostMessageRent](docs/LeaseRenewalPostMessageRent.md)
 - [Buildium::LeaseRentChargeMessage](docs/LeaseRentChargeMessage.md)
 - [Buildium::LeaseRentChargePostMessage](docs/LeaseRentChargePostMessage.md)
 - [Buildium::LeaseRentMessage](docs/LeaseRentMessage.md)
 - [Buildium::LeaseRentPostMessage](docs/LeaseRentPostMessage.md)
 - [Buildium::LeaseSecurityDepositPostMessage](docs/LeaseSecurityDepositPostMessage.md)
 - [Buildium::LeaseTenantMessage](docs/LeaseTenantMessage.md)
 - [Buildium::LeaseTransactionMessage](docs/LeaseTransactionMessage.md)
 - [Buildium::LeaseTransactionMessageJournal](docs/LeaseTransactionMessageJournal.md)
 - [Buildium::ListingContactMessage](docs/ListingContactMessage.md)
 - [Buildium::ListingContactSaveMessage](docs/ListingContactSaveMessage.md)
 - [Buildium::ListingEntityFilePostMessage](docs/ListingEntityFilePostMessage.md)
 - [Buildium::ListingFileMessage](docs/ListingFileMessage.md)
 - [Buildium::ListingMessage](docs/ListingMessage.md)
 - [Buildium::ListingMessageContact](docs/ListingMessageContact.md)
 - [Buildium::ListingMessageProperty](docs/ListingMessageProperty.md)
 - [Buildium::ListingMessageUnit](docs/ListingMessageUnit.md)
 - [Buildium::ListingPropertyMessage](docs/ListingPropertyMessage.md)
 - [Buildium::ListingPropertyMessageAddress](docs/ListingPropertyMessageAddress.md)
 - [Buildium::ListingPutMessage](docs/ListingPutMessage.md)
 - [Buildium::ListingUnitMessage](docs/ListingUnitMessage.md)
 - [Buildium::ListingUnitMessageAddress](docs/ListingUnitMessageAddress.md)
 - [Buildium::LockPeriodSettingsGlobalMessage](docs/LockPeriodSettingsGlobalMessage.md)
 - [Buildium::LockPeriodSettingsOverridesMessage](docs/LockPeriodSettingsOverridesMessage.md)
 - [Buildium::LockPeriodSettingsOverridesMessageProperty](docs/LockPeriodSettingsOverridesMessageProperty.md)
 - [Buildium::LoggedByStaffUserMessage](docs/LoggedByStaffUserMessage.md)
 - [Buildium::LookupMessage](docs/LookupMessage.md)
 - [Buildium::MailingTemplateMessage](docs/MailingTemplateMessage.md)
 - [Buildium::MeterReadingDetailMessage](docs/MeterReadingDetailMessage.md)
 - [Buildium::MeterReadingDetailPutMessage](docs/MeterReadingDetailPutMessage.md)
 - [Buildium::MeterReadingDetailsMessage](docs/MeterReadingDetailsMessage.md)
 - [Buildium::MeterReadingDetailsPutMessage](docs/MeterReadingDetailsPutMessage.md)
 - [Buildium::MeterReadingMessage](docs/MeterReadingMessage.md)
 - [Buildium::MultipleBillPaymentsPostMessage](docs/MultipleBillPaymentsPostMessage.md)
 - [Buildium::NoteMessage](docs/NoteMessage.md)
 - [Buildium::NoteMessageLastUpdatedByUser](docs/NoteMessageLastUpdatedByUser.md)
 - [Buildium::NotePostMessage](docs/NotePostMessage.md)
 - [Buildium::NotePutMessage](docs/NotePutMessage.md)
 - [Buildium::OfflinePaymentsMessage](docs/OfflinePaymentsMessage.md)
 - [Buildium::OfflinePaymentsPutMessage](docs/OfflinePaymentsPutMessage.md)
 - [Buildium::OutstandingBalancesLineMessage](docs/OutstandingBalancesLineMessage.md)
 - [Buildium::OwnershipAccountAutoAllocatedPaymentPostMessage](docs/OwnershipAccountAutoAllocatedPaymentPostMessage.md)
 - [Buildium::OwnershipAccountChargeRecurringTransactionMessage](docs/OwnershipAccountChargeRecurringTransactionMessage.md)
 - [Buildium::OwnershipAccountCreditLinePostMessage](docs/OwnershipAccountCreditLinePostMessage.md)
 - [Buildium::OwnershipAccountCreditPostMessage](docs/OwnershipAccountCreditPostMessage.md)
 - [Buildium::OwnershipAccountDepositWithholdingLinePostMessage](docs/OwnershipAccountDepositWithholdingLinePostMessage.md)
 - [Buildium::OwnershipAccountDepositWithholdingLinePutMessage](docs/OwnershipAccountDepositWithholdingLinePutMessage.md)
 - [Buildium::OwnershipAccountDepositWithholdingPostMessage](docs/OwnershipAccountDepositWithholdingPostMessage.md)
 - [Buildium::OwnershipAccountDepositWithholdingPutMessage](docs/OwnershipAccountDepositWithholdingPutMessage.md)
 - [Buildium::OwnershipAccountLedgerChargeLineMessage](docs/OwnershipAccountLedgerChargeLineMessage.md)
 - [Buildium::OwnershipAccountLedgerChargeLinesPutMessage](docs/OwnershipAccountLedgerChargeLinesPutMessage.md)
 - [Buildium::OwnershipAccountLedgerChargeLinesSaveMessage](docs/OwnershipAccountLedgerChargeLinesSaveMessage.md)
 - [Buildium::OwnershipAccountLedgerChargeMessage](docs/OwnershipAccountLedgerChargeMessage.md)
 - [Buildium::OwnershipAccountLedgerChargePostMessage](docs/OwnershipAccountLedgerChargePostMessage.md)
 - [Buildium::OwnershipAccountLedgerChargePutMessage](docs/OwnershipAccountLedgerChargePutMessage.md)
 - [Buildium::OwnershipAccountLedgerPaymentLineSaveMessage](docs/OwnershipAccountLedgerPaymentLineSaveMessage.md)
 - [Buildium::OwnershipAccountLedgerPaymentPostMessage](docs/OwnershipAccountLedgerPaymentPostMessage.md)
 - [Buildium::OwnershipAccountLedgerPaymentPutMessage](docs/OwnershipAccountLedgerPaymentPutMessage.md)
 - [Buildium::OwnershipAccountOutstandingBalanceMessage](docs/OwnershipAccountOutstandingBalanceMessage.md)
 - [Buildium::OwnershipAccountRecurringCreditMessage](docs/OwnershipAccountRecurringCreditMessage.md)
 - [Buildium::OwnershipAccountRecurringPaymentMessage](docs/OwnershipAccountRecurringPaymentMessage.md)
 - [Buildium::OwnershipAccountRefundLineMessage](docs/OwnershipAccountRefundLineMessage.md)
 - [Buildium::OwnershipAccountRefundLinesPostMessage](docs/OwnershipAccountRefundLinesPostMessage.md)
 - [Buildium::OwnershipAccountRefundMessage](docs/OwnershipAccountRefundMessage.md)
 - [Buildium::OwnershipAccountRefundPostMessage](docs/OwnershipAccountRefundPostMessage.md)
 - [Buildium::OwnershipAccountTransactionMessage](docs/OwnershipAccountTransactionMessage.md)
 - [Buildium::PaidByMessage](docs/PaidByMessage.md)
 - [Buildium::PartialPaymentSettingsMessage](docs/PartialPaymentSettingsMessage.md)
 - [Buildium::PartialPaymentSettingsPatchMessage](docs/PartialPaymentSettingsPatchMessage.md)
 - [Buildium::ParticipantMessage](docs/ParticipantMessage.md)
 - [Buildium::ParticipantMessageUnitAgreement](docs/ParticipantMessageUnitAgreement.md)
 - [Buildium::ParticipantResourceMessage](docs/ParticipantResourceMessage.md)
 - [Buildium::PatchBillRequest](docs/PatchBillRequest.md)
 - [Buildium::PatchGlobalPartialPaymentSettingsRequest](docs/PatchGlobalPartialPaymentSettingsRequest.md)
 - [Buildium::PayeeMessage](docs/PayeeMessage.md)
 - [Buildium::PaymentDetailMessage](docs/PaymentDetailMessage.md)
 - [Buildium::PaymentDetailMessageInternalTransactionStatus](docs/PaymentDetailMessageInternalTransactionStatus.md)
 - [Buildium::PaymentDetailMessagePayee](docs/PaymentDetailMessagePayee.md)
 - [Buildium::PaymentRecurringTransactionPostMessage](docs/PaymentRecurringTransactionPostMessage.md)
 - [Buildium::PaymentTransactionsMessage](docs/PaymentTransactionsMessage.md)
 - [Buildium::PaymentTransactionsMessageAccountingEntity](docs/PaymentTransactionsMessageAccountingEntity.md)
 - [Buildium::PhoneLogMessage](docs/PhoneLogMessage.md)
 - [Buildium::PhoneLogMessageLoggedByStaffUser](docs/PhoneLogMessageLoggedByStaffUser.md)
 - [Buildium::PhoneLogMessageParticipant](docs/PhoneLogMessageParticipant.md)
 - [Buildium::PhoneLogParticipantPostMessage](docs/PhoneLogParticipantPostMessage.md)
 - [Buildium::PhoneLogParticipantPostMessageUnitAgreement](docs/PhoneLogParticipantPostMessageUnitAgreement.md)
 - [Buildium::PhoneLogParticipantUnitAgreementPostMessage](docs/PhoneLogParticipantUnitAgreementPostMessage.md)
 - [Buildium::PhoneLogPostMessage](docs/PhoneLogPostMessage.md)
 - [Buildium::PhoneLogPostMessageParticipant](docs/PhoneLogPostMessageParticipant.md)
 - [Buildium::PhoneLogPutMessage](docs/PhoneLogPutMessage.md)
 - [Buildium::PhoneNumberMessage](docs/PhoneNumberMessage.md)
 - [Buildium::PhoneNumbersMessage](docs/PhoneNumbersMessage.md)
 - [Buildium::PropertyGroupMessage](docs/PropertyGroupMessage.md)
 - [Buildium::PropertyGroupMessageCreatedByUser](docs/PropertyGroupMessageCreatedByUser.md)
 - [Buildium::PropertyGroupPostMessage](docs/PropertyGroupPostMessage.md)
 - [Buildium::PropertyGroupPutMessage](docs/PropertyGroupPutMessage.md)
 - [Buildium::PropertyManagerMessage](docs/PropertyManagerMessage.md)
 - [Buildium::PropertyMessage](docs/PropertyMessage.md)
 - [Buildium::RecurringTransactionLineMessage](docs/RecurringTransactionLineMessage.md)
 - [Buildium::RecurringTransactionLinePostMessage](docs/RecurringTransactionLinePostMessage.md)
 - [Buildium::RecurringTransactionMessage](docs/RecurringTransactionMessage.md)
 - [Buildium::RentScheduleChargePostMessage](docs/RentScheduleChargePostMessage.md)
 - [Buildium::RentScheduleChargePutMessage](docs/RentScheduleChargePutMessage.md)
 - [Buildium::RentSchedulePostMessage](docs/RentSchedulePostMessage.md)
 - [Buildium::RentSchedulePutMessage](docs/RentSchedulePutMessage.md)
 - [Buildium::RentalApplianceMessage](docs/RentalApplianceMessage.md)
 - [Buildium::RentalAppliancePostMessage](docs/RentalAppliancePostMessage.md)
 - [Buildium::RentalAppliancePutMessage](docs/RentalAppliancePutMessage.md)
 - [Buildium::RentalApplianceServiceHistoryMessage](docs/RentalApplianceServiceHistoryMessage.md)
 - [Buildium::RentalApplianceServiceHistoryPostMessage](docs/RentalApplianceServiceHistoryPostMessage.md)
 - [Buildium::RentalFeaturesMessage](docs/RentalFeaturesMessage.md)
 - [Buildium::RentalFeaturesPutMessage](docs/RentalFeaturesPutMessage.md)
 - [Buildium::RentalImageMessage](docs/RentalImageMessage.md)
 - [Buildium::RentalImagePutMessage](docs/RentalImagePutMessage.md)
 - [Buildium::RentalMessage](docs/RentalMessage.md)
 - [Buildium::RentalMessageRentalManager](docs/RentalMessageRentalManager.md)
 - [Buildium::RentalOwnerContributionDataMessage](docs/RentalOwnerContributionDataMessage.md)
 - [Buildium::RentalOwnerContributionDataMessageReminderSettings](docs/RentalOwnerContributionDataMessageReminderSettings.md)
 - [Buildium::RentalOwnerContributionDataPutMessage](docs/RentalOwnerContributionDataPutMessage.md)
 - [Buildium::RentalOwnerContributionDataPutMessageReminderSettings](docs/RentalOwnerContributionDataPutMessageReminderSettings.md)
 - [Buildium::RentalOwnerContributionMessage](docs/RentalOwnerContributionMessage.md)
 - [Buildium::RentalOwnerContributionPutMessage](docs/RentalOwnerContributionPutMessage.md)
 - [Buildium::RentalOwnerContributionReminderMessage](docs/RentalOwnerContributionReminderMessage.md)
 - [Buildium::RentalOwnerContributionReminderPutMessage](docs/RentalOwnerContributionReminderPutMessage.md)
 - [Buildium::RentalOwnerMessage](docs/RentalOwnerMessage.md)
 - [Buildium::RentalOwnerMessageAddress](docs/RentalOwnerMessageAddress.md)
 - [Buildium::RentalOwnerMessageTaxInformation](docs/RentalOwnerMessageTaxInformation.md)
 - [Buildium::RentalOwnerPostMessage](docs/RentalOwnerPostMessage.md)
 - [Buildium::RentalOwnerPostMessageAddress](docs/RentalOwnerPostMessageAddress.md)
 - [Buildium::RentalOwnerPostMessagePhoneNumbers](docs/RentalOwnerPostMessagePhoneNumbers.md)
 - [Buildium::RentalOwnerPostMessageTaxInformation](docs/RentalOwnerPostMessageTaxInformation.md)
 - [Buildium::RentalOwnerPutMessage](docs/RentalOwnerPutMessage.md)
 - [Buildium::RentalOwnerRequestTaskMessage](docs/RentalOwnerRequestTaskMessage.md)
 - [Buildium::RentalOwnerRequestTaskMessageRequestedByUserEntity](docs/RentalOwnerRequestTaskMessageRequestedByUserEntity.md)
 - [Buildium::RentalOwnerRequestTaskPostMessage](docs/RentalOwnerRequestTaskPostMessage.md)
 - [Buildium::RentalOwnerRequestTaskPutMessage](docs/RentalOwnerRequestTaskPutMessage.md)
 - [Buildium::RentalOwnerTaxInformationMessage](docs/RentalOwnerTaxInformationMessage.md)
 - [Buildium::RentalPreferredVendorMessage](docs/RentalPreferredVendorMessage.md)
 - [Buildium::RentalPreferredVendorPutMessage](docs/RentalPreferredVendorPutMessage.md)
 - [Buildium::RentalPropertyPostMessage](docs/RentalPropertyPostMessage.md)
 - [Buildium::RentalPropertyPostMessageAddress](docs/RentalPropertyPostMessageAddress.md)
 - [Buildium::RentalPropertyPutMessage](docs/RentalPropertyPutMessage.md)
 - [Buildium::RentalPropertyPutMessageAddress](docs/RentalPropertyPutMessageAddress.md)
 - [Buildium::RentalPropertyUnitPostMessage](docs/RentalPropertyUnitPostMessage.md)
 - [Buildium::RentalPropertyUnitPostMessageAddress](docs/RentalPropertyUnitPostMessageAddress.md)
 - [Buildium::RentalTenantPostMessage](docs/RentalTenantPostMessage.md)
 - [Buildium::RentalTenantPutMessage](docs/RentalTenantPutMessage.md)
 - [Buildium::RentalTenantRenewalPostMessage](docs/RentalTenantRenewalPostMessage.md)
 - [Buildium::RentalUnitFeaturesMessage](docs/RentalUnitFeaturesMessage.md)
 - [Buildium::RentalUnitFeaturesPutMessage](docs/RentalUnitFeaturesPutMessage.md)
 - [Buildium::RentalUnitImageMessage](docs/RentalUnitImageMessage.md)
 - [Buildium::RentalUnitImagePutMessage](docs/RentalUnitImagePutMessage.md)
 - [Buildium::RentalUnitMessage](docs/RentalUnitMessage.md)
 - [Buildium::RentalUnitPutMessage](docs/RentalUnitPutMessage.md)
 - [Buildium::RentalUnitsPostMessage](docs/RentalUnitsPostMessage.md)
 - [Buildium::RentersInsurancePolicyMessage](docs/RentersInsurancePolicyMessage.md)
 - [Buildium::ReorderRentalImagesRequest](docs/ReorderRentalImagesRequest.md)
 - [Buildium::RequestedByUserEntityMessage](docs/RequestedByUserEntityMessage.md)
 - [Buildium::ResidentCenterUserMessage](docs/ResidentCenterUserMessage.md)
 - [Buildium::ResidentCenterUserMessageUnitAgreement](docs/ResidentCenterUserMessageUnitAgreement.md)
 - [Buildium::ResidentCenterUserMessageUser](docs/ResidentCenterUserMessageUser.md)
 - [Buildium::ResidentCenterUserReferenceMessage](docs/ResidentCenterUserReferenceMessage.md)
 - [Buildium::ResidentRequestTaskMessage](docs/ResidentRequestTaskMessage.md)
 - [Buildium::ResidentRequestTaskMessageAppliance](docs/ResidentRequestTaskMessageAppliance.md)
 - [Buildium::ResidentRequestTaskMessageRequestedByUserEntity](docs/ResidentRequestTaskMessageRequestedByUserEntity.md)
 - [Buildium::ResidentRequestTaskMessageUnitAgreement](docs/ResidentRequestTaskMessageUnitAgreement.md)
 - [Buildium::ResidentRequestTaskPostMessage](docs/ResidentRequestTaskPostMessage.md)
 - [Buildium::ResidentRequestTaskPutMessage](docs/ResidentRequestTaskPutMessage.md)
 - [Buildium::RetailCashPropertyMessage](docs/RetailCashPropertyMessage.md)
 - [Buildium::RetailCashUnitMessage](docs/RetailCashUnitMessage.md)
 - [Buildium::RetailCashUserDataMessage](docs/RetailCashUserDataMessage.md)
 - [Buildium::RetailCashUserMessage](docs/RetailCashUserMessage.md)
 - [Buildium::RetailCashUserMessageProperty](docs/RetailCashUserMessageProperty.md)
 - [Buildium::RetailCashUserMessageUnit](docs/RetailCashUserMessageUnit.md)
 - [Buildium::RetailCashUserMessageUnitAgreement](docs/RetailCashUserMessageUnitAgreement.md)
 - [Buildium::RetailCashUserMessageUser](docs/RetailCashUserMessageUser.md)
 - [Buildium::RetailCashUserPutMessage](docs/RetailCashUserPutMessage.md)
 - [Buildium::SaveAddressMessage](docs/SaveAddressMessage.md)
 - [Buildium::SaveEmergencyContactMessage](docs/SaveEmergencyContactMessage.md)
 - [Buildium::TaskCategoryMessage](docs/TaskCategoryMessage.md)
 - [Buildium::TaskCategoryPutMessage](docs/TaskCategoryPutMessage.md)
 - [Buildium::TaskCategoryResponseMessage](docs/TaskCategoryResponseMessage.md)
 - [Buildium::TaskCategoryResponseMessageSubCategory](docs/TaskCategoryResponseMessageSubCategory.md)
 - [Buildium::TaskCategorySaveMessage](docs/TaskCategorySaveMessage.md)
 - [Buildium::TaskHistoryFileMessage](docs/TaskHistoryFileMessage.md)
 - [Buildium::TaskHistoryFileUploadPostMessage](docs/TaskHistoryFileUploadPostMessage.md)
 - [Buildium::TaskHistoryMessage](docs/TaskHistoryMessage.md)
 - [Buildium::TaskHistoryMessageCreatedByUser](docs/TaskHistoryMessageCreatedByUser.md)
 - [Buildium::TaskHistoryMessageLastUpdatedByUser](docs/TaskHistoryMessageLastUpdatedByUser.md)
 - [Buildium::TaskHistoryPutMessage](docs/TaskHistoryPutMessage.md)
 - [Buildium::TaskHistoryUserMessage](docs/TaskHistoryUserMessage.md)
 - [Buildium::TaskSubCategoryMessage](docs/TaskSubCategoryMessage.md)
 - [Buildium::TaxInformationPostMessage](docs/TaxInformationPostMessage.md)
 - [Buildium::TaxInformationPostMessageAddress](docs/TaxInformationPostMessageAddress.md)
 - [Buildium::TaxInformationSaveMessage](docs/TaxInformationSaveMessage.md)
 - [Buildium::TenantMessage](docs/TenantMessage.md)
 - [Buildium::TenantMessageAddress](docs/TenantMessageAddress.md)
 - [Buildium::TenantMessageAlternateAddress](docs/TenantMessageAlternateAddress.md)
 - [Buildium::TenantMessageEmergencyContact](docs/TenantMessageEmergencyContact.md)
 - [Buildium::ToDoTaskMessage](docs/ToDoTaskMessage.md)
 - [Buildium::ToDoTaskPostMessage](docs/ToDoTaskPostMessage.md)
 - [Buildium::ToDoTaskPutMessage](docs/ToDoTaskPutMessage.md)
 - [Buildium::UnclearTransactionsRequest](docs/UnclearTransactionsRequest.md)
 - [Buildium::UndepositedFundsMessage](docs/UndepositedFundsMessage.md)
 - [Buildium::UndepositedFundsMessageGeneralLedgerTransaction](docs/UndepositedFundsMessageGeneralLedgerTransaction.md)
 - [Buildium::UnitAgreementMessage](docs/UnitAgreementMessage.md)
 - [Buildium::UnitEntityMessage](docs/UnitEntityMessage.md)
 - [Buildium::UpdateApplicantGroupRequest](docs/UpdateApplicantGroupRequest.md)
 - [Buildium::UpdateApplicantRequest](docs/UpdateApplicantRequest.md)
 - [Buildium::UpdateApplicationRequest](docs/UpdateApplicationRequest.md)
 - [Buildium::UpdateAssociationApplianceRequest](docs/UpdateAssociationApplianceRequest.md)
 - [Buildium::UpdateAssociationOwnerOccupancyStatusRequest](docs/UpdateAssociationOwnerOccupancyStatusRequest.md)
 - [Buildium::UpdateAssociationOwnerRequest](docs/UpdateAssociationOwnerRequest.md)
 - [Buildium::UpdateAssociationOwnershipAccountRequest](docs/UpdateAssociationOwnershipAccountRequest.md)
 - [Buildium::UpdateAssociationPreferredVendorsRequest](docs/UpdateAssociationPreferredVendorsRequest.md)
 - [Buildium::UpdateAssociationRequest](docs/UpdateAssociationRequest.md)
 - [Buildium::UpdateAssociationTenantRequest](docs/UpdateAssociationTenantRequest.md)
 - [Buildium::UpdateAssociationUnitRequest](docs/UpdateAssociationUnitRequest.md)
 - [Buildium::UpdateBankAccountDepositRequest](docs/UpdateBankAccountDepositRequest.md)
 - [Buildium::UpdateBankAccountRequest](docs/UpdateBankAccountRequest.md)
 - [Buildium::UpdateBillRequest](docs/UpdateBillRequest.md)
 - [Buildium::UpdateBoardMemberRequest](docs/UpdateBoardMemberRequest.md)
 - [Buildium::UpdateBudgetRequest](docs/UpdateBudgetRequest.md)
 - [Buildium::UpdateCheckForBankAccountRequest](docs/UpdateCheckForBankAccountRequest.md)
 - [Buildium::UpdateContactRequestTaskRequest](docs/UpdateContactRequestTaskRequest.md)
 - [Buildium::UpdateDepositWithholdingRequest](docs/UpdateDepositWithholdingRequest.md)
 - [Buildium::UpdateEPaySettingsForAssociationRequest](docs/UpdateEPaySettingsForAssociationRequest.md)
 - [Buildium::UpdateFileCategoryRequest](docs/UpdateFileCategoryRequest.md)
 - [Buildium::UpdateFileRequest](docs/UpdateFileRequest.md)
 - [Buildium::UpdateFileSharingSettingRequest](docs/UpdateFileSharingSettingRequest.md)
 - [Buildium::UpdateGLAccountRequest](docs/UpdateGLAccountRequest.md)
 - [Buildium::UpdateGeneralJournalEntryRequest](docs/UpdateGeneralJournalEntryRequest.md)
 - [Buildium::UpdateLeaseChargeRequest](docs/UpdateLeaseChargeRequest.md)
 - [Buildium::UpdateLeaseLedgerPaymentRequest](docs/UpdateLeaseLedgerPaymentRequest.md)
 - [Buildium::UpdateLeaseNoteRequest](docs/UpdateLeaseNoteRequest.md)
 - [Buildium::UpdateLeaseRequest](docs/UpdateLeaseRequest.md)
 - [Buildium::UpdateOwnershipAccountChargeRequest](docs/UpdateOwnershipAccountChargeRequest.md)
 - [Buildium::UpdateOwnershipAccountDepositWithholdingRequest](docs/UpdateOwnershipAccountDepositWithholdingRequest.md)
 - [Buildium::UpdateOwnershipAccountLedgerPaymentRequest](docs/UpdateOwnershipAccountLedgerPaymentRequest.md)
 - [Buildium::UpdatePhoneLogRequest](docs/UpdatePhoneLogRequest.md)
 - [Buildium::UpdatePropertyGroupRequest](docs/UpdatePropertyGroupRequest.md)
 - [Buildium::UpdateReconciliationBalancesRequest](docs/UpdateReconciliationBalancesRequest.md)
 - [Buildium::UpdateReconciliationRequest](docs/UpdateReconciliationRequest.md)
 - [Buildium::UpdateRentScheduleRequest](docs/UpdateRentScheduleRequest.md)
 - [Buildium::UpdateRentalApplianceRequest](docs/UpdateRentalApplianceRequest.md)
 - [Buildium::UpdateRentalFeaturesRequest](docs/UpdateRentalFeaturesRequest.md)
 - [Buildium::UpdateRentalImageRequest](docs/UpdateRentalImageRequest.md)
 - [Buildium::UpdateRentalOwnerRequest](docs/UpdateRentalOwnerRequest.md)
 - [Buildium::UpdateRentalOwnerRequestTaskContributionDataRequest](docs/UpdateRentalOwnerRequestTaskContributionDataRequest.md)
 - [Buildium::UpdateRentalOwnerRequestTaskRequest](docs/UpdateRentalOwnerRequestTaskRequest.md)
 - [Buildium::UpdateRentalPreferredVendorsRequest](docs/UpdateRentalPreferredVendorsRequest.md)
 - [Buildium::UpdateRentalPropertyRequest](docs/UpdateRentalPropertyRequest.md)
 - [Buildium::UpdateRentalTenantRequest](docs/UpdateRentalTenantRequest.md)
 - [Buildium::UpdateRentalUnitFeaturesRequest](docs/UpdateRentalUnitFeaturesRequest.md)
 - [Buildium::UpdateRentalUnitImageRequest](docs/UpdateRentalUnitImageRequest.md)
 - [Buildium::UpdateRentalUnitRequest](docs/UpdateRentalUnitRequest.md)
 - [Buildium::UpdateResourceRequest](docs/UpdateResourceRequest.md)
 - [Buildium::UpdateRetailCashUserRequest](docs/UpdateRetailCashUserRequest.md)
 - [Buildium::UpdateTaskCategoryRequest](docs/UpdateTaskCategoryRequest.md)
 - [Buildium::UpdateTaskHistoryRequest](docs/UpdateTaskHistoryRequest.md)
 - [Buildium::UpdateToDoTaskRequest](docs/UpdateToDoTaskRequest.md)
 - [Buildium::UpdateVendorRequest](docs/UpdateVendorRequest.md)
 - [Buildium::UpdateWorkOrderRequest](docs/UpdateWorkOrderRequest.md)
 - [Buildium::UploadTaskHistoryFileRequestAsyncRequest](docs/UploadTaskHistoryFileRequestAsyncRequest.md)
 - [Buildium::UpsertAssociationMeterReadingDetailsAsyncRequest](docs/UpsertAssociationMeterReadingDetailsAsyncRequest.md)
 - [Buildium::UpsertListingsAsyncRequest](docs/UpsertListingsAsyncRequest.md)
 - [Buildium::UserMessage](docs/UserMessage.md)
 - [Buildium::UserMessageUserRole](docs/UserMessageUserRole.md)
 - [Buildium::UserRoleMessage](docs/UserRoleMessage.md)
 - [Buildium::VehicleMessage](docs/VehicleMessage.md)
 - [Buildium::VendorCategoryMessage](docs/VendorCategoryMessage.md)
 - [Buildium::VendorCategorySaveMessage](docs/VendorCategorySaveMessage.md)
 - [Buildium::VendorCreditLineItemMessage](docs/VendorCreditLineItemMessage.md)
 - [Buildium::VendorCreditLineItemMessageAccountingEntity](docs/VendorCreditLineItemMessageAccountingEntity.md)
 - [Buildium::VendorCreditLineItemPostMessage](docs/VendorCreditLineItemPostMessage.md)
 - [Buildium::VendorCreditLineItemPostMessageAccountingEntity](docs/VendorCreditLineItemPostMessageAccountingEntity.md)
 - [Buildium::VendorCreditMessage](docs/VendorCreditMessage.md)
 - [Buildium::VendorCreditPostMessage](docs/VendorCreditPostMessage.md)
 - [Buildium::VendorInsuranceMessage](docs/VendorInsuranceMessage.md)
 - [Buildium::VendorInsuranceSaveMessage](docs/VendorInsuranceSaveMessage.md)
 - [Buildium::VendorMessage](docs/VendorMessage.md)
 - [Buildium::VendorMessageAddress](docs/VendorMessageAddress.md)
 - [Buildium::VendorMessageCategory](docs/VendorMessageCategory.md)
 - [Buildium::VendorMessageTaxInformation](docs/VendorMessageTaxInformation.md)
 - [Buildium::VendorMessageVendorInsurance](docs/VendorMessageVendorInsurance.md)
 - [Buildium::VendorPostMessage](docs/VendorPostMessage.md)
 - [Buildium::VendorPostMessageAddress](docs/VendorPostMessageAddress.md)
 - [Buildium::VendorPostMessagePhoneNumbers](docs/VendorPostMessagePhoneNumbers.md)
 - [Buildium::VendorPostMessageTaxInformation](docs/VendorPostMessageTaxInformation.md)
 - [Buildium::VendorPostMessageVendorInsurance](docs/VendorPostMessageVendorInsurance.md)
 - [Buildium::VendorPutMessage](docs/VendorPutMessage.md)
 - [Buildium::VendorPutMessageTaxInformation](docs/VendorPutMessageTaxInformation.md)
 - [Buildium::VendorRefundLineMessage](docs/VendorRefundLineMessage.md)
 - [Buildium::VendorRefundLineMessageAccountingEntity](docs/VendorRefundLineMessageAccountingEntity.md)
 - [Buildium::VendorRefundLinePostMessage](docs/VendorRefundLinePostMessage.md)
 - [Buildium::VendorRefundLinePostMessageAccountingEntity](docs/VendorRefundLinePostMessageAccountingEntity.md)
 - [Buildium::VendorRefundMessage](docs/VendorRefundMessage.md)
 - [Buildium::VendorRefundPostMessage](docs/VendorRefundPostMessage.md)
 - [Buildium::VendorTaxInformationMessage](docs/VendorTaxInformationMessage.md)
 - [Buildium::VendorTransactionMessage](docs/VendorTransactionMessage.md)
 - [Buildium::VideoLinkRequestPostMessage](docs/VideoLinkRequestPostMessage.md)
 - [Buildium::WorkOrderEntryContactMessage](docs/WorkOrderEntryContactMessage.md)
 - [Buildium::WorkOrderEntryContactResourceMessage](docs/WorkOrderEntryContactResourceMessage.md)
 - [Buildium::WorkOrderLineItemMessage](docs/WorkOrderLineItemMessage.md)
 - [Buildium::WorkOrderLineItemSaveMessage](docs/WorkOrderLineItemSaveMessage.md)
 - [Buildium::WorkOrderMessage](docs/WorkOrderMessage.md)
 - [Buildium::WorkOrderMessageEntryContact](docs/WorkOrderMessageEntryContact.md)
 - [Buildium::WorkOrderMessageTask](docs/WorkOrderMessageTask.md)
 - [Buildium::WorkOrderPostMessage](docs/WorkOrderPostMessage.md)
 - [Buildium::WorkOrderPostMessageTask](docs/WorkOrderPostMessageTask.md)
 - [Buildium::WorkOrderPutMessage](docs/WorkOrderPutMessage.md)
 - [Buildium::WorkOrderTaskMessage](docs/WorkOrderTaskMessage.md)
 - [Buildium::WorkOrderTaskPostMessage](docs/WorkOrderTaskPostMessage.md)


## Documentation for Authorization


### clientId


- **Type**: API key
- **API key parameter name**: x-buildium-client-id
- **Location**: HTTP header

### clientSecret


- **Type**: API key
- **API key parameter name**: x-buildium-client-secret
- **Location**: HTTP header

