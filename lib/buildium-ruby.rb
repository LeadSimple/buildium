=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <kbd><img src=\"app_settings.gif\" class=\"example_screen\" /></kbd>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***API Keys***. The page will open automatically.    3. Click ***Create API Key***. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <kbd><img src=\"key_gen.gif\" class=\"example_screen\" /></kbd>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

# Common files
require 'buildium-ruby/api_client'
require 'buildium-ruby/api_error'
require 'buildium-ruby/version'
require 'buildium-ruby/configuration'

# Models
require 'buildium-ruby/models/account_info_message'
require 'buildium-ruby/models/accounting_entity_message'
require 'buildium-ruby/models/accounting_entity_save_message'
require 'buildium-ruby/models/accounting_lock_period_message'
require 'buildium-ruby/models/accounting_settings_message'
require 'buildium-ruby/models/address_message'
require 'buildium-ruby/models/all_tasks_message'
require 'buildium-ruby/models/announcement_message'
require 'buildium-ruby/models/announcement_post_message'
require 'buildium-ruby/models/announcement_search_message'
require 'buildium-ruby/models/announcement_sender_message'

require 'buildium-ruby/models/api_error_response'
require 'buildium-ruby/models/appliance_message'
require 'buildium-ruby/models/applicant_application_message'
require 'buildium-ruby/models/applicant_group_message'
require 'buildium-ruby/models/applicant_group_post_message'
require 'buildium-ruby/models/applicant_group_put_message'
require 'buildium-ruby/models/applicant_group_search_message'
require 'buildium-ruby/models/applicant_message'
require 'buildium-ruby/models/applicant_post_message'
require 'buildium-ruby/models/applicant_put_message'
require 'buildium-ruby/models/applicant_search_message'
require 'buildium-ruby/models/application_message'
require 'buildium-ruby/models/application_put_message'
require 'buildium-ruby/models/application_response_field_message'
require 'buildium-ruby/models/application_response_message'
require 'buildium-ruby/models/application_section_response_message'
require 'buildium-ruby/models/association_appliance_message'
require 'buildium-ruby/models/association_appliance_post_message'
require 'buildium-ruby/models/association_appliance_put_message'
require 'buildium-ruby/models/association_appliance_search_message'
require 'buildium-ruby/models/association_appliance_service_history_message'
require 'buildium-ruby/models/association_appliance_service_history_post_message'
require 'buildium-ruby/models/association_board_member_message'
require 'buildium-ruby/models/association_board_member_post_message'
require 'buildium-ruby/models/association_board_member_put_message'
require 'buildium-ruby/models/association_board_member_search_message'
require 'buildium-ruby/models/association_message'
require 'buildium-ruby/models/association_owner_board_term_message'
require 'buildium-ruby/models/association_owner_board_term_post_message'
require 'buildium-ruby/models/association_owner_message'
require 'buildium-ruby/models/association_owner_post_message'
require 'buildium-ruby/models/association_owner_put_message'
require 'buildium-ruby/models/association_owner_to_existing_ownership_account_post_message'
require 'buildium-ruby/models/association_owner_unit_occupancy_put_message'
require 'buildium-ruby/models/association_owner_unit_occupancy_status_message'
require 'buildium-ruby/models/association_ownership_account_message'
require 'buildium-ruby/models/association_ownership_account_post_message'
require 'buildium-ruby/models/association_ownership_account_put_message'
require 'buildium-ruby/models/association_ownership_account_search_message'
require 'buildium-ruby/models/association_post_message'
require 'buildium-ruby/models/association_preferred_vendor_message'
require 'buildium-ruby/models/association_preferred_vendor_put_message'
require 'buildium-ruby/models/association_put_message'
require 'buildium-ruby/models/association_search_message'
require 'buildium-ruby/models/association_tax_information_message'
require 'buildium-ruby/models/association_tenant_message'
require 'buildium-ruby/models/association_tenant_post_message'
require 'buildium-ruby/models/association_tenant_put_message'
require 'buildium-ruby/models/association_unit_message'
require 'buildium-ruby/models/association_unit_put_message'
require 'buildium-ruby/models/association_unit_search_message'
require 'buildium-ruby/models/association_units_post_message'
require 'buildium-ruby/models/association_user_search_message'
require 'buildium-ruby/models/bank_account_check_accounting_entity_save_message'
require 'buildium-ruby/models/bank_account_check_line_message'
require 'buildium-ruby/models/bank_account_check_line_save_message'
require 'buildium-ruby/models/bank_account_check_message'
require 'buildium-ruby/models/bank_account_check_payee_message'
require 'buildium-ruby/models/bank_account_check_payee_save_message'
require 'buildium-ruby/models/bank_account_check_post_message'
require 'buildium-ruby/models/bank_account_check_put_message'
require 'buildium-ruby/models/bank_account_check_search_message'
require 'buildium-ruby/models/bank_account_deposit_line_message'
require 'buildium-ruby/models/bank_account_deposit_line_save_message'
require 'buildium-ruby/models/bank_account_deposit_message'
require 'buildium-ruby/models/bank_account_deposit_post_message'
require 'buildium-ruby/models/bank_account_deposit_put_message'
require 'buildium-ruby/models/bank_account_deposit_search_message'
require 'buildium-ruby/models/bank_account_message'
require 'buildium-ruby/models/bank_account_post_message'
require 'buildium-ruby/models/bank_account_put_message'
require 'buildium-ruby/models/bank_account_quick_deposit_message'
require 'buildium-ruby/models/bank_account_quick_deposit_save_message'
require 'buildium-ruby/models/bank_account_quick_deposit_search_message'
require 'buildium-ruby/models/bank_account_search_message'
require 'buildium-ruby/models/bank_account_transaction_message'
require 'buildium-ruby/models/bank_account_transaction_search_message'
require 'buildium-ruby/models/bank_account_transfer_accounting_entity_save_message'
require 'buildium-ruby/models/bank_account_transfer_message'
require 'buildium-ruby/models/bank_account_transfer_save_message'
require 'buildium-ruby/models/bank_account_transfer_search_message'
require 'buildium-ruby/models/bank_account_withdrawal_message'
require 'buildium-ruby/models/bank_account_withdrawal_save_message'
require 'buildium-ruby/models/bank_account_withdrawal_search_message'
require 'buildium-ruby/models/bank_lockbox_data_association_message'
require 'buildium-ruby/models/bank_lockbox_data_association_owner_message'
require 'buildium-ruby/models/bank_lockbox_data_message'
require 'buildium-ruby/models/bank_lockbox_data_ownership_account_message'
require 'buildium-ruby/models/bank_lockbox_data_search_message'
require 'buildium-ruby/models/bill_file_message'
require 'buildium-ruby/models/bill_line_message'
require 'buildium-ruby/models/bill_line_post_message'
require 'buildium-ruby/models/bill_line_put_message'
require 'buildium-ruby/models/bill_markup_message'
require 'buildium-ruby/models/bill_markup_save_message'
require 'buildium-ruby/models/bill_message'
require 'buildium-ruby/models/bill_payment_accounting_entity_message'
require 'buildium-ruby/models/bill_payment_line_message'
require 'buildium-ruby/models/bill_payment_line_post_message'
require 'buildium-ruby/models/bill_payment_message'
require 'buildium-ruby/models/bill_payment_post_message'
require 'buildium-ruby/models/bill_post_message'
require 'buildium-ruby/models/bill_put_message'
require 'buildium-ruby/models/bill_search_message'
require 'buildium-ruby/models/budget_details_message'
require 'buildium-ruby/models/budget_details_save_message'
require 'buildium-ruby/models/budget_message'
require 'buildium-ruby/models/budget_monthly_amounts_message'
require 'buildium-ruby/models/budget_monthly_amounts_save_message'
require 'buildium-ruby/models/budget_post_message'
require 'buildium-ruby/models/budget_put_message'
require 'buildium-ruby/models/budget_search_message'
require 'buildium-ruby/models/cc_payments_message'
require 'buildium-ruby/models/cc_payments_put_message'
require 'buildium-ruby/models/charge_recurring_transaction_post_message'
require 'buildium-ruby/models/charge_recurring_transaction_put_message'
require 'buildium-ruby/models/check_printing_info_message'
require 'buildium-ruby/models/check_printing_info_post_message'
require 'buildium-ruby/models/check_printing_info_put_message'
require 'buildium-ruby/models/client_lead_credit_request_message'
require 'buildium-ruby/models/client_lead_message'
require 'buildium-ruby/models/client_lead_search_message'
require 'buildium-ruby/models/contact_detail_message'
require 'buildium-ruby/models/contact_detail_phone_message'
require 'buildium-ruby/models/contact_detail_save_message'
require 'buildium-ruby/models/contact_detail_save_phone_message'
require 'buildium-ruby/models/contact_info_message'
require 'buildium-ruby/models/contact_request_task_message'
require 'buildium-ruby/models/contact_request_task_post_message'
require 'buildium-ruby/models/contact_request_task_put_message'
require 'buildium-ruby/models/contact_request_task_search_message'
require 'buildium-ruby/models/cosigner_message'
require 'buildium-ruby/models/created_by_user_message'
require 'buildium-ruby/models/credit_recurring_transaction_post_message'
require 'buildium-ruby/models/deposit_detail_message'
require 'buildium-ruby/models/eft_payments_message'
require 'buildium-ruby/models/eft_payments_put_message'
require 'buildium-ruby/models/e_pay_settings_message'
require 'buildium-ruby/models/e_pay_settings_put_message'
require 'buildium-ruby/models/electronic_payments_message'
require 'buildium-ruby/models/email_message'
require 'buildium-ruby/models/email_post_message'
require 'buildium-ruby/models/email_recipient_message'
require 'buildium-ruby/models/email_search_message'
require 'buildium-ruby/models/email_sender_message'
require 'buildium-ruby/models/emergency_contact_message'
require 'buildium-ruby/models/file_category_message'
require 'buildium-ruby/models/file_category_post_message'
require 'buildium-ruby/models/file_category_put_message'
require 'buildium-ruby/models/file_download_message'
require 'buildium-ruby/models/file_entity_message'
require 'buildium-ruby/models/file_message'
require 'buildium-ruby/models/file_name_post_message'
require 'buildium-ruby/models/file_put_message'
require 'buildium-ruby/models/file_search_message'
require 'buildium-ruby/models/file_upload_post_message'
require 'buildium-ruby/models/file_upload_ticket_message'
require 'buildium-ruby/models/gl_account_balance_item_message'
require 'buildium-ruby/models/gl_account_balance_message'
require 'buildium-ruby/models/gl_account_balance_search_message'
require 'buildium-ruby/models/gl_account_message'
require 'buildium-ruby/models/gl_account_post_message'
require 'buildium-ruby/models/gl_account_put_message'
require 'buildium-ruby/models/gl_accounts_search_message'
require 'buildium-ruby/models/gl_transaction_message_v1'
require 'buildium-ruby/models/general_journal_entry_line_save_message'
require 'buildium-ruby/models/general_journal_entry_post_message'
require 'buildium-ruby/models/general_journal_entry_put_message'
require 'buildium-ruby/models/general_ledger_entry_message'
require 'buildium-ruby/models/general_ledger_journal_line_message'
require 'buildium-ruby/models/general_ledger_journal_message'
require 'buildium-ruby/models/general_ledger_message'
require 'buildium-ruby/models/general_ledger_search_message'
require 'buildium-ruby/models/general_ledger_transaction_message'
require 'buildium-ruby/models/general_ledger_transaction_search_message'
require 'buildium-ruby/models/image_reorder_request_put_message'
require 'buildium-ruby/models/insured_tenant_message'
require 'buildium-ruby/models/internal_transaction_status_message'
require 'buildium-ruby/models/journal_line_message'
require 'buildium-ruby/models/journal_message'
require 'buildium-ruby/models/last_updated_by_user_message'
require 'buildium-ruby/models/lease_account_detail_message'
require 'buildium-ruby/models/lease_auto_allocated_payment_post_message'
require 'buildium-ruby/models/lease_charge_line_save_message'
require 'buildium-ruby/models/lease_charge_post_message'
require 'buildium-ruby/models/lease_charge_put_message'
require 'buildium-ruby/models/lease_charge_recurring_transaction_message'
require 'buildium-ruby/models/lease_cosigner_post_message'
require 'buildium-ruby/models/lease_ledger_credit_line_post_message'
require 'buildium-ruby/models/lease_ledger_credit_post_message'
require 'buildium-ruby/models/lease_ledger_deposit_withholding_line_post_message'
require 'buildium-ruby/models/lease_ledger_deposit_withholding_post_message'
require 'buildium-ruby/models/lease_ledger_payment_line_save_message'
require 'buildium-ruby/models/lease_ledger_payment_post_message'
require 'buildium-ruby/models/lease_ledger_refund_line_message'
require 'buildium-ruby/models/lease_ledger_refund_line_post_message'
require 'buildium-ruby/models/lease_ledger_refund_message'
require 'buildium-ruby/models/lease_ledger_refund_post_message'
require 'buildium-ruby/models/lease_ledger_reverse_payment_nsf_charge_post_message'
require 'buildium-ruby/models/lease_ledger_reverse_payment_other_bank_charge_post_message'
require 'buildium-ruby/models/lease_ledger_reverse_payment_post_message'
require 'buildium-ruby/models/lease_message'
require 'buildium-ruby/models/lease_move_out_data_message'
require 'buildium-ruby/models/lease_move_out_data_post_message'
require 'buildium-ruby/models/lease_outstanding_balance_message'
require 'buildium-ruby/models/lease_outstanding_balance_search_message'
require 'buildium-ruby/models/lease_post_message'
require 'buildium-ruby/models/lease_put_message'
require 'buildium-ruby/models/lease_recurring_credit_message'
require 'buildium-ruby/models/lease_recurring_payment_message'
require 'buildium-ruby/models/lease_renewal_message'
require 'buildium-ruby/models/lease_renewal_post_message'
require 'buildium-ruby/models/lease_renewal_search_message'
require 'buildium-ruby/models/lease_rent_charge_message'
require 'buildium-ruby/models/lease_rent_charge_post_message'
require 'buildium-ruby/models/lease_rent_message'
require 'buildium-ruby/models/lease_rent_post_message'
require 'buildium-ruby/models/lease_search_message'
require 'buildium-ruby/models/lease_security_deposit_post_message'
require 'buildium-ruby/models/lease_tenant_message'
require 'buildium-ruby/models/lease_transaction_message'
require 'buildium-ruby/models/lease_transaction_search_message'
require 'buildium-ruby/models/listing_contact_message'
require 'buildium-ruby/models/listing_contact_save_message'
require 'buildium-ruby/models/listing_entity_file_post_message'
require 'buildium-ruby/models/listing_file_message'
require 'buildium-ruby/models/listing_message'
require 'buildium-ruby/models/listing_property_message'
require 'buildium-ruby/models/listing_put_message'
require 'buildium-ruby/models/listing_search_message'
require 'buildium-ruby/models/listing_unit_message'
require 'buildium-ruby/models/lock_period_settings_global_message'
require 'buildium-ruby/models/lock_period_settings_overrides_message'
require 'buildium-ruby/models/logged_by_staff_user_message'
require 'buildium-ruby/models/lookup_message'
require 'buildium-ruby/models/mailing_template_message'
require 'buildium-ruby/models/note_message'
require 'buildium-ruby/models/note_post_message'
require 'buildium-ruby/models/note_put_message'
require 'buildium-ruby/models/note_search_message'
require 'buildium-ruby/models/offline_payments_message'
require 'buildium-ruby/models/offline_payments_put_message'
require 'buildium-ruby/models/outstanding_balances_line_message'
require 'buildium-ruby/models/ownership_account_auto_allocated_payment_post_message'
require 'buildium-ruby/models/ownership_account_charge_recurring_transaction_message'
require 'buildium-ruby/models/ownership_account_credit_line_post_message'
require 'buildium-ruby/models/ownership_account_credit_post_message'
require 'buildium-ruby/models/ownership_account_deposit_withholding_line_post_message'
require 'buildium-ruby/models/ownership_account_deposit_withholding_post_message'
require 'buildium-ruby/models/ownership_account_ledger_charge_lines_put_message'
require 'buildium-ruby/models/ownership_account_ledger_charge_lines_save_message'
require 'buildium-ruby/models/ownership_account_ledger_charge_post_message'
require 'buildium-ruby/models/ownership_account_ledger_charge_put_message'
require 'buildium-ruby/models/ownership_account_ledger_payment_line_save_message'
require 'buildium-ruby/models/ownership_account_ledger_payment_post_message'
require 'buildium-ruby/models/ownership_account_outstanding_balance_message'
require 'buildium-ruby/models/ownership_account_outstanding_balance_search_message'
require 'buildium-ruby/models/ownership_account_recurring_credit_message'
require 'buildium-ruby/models/ownership_account_recurring_payment_message'
require 'buildium-ruby/models/ownership_account_refund_line_message'
require 'buildium-ruby/models/ownership_account_refund_lines_post_message'
require 'buildium-ruby/models/ownership_account_refund_message'
require 'buildium-ruby/models/ownership_account_refund_post_message'
require 'buildium-ruby/models/ownership_account_transaction_message'
require 'buildium-ruby/models/paid_by_message'
require 'buildium-ruby/models/participant_message'
require 'buildium-ruby/models/participant_resource_message'
require 'buildium-ruby/models/payee_message'
require 'buildium-ruby/models/payment_detail_message'
require 'buildium-ruby/models/payment_recurring_transaction_post_message'
require 'buildium-ruby/models/payment_transactions_message'
require 'buildium-ruby/models/phone_log_message'
require 'buildium-ruby/models/phone_log_participant_post_message'
require 'buildium-ruby/models/phone_log_participant_unit_agreement_post_message'
require 'buildium-ruby/models/phone_log_post_message'
require 'buildium-ruby/models/phone_log_put_message'
require 'buildium-ruby/models/phone_log_search_message'
require 'buildium-ruby/models/phone_number_message'
require 'buildium-ruby/models/phone_numbers_message'
require 'buildium-ruby/models/property_group_message'
require 'buildium-ruby/models/property_group_post_message'
require 'buildium-ruby/models/property_group_put_message'
require 'buildium-ruby/models/property_group_search_message'
require 'buildium-ruby/models/property_manager_message'
require 'buildium-ruby/models/property_message'
require 'buildium-ruby/models/recurring_transaction_line_message'
require 'buildium-ruby/models/recurring_transaction_line_post_message'
require 'buildium-ruby/models/recurring_transaction_message'
require 'buildium-ruby/models/rental_appliance_message'
require 'buildium-ruby/models/rental_appliance_post_message'
require 'buildium-ruby/models/rental_appliance_put_message'
require 'buildium-ruby/models/rental_appliance_search_message'
require 'buildium-ruby/models/rental_appliance_service_history_message'
require 'buildium-ruby/models/rental_appliance_service_history_post_message'
require 'buildium-ruby/models/rental_features_message'
require 'buildium-ruby/models/rental_features_put_message'
require 'buildium-ruby/models/rental_image_message'
require 'buildium-ruby/models/rental_image_put_message'
require 'buildium-ruby/models/rental_message'
require 'buildium-ruby/models/rental_owner_contribution_data_message'
require 'buildium-ruby/models/rental_owner_contribution_data_put_message'
require 'buildium-ruby/models/rental_owner_contribution_message'
require 'buildium-ruby/models/rental_owner_contribution_put_message'
require 'buildium-ruby/models/rental_owner_contribution_reminder_message'
require 'buildium-ruby/models/rental_owner_contribution_reminder_put_message'
require 'buildium-ruby/models/rental_owner_message'
require 'buildium-ruby/models/rental_owner_post_message'
require 'buildium-ruby/models/rental_owner_put_message'
require 'buildium-ruby/models/rental_owner_request_task_message'
require 'buildium-ruby/models/rental_owner_request_task_post_message'
require 'buildium-ruby/models/rental_owner_request_task_put_message'
require 'buildium-ruby/models/rental_owner_request_task_search_message'
require 'buildium-ruby/models/rental_owner_tax_information_message'
require 'buildium-ruby/models/rental_owners_search_message'
require 'buildium-ruby/models/rental_preferred_vendor_message'
require 'buildium-ruby/models/rental_preferred_vendor_put_message'
require 'buildium-ruby/models/rental_property_post_message'
require 'buildium-ruby/models/rental_property_put_message'
require 'buildium-ruby/models/rental_property_unit_post_message'
require 'buildium-ruby/models/rental_search_message'
require 'buildium-ruby/models/rental_tenant_post_message'
require 'buildium-ruby/models/rental_tenant_put_message'
require 'buildium-ruby/models/rental_tenant_renewal_post_message'
require 'buildium-ruby/models/rental_unit_features_message'
require 'buildium-ruby/models/rental_unit_features_put_message'
require 'buildium-ruby/models/rental_unit_image_message'
require 'buildium-ruby/models/rental_unit_image_put_message'
require 'buildium-ruby/models/rental_unit_message'
require 'buildium-ruby/models/rental_unit_put_message'
require 'buildium-ruby/models/rental_unit_search_message'
require 'buildium-ruby/models/rental_units_post_message'
require 'buildium-ruby/models/renters_insurance_policy_message'
require 'buildium-ruby/models/requested_by_user_entity_message'
require 'buildium-ruby/models/resident_center_user_message'
require 'buildium-ruby/models/resident_center_user_reference_message'
require 'buildium-ruby/models/resident_center_user_search_message'
require 'buildium-ruby/models/resident_request_task_message'
require 'buildium-ruby/models/resident_request_task_post_message'
require 'buildium-ruby/models/resident_request_task_put_message'
require 'buildium-ruby/models/resident_request_task_search_message'
require 'buildium-ruby/models/retail_cash_property_message'
require 'buildium-ruby/models/retail_cash_unit_message'
require 'buildium-ruby/models/retail_cash_user_data_message'
require 'buildium-ruby/models/retail_cash_user_message'
require 'buildium-ruby/models/retail_cash_user_put_message'
require 'buildium-ruby/models/retail_cash_users_search_message'
require 'buildium-ruby/models/save_address_message'
require 'buildium-ruby/models/save_emergency_contact_message'
require 'buildium-ruby/models/task_category_message'
require 'buildium-ruby/models/task_category_put_message'
require 'buildium-ruby/models/task_category_response_message'
require 'buildium-ruby/models/task_category_save_message'
require 'buildium-ruby/models/task_history_file_message'
require 'buildium-ruby/models/task_history_file_upload_post_message'
require 'buildium-ruby/models/task_history_message'
require 'buildium-ruby/models/task_history_put_message'
require 'buildium-ruby/models/task_history_user_message'
require 'buildium-ruby/models/task_search_message'
require 'buildium-ruby/models/task_sub_category_message'
require 'buildium-ruby/models/tax_information_post_message'
require 'buildium-ruby/models/tax_information_save_message'
require 'buildium-ruby/models/tenant_message'
require 'buildium-ruby/models/tenant_search_message'
require 'buildium-ruby/models/to_do_task_message'
require 'buildium-ruby/models/to_do_task_post_message'
require 'buildium-ruby/models/to_do_task_put_message'
require 'buildium-ruby/models/to_do_task_search_message'
require 'buildium-ruby/models/undeposited_funds_message'
require 'buildium-ruby/models/unit_agreement_message'
require 'buildium-ruby/models/user_message'
require 'buildium-ruby/models/user_role_message'
require 'buildium-ruby/models/user_search_message'
require 'buildium-ruby/models/vehicle_message'
require 'buildium-ruby/models/vendor_category_message'
require 'buildium-ruby/models/vendor_category_save_message'
require 'buildium-ruby/models/vendor_credit_line_item_message'
require 'buildium-ruby/models/vendor_credit_line_item_post_message'
require 'buildium-ruby/models/vendor_credit_message'
require 'buildium-ruby/models/vendor_credit_post_message'
require 'buildium-ruby/models/vendor_insurance_message'
require 'buildium-ruby/models/vendor_insurance_save_message'
require 'buildium-ruby/models/vendor_message'
require 'buildium-ruby/models/vendor_post_message'
require 'buildium-ruby/models/vendor_put_message'
require 'buildium-ruby/models/vendor_refund_line_message'
require 'buildium-ruby/models/vendor_refund_line_post_message'
require 'buildium-ruby/models/vendor_refund_message'
require 'buildium-ruby/models/vendor_refund_post_message'
require 'buildium-ruby/models/vendor_search_message'
require 'buildium-ruby/models/vendor_tax_information_message'
require 'buildium-ruby/models/vendor_transaction_message'
require 'buildium-ruby/models/vendor_transaction_search_message'
require 'buildium-ruby/models/video_link_request_post_message'
require 'buildium-ruby/models/work_order_entry_contact_message'
require 'buildium-ruby/models/work_order_entry_contact_resource_message'
require 'buildium-ruby/models/work_order_line_item_message'
require 'buildium-ruby/models/work_order_line_item_save_message'
require 'buildium-ruby/models/work_order_message'
require 'buildium-ruby/models/work_order_post_message'
require 'buildium-ruby/models/work_order_put_message'
require 'buildium-ruby/models/work_order_search_message'
require 'buildium-ruby/models/work_order_task_message'
require 'buildium-ruby/models/work_order_task_post_message'

