=begin
#Open API, powered by Buildium

#  # Introduction  ### Welcome!    Welcome to Buildium’s API—a powerful, RESTful programming interface that lets you leverage valuable Buildium data.    Using HTTP requests, you can create integrations with applications that specialize in accounting, lead tracking, and more. Enjoy greater flexibility, transparency, and control over your business!      ### What's in this Guide?    This guide is full of simple, easy-to-follow instructions that’ll help you use Buildium’s API like a pro.    Topics include:    * choosing the right resources for your use case  * making HTTP requests to any resource  * understanding data and response codes    <br />    # Getting Started  Excited to get going? We’ll walk you through the setup process.  >  **Note:** To take advantage of the Buildium Open API you must have a <a target=\"_blank\" href=\"https://www.buildium.com/pricing/\">**Premium Subscription**</a>.    ## Account Configuration  Before you can use Buildium’s API, you’ll need to make some tweaks to your account settings.    <br />    ### Enabling the API  In order to start creating your keys and making requests, you’ll need to enable the API.      >  **Tip:** You’ll need an administrator user role with access to ***Application settings*** to set things up properly.    <br />    ​ **Let's Begin!**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Application settings***.    3. Under ***System preferences***, click ***Api settings***. A modal will appear.    4. Click the ***Open API*** toggle to turn it on. Then click ***Save***.    <video width=\"100%\" autoplay loop muted>    <source src=\"enable_open_api.mp4\" type=\"video/mp4\" />  </video>      Congratulations! Your account's enabled. Now, you’re ready to start managing API keys.  <br />  <br />  If you are having issues enabling the API within your account you can submit a [Support](#section/API-Overview/Support) request for assistance.    <br />      ## API Keys  Account-level API keys authenticate every request and keep things secure.    API keys have two components: a “client ID” and a “secret”.    * **Client IDs** are similar to usernames. They’re used to identify your Buildium account and are safe to share.  * **Secrets** are similar to passwords. They must be kept confidential.    Whenever you make a request, you’ll need the API key’s client ID and secret. If you forget it, make a mistake, or try to use information that’s linked to a deleted key, the API will return a `401` response code.    >  **Tip:** We compiled a list of best practices that detail how securely store API keys. [Give it a read](#section/Getting-Started/Keeping-API-Keys-Safe)!    ## Creating API Keys  Now that the Open APi is enabled, you’ll be able to create API keys. You’re almost there!    >  **Tip:** You’ll need an administrator user role to complete this step, too.    <br />    **How to create an API key**    1. Sign in to your [Buildium](https://signin.managebuilding.com/manager/public/authentication/login?ReturnUrl=%2Fmanager%2F) account from your browser.    2. Open the ***Settings*** menu and click ***Developer Tools***. The page will open automatically.    3. Click the ***Create API Key*** button. A modal will appear.    4. Enter a clear, memorable name and description for your API key. It’ll make it easier to locate the right key when you make a request. Once finished, click **Next**.    5. Now, choose which pieces of Buildium data you want this API key to have access to by marking the corresponding checkboxes. Once finished, click **Next**.    6. You successfully created an API key!    > **Important:** This is your only chance to record the secret. Make sure it’s stored somewhere secure! If it’s forgotten, you’ll need to delete this key and start from scratch.    <br />    <video width=\"100%\" autoplay loop muted>    <source src=\"generate_open_api_key.mp4\" type=\"video/mp4\" />  </video>    <br />    You have now successfully created an API key and have everything you need to  send requests to the Buildium API!    Before moving on to [making your first request](#section/Getting-Started/How-to-Make-a-Request) please review [Keeping your Keys Safe](#section/Getting-Started/Keeping-your-Keys-Safe) for an overview on securely storing your API keys.    <br />  If you are having issues creating API keys you can submit a [Support](#section/API-Overview/Support) request for assistance.  <br />      ## Keeping API Keys Safe    Based on their permissions, API keys could have full access to your account’s Buildium data. It’s important that you only grant access to trusted applications, securely record secrets, and consider a password manager to stay organized.      ### Recommended Practices    - Avoid hard-coding client IDs and secrets inside source files.  - Avoid storing client IDs and secrets in any files that may be committed to source control, particularly cloud-based source control platforms.  - Apply restrictions to client IDs and secrets shared with your staff. You can restrict a key to particular Buildium entities or to read-only access (GET resources only).  - Avoid sharing client IDs and secrets across public, insecure platforms.  - Establish a process to regularly recreate your client IDs and secrets from your Buildium account.    <br />    <br />    ## How to Make a Request    You’ve done a great job setting up your account, Now, we’ll walk you through how to access your data. It’s very straightforward and should only take a few minutes!      > **Tip:** Looking for the right HTTP client? If you’re just getting started, we recommend Postman.      <br />    ### Let's Get Started!    #### Step 1: Get Your API Key    If you haven't yet done so, obtain your API key client ID and secret from your Buildium account. Your API key is how the Buildium API authenticates requests and ensures only you can access your data.    See [Getting Started](#section/Getting-Started) for a deeper dive into enabling the API and creating keys.    #### Step 2: Install a HTTP client  The Buildium API supports any standard HTTP client. If you're looking for a user-friendly HTTP client application, we recommend [Postman](https://www.postman.com/product/api-client) – it allows you to access the Buildium API without writing code. We’ll use Postman for our example below to demonstrate sending an API request.      #### Step 3: Make a Sample Request    Let's dive in and make a simple request to get all the [Rental Properties](#operation/RentalsGetAllGLAccounts) response message now includes the property `IsBankAccount`. This is a boolean property that indicates whether the general ledger account is also a bank account.  * A `Country` property has been added to all Address messages. This property contains an enumeration indicating the country of the address.   

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Buildium::TasksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TasksApi' do
  before do
    # run before each test
    @api_instance = Buildium::TasksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TasksApi' do
    it 'should create an instance of TasksApi' do
      expect(@api_instance).to be_instance_of(Buildium::TasksApi)
    end
  end

  # unit tests for create_task_category
  # Create a task category
  # Create a task category.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param task_category_save_message 
  # @param [Hash] opts the optional parameters
  # @return [TaskCategoryMessage]
  describe 'create_task_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_task_history_file
  # Delete task history file
  # Deletes a specific file from a task history record. The file will be permanently deleted from the Buildium platform an can not be recovered.              &lt;br /&gt;&lt;br /&gt;This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do&#39;s.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60; &#x60;Delete&#x60;
  # @param task_id 
  # @param task_history_id 
  # @param file_id 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_task_history_file test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_all_task_categories
  # Retrieve all task categories
  # Retrieves a list of task categories.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<TaskCategoryMessage>]
  describe 'get_all_task_categories test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_all_task_history_files
  # Retrieve all task history files
  # Retrieves the metadata for all files associated with a task history record.              &lt;br /&gt;&lt;br /&gt;This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do&#39;s.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60;
  # @param task_id 
  # @param task_history_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<TaskHistoryFileMessage>]
  describe 'get_all_task_history_files test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_all_tasks
  # Retrieve all tasks
  # Retrieves a list of all task/request types (Contact, Owner, Resident and To Do). Note, the response payload only contains fields common across all of the request types. To retrieve the full details of the task query the retrieve endpoint specific to the task type.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :entitytype Specifies the type of entity that the &#x60;EntityId&#x60; field refers to. This field is required if the &#x60;EntityId&#x60; field is populated.
  # @option opts [Integer] :entityid Filters results to any task associated with the specified entity id value. The value must be of the type specified in the &#x60;EntityType&#x60; field.
  # @option opts [Array<String>] :statuses Filters results by the status of the task. If no status is specified, tasks with any status will be returned.
  # @option opts [String] :type Filters results to any task associated with the task type specified.
  # @option opts [Integer] :unitid Filters results to any task associated with the unit identifier.
  # @option opts [Integer] :unitagreementid Filters results to any task associated with the unit agreement identifier specified.
  # @option opts [Date] :lastupdatedfrom Filters results to any tasks were updated on or after the specified date. The value must be formatted as YYYY-MM-DD.
  # @option opts [Date] :lastupdatedto Filters results to any tasks were updated on or before the specified date. The value must be formatted as YYYY-MM-DD.
  # @option opts [Date] :duedatefrom Filters results to any tasks with a due date on or after the specified date. The value must be formatted as YYYY-MM-DD.
  # @option opts [Date] :duedateto Filters results to any tasks with a due date on or before the specified date. The value must be formatted as YYYY-MM-DD.
  # @option opts [Integer] :taskcategoryid Filters results to any tasks with the specified category identifier.
  # @option opts [Array<String>] :priorities Filters results to any tasks whose priority matches the specified values. If no priority is specified, tasks with any priority will be returned.
  # @option opts [Integer] :assignedtoid Filters results to any tasks that have been assigned to the specified staff user identifier.
  # @option opts [String] :tasktitle Filters results to any task whose title *contains* the specified value.
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<AllTasksMessage>]
  describe 'get_all_tasks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_file_download_request
  # Download a task history file
  # Downloads a specific file associated to the task history record.              &lt;br /&gt;&lt;br /&gt;This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do&#39;s.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60;
  # @param task_id 
  # @param task_history_id 
  # @param file_id 
  # @param [Hash] opts the optional parameters
  # @return [FileDownloadMessage]
  describe 'get_file_download_request test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_task_by_id
  # Retrieve a task
  # Retrieves a specific task. This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do&#39;s. Note, the response payload only contains fields common across all of the request types. To retrieve the full details of the task query the retrieve endpoint specific to the task type.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60;
  # @param task_id The task identifier
  # @param [Hash] opts the optional parameters
  # @return [AllTasksMessage]
  describe 'get_task_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_task_category_by_id
  # Retrieve a task category
  # Retrieves a specific task category.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60;
  # @param task_category_id The task category identifier.
  # @param [Hash] opts the optional parameters
  # @return [TaskCategoryMessage]
  describe 'get_task_category_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_task_histories
  # Retrieve all task history
  # Retrieves all task history records for a specific task.              &lt;br /&gt;&lt;br /&gt;This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do&#39;s.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60;
  # @param task_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :orderby &#x60;orderby&#x60; indicates the field(s) and direction to sort the results in the response. See &lt;a href&#x3D;\&quot;#section/API-Overview/Bulk-Request-Options\&quot;&gt;Bulk Request Options&lt;/a&gt; for more information.
  # @option opts [Integer] :offset &#x60;offset&#x60; indicates the position of the first record to return. The &#x60;offset&#x60; is zero-based and the default is 0.
  # @option opts [Integer] :limit &#x60;limit&#x60; indicates the maximum number of results to be returned in the response. &#x60;limit&#x60; can range between 1 and 1000 and the default is 50.
  # @return [Array<TaskHistoryMessage>]
  describe 'get_task_histories test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_task_history_by_id
  # Retrieve a task history
  # Retrieves a specific task history record for a task.              &lt;br /&gt;&lt;br /&gt;This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do&#39;s.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60;
  # @param task_id 
  # @param task_history_id 
  # @param [Hash] opts the optional parameters
  # @return [TaskHistoryMessage]
  describe 'get_task_history_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_task_history_file_by_id
  # Retrieve a task history file
  # Retrieves the metadata for a specific file associated with a task history record.              &lt;br /&gt;&lt;br /&gt;This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do&#39;s.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60;
  # @param task_id 
  # @param task_history_id 
  # @param file_id 
  # @param [Hash] opts the optional parameters
  # @return [TaskHistoryFileMessage]
  describe 'get_task_history_file_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_task_category
  # Update a task category
  # Updates a task category.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; Any field not included in the update request will be set to either an empty string or &#x60;null&#x60; in the database depending on the field definition. &lt;br /&gt;The recommended workflow to ensure no data is inadvertently overwritten is to execute a &#x60;GET&#x60; request for the resource you&#39;re about to update and then use this response to fill any of the fields that are not being updated.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param task_category_id The task category identifier.
  # @param task_category_put_message 
  # @param [Hash] opts the optional parameters
  # @return [TaskCategoryMessage]
  describe 'update_task_category test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_task_history
  # Update a task history
  # Updates a specific task history record for a task.              &lt;br /&gt;&lt;br /&gt;This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do&#39;s.              &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param task_id 
  # @param task_history_id 
  # @param task_history_put_message 
  # @param [Hash] opts the optional parameters
  # @return [TaskHistoryMessage]
  describe 'update_task_history test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for upload_task_history_file_request_async
  # Upload a task history file
  # Uploads a file and associates it to the specified task history record.  &lt;br /&gt;&lt;br /&gt;This endpoint can be used for any task type - contact requests, rental owner requests, resident requests or to do&#39;s.  &lt;br /&gt;&lt;br /&gt;Uploading a file requires making two API requests. Each step is outlined below.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 1 - Save file metadata&lt;/strong&gt;&lt;br /&gt;  The first step in the file upload process is to submit the file metadata to &#x60;/v1/tasks/{taskId}/history/{taskHistoryId}/files/uploadrequests&#x60;. The response of this call will contain a URL and a collection of form data that will be used in step 2 to generate the request for the file binary upload.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; The response data will expire after 5 minutes. The file metadata will not be saved in the Buildium system if step 2 of this process is not completed successfully.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;Step 2 - Upload the file binary&lt;/strong&gt;&lt;br /&gt;  Uploading the file binary will require using the response from step 1 to form a POST request to the Buildium file provider. Follow these steps to create the request:  &lt;br /&gt;  1. Form a POST request using the value of the &#x60;BucketUrl&#x60; property as the URL.   &lt;br /&gt;&lt;br /&gt;  2. Set the &#x60;Content-Type&#x60; header to &#x60;multipart/form-data&#x60;.  &lt;br /&gt;&lt;br /&gt;  3. Copy the fields from the &#x60;FormData&#x60;  property to this request as form-data key/value pairs.  &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; These values must added to the request form-data in the order they were received in the response.  &lt;br /&gt;&lt;br /&gt;  4. Lastly create a form-data key named &#x60;file&#x60; and set the value to the file binary.  &lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; This must be the last field in the form-data list.  &lt;br /&gt;&lt;br /&gt;This image shows what the POST request should look like if you&#39;re using Postman:  &lt;img src&#x3D;\&quot;file-upload-example.png\&quot; /&gt;&lt;br /&gt;&lt;br /&gt;  5. Send the POST request! A successful request will return with a &#x60;204 - NO CONTENT&#x60; HTTP response code. For any failure responses, please refer to &lt;a target&#x3D;\&quot;_blank\&quot; href&#x3D;\&quot;https://docs.aws.amazon.com/AmazonS3/latest/API/ErrorResponses.html#RESTErrorResponses\&quot;&gt;AWS documentation&lt;/a&gt; on REST error responses.  &lt;br /&gt;&lt;br /&gt;&lt;strong&gt;NOTE:&lt;/strong&gt; The file identifier is not generated in this response. To retrieve the file identifier, call &#x60;/v1/files&#x60; and pass the &#x60;PhysicalFileName&#x60; value received from the response of this endpoint into the &#x60;physicalfilenames&#x60; query parameter.  &lt;br /&gt;&lt;br /&gt;&lt;h4&gt;Required permission(s):&lt;/h4&gt;&lt;span class&#x3D;\&quot;permissionBlock\&quot;&gt;Tasks &amp;gt; Tasks&lt;/span&gt; - &#x60;View&#x60; &#x60;Edit&#x60;
  # @param task_id 
  # @param task_history_id 
  # @param task_history_file_upload_post_message 
  # @param [Hash] opts the optional parameters
  # @return [FileUploadTicketMessage]
  describe 'upload_task_history_file_request_async test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
