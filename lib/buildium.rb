=begin
#Open API, powered by Buildium

#GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1

=end

# Common files
require 'buildium/api_client'
require 'buildium/api_error'
require 'buildium/version'
require 'buildium/configuration'

# Models
require 'buildium/models/account_info_message'
require 'buildium/models/accounting_entity_message'
require 'buildium/models/accounting_entity_save_message'
require 'buildium/models/accounting_settings_message'
require 'buildium/models/address_message'
require 'buildium/models/all_tasks_message'

require 'buildium/models/api_error_response'
require 'buildium/models/appliance_message'
require 'buildium/models/applicant_application_message'
require 'buildium/models/applicant_group_message'
require 'buildium/models/applicant_group_post_message'
require 'buildium/models/applicant_group_put_message'
require 'buildium/models/applicant_group_search_message'
require 'buildium/models/applicant_message'
require 'buildium/models/applicant_post_message'
require 'buildium/models/applicant_put_message'
require 'buildium/models/applicant_search_message'
require 'buildium/models/application_message'
require 'buildium/models/application_put_message'
require 'buildium/models/application_response_field_message'
require 'buildium/models/application_response_message'
require 'buildium/models/application_section_response_message'
require 'buildium/models/association_appliance_message'
require 'buildium/models/association_appliance_post_message'
require 'buildium/models/association_appliance_put_message'
require 'buildium/models/association_appliance_search_message'
require 'buildium/models/association_appliance_service_history_message'
require 'buildium/models/association_appliance_service_history_post_message'
require 'buildium/models/association_board_member_message'
require 'buildium/models/association_board_member_post_message'
require 'buildium/models/association_board_member_put_message'
require 'buildium/models/association_board_member_search_message'
require 'buildium/models/association_message'
require 'buildium/models/association_owner_board_term_message'
require 'buildium/models/association_owner_board_term_post_message'
require 'buildium/models/association_owner_message'
require 'buildium/models/association_owner_post_message'
require 'buildium/models/association_owner_put_message'
require 'buildium/models/association_owner_to_existing_ownership_account_post_message'
require 'buildium/models/association_owner_unit_occupancy_put_message'
require 'buildium/models/association_owner_unit_occupancy_status_message'
require 'buildium/models/association_ownership_account_message'
require 'buildium/models/association_ownership_account_post_message'
require 'buildium/models/association_ownership_account_put_message'
require 'buildium/models/association_ownership_account_search_message'
require 'buildium/models/association_post_message'
require 'buildium/models/association_preferred_vendor_message'
require 'buildium/models/association_preferred_vendor_put_message'
require 'buildium/models/association_put_message'
require 'buildium/models/association_search_message'
require 'buildium/models/association_tenant_message'
require 'buildium/models/association_tenant_post_message'
require 'buildium/models/association_tenant_put_message'
require 'buildium/models/association_unit_message'
require 'buildium/models/association_unit_put_message'
require 'buildium/models/association_unit_search_message'
require 'buildium/models/association_units_post_message'
require 'buildium/models/association_user_search_message'
require 'buildium/models/bank_account_check_accounting_entity_save_message'
require 'buildium/models/bank_account_check_line_message'
require 'buildium/models/bank_account_check_line_save_message'
require 'buildium/models/bank_account_check_message'
require 'buildium/models/bank_account_check_payee_message'
require 'buildium/models/bank_account_check_payee_save_message'
require 'buildium/models/bank_account_check_post_message'
require 'buildium/models/bank_account_check_put_message'
require 'buildium/models/bank_account_check_search_message'
require 'buildium/models/bank_account_deposit_line_message'
require 'buildium/models/bank_account_deposit_line_save_message'
require 'buildium/models/bank_account_deposit_message'
require 'buildium/models/bank_account_deposit_post_message'
require 'buildium/models/bank_account_deposit_put_message'
require 'buildium/models/bank_account_deposit_search_message'
require 'buildium/models/bank_account_message'
require 'buildium/models/bank_account_post_message'
require 'buildium/models/bank_account_put_message'
require 'buildium/models/bank_account_quick_deposit_message'
require 'buildium/models/bank_account_quick_deposit_save_message'
require 'buildium/models/bank_account_quick_deposit_search_message'
require 'buildium/models/bank_account_search_message'
require 'buildium/models/bank_account_transaction_message'
require 'buildium/models/bank_account_transaction_search_message'
require 'buildium/models/bank_account_transfer_accounting_entity_save_message'
require 'buildium/models/bank_account_transfer_message'
require 'buildium/models/bank_account_transfer_save_message'
require 'buildium/models/bank_account_transfer_search_message'
require 'buildium/models/bank_account_withdrawal_message'
require 'buildium/models/bank_account_withdrawal_save_message'
require 'buildium/models/bank_account_withdrawal_search_message'
require 'buildium/models/bill_line_message'
require 'buildium/models/bill_line_post_message'
require 'buildium/models/bill_line_put_message'
require 'buildium/models/bill_markup_message'
require 'buildium/models/bill_markup_save_message'
require 'buildium/models/bill_message'
require 'buildium/models/bill_payment_accounting_entity_message'
require 'buildium/models/bill_payment_line_message'
require 'buildium/models/bill_payment_message'
require 'buildium/models/bill_post_message'
require 'buildium/models/bill_put_message'
require 'buildium/models/bill_search_message'
require 'buildium/models/budget_details_message'
require 'buildium/models/budget_details_save_message'
require 'buildium/models/budget_message'
require 'buildium/models/budget_monthly_amounts_message'
require 'buildium/models/budget_monthly_amounts_save_message'
require 'buildium/models/budget_post_message'
require 'buildium/models/budget_put_message'
require 'buildium/models/budget_search_message'
require 'buildium/models/charge_recurring_transaction_post_message'
require 'buildium/models/check_printing_info_message'
require 'buildium/models/check_printing_info_post_message'
require 'buildium/models/check_printing_info_put_message'
require 'buildium/models/client_lead_credit_request_message'
require 'buildium/models/client_lead_message'
require 'buildium/models/client_lead_search_message'
require 'buildium/models/contact_detail_message'
require 'buildium/models/contact_detail_phone_message'
require 'buildium/models/contact_detail_save_message'
require 'buildium/models/contact_detail_save_phone_message'
require 'buildium/models/contact_info_message'
require 'buildium/models/contact_request_task_message'
require 'buildium/models/contact_request_task_post_message'
require 'buildium/models/contact_request_task_put_message'
require 'buildium/models/contact_request_task_search_message'
require 'buildium/models/cosigner_message'
require 'buildium/models/credit_recurring_transaction_post_message'
require 'buildium/models/deposit_detail_message'
require 'buildium/models/electronic_payments_message'
require 'buildium/models/emergency_contact_message'
require 'buildium/models/file_category_message'
require 'buildium/models/file_category_post_message'
require 'buildium/models/file_category_put_message'
require 'buildium/models/file_download_message'
require 'buildium/models/file_entity_message'
require 'buildium/models/file_message'
require 'buildium/models/file_put_message'
require 'buildium/models/file_search_message'
require 'buildium/models/file_upload_post_message'
require 'buildium/models/file_upload_ticket_message'
require 'buildium/models/gl_account_balance_item_message'
require 'buildium/models/gl_account_balance_message'
require 'buildium/models/gl_account_balance_search_message'
require 'buildium/models/gl_account_message'
require 'buildium/models/gl_accounts_search_message'
require 'buildium/models/gl_transaction_message_v1'
require 'buildium/models/general_journal_entry_line_save_message'
require 'buildium/models/general_journal_entry_post_message'
require 'buildium/models/general_journal_entry_put_message'
require 'buildium/models/general_ledger_journal_line_message'
require 'buildium/models/general_ledger_journal_message'
require 'buildium/models/general_ledger_transaction_message'
require 'buildium/models/general_ledger_transaction_search_message'
require 'buildium/models/internal_transaction_status_message'
require 'buildium/models/journal_line_message'
require 'buildium/models/journal_message'
require 'buildium/models/last_updated_by_user_message'
require 'buildium/models/lease_account_detail_message'
require 'buildium/models/lease_charge_line_message'
require 'buildium/models/lease_charge_message'
require 'buildium/models/lease_charge_recurring_transaction_message'
require 'buildium/models/lease_cosigner_post_message'
require 'buildium/models/lease_ledger_credit_line_post_message'
require 'buildium/models/lease_ledger_credit_post_message'
require 'buildium/models/lease_ledger_payment_line_save_message'
require 'buildium/models/lease_ledger_payment_post_message'
require 'buildium/models/lease_ledger_refund_line_message'
require 'buildium/models/lease_ledger_refund_line_post_message'
require 'buildium/models/lease_ledger_refund_message'
require 'buildium/models/lease_ledger_refund_post_message'
require 'buildium/models/lease_ledger_reverse_payment_nsf_charge_post_message'
require 'buildium/models/lease_ledger_reverse_payment_other_bank_charge_post_message'
require 'buildium/models/lease_ledger_reverse_payment_post_message'
require 'buildium/models/lease_message'
require 'buildium/models/lease_move_out_data_message'
require 'buildium/models/lease_move_out_data_post_message'
require 'buildium/models/lease_outstanding_balance_message'
require 'buildium/models/lease_outstanding_balance_search_message'
require 'buildium/models/lease_post_message'
require 'buildium/models/lease_put_message'
require 'buildium/models/lease_recurring_credit_message'
require 'buildium/models/lease_recurring_payment_message'
require 'buildium/models/lease_rent_charge_message'
require 'buildium/models/lease_rent_charge_post_message'
require 'buildium/models/lease_rent_message'
require 'buildium/models/lease_rent_post_message'
require 'buildium/models/lease_search_message'
require 'buildium/models/lease_security_deposit_post_message'
require 'buildium/models/lease_transaction_message'
require 'buildium/models/lease_transaction_search_message'
require 'buildium/models/listing_contact_message'
require 'buildium/models/listing_contact_save_message'
require 'buildium/models/listing_file_message'
require 'buildium/models/listing_message'
require 'buildium/models/listing_property_message'
require 'buildium/models/listing_put_message'
require 'buildium/models/listing_search_message'
require 'buildium/models/listing_unit_message'
require 'buildium/models/logged_by_staff_user_message'
require 'buildium/models/lookup_message'
require 'buildium/models/note_message'
require 'buildium/models/note_post_message'
require 'buildium/models/note_put_message'
require 'buildium/models/note_search_message'
require 'buildium/models/outstanding_balances_line_message'
require 'buildium/models/ownership_account_charge_recurring_transaction_message'
require 'buildium/models/ownership_account_credit_line_post_message'
require 'buildium/models/ownership_account_credit_post_message'
require 'buildium/models/ownership_account_ledger_charge_lines_save_message'
require 'buildium/models/ownership_account_ledger_charge_post_message'
require 'buildium/models/ownership_account_ledger_payment_line_save_message'
require 'buildium/models/ownership_account_ledger_payment_post_message'
require 'buildium/models/ownership_account_outstanding_balance_message'
require 'buildium/models/ownership_account_outstanding_balance_search_message'
require 'buildium/models/ownership_account_recurring_credit_message'
require 'buildium/models/ownership_account_recurring_payment_message'
require 'buildium/models/ownership_account_refund_line_message'
require 'buildium/models/ownership_account_refund_lines_post_message'
require 'buildium/models/ownership_account_refund_message'
require 'buildium/models/ownership_account_refund_post_message'
require 'buildium/models/ownership_account_transaction_message'
require 'buildium/models/paid_by_message'
require 'buildium/models/participant_message'
require 'buildium/models/participant_resource_message'
require 'buildium/models/payee_message'
require 'buildium/models/payment_detail_message'
require 'buildium/models/payment_recurring_transaction_post_message'
require 'buildium/models/payment_transactions_message'
require 'buildium/models/phone_log_message'
require 'buildium/models/phone_log_participant_post_message'
require 'buildium/models/phone_log_participant_unit_agreement_post_message'
require 'buildium/models/phone_log_post_message'
require 'buildium/models/phone_log_put_message'
require 'buildium/models/phone_log_search_message'
require 'buildium/models/phone_number_message'
require 'buildium/models/phone_numbers_message'
require 'buildium/models/property_manager_message'
require 'buildium/models/property_message'
require 'buildium/models/recurring_transaction_line_message'
require 'buildium/models/recurring_transaction_line_post_message'
require 'buildium/models/recurring_transaction_message'
require 'buildium/models/rental_appliance_message'
require 'buildium/models/rental_appliance_post_message'
require 'buildium/models/rental_appliance_put_message'
require 'buildium/models/rental_appliance_search_message'
require 'buildium/models/rental_appliance_service_history_message'
require 'buildium/models/rental_appliance_service_history_post_message'
require 'buildium/models/rental_features_message'
require 'buildium/models/rental_features_put_message'
require 'buildium/models/rental_message'
require 'buildium/models/rental_owner_message'
require 'buildium/models/rental_owner_post_message'
require 'buildium/models/rental_owner_put_message'
require 'buildium/models/rental_owner_request_task_message'
require 'buildium/models/rental_owner_request_task_post_message'
require 'buildium/models/rental_owner_request_task_put_message'
require 'buildium/models/rental_owner_request_task_search_message'
require 'buildium/models/rental_owners_search_message'
require 'buildium/models/rental_preferred_vendor_message'
require 'buildium/models/rental_preferred_vendor_put_message'
require 'buildium/models/rental_property_post_message'
require 'buildium/models/rental_property_put_message'
require 'buildium/models/rental_search_message'
require 'buildium/models/rental_tenant_post_message'
require 'buildium/models/rental_tenant_put_message'
require 'buildium/models/rental_unit_features_message'
require 'buildium/models/rental_unit_features_put_message'
require 'buildium/models/rental_unit_message'
require 'buildium/models/rental_unit_put_message'
require 'buildium/models/rental_unit_search_message'
require 'buildium/models/rental_units_post_message'
require 'buildium/models/requested_by_user_entity_message'
require 'buildium/models/resident_request_task_message'
require 'buildium/models/resident_request_task_post_message'
require 'buildium/models/resident_request_task_put_message'
require 'buildium/models/resident_request_task_search_message'
require 'buildium/models/save_address_message'
require 'buildium/models/save_emergency_contact_message'
require 'buildium/models/task_category_message'
require 'buildium/models/task_category_put_message'
require 'buildium/models/task_category_response_message'
require 'buildium/models/task_category_save_message'
require 'buildium/models/task_history_file_message'
require 'buildium/models/task_history_file_upload_post_message'
require 'buildium/models/task_history_message'
require 'buildium/models/task_history_put_message'
require 'buildium/models/task_history_user_message'
require 'buildium/models/task_search_message'
require 'buildium/models/task_sub_category_message'
require 'buildium/models/tax_information_post_message'
require 'buildium/models/tax_information_save_message'
require 'buildium/models/tenant_message'
require 'buildium/models/tenant_search_message'
require 'buildium/models/to_do_task_message'
require 'buildium/models/to_do_task_post_message'
require 'buildium/models/to_do_task_put_message'
require 'buildium/models/to_do_task_search_message'
require 'buildium/models/undeposited_funds_message'
require 'buildium/models/unit_agreement_message'
require 'buildium/models/user_message'
require 'buildium/models/user_role_message'
require 'buildium/models/user_search_message'
require 'buildium/models/vehicle_message'
require 'buildium/models/vendor_category_message'
require 'buildium/models/vendor_category_save_message'
require 'buildium/models/vendor_insurance_message'
require 'buildium/models/vendor_insurance_save_message'
require 'buildium/models/vendor_message'
require 'buildium/models/vendor_post_message'
require 'buildium/models/vendor_put_message'
require 'buildium/models/vendor_search_message'
require 'buildium/models/vendor_tax_information_message'
require 'buildium/models/work_order_entry_contact_message'
require 'buildium/models/work_order_entry_contact_resource_message'
require 'buildium/models/work_order_line_item_message'
require 'buildium/models/work_order_line_item_save_message'
require 'buildium/models/work_order_message'
require 'buildium/models/work_order_post_message'
require 'buildium/models/work_order_put_message'
require 'buildium/models/work_order_search_message'
require 'buildium/models/work_order_task_message'
require 'buildium/models/work_order_task_post_message'

# APIs
require 'buildium/api/accounting_api'
require 'buildium/api/administration_api'
require 'buildium/api/applicants_api'
require 'buildium/api/association_appliances_api'
require 'buildium/api/association_owners_api'
require 'buildium/api/association_ownership_accounts_api'
require 'buildium/api/association_tenants_api'
require 'buildium/api/association_units_api'
require 'buildium/api/associations_api'
require 'buildium/api/bank_accounts_api'
require 'buildium/api/client_leads_api'
require 'buildium/api/communications_api'
require 'buildium/api/files_api'
require 'buildium/api/leases_api'
require 'buildium/api/listings_api'
require 'buildium/api/rental_appliances_api'
require 'buildium/api/rental_owners_api'
require 'buildium/api/rental_properties_api'
require 'buildium/api/rental_tenants_api'
require 'buildium/api/rental_units_api'
require 'buildium/api/tasks_api'
require 'buildium/api/vendors_api'
require 'buildium/api/work_orders_api'

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
