=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!       ### What's in this Guide?      This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes     <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.     ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.     <br />    ### Enabling the API   In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.     <br />    ​ **Let's Begin!**     1. Sign in to your [Buildium](https://signin.managebuilding.com/Manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.     2. Open the ***Settings*** menu and click ***Application settings***.     3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <kbd><img src=\"app_settings.gif\" class=\"example_screen\" /></kbd>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.     API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.     Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys   Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**     1. Sign in to your [Buildium](https://signin.managebuilding.com/Manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.     2. Open the ***Settings*** menu and click ***API Keys***. The page will open automatically.    3. Click ***Create API Key***. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!     > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <kbd><img src=\"key_gen.gif\" class=\"example_screen\" /></kbd>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!     Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.  <br />  <br />    ## How to Make a Request     You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.       <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.     #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsExternalApi_GetAllRentals) in your account. This will confirm your connectivity to our platform and validate the keys you created on our website. Simply follow the instructions below.      1. Open the Postman application.   2. Open the *verb* menu and select **GET**.  3. Enter the request endpoint in the field next to GET.      - Here’s the endpoint to get all rentals: https://api.buildium.com/v1/rentals.  4. To authenticate the request, enter your `client ID` and `secret`  respectively in these request headers:      - `x-buildium-client-id`     - `x-buildium-client-secret`     - Your full request should look similar to the image below.<kbd><img src=\"request_example.png\" /></kbd>    <br />    5. Review the parameters of your request on last time. Once finished, click **Send**.    6. If successful, you should see a JSON response and a `200` HTTP status code. Voilà! You've connected to the Buildium API.<kbd><img src=\"response_example.png\" /></kbd>    <br />  You now have the knowledge required to make requests for any of our resources.    If you've received an error response please review the JSON response message for a description of how to resolve the issue. You can also see more information about HTTP status codes in the [Response Codes](#section/API-Overview/Response-Codes) section. If you are still having trouble making a request after reviewing these sections please submit a [Support](#section/API-Overview/Support) request.    <br />    # API Overview  The Buildium API is built upon standard REST conventions. It's designed to use consistent resource-oriented URLs, accept and return JSON-encoded messages, and use standard HTTP status codes and verbs.    ## Base URL  The base URL for production environment API requests is: `https://api.buildium.com/`    The base URL for sandbox environment API requests is: `https://apisandbox.buildium.com/`    In order to ensure all requests and responses are secure between the API consumer and Buildium servers, requests must be made using the `https` protocol. Any requests not made with the `https` protocol will be refused by the Buildium API platform.     > **Note:** URL paths are case-sensitive to stay consistent with common REST standards. If your request doesn’t align with the documented URL path, you’ll receive a `404` response code reminding you of this constraint.    ## API Versioning  The Buildium API is version controlled. Versioning ensures backwards-incompatible changes to the API don’t impact any existing integrations.    Buildium uses only a major version nomenclature to manage changes. The current version of the Buildium API is version 1. By specifying a version in the resource request URL, you'll get expected responses regardless of future changes to the API. Here's an example of calling version 1 of the retrieve all rentals resource:    `https://api.buildium.com/v1/rentals`    Any request submitted without the version in the URL path will result in a `404` error response code.     ### Releasing Changes to the API  The Buildium API will continue to evolve to ensure it meets the needs of our customers. Changes will be defined as either backwards-compatible or backwards-incompatible.     We’ll always provide advance notice for all API releases–regardless of the type of modifications being made.     #### Backward-compatible Changes  Backward-compatible changes are modifications to the API that shouldn't impact existing integrations. They'll apply to the current version of the API. Simply put: you won’t need to change the version to consume new changes like these.     It's important as you develop against the Buildium API that you ensure  these types of changes don't impact your integration. Here's are examples of backward-compatible modifications.     * Adding new API resources and/or endpoints.  * Adding new optional request parameters to existing API methods.  * Adding new properties to existing API responses and non-required properties for request messages.  * Changing property order in existing API responses.    All backward-compatible changes to the API will be documented in the [Changelog](#section/Changelog).    #### Backwards-incompatible Changes    When backwards-incompatible changes to the API occur, a new version of the API will be released. You’ll need to update the URL path  to consume resources under the new API version.     Backwards-incompatible changes include:    * Removing a property from a request and/or response message.  * Changing the name of a property in a message.  * Adding a required parameter to a request message.  * Changing existing enumeration values.    New versions of the API will have full reference documentation and an upgrade guide.     <br />        ## Authentication  The Buildium API uses API key’s client IDs and secrets to authenticate requests.     An API key client ID and secret must be passed in every request header using the following parameters:     - `x-buildium-client-id`  - `x-buildium-client-secret`    Failing to provide both of them in the request header will cause the API to return a `401` HTTP status code.    > **Note:** We currently do not support enabling CORS to access the Buildium API due to the security and authentication mechanisms we have in place to protect your data. Buildium supports authentication through API keys passed in the headers of a request versus a more CORS supported authentication mechanism like oAuth. Our recommendation is to access the Buildium API using server to server communication versus browser to server communication for the safest implementation.    ## Rate Limiting  Rate limits help us ensure consistent and reliable performance for all users, even during peak loads. That’s why we limit clients to **10 concurrent requests per second**.    If your request rate violates that limit, a response code of `429` is returned. Simply retry the request after a short interval (~200ms).    ## Bulk Request Options  All top-level API resources support bulk fetches. For instance, you can retrieve all [Associations](#operation/AssociationsExternalApi_GetAssociations). These resources also allow for filtering criteria. Each resource has descriptions of the filter criteria available.    In addition to filtering, our API gives you the ability to control the returned data’s pagination and the sort order.     ### Pagination  Endpoints that return result sets allow for pagination using `limit` and `offset` request parameters to reduce the amount of data returned.    The `limit` request parameter will cap the number of results that come back in the response. If you don't specify a `limit` value, a **default of 50 results** are returned. The maximum `limit` value is 1000. If a `limit` value is specified greater than 1000, it will be overridden to the default to 1000.     The `offset` request parameter indicates the record position within the resultset to start at when returning the results. The `offset` is zero-based and is inclusive. If no `offset` value is submitted it will default to 0.     The total resultset count is returned in the HTTP Header `X-Total-Count`    <br />    #### Pagination Example    As an example, let's say we make a request to retrieve all rental properties with no paging parameters. Our response indicates in the `X-Total-Count` header that there are 150 total rental properties. We want to get only the last 50 results so we would submit a request with the `offset` set to 100 and the `limit` set to 50.    > **Note:** The `limit` and `offset` parameter names are case-sensitive. If they aren't formatted correctly, the API will return a `404` HTTP status code.      <br />    ### Sorting Results  You can specify the sort order of returned data by assigning any property from the returned object to the `orderby` parameter in the querystring. For example:  ```  orderby=LeaseType  ```  By default, the sort is performed in ascending order. To specify sort order, use \"asc\" for ascending or \"desc\" for descending. For example:  ```  orderby=LeaseType desc  ```  Additionally, you can sort by multiple properties by comma separating the properties. For example:  ```  orderby=Rent desc,City asc  ```  <br/>    > **Note:** While the `orderby` parameter is case-sensitive, the properties specified in the `orderby` value aren't.       ## Response Codes  The Buildium API supports standard HTTP status codes.    |Response Code          |Description  |  |--|--|  |200 OK | Everything worked as expected. |  |400 Bad Request | The request was unacceptable, often due to missing a required parameter.|  |401 Unauthorized|The API client ID and secret weren’t provided or they’re no longer valid. Be sure that the client ID and secret combination are correct and they are still active.|  |403 Forbidden|The API key doesn't have permission to perform the request. This could be due to authorization for the given endpoint or an inability to access given entities within the platform (e.g. properties).  |404 Not Found|The requested resource doesn't exist.|  |415 Unsupported Media Type |Ensure you have the appropriate content-type header value set on your request. Each resource is documented with media type(s) that are accepted.|  |429 Too Many Requests |Too many requests against the API too quickly. We recommend an exponential backoff of your requests. See more information in  [Rate Limiting](#section/API-Overview/Rate-Limiting).|  |500 and above - Server Errors|Something went wrong on Buildium's end. Review the JSON response message for more details about the error. These are rare.|    ## Support  If you are unable to resolve your issue after reviewing the API documentation our support team can assist you. Please fill out the form below and let us know how we can help.    <script>   function getUrlParameter(name) {    name = name.replace(/[\\[]/, '\\\\[').replace(/[\\]]/, '\\\\]');    var regex = new RegExp('[\\\\?&]' + name + '=([^&#]*)');    var results = regex.exec(location.search);    return results === null ? '' : decodeURIComponent(results[1].replace(/\\+/g, ' '));   };        document.addEventListener(\"DOMContentLoaded\", function(){     if(getUrlParameter('supportsuccess') === \"true\")    {     document.getElementById(\"message\").style.display = \"block\";    }   });   </script>    <div id=\"message\" class=\"bukGhL\" style=\"display:none;cursor:auto;\">Your support request has been received</div>    <form id=\"supportRequestForm\" action=\"https://webto.salesforce.com/servlet/servlet.WebToCase?encoding=UTF-8\" method=\"POST\">    <input type=\"hidden\" name=\"orgid\" value=\"00D80000000b51V\">  <input type=\"hidden\" id=\"type\" name=\"type\" value=\"General Product\">  <input type=\"hidden\" id=\"00N0y000006b675\" name=\"00N0y000006b675\" value=\"Open API\">  <input type=\"hidden\" id=\"recordType\" name=\"recordType\" value=\"0120y000000GWkP\">  <input type=\"hidden\" id=\"retURL\" name=\"retURL\" value=\"https://developer.buildium.com/?supportsuccess=true#section/API-Overview/Support\" />                                 <table>   <tr>    <td width=\"50%\">     <label for=\"company\"><strong>Buildium Account Name</strong></label>    </td>    <td>     <input  id=\"company\" maxlength=\"80\" name=\"company\" size=\"40\" type=\"text\" class=\"supportInput\" />    </td>   </tr>   <tr>    <td width=\"50%\">     <label for=\"name\"><strong>Contact Name</strong></label>    </td>    <td>     <input  id=\"name\" maxlength=\"80\" name=\"name\" size=\"40\" type=\"text\" class=\"supportInput\" />    </td>   </tr>   <tr>    <td width=\"50%\">     <label for=\"email\"><strong>Email</strong></label>    </td>    <td>     <input  id=\"email\" maxlength=\"80\" name=\"email\" size=\"40\" type=\"text\" class=\"supportInput\" />    </td>   </tr>   <tr>    <td width=\"50%\">     <strong>Select your issue</strong>    </td>    <td>     <select id=\"00N0y000006jWr6\" name=\"00N0y000006jWr6\" title=\"Developer Support Issue:\" class=\"supportInput\">      <option value=\"\">--None--</option><option value=\"I am having issues logging into my Buildium account\">I am having issues logging into my Buildium account</option>      <option value=\"I am having issues enabling the API for my Buildium account\">I am having issues enabling the API for my Buildium account</option>      <option value=\"I am having issues generating API keys\">I am having issues generating API keys</option>      <option value=\"I am having issues making an API Request (provide details below)\">I am having issues making an API Request (provide details below)</option>     </select>    </td>   </tr>   <tr>    <td width=\"50%\" valign=\"top\">     <label for=\"description\"><strong>Description of your issue</strong></label>     <br />     <br />     Please include the following information when applicable to your issue:     <br />      <ul>      <li>Date & time of API request</li>      <li>Full URL used in making the request along with any querystring and/or post parameters</li>      <li>HTTP status code (e.g. 500)</li>      <li>Response body</li>     </ul>    </td>    <td valign=\"top\">     <textarea name=\"description\" cols=\"42\" rows=\"15\" class=\"supportInput\"></textarea>    </td>   </tr>   <tr>    <td colspan=\"2\">     <input type=\"submit\" name=\"submit\" class=\"supportInput\" />    </td>   </tr>  </table>    </form>    # API Sandbox  To assist your development efforts Buildium offers a free Sandbox account with your Premium subscription. A sandbox is a development environment that is separate from your production account. Sandboxes duplicate much of the same property management functionality available in your production account and all of the resources available in the Open API. The benefit of the sandbox is that it's isolated from your primary account. This separation ensures that API operations you perform against the sandbox account during development of your integration do not corrupt the data in your production account.    ## Mock Data  To help you hit the ground running with your development efforts sandbox accounts are provisioned with realistic sample data. This ensures you have data to work with immediately and won’t have to spend time doing data entry. You always have the ability to add more data through the application and the Buildium Open API.    ## Getting Started  To create a sandbox account follow the steps below.    1. Sign in to your [Buildium](https://signin.managebuilding.com/Manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.     2. Open the ***Settings*** menu and click ***API Keys***.     3. Click the ***Manage sandbox*** button.     4. Click the ***Create sandbox*** button. A modal will appear.    5. Enter the name and email of the person that will be administering the sandbox account. When the sandbox creation process has completed an email will be sent to the email address submitted. This email will provide a link to the sandbox. After all fields have been filled out, click **Create**.    6. The provisioning process will now execute. It can take 2 - 3 minutes for the sandbox to be created. The page will automatically refresh with the provisioning status. When it completes you will see the sandbox status is **Active** along with details about the sandbox including the URL to the account. You can browse back to this page at any time if you need to look up the URL to the sandbox.  <br />  <kbd><img src=\"sandbox_provisioning.gif\" class=\"example_screen\" /></kbd>    7. Once the sandbox has been created an email will be sent to the address you entered in the \"Create sandbox\" modal. To complete the activation of the sandbox open the email and click on the \"Activate Account\". This will allow you to create a password for your account and log into the sandbox.    8. You are now ready to begin making API requests to your sandbox! Please see [Accessing the Sandbox](#section/API-Sandbox/Accessing-the-Sandbox) for next steps on how to start making API requests.      ## Accessing the Sandbox  Once your sandbox is created you can begin to access it through the Open API. Requests are made following all the same versioning, authentication, messages, etc that are used in the production environment with the exception of the base URL. The base URL for the sandbox is:   <br />  `https://apisandbox.buildium.com/`    You can read more about connecting to the API in the [API Overview](#section/API-Overview) section.    Once you have completed your development and testing against the sandbox and you're ready to start using the integration in your production account simply change the base URL in your integration to the [production API URL](#section/API-Overview/Base-URL).       ## Sandbox Account Restrictions  The core Buildium functionality is available in the sandbox environment, however there are some restrictions which include:     1. Add-on services, ePay and other paid services will not be available.   2. A maximum of 1500 units (rentals and associations) can be created within the sandbox.  3. Communication emails will not be sent out. This protects you from inadvertently sending emails to your test accounts.       ## FAQs  **How many sandboxes can I create?**    The Premium subscription plan allows you to create one sandbox.     **Can I use my production keys to access my sandbox?**    No. To ensure you are accessing the correct environment the API keys are restricted to the environment they were created in.     **What is the throttle limit on requests to the sandbox?**    Each app can make 500 requests per minute before getting throttled.    **Can I reset sandbox data to its original state?**    Resetting sandbox data is not supported at this time.    **Can I delete a sandbox?**    You cannot delete a sandbox at this time. Closing your account or changing subscription plans will delete your sandbox and it will be no longer accessible.     **Can I delete the sandbox data?**    Yes, you can manually delete records by logging into the web application.     **Why do I see an error when I try to access add-on functionality like ePayments?**    Certain functionality is restricted in the sandbox environment. Please see [Sandbox Account Restrictions](#section/API-Sandbox/Sandbox-Account-Restrictions) for an overview of these limitations.      # Changelog    ### 2021-12-14  #### API Updates  * Additional bank account endpoints have been added to retrieve, create and update bank accounts and bank account transactions.    ### 2021-11-16  #### API Updates  * The URL to the rental application for listings is now being returned in a new property called `RentalApplicationUrl`. This new property is included in the following endpoints:    - [Retrieve all listings](#operation/ListingsExternalApi_GetListingsAsync)    - [Retrieve a listing](#operation/ListingsExternalApi_GetListingForUnitAsync)    - [Create a listing](#operation/ListingsExternalApi_UpsertListingsAsync)  * `AssignedToUserId` is no longer required as input for the following endpoints:    - [Create a rental owner request](#operation/RentalOwnerRequestTasksExternalApi_CreateRentalOwnerRequestTask)    - [Update a rental owner request](#operation/RentalOwnerRequestTasksExternalApi_UpdateRentalOwnerRequestTask)    - [Create a resident request](#operation/ResidentRequestTasksExternalApi_CreateResource)    - [Update a resident request](#operation/ResidentRequestTasksExternalApi_UpdateResource)  * Ability to retrieve a single association ownership account transaction has been released:    - [Retrieve a single ownership account transaction](#operation/OwnershipAccountsLedgerExternalApi_GetOwnershipAccountTransactionById)      ### 2021-10-19  #### API Updates  * The taxpayer identifier for rental tenants is now being returned in a new property named `TaxId`. This new property is included in the following endpoints:    - [Retrieve all tenants](#operation/TenantsExternalApi_GetAllTenants)    - [Retrieve a tenant](#operation/TenantsExternalApi_GetTenantById)    - [Create a rental tenant](#operation/TenantsExternalApi_CreateRentalTenant)    - [Update a rental tenant](#operation/TenantsExternalApi_UpdateRentalTenant)    - [Retrieve all leases](#operation/LeasesExternalApi_GetLeases)    - [Retrieve a lease](#operation/LeasesExternalApi_GetLeaseById)    - [Create a lease](#operation/LeasesExternalApi_CreateLease)    - [Update a lease](#operation/LeasesExternalApi_UpdateLease)  * The lease message has been updated to include the day of the month the tenant payments are due. This value comes back in a property named `PaymentDueDay` on the following the following endpoints:    - [Retrieve all leases](#operation/LeasesExternalApi_GetLeases)    - [Retrieve a lease](#operation/LeasesExternalApi_GetLeaseById)    - [Create a lease](#operation/LeasesExternalApi_CreateLease)    - [Update a lease](#operation/LeasesExternalApi_UpdateLease)  * Rental and association messages will now include the operating bank account identifier. This value comes back in a new property named `OperatingBankAccountId` on the following endpoints:    - [Retrieve all associations](#operation/AssociationsExternalApi_GetAssociations)    - [Retrieve an association](#operation/AssociationsExternalApi_GetAssociationById)    - [Create an association](#operation/AssociationsExternalApi_CreateAssociation)    - [Update an association](#operation/AssociationsExternalApi_UpdateAssociation)    - [Retrieve all rental properties](#operation/RentalsExternalApi_GetAllRentals)    - [Retrieve a rental property](#operation/RentalsExternalApi_GetRentalById)    - [Create a rental property](#operation/RentalsExternalApi_CreateRentalProperty)    - [Update a rental property](#operation/RentalsExternalApi_UpdateRentalProperty)    ### 2021-09-21  #### API Updates  * Outstanding balance resource capabilities have been released. Outstanding balances can be retrieved for the following resources:    - [Leases](#operation/LeasesExternalApi_GetLeaseOutstandingBalances)    - [Ownership Accounts](#operation/OwnershipAccountsExternalApi_GetOwnershipAccountOutstandingBalances)  * Work order id will be returned on bills, and is an optional input for creating a bill:    - [Retrieve all bills](#operation/BillsExternalApi_GetBillsAsync)    - [Retrieve a bill](#operation/BillsExternalApi_GetBillById)    - [Create a bill](#operation/BillsExternalApi_CreateBill)      ### 2021-08-24  #### API Updates  * Note read and write capabilities have been released. Notes can be retrieved, created, updated for the following resources:     - Rentals - [properties](#operation/RentalsExternalApi_GetRentalNotes), [units](#operation/RentalsExternalApi_GetRentalUnitNotes), [owners](#operation/RentalsExternalApi_GetRentalOwnerNotes), [leases](#operation/LeasesExternalApi_GetLeaseNotes) and [tenants](#operation/TenantsExternalApi_GetAllTenantNotes)    - Associations - [properties](#operation/AssociationsExternalApi_GetAssociationNotes), [units](#operation/AssociationsExternalApi_GetAssociationUnitNotes), [owners](#operation/AssociationOwnersExternalApi_GetAssociationOwnerNotes), [ownership accounts](#operation/OwnershipAccountsExternalApi_GetAssociationOwnershipAccountNotes) and [tenants](#operation/AssociationTenantsExternalApi_GetAssociationTenantNotes)    - [Vendors](#operation/VendorExternalApi_GetVendorNotes)    - [Applicant Groups](#operation/ApplicantGroupsExternalApi_GetApplicantGroupNotes)        ### 2021-07-20  #### API Updates  * Rental applicant, applicant groups and application write capabilities have been released. These new endpoints will support creating and updating rental applicants and applicant groups as well as enabling the updating of rental application statuses.     - [Create an Applicant Group](#operation/ApplicantGroupsExternalApi_CreateApplicantGroup)    - [Update an Applicant Group](#operation/ApplicantGroupsExternalApi_UpdateApplicantGroup)    - [Create an Applicant](#operation/ApplicantsExternalApi_CreateApplicant)    - [Update an Applicant](#operation/ApplicantsExternalApi_UpdateApplicant)    - [Update an Application](#operation/ApplicantsExternalApi_UpdateApplication)        ### 2021-06-22  #### API Updates  * Bill and bill payment resources have been released. These new endpoints will support retrieve, create and update functionality for bills and retrieve functionality for bill payments. Creating and updating bill payments will be available in a future release.    - [Retrieve bills](#operation/BillsExternalApi_GetBillsAsync)    - [Create a bill](#operation/BillsExternalApi_CreateBill)    - [Update a bill](#operation/BillsExternalApi_UpdateBill)    - [Retrieve bill payments](#operation/BillsExternalApi_GetBillPayments)  * Rental applicant, applicant groups and application read capabilities have been released. These new endpoints will support retrieving rental applicants, applicant groups and their rental applications. Creating and updating applicants and applicant groups will be available in a future release.    - [Retrieve Applicant Groups](#operation/ApplicantGroupsExternalApi_GetApplicantGroups)    - [Retrieve Applicants](#operation/ApplicantsExternalApi_GetApplicants)    - [Retrieve Applications](#operation/ApplicantsExternalApi_GetApplicationsForApplicant)  * Rental leases can now be filtered by the date and time they were created. The lease created date and time are also being returned as part of the lease response message.     - [Retrieve all leases](#operation/LeasesExternalApi_GetLeases)        ### 2021-05-18  #### API Updates  * Work order resources have been released. These new endpoints will support retrieve, create and update functionality for work orders. Review the [Work Order](#tag/Work-Orders) documentation for more information.  * Create capabilities have been released for association ownership account and rental lease ledger transactions. These new endpoints will allow for the creation of ledger charges, payments and credits.    - [Create Rental Lease Ledger Payments](#operation/LeaseLedgerTransactionsExternalApi_CreatePayment)    - [Create Rental Lease Ledger Credits](#operation/LeaseLedgerTransactionsExternalApi_CreateLeaseCredit)    - [Create Association Ownership Account Ledger Charges](#operation/OwnershipAccountsLedgerExternalApi_CreateCharge)    - [Create Association Ownership Account Ledger Payments](#operation/OwnershipAccountsLedgerExternalApi_CreateOwnershipAccountLedgerPayment)    - [Create Association Ownership Account Ledger Credits](#operation/OwnershipAccountsLedgerExternalApi_CreateOwnershipAccountCredit)        ### 2021-04-20  #### API Updates  * Task resources have been released. These new endpoints will support retrieve, create and update functionality for all task request types. Review the [Tasks](#tag/Tasks) documentation for more information.   * Vendor create and update capabilities have been released. These new endpoints will support creating and updating vendors.    - [Create Vendors](#operation/VendorExternalApi_CreateVendor)    - [Update Vendors](#operation/VendorExternalApi_UpdateVendor)    ### 2021-02-16  #### API Updates  * Phone log resources have been released. These new endpoints will support create, update and retrieve functionality for [phone logs](#operation/PhoneLogsExternalApi_GetPhoneLogs).  * Enhancements to the leases resource have been released. These new endpoints will support create and update functionality for [leases](#operation/LeasesExternalApi_CreateLease).  * Ability to filter by phone has been released for the following:    - [Rental Owners](#operation/RentalsExternalApi_GetRentalOwners)    - [Vendors](#operation/VendorExternalApi_GetAllVendors)    ### 2020-12-15  #### API Updates  * Rental listing resources have been released. These new endpoints will support create and retrieve functionality for:    - [Listing Contacts](#operation/ListingContactsExternalApi_GetAllListingContacts)    - [Listings](#operation/ListingsExternalApi_GetListingsAsync)    ### 2020-11-17  #### API Updates  * Create capabilities have been released for the following resources:    - [Rental Tenants](#operation/TenantsExternalApi_CreateRentalTenant)    - [Association Ownership Accounts](#operation/OwnershipAccountsExternalApi_CreateAssociationOwnershipAccount)    - [Association Owners](#operation/AssociationOwnersExternalApi_CreateAssociationOwner)  * Update capabilities have been released for the following resources:    - [Rental Tenants](#operation/TenantsExternalApi_UpdateRentalTenant)    - [Association Owners](#operation/AssociationOwnersExternalApi_UpdateAssociationOwner)  * Retrieve all [Association Owners](#operation/AssociationOwnersExternalApi_GetAllAssociationOwners) and [Association Tenants](#operation/AssociationTenantsExternalApi_GetAssociationTenants) can now be filtered by statuses: `Active`, `Past` and `Future`.  * The [rental tenant](#operation/TenantsExternalApi_CreateRentalTenant) message now returns the following properties:     - `AlternateEmail`    - `Comment`    - `MailingPreference`  * The [rental property](#operation/RentalsExternalApi_GetRentalById) message now includes the following properties:     - `OperatingBankAccountId`    - `Reserve`  * The [Association Ownership Account](#operation/OwnershipAccountsExternalApi_GetOwnershipAccountById) message now includes `AssociationOwnerIds` which is a list of all of the association owner identifiers that belong to the ownership account.    ### 2020-10-20  #### API Updates  * Create capabilities have been released for the following resources:    - [Rental Properties](#operation/RentalsExternalApi_CreateRentalProperty)    - [Rental Owners](#operation/RentalsExternalApi_CreateRentalOwner)    - [Rental Units](#operation/RentalsExternalApi_CreateRentalUnit)    - [Asssociation Properties](#operation/AssociationsExternalApi_CreateAssociation)    - [Asssociation Units](#operation/AssociationsExternalApi_CreateAssociationUnit)    - [Asssociation Tenants](#operation/AssociationTenantsExternalApi_CreateAssociationTenant)  * Update capabilities have been released for the following resources:    - [Rental Properties](#operation/RentalsExternalApi_UpdateRentalProperty)    - [Rental Owners](#operation/RentalsExternalApi_UpdateRentalOwner)    - [Rental Units](#operation/RentalsExternalApi_UpdateRentalUnit)    - [Asssociation Properties](#operation/AssociationsExternalApi_UpdateAssociation)    - [Asssociation Units](#operation/AssociationsExternalApi_UpdateAssociationUnit)    - [Asssociation Tenants](#operation/AssociationTenantsExternalApi_UpdateAssociation)    #### Feature Enhancements  * Sandbox environments can now be created for developing and testing your integrations. Learn more about how to take advantage of this new capability in the [API Sandbox](#section/API-Sandbox) section of the documentation.     ### 2020-09-15  #### API Updates  * General ledger account balances are now available through the [Retrieve all general ledger account balances](#operation/GLAccountBalancesExternalApi_GetGlAccountBalances) endpoint. This new endpoint provides the ability to retrieve the general ledger account balances as of a given date.    ### 2020-08-18  #### API Updates  * General ledger transactions are now available through the [Retrieve all general ledger transactions](#operation/GeneralLedgerExternalApi_GetAllTransactions) endpoint. These new endpoints provide the ability to retrieve all transactions or use a set of filters including specific rental/association properties, rental owners, date ranges, and others to find specific transactions.    ### 2020-07-21  #### API Updates  * [Association Owners](#operation/AssociationOwnersExternalApi_GetAllAssociationOwners) response message now returns board member terms including the start date, end date and position.   * Two new resources were added to retrieve [Users](#operation/UsersExternalApi_GetAllUsers) and [User Roles](#operation/UserRolesExternalApi_GetAllUserRoles).   * The [general ledger](#operation/AccountingExternalApi_GetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.     

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Buildium::OwnershipAccountLedgerChargePostMessage
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Buildium::OwnershipAccountLedgerChargePostMessage do
  let(:instance) { Buildium::OwnershipAccountLedgerChargePostMessage.new }

  describe 'test an instance of OwnershipAccountLedgerChargePostMessage' do
    it 'should create an instance of OwnershipAccountLedgerChargePostMessage' do
      expect(instance).to be_instance_of(Buildium::OwnershipAccountLedgerChargePostMessage)
    end
  end
  describe 'test attribute "date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "memo"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "lines"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