# APIs
require 'buildium-ruby/api/accounting_api'
require 'buildium-ruby/api/administration_api'
require 'buildium-ruby/api/applicants_api'
require 'buildium-ruby/api/association_appliances_api'
require 'buildium-ruby/api/association_owners_api'
require 'buildium-ruby/api/association_ownership_accounts_api'
require 'buildium-ruby/api/association_tenants_api'
require 'buildium-ruby/api/association_units_api'
require 'buildium-ruby/api/associations_api'
require 'buildium-ruby/api/bank_accounts_api'
require 'buildium-ruby/api/bills_api'
require 'buildium-ruby/api/client_leads_api'
require 'buildium-ruby/api/communications_api'
require 'buildium-ruby/api/files_api'
require 'buildium-ruby/api/leases_api'
require 'buildium-ruby/api/listings_api'
require 'buildium-ruby/api/property_groups_api'
require 'buildium-ruby/api/rental_appliances_api'
require 'buildium-ruby/api/rental_owners_api'
require 'buildium-ruby/api/rental_properties_api'
require 'buildium-ruby/api/rental_tenants_api'
require 'buildium-ruby/api/rental_units_api'
require 'buildium-ruby/api/resident_center_api'
require 'buildium-ruby/api/tasks_api'
require 'buildium-ruby/api/vendors_api'
require 'buildium-ruby/api/work_orders_api'

module Buildium
  class << self
    # Customize default settings for the SDK using block.
    #   Buildium.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
