require "temboo"

module Twilio




  module Accounts



    ##############################################################################
    #
    # CreateAccount
    #
    # Creates a Twilio subaccount.
    #
    ##############################################################################

    class CreateAccount < Choreography

      ####
      #  Create a new instance of the CreateAccount Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Accounts/CreateAccount")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateAccountInputSet
      ####
      def new_input_set()
        return CreateAccountInputSet.new()
      end

      def make_result_set()
        return CreateAccountResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateAccountResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateAccount
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateAccountInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided by Twilio.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided by Twilio.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) Enter a name for the subaccount being created.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateAccount Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateAccountResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateAccount



    ##############################################################################
    #
    # GetAccount
    #
    # Retrieves general account information associated with the Twilio credentials provided.
    #
    ##############################################################################

    class GetAccount < Choreography

      ####
      #  Create a new instance of the GetAccount Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Accounts/GetAccount")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAccountInputSet
      ####
      def new_input_set()
        return GetAccountInputSet.new()
      end

      def make_result_set()
        return GetAccountResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetAccountResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAccount
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAccountInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount to retrieve. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAccount Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAccountResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetAccount



    ##############################################################################
    #
    # ListAccounts
    #
    # Retrieves a list of the subaccounts belonging to the main account.
    #
    ##############################################################################

    class ListAccounts < Choreography

      ####
      #  Create a new instance of the ListAccounts Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Accounts/ListAccounts")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListAccountsInputSet
      ####
      def new_input_set()
        return ListAccountsInputSet.new()
      end

      def make_result_set()
        return ListAccountsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListAccountsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListAccounts
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListAccountsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) Filters the results for accounts with friendly names that exactly match this value.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (optional, string) Filters results for accounts that have a particular status. Valid values are: closed, suspended, or active.
        ###

        def set_Status(value)
          set_input("Status", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListAccounts Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListAccountsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListAccounts



    ##############################################################################
    #
    # UpdateAccount
    #
    # Updates the name or status of a Twilio subaccount.
    #
    ##############################################################################

    class UpdateAccount < Choreography

      ####
      #  Create a new instance of the UpdateAccount Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Accounts/UpdateAccount")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateAccountInputSet
      ####
      def new_input_set()
        return UpdateAccountInputSet.new()
      end

      def make_result_set()
        return UpdateAccountResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateAccountResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateAccount
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateAccountInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided by Twilio.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided by Twilio.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) Updates the human-readable description of this account.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (optional, string) Updates the status of this account. Valid values are: closed, suspended, or active.
        ###

        def set_Status(value)
          set_input("Status", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount to update. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateAccount Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateAccountResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateAccount




  end # module Accounts

  module Applications



    ##############################################################################
    #
    # CreateApplication
    #
    # Creates a new application within your account.
    #
    ##############################################################################

    class CreateApplication < Choreography

      ####
      #  Create a new instance of the CreateApplication Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Applications/CreateApplication")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateApplicationInputSet
      ####
      def new_input_set()
        return CreateApplicationInputSet.new()
      end

      def make_result_set()
        return CreateApplicationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateApplicationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateApplication
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateApplicationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIVersion input for this Choreo. 
        # 
        # @param String - (optional, string) Requests to this application's URLs will start a new TwiML session with this API version. Either 2010-04-01 or 2008-08-01. Defaults to your account's default API version.
        ###

        def set_APIVersion(value)
          set_input("APIVersion", value)
        end
        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (required, string) A human readable description of the new application. Maximum 64 characters.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SmsFallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the SmsFallbackUrl. Must be either GET or POST. Defaults to POST.
        ###

        def set_SmsFallbackMethod(value)
          set_input("SmsFallbackMethod", value)
        end
        #### 
        # Set the value of the SmsFallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by SmsUrl.
        ###

        def set_SmsFallbackURL(value)
          set_input("SmsFallbackURL", value)
        end
        #### 
        # Set the value of the SmsMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the SmsUrl. Must be either GET or POST. Defaults to POST.
        ###

        def set_SmsMethod(value)
          set_input("SmsMethod", value)
        end
        #### 
        # Set the value of the SmsStatusCallback input for this Choreo. 
        # 
        # @param String - (optional, string) Twilio will make a POST request to this URL to pass status parameters (such as sent or failed) to your application.
        ###

        def set_SmsStatusCallback(value)
          set_input("SmsStatusCallback", value)
        end
        #### 
        # Set the value of the SmsURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio should request when somebody sends an SMS to a phone number assigned to this application.
        ###

        def set_SmsURL(value)
          set_input("SmsURL", value)
        end
        #### 
        # Set the value of the StatusCallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method Twilio will use to make requests to the StatusCallback URL. Either GET or POST. Defaults to POST.
        ###

        def set_StatusCallbackMethod(value)
          set_input("StatusCallbackMethod", value)
        end
        #### 
        # Set the value of the StatusCallback input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio will request to pass status parameters (such as call ended) to your application.
        ###

        def set_StatusCallback(value)
          set_input("StatusCallback", value)
        end
        #### 
        # Set the value of the VoiceApplicationSID input for this Choreo. 
        # 
        # @param String - (optional, string) The 34 character sid of the application Twilio should use to handle phone calls to this number.
        ###

        def set_VoiceApplicationSID(value)
          set_input("VoiceApplicationSID", value)
        end
        #### 
        # Set the value of the VoiceCallerIDLookup input for this Choreo. 
        # 
        # @param String - (optional, string) Do a lookup of a caller's name from the CNAM database and post it to your app. Either true or false. Defaults to false.
        ###

        def set_VoiceCallerIDLookup(value)
          set_input("VoiceCallerIDLookup", value)
        end
        #### 
        # Set the value of the VoiceFallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the VoiceFallbackUrl. Either GET or POST. Defaults to POST.
        ###

        def set_VoiceFallbackMethod(value)
          set_input("VoiceFallbackMethod", value)
        end
        #### 
        # Set the value of the VoiceFallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML at Url.
        ###

        def set_VoiceFallbackURL(value)
          set_input("VoiceFallbackURL", value)
        end
        #### 
        # Set the value of the VoiceMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the VoiceUrl. Must be either GET or POST. Defaults to POST.
        ###

        def set_VoiceMethod(value)
          set_input("VoiceMethod", value)
        end
        #### 
        # Set the value of the VoiceURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio should request when somebody dials a phone number assigned to this application.
        ###

        def set_VoiceURL(value)
          set_input("VoiceURL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateApplication Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateApplicationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateApplication



    ##############################################################################
    #
    # DeleteApplication
    #
    # Deletes an application from your Twilio account.
    #
    ##############################################################################

    class DeleteApplication < Choreography

      ####
      #  Create a new instance of the DeleteApplication Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Applications/DeleteApplication")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteApplicationInputSet
      ####
      def new_input_set()
        return DeleteApplicationInputSet.new()
      end

      def make_result_set()
        return DeleteApplicationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteApplicationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteApplication
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteApplicationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the ApplicationSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the application to retrieve.
        ###

        def set_ApplicationSID(value)
          set_input("ApplicationSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteApplication Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteApplicationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteApplication



    ##############################################################################
    #
    # GetApplication
    #
    # Returns the details for an individual application associated with your Twilio account.
    #
    ##############################################################################

    class GetApplication < Choreography

      ####
      #  Create a new instance of the GetApplication Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Applications/GetApplication")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetApplicationInputSet
      ####
      def new_input_set()
        return GetApplicationInputSet.new()
      end

      def make_result_set()
        return GetApplicationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetApplicationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetApplication
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetApplicationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the ApplicationSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the application to retrieve.
        ###

        def set_ApplicationSID(value)
          set_input("ApplicationSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetApplication Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetApplicationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetApplication



    ##############################################################################
    #
    # ListApplications
    #
    # Returns a list of Twilio applications associated with your account.
    #
    ##############################################################################

    class ListApplications < Choreography

      ####
      #  Create a new instance of the ListApplications Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Applications/ListApplications")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListApplicationsInputSet
      ####
      def new_input_set()
        return ListApplicationsInputSet.new()
      end

      def make_result_set()
        return ListApplicationsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListApplicationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListApplications
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListApplicationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) Only return applications with friendly names that exactly match this name.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListApplications Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListApplicationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListApplications



    ##############################################################################
    #
    # UpdateApplication
    #
    # Updates an existing application within your account.
    #
    ##############################################################################

    class UpdateApplication < Choreography

      ####
      #  Create a new instance of the UpdateApplication Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Applications/UpdateApplication")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateApplicationInputSet
      ####
      def new_input_set()
        return UpdateApplicationInputSet.new()
      end

      def make_result_set()
        return UpdateApplicationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateApplicationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateApplication
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateApplicationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIVersion input for this Choreo. 
        # 
        # @param String - (optional, string) Requests to this application's URLs will start a new TwiML session with this API version. Either 2010-04-01 or 2008-08-01. Defaults to your account's default API version.
        ###

        def set_APIVersion(value)
          set_input("APIVersion", value)
        end
        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the ApplicationSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the application to update.
        ###

        def set_ApplicationSID(value)
          set_input("ApplicationSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) A human readable description of the new application. Maximum 64 characters.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SmsFallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the SmsFallbackUrl. Must be either GET or POST. Defaults to POST.
        ###

        def set_SmsFallbackMethod(value)
          set_input("SmsFallbackMethod", value)
        end
        #### 
        # Set the value of the SmsFallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by SmsUrl.
        ###

        def set_SmsFallbackURL(value)
          set_input("SmsFallbackURL", value)
        end
        #### 
        # Set the value of the SmsMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the SmsUrl. Must be either GET or POST. Defaults to POST.
        ###

        def set_SmsMethod(value)
          set_input("SmsMethod", value)
        end
        #### 
        # Set the value of the SmsStatusCallback input for this Choreo. 
        # 
        # @param String - (optional, string) Twilio will make a POST request to this URL to pass status parameters (such as sent or failed) to your application.
        ###

        def set_SmsStatusCallback(value)
          set_input("SmsStatusCallback", value)
        end
        #### 
        # Set the value of the SmsURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio should request when somebody sends an SMS to a phone number assigned to this application.
        ###

        def set_SmsURL(value)
          set_input("SmsURL", value)
        end
        #### 
        # Set the value of the StatusCallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method Twilio will use to make requests to the StatusCallback URL. Either GET or POST. Defaults to POST.
        ###

        def set_StatusCallbackMethod(value)
          set_input("StatusCallbackMethod", value)
        end
        #### 
        # Set the value of the StatusCallback input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio will request to pass status parameters (such as call ended) to your application.
        ###

        def set_StatusCallback(value)
          set_input("StatusCallback", value)
        end
        #### 
        # Set the value of the VoiceApplicationSID input for this Choreo. 
        # 
        # @param String - (optional, string) The 34 character sid of the application Twilio should use to handle phone calls to this number.
        ###

        def set_VoiceApplicationSID(value)
          set_input("VoiceApplicationSID", value)
        end
        #### 
        # Set the value of the VoiceCallerIDLookup input for this Choreo. 
        # 
        # @param String - (optional, string) Do a lookup of a caller's name from the CNAM database and post it to your app. Either true or false. Defaults to false.
        ###

        def set_VoiceCallerIDLookup(value)
          set_input("VoiceCallerIDLookup", value)
        end
        #### 
        # Set the value of the VoiceFallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the VoiceFallbackUrl. Either GET or POST. Defaults to POST.
        ###

        def set_VoiceFallbackMethod(value)
          set_input("VoiceFallbackMethod", value)
        end
        #### 
        # Set the value of the VoiceFallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML at Url.
        ###

        def set_VoiceFallbackURL(value)
          set_input("VoiceFallbackURL", value)
        end
        #### 
        # Set the value of the VoiceMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the VoiceUrl. Must be either GET or POST. Defaults to POST.
        ###

        def set_VoiceMethod(value)
          set_input("VoiceMethod", value)
        end
        #### 
        # Set the value of the VoiceURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio should request when somebody dials a phone number assigned to this application.
        ###

        def set_VoiceURL(value)
          set_input("VoiceURL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateApplication Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateApplicationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateApplication




  end # module Applications

  module AvailablePhoneNumbers



    ##############################################################################
    #
    # LocalList
    #
    # Returns a list of local available phone numbers that match the specified filters.
    #
    ##############################################################################

    class LocalList < Choreography

      ####
      #  Create a new instance of the LocalList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/AvailablePhoneNumbers/LocalList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LocalListInputSet
      ####
      def new_input_set()
        return LocalListInputSet.new()
      end

      def make_result_set()
        return LocalListResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LocalListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the LocalList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LocalListInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AreaCode input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Find phone numbers in the specified area code. (US and Canada only).
        ###

        def set_AreaCode(value)
          set_input("AreaCode", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the Contains input for this Choreo. 
        # 
        # @param String - (optional, string) A pattern to match phone numbers on. Valid characters are '*' and [0-9a-zA-Z]. The '*' character will match any single digit.
        ###

        def set_Contains(value)
          set_input("Contains", value)
        end
        #### 
        # Set the value of the Distance input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the search radius for Latitude, Longitude, and NearNumber quires in miles. If not specified this defaults to 25 miles.
        ###

        def set_Distance(value)
          set_input("Distance", value)
        end
        #### 
        # Set the value of the InLata input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to a specific Local access and transport area (LATA). Given a phone number, search within the same LATA as that number.
        ###

        def set_InLata(value)
          set_input("InLata", value)
        end
        #### 
        # Set the value of the InPostalCode input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limit results to a particular postal code. Given a phone number, search within the same postal code as that number. (US and Canada only).
        ###

        def set_InPostalCode(value)
          set_input("InPostalCode", value)
        end
        #### 
        # Set the value of the InRateCenter input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to a specific rate center, or given a phone number search within the same rate center as that number. Requires InLata to be set as well.
        ###

        def set_InRateCenter(value)
          set_input("InRateCenter", value)
        end
        #### 
        # Set the value of the InRegion input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to a particular region (i.e. State/Province). Given a phone number, search within the same Region as that number. (US and Canada only).
        ###

        def set_InRegion(value)
          set_input("InRegion", value)
        end
        #### 
        # Set the value of the IsoCountryCode input for this Choreo. 
        # 
        # @param String - (optional, string) The country code to search within. Defaults to US.
        ###

        def set_IsoCountryCode(value)
          set_input("IsoCountryCode", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Finds numbers close to this Latitude coordinate. Longitude is also required when searching by coordinates.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param String - (optional, string) Finds numbers close this Longitude. Latitude is also required when searching by coordinates.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the NearNumber input for this Choreo. 
        # 
        # @param String - (optional, string) Searches numbers near  this phone number.
        ###

        def set_NearNumber(value)
          set_input("NearNumber", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the LocalList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LocalListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class LocalList



    ##############################################################################
    #
    # TollFreeList
    #
    # Returns a list of toll-free available phone numbers that match the specified filters.
    #
    ##############################################################################

    class TollFreeList < Choreography

      ####
      #  Create a new instance of the TollFreeList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/AvailablePhoneNumbers/TollFreeList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TollFreeListInputSet
      ####
      def new_input_set()
        return TollFreeListInputSet.new()
      end

      def make_result_set()
        return TollFreeListResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = TollFreeListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TollFreeList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TollFreeListInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AreaCode input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Find phone numbers in the specified area code. (US and Canada only).
        ###

        def set_AreaCode(value)
          set_input("AreaCode", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the Contains input for this Choreo. 
        # 
        # @param String - (optional, string) A pattern to match phone numbers on. Valid characters are '*' and [0-9a-zA-Z]. The '*' character will match any single digit.
        ###

        def set_Contains(value)
          set_input("Contains", value)
        end
        #### 
        # Set the value of the IsoCountryCode input for this Choreo. 
        # 
        # @param String - (optional, string) The country code to search within. Defaults to US.
        ###

        def set_IsoCountryCode(value)
          set_input("IsoCountryCode", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TollFreeList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TollFreeListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TollFreeList




  end # module AvailablePhoneNumbers

  module Calls



    ##############################################################################
    #
    # GetCall
    #
    # Returns the single Call with a given id.
    #
    ##############################################################################

    class GetCall < Choreography

      ####
      #  Create a new instance of the GetCall Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Calls/GetCall")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCallInputSet
      ####
      def new_input_set()
        return GetCallInputSet.new()
      end

      def make_result_set()
        return GetCallResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetCallResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCall
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCallInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the CallSID input for this Choreo. 
        # 
        # @param String - (required, string) The unique id of the call to retrieve.
        ###

        def set_CallSID(value)
          set_input("CallSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the call. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCall Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCallResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCall



    ##############################################################################
    #
    # GetLastCall
    #
    # Retrieves the latest phone call made to or from the specified account.
    #
    ##############################################################################

    class GetLastCall < Choreography

      ####
      #  Create a new instance of the GetLastCall Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Calls/GetLastCall")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLastCallInputSet
      ####
      def new_input_set()
        return GetLastCallInputSet.new()
      end

      def make_result_set()
        return GetLastCallResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLastCallResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLastCall
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLastCallInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLastCall Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLastCallResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLastCall



    ##############################################################################
    #
    # GetLastCallFrom
    #
    # Retrieves the latest phone call made from the specified number.
    #
    ##############################################################################

    class GetLastCallFrom < Choreography

      ####
      #  Create a new instance of the GetLastCallFrom Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Calls/GetLastCallFrom")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLastCallFromInputSet
      ####
      def new_input_set()
        return GetLastCallFromInputSet.new()
      end

      def make_result_set()
        return GetLastCallFromResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLastCallFromResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLastCallFrom
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLastCallFromInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the From input for this Choreo. 
        # 
        # @param String - (required, string) Filters results for calls from this phone number or Client identifier.
        ###

        def set_From(value)
          set_input("From", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLastCallFrom Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLastCallFromResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLastCallFrom



    ##############################################################################
    #
    # GetLastCallTo
    #
    # Retrieves the latest phone call made to a specified number.
    #
    ##############################################################################

    class GetLastCallTo < Choreography

      ####
      #  Create a new instance of the GetLastCallTo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Calls/GetLastCallTo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLastCallToInputSet
      ####
      def new_input_set()
        return GetLastCallToInputSet.new()
      end

      def make_result_set()
        return GetLastCallToResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLastCallToResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLastCallTo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLastCallToInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (required, string) Filters results for calls to this phone number or Client identifier.
        ###

        def set_To(value)
          set_input("To", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLastCallTo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLastCallToResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLastCallTo



    ##############################################################################
    #
    # ListCalls
    #
    # Retrieves a list of phone calls made to and from the specified account.
    #
    ##############################################################################

    class ListCalls < Choreography

      ####
      #  Create a new instance of the ListCalls Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Calls/ListCalls")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListCallsInputSet
      ####
      def new_input_set()
        return ListCallsInputSet.new()
      end

      def make_result_set()
        return ListCallsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListCallsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListCalls
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListCallsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the From input for this Choreo. 
        # 
        # @param String - (optional, string) Filters results for calls from this phone number or Client identifier.
        ###

        def set_From(value)
          set_input("From", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ParentCallSID input for this Choreo. 
        # 
        # @param String - (optional, string) Filters results for calls spawned by the call with this Sid.
        ###

        def set_ParentCallSID(value)
          set_input("ParentCallSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StartTime input for this Choreo. 
        # 
        # @param String - (optional, string) Filters results for calls that started on this date, given as YYYY-MM-DD. Also supports operators such as >= or <=.
        ###

        def set_StartTime(value)
          set_input("StartTime", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (optional, string) Fillters results for calls currently in this status. Valid values are: queued, ringing, in-progress, completed, failed, busy, or no-answer.
        ###

        def set_Status(value)
          set_input("Status", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount to retrieve calls for. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (optional, string) Filters results for calls to this phone number or Client identifier.
        ###

        def set_To(value)
          set_input("To", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListCalls Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListCallsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListCalls



    ##############################################################################
    #
    # ListNotifications
    #
    # Returns a list of notifications generated during a call.
    #
    ##############################################################################

    class ListNotifications < Choreography

      ####
      #  Create a new instance of the ListNotifications Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Calls/ListNotifications")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListNotificationsInputSet
      ####
      def new_input_set()
        return ListNotificationsInputSet.new()
      end

      def make_result_set()
        return ListNotificationsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListNotificationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListNotifications
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListNotificationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the CallSID input for this Choreo. 
        # 
        # @param String - (required, string) The unique id of the call to retrieve a list of notifications for.
        ###

        def set_CallSID(value)
          set_input("CallSID", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the call. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListNotifications Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListNotificationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListNotifications



    ##############################################################################
    #
    # ListRecordings
    #
    # Returns a list of recordings generated during a call.
    #
    ##############################################################################

    class ListRecordings < Choreography

      ####
      #  Create a new instance of the ListRecordings Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Calls/ListRecordings")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListRecordingsInputSet
      ####
      def new_input_set()
        return ListRecordingsInputSet.new()
      end

      def make_result_set()
        return ListRecordingsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListRecordingsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListRecordings
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListRecordingsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the CallSID input for this Choreo. 
        # 
        # @param String - (required, string) The unique id of the call to retrieve a list of recordings for.
        ###

        def set_CallSID(value)
          set_input("CallSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the call. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListRecordings Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListRecordingsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListRecordings



    ##############################################################################
    #
    # MakeCall
    #
    # Initiates a call from the specified Twilio account.
    #
    ##############################################################################

    class MakeCall < Choreography

      ####
      #  Create a new instance of the MakeCall Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Calls/MakeCall")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MakeCallInputSet
      ####
      def new_input_set()
        return MakeCallInputSet.new()
      end

      def make_result_set()
        return MakeCallResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = MakeCallResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the MakeCall
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MakeCallInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the ApplicationSID input for this Choreo. 
        # 
        # @param String - (conditional, string) The 34 character sid of the application Twilio should use to handle this phone call. Required unless providing the URL parameter.
        ###

        def set_ApplicationSID(value)
          set_input("ApplicationSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that Twilio should use to request the FallbackUrl. Valid values are: GET and POST.
        ###

        def set_FallbackMethod(value)
          set_input("FallbackMethod", value)
        end
        #### 
        # Set the value of the FallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Twilio will request if an error occurs making a request to the URL provided. This is ignored when ApplicationSID is provided.
        ###

        def set_FallbackURL(value)
          set_input("FallbackURL", value)
        end
        #### 
        # Set the value of the From input for this Choreo. 
        # 
        # @param String - (required, string) The Twilio phone number or client identifier to use as the caller id.
        ###

        def set_From(value)
          set_input("From", value)
        end
        #### 
        # Set the value of the IfMachine input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates if Twilio should to try and determine if a machine (like voicemail) or a human has answered the call. Possible values are "Continue" and "Hangup".
        ###

        def set_IfMachine(value)
          set_input("IfMachine", value)
        end
        #### 
        # Set the value of the Method input for this Choreo. 
        # 
        # @param String - (optional, string) This the HTTP method Twilio will use when making its request to the URL (when the URL input is provided). Defaults to POST. This is ignored when ApplicationSID is provided.
        ###

        def set_Method(value)
          set_input("Method", value)
        end
        #### 
        # Set the value of the Record input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set this parameter to 'true' to record the entirety of a phone call.
        ###

        def set_Record(value)
          set_input("Record", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SendDigits input for this Choreo. 
        # 
        # @param String - (optional, string) A string of keys to dial after connecting to the number. Valid digits in the string include: any digit (0-9), '#', '*' and 'w' (to insert a half second pause).
        ###

        def set_SendDigits(value)
          set_input("SendDigits", value)
        end
        #### 
        # Set the value of the StatusCallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method Twilio should use when requesting the StatusCallback URL. Defaults to POST. If an ApplicationSid parameter is present, this parameter is ignored.
        ###

        def set_StatusCallbackMethod(value)
          set_input("StatusCallbackMethod", value)
        end
        #### 
        # Set the value of the StatusCallback input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Twilio will request when the call ends to notify your app. This is ignored when ApplicationSID is provided.
        ###

        def set_StatusCallback(value)
          set_input("StatusCallback", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with this call. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end
        #### 
        # Set the value of the Timeout input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The integer number of seconds that Twilio should allow the phone to ring before assuming there is no answer. Default is 60 seconds, the maximum is 999 seconds.
        ###

        def set_Timeout(value)
          set_input("Timeout", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (required, string) The phone number or client identifier to call.
        ###

        def set_To(value)
          set_input("To", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (conditional, string) The fully qualified URL that should be consulted when the call connects. Required unless providing the ApplicationSID parameter.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the MakeCall Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MakeCallResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class MakeCall




  end # module Calls

  module Conferences



    ##############################################################################
    #
    # DeleteParticipant
    #
    # Removes an individual partipant from a conference.
    #
    ##############################################################################

    class DeleteParticipant < Choreography

      ####
      #  Create a new instance of the DeleteParticipant Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Conferences/DeleteParticipant")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteParticipantInputSet
      ####
      def new_input_set()
        return DeleteParticipantInputSet.new()
      end

      def make_result_set()
        return DeleteParticipantResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteParticipantResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteParticipant
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteParticipantInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the CallSID input for this Choreo. 
        # 
        # @param String - (required, string) The call id associated with the participant to delete.
        ###

        def set_CallSID(value)
          set_input("CallSID", value)
        end
        #### 
        # Set the value of the ConferenceSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the conference that the participant is in.
        ###

        def set_ConferenceSID(value)
          set_input("ConferenceSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the conference. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteParticipant Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteParticipantResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteParticipant



    ##############################################################################
    #
    # GetConference
    #
    # Returns an individual conference.
    #
    ##############################################################################

    class GetConference < Choreography

      ####
      #  Create a new instance of the GetConference Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Conferences/GetConference")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetConferenceInputSet
      ####
      def new_input_set()
        return GetConferenceInputSet.new()
      end

      def make_result_set()
        return GetConferenceResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetConferenceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetConference
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetConferenceInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the ConferenceSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the conference to retrieve.
        ###

        def set_ConferenceSID(value)
          set_input("ConferenceSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the conference. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetConference Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetConferenceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetConference



    ##############################################################################
    #
    # GetParticipant
    #
    # Retrieves details for an individual participant of a conference.
    #
    ##############################################################################

    class GetParticipant < Choreography

      ####
      #  Create a new instance of the GetParticipant Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Conferences/GetParticipant")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetParticipantInputSet
      ####
      def new_input_set()
        return GetParticipantInputSet.new()
      end

      def make_result_set()
        return GetParticipantResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetParticipantResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetParticipant
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetParticipantInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the CallSID input for this Choreo. 
        # 
        # @param String - (required, string) The call id associated with the participant to retrieve.
        ###

        def set_CallSID(value)
          set_input("CallSID", value)
        end
        #### 
        # Set the value of the ConferencesSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the conference that the participant is in.
        ###

        def set_ConferencesSID(value)
          set_input("ConferencesSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the conference. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetParticipant Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetParticipantResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetParticipant



    ##############################################################################
    #
    # ListConferences
    #
    # Returns a list of conferences within an account.
    #
    ##############################################################################

    class ListConferences < Choreography

      ####
      #  Create a new instance of the ListConferences Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Conferences/ListConferences")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListConferencesInputSet
      ####
      def new_input_set()
        return ListConferencesInputSet.new()
      end

      def make_result_set()
        return ListConferencesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListConferencesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListConferences
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListConferencesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the DateCreated input for this Choreo. 
        # 
        # @param String - (optional, string) Only show conferences that started on this date, given as YYYY-MM-DD. You can also specify operators such as <=YYYY-MM-DD.
        ###

        def set_DateCreated(value)
          set_input("DateCreated", value)
        end
        #### 
        # Set the value of the DateUpdated input for this Choreo. 
        # 
        # @param String - (optional, string) Only returns conferences that were last updated on this date, given as YYYY-MM-DD. You can also specify operators such as <=YYYY-MM-DD.
        ###

        def set_DateUpdated(value)
          set_input("DateUpdated", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) Returns conferences who's FriendlyName is the exact match of this string.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Status input for this Choreo. 
        # 
        # @param String - (optional, string) Only returns conferences currently in with this status. May be init, in-progress, or completed.
        ###

        def set_Status(value)
          set_input("Status", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the list of conferences. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListConferences Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListConferencesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListConferences



    ##############################################################################
    #
    # UpdateParticipant
    #
    # Updates the status of a conference participant.
    #
    ##############################################################################

    class UpdateParticipant < Choreography

      ####
      #  Create a new instance of the UpdateParticipant Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Conferences/UpdateParticipant")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateParticipantInputSet
      ####
      def new_input_set()
        return UpdateParticipantInputSet.new()
      end

      def make_result_set()
        return UpdateParticipantResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateParticipantResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateParticipant
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateParticipantInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the CallSID input for this Choreo. 
        # 
        # @param String - (required, string) The call id associated with the participant to update.
        ###

        def set_CallSID(value)
          set_input("CallSID", value)
        end
        #### 
        # Set the value of the ConferenceSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the conference that the participant is in.
        ###

        def set_ConferenceSID(value)
          set_input("ConferenceSID", value)
        end
        #### 
        # Set the value of the Muted input for this Choreo. 
        # 
        # @param String - (required, string) Specifying true will mute the participant, while false will un-mute. Anything other than true or false is interpreted as false.
        ###

        def set_Muted(value)
          set_input("Muted", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the conference. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateParticipant Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateParticipantResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateParticipant




  end # module Conferences

  module ConnectApps



    ##############################################################################
    #
    # GetConnectApp
    #
    # Retrieves the details for an individual Connect App associated with a Twilio account.
    #
    ##############################################################################

    class GetConnectApp < Choreography

      ####
      #  Create a new instance of the GetConnectApp Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/ConnectApps/GetConnectApp")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetConnectAppInputSet
      ####
      def new_input_set()
        return GetConnectAppInputSet.new()
      end

      def make_result_set()
        return GetConnectAppResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetConnectAppResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetConnectApp
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetConnectAppInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the ConnectAppSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the Connect App to retrieve.
        ###

        def set_ConnectAppSID(value)
          set_input("ConnectAppSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetConnectApp Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetConnectAppResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetConnectApp



    ##############################################################################
    #
    # ListConnectApps
    #
    # Returns a list of Connect Apps within your Twilio account.
    #
    ##############################################################################

    class ListConnectApps < Choreography

      ####
      #  Create a new instance of the ListConnectApps Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/ConnectApps/ListConnectApps")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListConnectAppsInputSet
      ####
      def new_input_set()
        return ListConnectAppsInputSet.new()
      end

      def make_result_set()
        return ListConnectAppsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListConnectAppsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListConnectApps
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListConnectAppsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListConnectApps Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListConnectAppsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListConnectApps



    ##############################################################################
    #
    # UpdateConnectApp
    #
    # Updates the details for an individual Connect App associated with a Twilio account.
    #
    ##############################################################################

    class UpdateConnectApp < Choreography

      ####
      #  Create a new instance of the UpdateConnectApp Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/ConnectApps/UpdateConnectApp")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateConnectAppInputSet
      ####
      def new_input_set()
        return UpdateConnectAppInputSet.new()
      end

      def make_result_set()
        return UpdateConnectAppResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateConnectAppResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateConnectApp
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateConnectAppInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the AuthorizeRedirectURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL the user's browser will redirect to after Twilio authenticates the user and obtains authorization for this Connect App.
        ###

        def set_AuthorizeRedirectURL(value)
          set_input("AuthorizeRedirectURL", value)
        end
        #### 
        # Set the value of the CompanyName input for this Choreo. 
        # 
        # @param String - (optional, string) The company name for this Connect App.
        ###

        def set_CompanyName(value)
          set_input("CompanyName", value)
        end
        #### 
        # Set the value of the ConnectAppSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the Connect App to update.
        ###

        def set_ConnectAppSID(value)
          set_input("ConnectAppSID", value)
        end
        #### 
        # Set the value of the DeauthorizeCallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method to be used when making a request to the DeauthorizeCallbackUrl. Either GET or POST.
        ###

        def set_DeauthorizeCallbackMethod(value)
          set_input("DeauthorizeCallbackMethod", value)
        end
        #### 
        # Set the value of the DeauthorizeCallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL to which Twilio will send a request when a user de-authorizes this Connect App.
        ###

        def set_DeauthorizeCallbackURL(value)
          set_input("DeauthorizeCallbackURL", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A more detailed human readable description of the Connect App.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) A human readable description of the Connect App, with maximum length 64 characters.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the HomepageURL input for this Choreo. 
        # 
        # @param String - (optional, string) The public URL where users can obtain more information about this Connect App.
        ###

        def set_HomepageURL(value)
          set_input("HomepageURL", value)
        end
        #### 
        # Set the value of the Permissions input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of permssions you will request from users of this ConnectApp. Valid permssions are get-all or post-all.
        ###

        def set_Permissions(value)
          set_input("Permissions", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateConnectApp Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateConnectAppResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateConnectApp




  end # module ConnectApps
  ##############################################################################
  #
  # CreateSubaccount
  #
  # Create a Twilio subaccount.
  #
  ##############################################################################

  class CreateSubaccount < Choreography

    ####
    #  Create a new instance of the CreateSubaccount Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Twilio/CreateSubaccount")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateSubaccountInputSet
    ####
    def new_input_set()
      return CreateSubaccountInputSet.new()
    end

    def make_result_set()
      return CreateSubaccountResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = CreateSubaccountResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateSubaccount
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateSubaccountInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountSID input for this Choreo. 
      # 
      # @param String - (conditional, string) The AccountSID provided when you signed up for a Twilio account.
      ###

      def set_AccountSID(value)
        set_input("AccountSID", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the FriendlyName input for this Choreo. 
      # 
      # @param String - (optional, string) Enter a name for the subaccount being created.
      ###

      def set_FriendlyName(value)
        set_input("FriendlyName", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateSubaccount Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateSubaccountResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Twilio.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateSubaccount



  ##############################################################################
  #
  # DeleteNotification
  #
  # Delete a notification from the account log.
  #
  ##############################################################################

  class DeleteNotification < Choreography

    ####
    #  Create a new instance of the DeleteNotification Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Twilio/DeleteNotification")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteNotificationInputSet
    ####
    def new_input_set()
      return DeleteNotificationInputSet.new()
    end

    def make_result_set()
      return DeleteNotificationResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = DeleteNotificationResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteNotification
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteNotificationInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountSID input for this Choreo. 
      # 
      # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
      ###

      def set_AccountSID(value)
        set_input("AccountSID", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the NotificationSID input for this Choreo. 
      # 
      # @param String - (required, string) Enter the SID of the notification resource to be deleted.
      ###

      def set_NotificationSID(value)
        set_input("NotificationSID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteNotification Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteNotificationResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Twilio.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteNotification



  ##############################################################################
  #
  # GetAccountInfo
  #
  # Obtain account information.
  #
  ##############################################################################

  class GetAccountInfo < Choreography

    ####
    #  Create a new instance of the GetAccountInfo Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Twilio/GetAccountInfo")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetAccountInfoInputSet
    ####
    def new_input_set()
      return GetAccountInfoInputSet.new()
    end

    def make_result_set()
      return GetAccountInfoResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetAccountInfoResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetAccountInfo
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetAccountInfoInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountSID input for this Choreo. 
      # 
      # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
      ###

      def set_AccountSID(value)
        set_input("AccountSID", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetAccountInfo Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetAccountInfoResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Twilio.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetAccountInfo



  ##############################################################################
  #
  # GetAllNotifications
  #
  # Return a list of all notifications generated for a specified account.
  #
  ##############################################################################

  class GetAllNotifications < Choreography

    ####
    #  Create a new instance of the GetAllNotifications Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Twilio/GetAllNotifications")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetAllNotificationsInputSet
    ####
    def new_input_set()
      return GetAllNotificationsInputSet.new()
    end

    def make_result_set()
      return GetAllNotificationsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetAllNotificationsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetAllNotifications
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetAllNotificationsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountSID input for this Choreo. 
      # 
      # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
      ###

      def set_AccountSID(value)
        set_input("AccountSID", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the LogLevel input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the log level by entering: 0 for ERROR, 1 for WARNING.
      ###

      def set_LogLevel(value)
        set_input("LogLevel", value)
      end
      #### 
      # Set the value of the MessageDate input for this Choreo. 
      # 
      # @param String - (optional, string) Filter notifications by date.  Dates should be formatted as follows: YYYY-MM-DD.  Dates before, at, or after a specified date can be entered using inequality operators: >=YYYY-MM-DD
      ###

      def set_MessageDate(value)
        set_input("MessageDate", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetAllNotifications Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetAllNotificationsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Twilio.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetAllNotifications



  ##############################################################################
  #
  # GetNotificationBySID
  #
  # Get comprehensive log information for a specified Notification SID. 
  #
  ##############################################################################

  class GetNotificationBySID < Choreography

    ####
    #  Create a new instance of the GetNotificationBySID Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Twilio/GetNotificationBySID")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetNotificationBySIDInputSet
    ####
    def new_input_set()
      return GetNotificationBySIDInputSet.new()
    end

    def make_result_set()
      return GetNotificationBySIDResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetNotificationBySIDResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetNotificationBySID
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetNotificationBySIDInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountSID input for this Choreo. 
      # 
      # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
      ###

      def set_AccountSID(value)
        set_input("AccountSID", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the NotificationSID input for this Choreo. 
      # 
      # @param String - (required, string) Enter the SID of the notification resource to be retrieved.
      ###

      def set_NotificationSID(value)
        set_input("NotificationSID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetNotificationBySID Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetNotificationBySIDResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from Twilio.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetNotificationBySID



  ##############################################################################
  #
  # GetSMSList
  #
  # Retrieves a list of SMS messages from your Twilio account.
  #
  ##############################################################################

  class GetSMSList < Choreography

    ####
    #  Create a new instance of the GetSMSList Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Twilio/GetSMSList")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetSMSListInputSet
    ####
    def new_input_set()
      return GetSMSListInputSet.new()
    end

    def make_result_set()
      return GetSMSListResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetSMSListResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetSMSList
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetSMSListInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountSID input for this Choreo. 
      # 
      # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
      ###

      def set_AccountSID(value)
        set_input("AccountSID", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the DateSent input for this Choreo. 
      # 
      # @param String - (optional, date) A date in YYYY-MM-DD format. If you use this input, the Choreo will retrieve only messages sent on this date.
      ###

      def set_DateSent(value)
        set_input("DateSent", value)
      end
      #### 
      # Set the value of the From input for this Choreo. 
      # 
      # @param String - (optional, string) If used, the Choreo will only retrieve messages sent from this phone number.
      ###

      def set_From(value)
        set_input("From", value)
      end
      #### 
      # Set the value of the To input for this Choreo. 
      # 
      # @param String - (optional, string) If used, the Choreo will only retrieve messages sent to this phone number.
      ###

      def set_To(value)
        set_input("To", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetSMSList Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetSMSListResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Twilio.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetSMSList



  ##############################################################################
  #
  # GetSMSMessageById
  #
  # Retrieves a specific SMS from Twilio by allowing you to specify a message ID.
  #
  ##############################################################################

  class GetSMSMessageById < Choreography

    ####
    #  Create a new instance of the GetSMSMessageById Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Twilio/GetSMSMessageById")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetSMSMessageByIdInputSet
    ####
    def new_input_set()
      return GetSMSMessageByIdInputSet.new()
    end

    def make_result_set()
      return GetSMSMessageByIdResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetSMSMessageByIdResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetSMSMessageById
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetSMSMessageByIdInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountSID input for this Choreo. 
      # 
      # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
      ###

      def set_AccountSID(value)
        set_input("AccountSID", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the SMSMessageSid input for this Choreo. 
      # 
      # @param String - (required, string) The unique ID for the Twilio message you want to retrieve.
      ###

      def set_SMSMessageSid(value)
        set_input("SMSMessageSid", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetSMSMessageById Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetSMSMessageByIdResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Twilio.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetSMSMessageById




  module IncomingPhoneNumbers



    ##############################################################################
    #
    # AddPhoneNumber
    #
    # Purchases a new phone number for your Twilio account.
    #
    ##############################################################################

    class AddPhoneNumber < Choreography

      ####
      #  Create a new instance of the AddPhoneNumber Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/IncomingPhoneNumbers/AddPhoneNumber")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddPhoneNumberInputSet
      ####
      def new_input_set()
        return AddPhoneNumberInputSet.new()
      end

      def make_result_set()
        return AddPhoneNumberResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AddPhoneNumberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddPhoneNumber
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddPhoneNumberInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIVersion input for this Choreo. 
        # 
        # @param String - (optional, string) Calls to this phone number will start a new TwiML session with this API version. Either 2010-04-01 or 2008-08-01.
        ###

        def set_APIVersion(value)
          set_input("APIVersion", value)
        end
        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AreaCode input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The desired area code for your new incoming phone number. Required unless specifying the complete PhoneNumber.
        ###

        def set_AreaCode(value)
          set_input("AreaCode", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) A human readable description of the new incoming phone number resource, with maximum length 64 characters.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the PhoneNumber input for this Choreo. 
        # 
        # @param String - (conditional, string) The phone number you want to purchase. Required unless provided the AreaCode.
        ###

        def set_PhoneNumber(value)
          set_input("PhoneNumber", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SmsApplicationSID input for this Choreo. 
        # 
        # @param String - (optional, string) The 34 character sid of the application Twilio should use to handle SMSs sent to this number.
        ###

        def set_SmsApplicationSID(value)
          set_input("SmsApplicationSID", value)
        end
        #### 
        # Set the value of the SmsFallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the SmsFallbackUrl. Either GET or POST.
        ###

        def set_SmsFallbackMethod(value)
          set_input("SmsFallbackMethod", value)
        end
        #### 
        # Set the value of the SmsFallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by SmsUrl.
        ###

        def set_SmsFallbackURL(value)
          set_input("SmsFallbackURL", value)
        end
        #### 
        # Set the value of the SmsMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the SmsUrl. Either GET or POST.
        ###

        def set_SmsMethod(value)
          set_input("SmsMethod", value)
        end
        #### 
        # Set the value of the SmsURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio should request when somebody sends an SMS to the new phone number.
        ###

        def set_SmsURL(value)
          set_input("SmsURL", value)
        end
        #### 
        # Set the value of the StatusCallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method Twilio will use to make requests to the StatusCallback URL. Either GET or POST.
        ###

        def set_StatusCallbackMethod(value)
          set_input("StatusCallbackMethod", value)
        end
        #### 
        # Set the value of the StatusCallback input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio will request to pass status parameters (such as call ended) to your application.
        ###

        def set_StatusCallback(value)
          set_input("StatusCallback", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the phone number. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end
        #### 
        # Set the value of the VoiceApplicationSID input for this Choreo. 
        # 
        # @param String - (optional, string) The 34 character sid of the application Twilio should use to handle phone calls to this number.
        ###

        def set_VoiceApplicationSID(value)
          set_input("VoiceApplicationSID", value)
        end
        #### 
        # Set the value of the VoiceCallerIDLookup input for this Choreo. 
        # 
        # @param String - (optional, string) Do a lookup of a caller's name from the CNAM database and post it to your app. Either true or false.
        ###

        def set_VoiceCallerIDLookup(value)
          set_input("VoiceCallerIDLookup", value)
        end
        #### 
        # Set the value of the VoiceFallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the VoiceFallbackURL. Either GET or POST.
        ###

        def set_VoiceFallbackMethod(value)
          set_input("VoiceFallbackMethod", value)
        end
        #### 
        # Set the value of the VoiceFallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by VoiceURL.
        ###

        def set_VoiceFallbackURL(value)
          set_input("VoiceFallbackURL", value)
        end
        #### 
        # Set the value of the VoiceMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the VoiceURL. Either GET or POST.
        ###

        def set_VoiceMethod(value)
          set_input("VoiceMethod", value)
        end
        #### 
        # Set the value of the VoiceURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio should request when somebody dials the phone number.
        ###

        def set_VoiceURL(value)
          set_input("VoiceURL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddPhoneNumber Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddPhoneNumberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddPhoneNumber



    ##############################################################################
    #
    # DeletePhoneNumber
    #
    # Deletes an individual phone from Twilio.
    #
    ##############################################################################

    class DeletePhoneNumber < Choreography

      ####
      #  Create a new instance of the DeletePhoneNumber Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/IncomingPhoneNumbers/DeletePhoneNumber")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeletePhoneNumberInputSet
      ####
      def new_input_set()
        return DeletePhoneNumberInputSet.new()
      end

      def make_result_set()
        return DeletePhoneNumberResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeletePhoneNumberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeletePhoneNumber
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeletePhoneNumberInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the IncomingPhoneNumberSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the incoming phone number to retrieve.
        ###

        def set_IncomingPhoneNumberSID(value)
          set_input("IncomingPhoneNumberSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the phone number. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeletePhoneNumber Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeletePhoneNumberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeletePhoneNumber



    ##############################################################################
    #
    # GetPhoneNumber
    #
    # Returns an individual phone number purchased from Twilio or ported to Twilio.
    #
    ##############################################################################

    class GetPhoneNumber < Choreography

      ####
      #  Create a new instance of the GetPhoneNumber Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/IncomingPhoneNumbers/GetPhoneNumber")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPhoneNumberInputSet
      ####
      def new_input_set()
        return GetPhoneNumberInputSet.new()
      end

      def make_result_set()
        return GetPhoneNumberResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetPhoneNumberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPhoneNumber
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPhoneNumberInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the IncomingPhoneNumberSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the incoming phone number to retrieve.
        ###

        def set_IncomingPhoneNumberSID(value)
          set_input("IncomingPhoneNumberSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the phone number. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPhoneNumber Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPhoneNumberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPhoneNumber



    ##############################################################################
    #
    # ListPhoneNumbers
    #
    # Returns a list of Twilio phone numbers purchased from Twilio or ported to Twilio.
    #
    ##############################################################################

    class ListPhoneNumbers < Choreography

      ####
      #  Create a new instance of the ListPhoneNumbers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/IncomingPhoneNumbers/ListPhoneNumbers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPhoneNumbersInputSet
      ####
      def new_input_set()
        return ListPhoneNumbersInputSet.new()
      end

      def make_result_set()
        return ListPhoneNumbersResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListPhoneNumbersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPhoneNumbers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPhoneNumbersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) Only return the incoming phone number resources with friendly names that exactly match this name.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PhoneNumber input for this Choreo. 
        # 
        # @param String - (optional, string) Only return the incoming phone number resources that match this pattern. You can specify partial numbers and use '*' as a wildcard for any digit.
        ###

        def set_PhoneNumber(value)
          set_input("PhoneNumber", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the list of phone numbers. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPhoneNumbers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPhoneNumbersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListPhoneNumbers



    ##############################################################################
    #
    # UpdatePhoneNumber
    #
    # Updates an existing Twilio phone number.
    #
    ##############################################################################

    class UpdatePhoneNumber < Choreography

      ####
      #  Create a new instance of the UpdatePhoneNumber Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/IncomingPhoneNumbers/UpdatePhoneNumber")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdatePhoneNumberInputSet
      ####
      def new_input_set()
        return UpdatePhoneNumberInputSet.new()
      end

      def make_result_set()
        return UpdatePhoneNumberResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdatePhoneNumberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdatePhoneNumber
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdatePhoneNumberInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIVersion input for this Choreo. 
        # 
        # @param String - (optional, string) Calls to this phone number will start a new TwiML session with this API version. Either 2010-04-01 or 2008-08-01.
        ###

        def set_APIVersion(value)
          set_input("APIVersion", value)
        end
        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) A human readable description of the new incoming phone number resource, with maximum length 64 characters.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the IncomingPhoneNumberSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the incoming phone number to update.
        ###

        def set_IncomingPhoneNumberSID(value)
          set_input("IncomingPhoneNumberSID", value)
        end
        #### 
        # Set the value of the NewAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The unique 34 character id of the account to which you wish to transfer this phone number.
        ###

        def set_NewAccountSID(value)
          set_input("NewAccountSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SmsApplicationSID input for this Choreo. 
        # 
        # @param String - (optional, string) The 34 character sid of the application Twilio should use to handle SMSs sent to this number.
        ###

        def set_SmsApplicationSID(value)
          set_input("SmsApplicationSID", value)
        end
        #### 
        # Set the value of the SmsFallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the SmsFallbackUrl. Either GET or POST.
        ###

        def set_SmsFallbackMethod(value)
          set_input("SmsFallbackMethod", value)
        end
        #### 
        # Set the value of the SmsFallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by SmsUrl.
        ###

        def set_SmsFallbackURL(value)
          set_input("SmsFallbackURL", value)
        end
        #### 
        # Set the value of the SmsMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the SmsUrl. Either GET or POST.
        ###

        def set_SmsMethod(value)
          set_input("SmsMethod", value)
        end
        #### 
        # Set the value of the SmsURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio should request when somebody sends an SMS to the new phone number.
        ###

        def set_SmsURL(value)
          set_input("SmsURL", value)
        end
        #### 
        # Set the value of the StatusCallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method Twilio will use to make requests to the StatusCallback URL. Either GET or POST.
        ###

        def set_StatusCallbackMethod(value)
          set_input("StatusCallbackMethod", value)
        end
        #### 
        # Set the value of the StatusCallback input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio will request to pass status parameters (such as call ended) to your application.
        ###

        def set_StatusCallback(value)
          set_input("StatusCallback", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the phone number. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end
        #### 
        # Set the value of the VoiceApplicationSID input for this Choreo. 
        # 
        # @param String - (optional, string) The 34 character sid of the application Twilio should use to handle phone calls to this number.
        ###

        def set_VoiceApplicationSID(value)
          set_input("VoiceApplicationSID", value)
        end
        #### 
        # Set the value of the VoiceCallerIDLookup input for this Choreo. 
        # 
        # @param String - (optional, string) Do a lookup of a caller's name from the CNAM database and post it to your app. Either true or false.
        ###

        def set_VoiceCallerIDLookup(value)
          set_input("VoiceCallerIDLookup", value)
        end
        #### 
        # Set the value of the VoiceFallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the VoiceFallbackURL. Either GET or POST.
        ###

        def set_VoiceFallbackMethod(value)
          set_input("VoiceFallbackMethod", value)
        end
        #### 
        # Set the value of the VoiceFallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML defined by VoiceURL.
        ###

        def set_VoiceFallbackURL(value)
          set_input("VoiceFallbackURL", value)
        end
        #### 
        # Set the value of the VoiceMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the VoiceURL. Either GET or POST.
        ###

        def set_VoiceMethod(value)
          set_input("VoiceMethod", value)
        end
        #### 
        # Set the value of the VoiceURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio should request when somebody dials the phone number.
        ###

        def set_VoiceURL(value)
          set_input("VoiceURL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdatePhoneNumber Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdatePhoneNumberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdatePhoneNumber




  end # module IncomingPhoneNumbers

  module Notifications



    ##############################################################################
    #
    # DeleteNotification
    #
    # Delete a notification from the account log.
    #
    ##############################################################################

    class DeleteNotification < Choreography

      ####
      #  Create a new instance of the DeleteNotification Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Notifications/DeleteNotification")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteNotificationInputSet
      ####
      def new_input_set()
        return DeleteNotificationInputSet.new()
      end

      def make_result_set()
        return DeleteNotificationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteNotificationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteNotification
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteNotificationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the NotificationSID input for this Choreo. 
        # 
        # @param String - (required, string) Enter the SID of the notification resource to be deleted.
        ###

        def set_NotificationSID(value)
          set_input("NotificationSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount to delete the notification from. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteNotification Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteNotificationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteNotification



    ##############################################################################
    #
    # GetNotification
    #
    # Get comprehensive log information for a specified Notification SID. 
    #
    ##############################################################################

    class GetNotification < Choreography

      ####
      #  Create a new instance of the GetNotification Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Notifications/GetNotification")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetNotificationInputSet
      ####
      def new_input_set()
        return GetNotificationInputSet.new()
      end

      def make_result_set()
        return GetNotificationResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetNotificationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetNotification
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetNotificationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the NotificationSID input for this Choreo. 
        # 
        # @param String - (required, string) Enter the SID of the notification resource to be retrieved.
        ###

        def set_NotificationSID(value)
          set_input("NotificationSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount to get the notification for. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetNotification Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetNotificationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetNotification



    ##############################################################################
    #
    # ListNotifications
    #
    # Return a list of all notifications generated for a specified account.
    #
    ##############################################################################

    class ListNotifications < Choreography

      ####
      #  Create a new instance of the ListNotifications Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Notifications/ListNotifications")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListNotificationsInputSet
      ####
      def new_input_set()
        return ListNotificationsInputSet.new()
      end

      def make_result_set()
        return ListNotificationsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListNotificationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListNotifications
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListNotificationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the LogLevel input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify the log level by entering: 0 for ERROR, 1 for WARNING.
        ###

        def set_LogLevel(value)
          set_input("LogLevel", value)
        end
        #### 
        # Set the value of the MessageDate input for this Choreo. 
        # 
        # @param String - (optional, string) Filter notifications by date.  Dates should be formatted as follows: YYYY-MM-DD.  Dates before, at, or after a specified date can be entered using inequality operators: >=YYYY-MM-DD
        ###

        def set_MessageDate(value)
          set_input("MessageDate", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount to list notifications for. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListNotifications Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListNotificationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListNotifications




  end # module Notifications

  module OutgoingCallerIDs



    ##############################################################################
    #
    # AddCallerID
    #
    # Adds a new caller id to a Twilio account.
    #
    ##############################################################################

    class AddCallerID < Choreography

      ####
      #  Create a new instance of the AddCallerID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/OutgoingCallerIDs/AddCallerID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddCallerIDInputSet
      ####
      def new_input_set()
        return AddCallerIDInputSet.new()
      end

      def make_result_set()
        return AddCallerIDResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AddCallerIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddCallerID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddCallerIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the PhoneNumber input for this Choreo. 
        # 
        # @param String - (required, string) The phone number to verify. Should be formatted with a '+' and country code e.g., +16175551212. US formatted numbers are also accepted e.g., (415) 555-1212, 415-555-1212.
        ###

        def set_PhoneNumber(value)
          set_input("PhoneNumber", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the outgoing caller id. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddCallerID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddCallerIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddCallerID



    ##############################################################################
    #
    # DeleteCallerID
    #
    # Deletes an existing caller id.
    #
    ##############################################################################

    class DeleteCallerID < Choreography

      ####
      #  Create a new instance of the DeleteCallerID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/OutgoingCallerIDs/DeleteCallerID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteCallerIDInputSet
      ####
      def new_input_set()
        return DeleteCallerIDInputSet.new()
      end

      def make_result_set()
        return DeleteCallerIDResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteCallerIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteCallerID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteCallerIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the OutgoingCallerSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the outgoing caller to retrieve.
        ###

        def set_OutgoingCallerSID(value)
          set_input("OutgoingCallerSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the outgoing caller id. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteCallerID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteCallerIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteCallerID



    ##############################################################################
    #
    # GetCallerID
    #
    # Retrieves an individual outgoing caller id resource.
    #
    ##############################################################################

    class GetCallerID < Choreography

      ####
      #  Create a new instance of the GetCallerID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/OutgoingCallerIDs/GetCallerID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetCallerIDInputSet
      ####
      def new_input_set()
        return GetCallerIDInputSet.new()
      end

      def make_result_set()
        return GetCallerIDResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetCallerIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetCallerID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetCallerIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the OutgoingCallerSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the outgoing caller to retrieve.
        ###

        def set_OutgoingCallerSID(value)
          set_input("OutgoingCallerSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the outgoing caller id. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetCallerID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetCallerIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetCallerID



    ##############################################################################
    #
    # ListCallerIDs
    #
    # Returns a list of Outgoing Caller IDs for a Twilio account.
    #
    ##############################################################################

    class ListCallerIDs < Choreography

      ####
      #  Create a new instance of the ListCallerIDs Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/OutgoingCallerIDs/ListCallerIDs")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListCallerIDsInputSet
      ####
      def new_input_set()
        return ListCallerIDsInputSet.new()
      end

      def make_result_set()
        return ListCallerIDsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListCallerIDsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListCallerIDs
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListCallerIDsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) Only show the caller id resource that exactly matches this name.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the PhoneNumber input for this Choreo. 
        # 
        # @param String - (optional, string) Only return the caller id resource that exactly matches this phone number.
        ###

        def set_PhoneNumber(value)
          set_input("PhoneNumber", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the outgoing caller id. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListCallerIDs Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListCallerIDsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListCallerIDs



    ##############################################################################
    #
    # UpdateCallerID
    #
    # Updates an existing caller id.
    #
    ##############################################################################

    class UpdateCallerID < Choreography

      ####
      #  Create a new instance of the UpdateCallerID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/OutgoingCallerIDs/UpdateCallerID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateCallerIDInputSet
      ####
      def new_input_set()
        return UpdateCallerIDInputSet.new()
      end

      def make_result_set()
        return UpdateCallerIDResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateCallerIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateCallerID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateCallerIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (conditional, string) A human readable description of a Caller ID, with maximum length of 64 characters. Defaults to a nicely formatted version of the phone number.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the OutgoingCallerSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the outgoing caller to retrieve.
        ###

        def set_OutgoingCallerSID(value)
          set_input("OutgoingCallerSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the outgoing caller id. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateCallerID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateCallerIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateCallerID




  end # module OutgoingCallerIDs

  module Queues



    ##############################################################################
    #
    # CreateQueue
    #
    # Creates a new queue within a Twilio account.
    #
    ##############################################################################

    class CreateQueue < Choreography

      ####
      #  Create a new instance of the CreateQueue Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Queues/CreateQueue")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateQueueInputSet
      ####
      def new_input_set()
        return CreateQueueInputSet.new()
      end

      def make_result_set()
        return CreateQueueResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateQueueResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateQueue
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateQueueInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (required, string) A unique identifier for this queue.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the MaxSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum size of this queue. The default is 100. The maximum is 1000.
        ###

        def set_MaxSize(value)
          set_input("MaxSize", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount that the queue should be associated with. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateQueue Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateQueueResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateQueue



    ##############################################################################
    #
    # DeleteQueue
    #
    # Deletes an individual queue.
    #
    ##############################################################################

    class DeleteQueue < Choreography

      ####
      #  Create a new instance of the DeleteQueue Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Queues/DeleteQueue")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteQueueInputSet
      ####
      def new_input_set()
        return DeleteQueueInputSet.new()
      end

      def make_result_set()
        return DeleteQueueResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteQueueResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteQueue
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteQueueInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the QueueSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the queue to delete.
        ###

        def set_QueueSID(value)
          set_input("QueueSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the queue. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteQueue Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteQueueResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteQueue



    ##############################################################################
    #
    # GetQueue
    #
    # Retrieves details for an individual queue.
    #
    ##############################################################################

    class GetQueue < Choreography

      ####
      #  Create a new instance of the GetQueue Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Queues/GetQueue")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetQueueInputSet
      ####
      def new_input_set()
        return GetQueueInputSet.new()
      end

      def make_result_set()
        return GetQueueResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetQueueResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetQueue
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetQueueInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the QueueSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the queue to retrieve.
        ###

        def set_QueueSID(value)
          set_input("QueueSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the queue to retrieve. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetQueue Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetQueueResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetQueue



    ##############################################################################
    #
    # ListQueueMembers
    #
    # Retrieves a list of members in a given queue.
    #
    ##############################################################################

    class ListQueueMembers < Choreography

      ####
      #  Create a new instance of the ListQueueMembers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Queues/ListQueueMembers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListQueueMembersInputSet
      ####
      def new_input_set()
        return ListQueueMembersInputSet.new()
      end

      def make_result_set()
        return ListQueueMembersResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListQueueMembersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListQueueMembers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListQueueMembersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the QueueSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the queue that the members belong to.
        ###

        def set_QueueSID(value)
          set_input("QueueSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the queue members to retrieve. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListQueueMembers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListQueueMembersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListQueueMembers



    ##############################################################################
    #
    # ListQueues
    #
    # Returns a list of queues within a Twilio account.
    #
    ##############################################################################

    class ListQueues < Choreography

      ####
      #  Create a new instance of the ListQueues Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Queues/ListQueues")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListQueuesInputSet
      ####
      def new_input_set()
        return ListQueuesInputSet.new()
      end

      def make_result_set()
        return ListQueuesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListQueuesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListQueues
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListQueuesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the list of queues to retrieve. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListQueues Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListQueuesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListQueues




  end # module Queues

  module Recordings



    ##############################################################################
    #
    # DeleteRecording
    #
    # Deletes a recording from your account.
    #
    ##############################################################################

    class DeleteRecording < Choreography

      ####
      #  Create a new instance of the DeleteRecording Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Recordings/DeleteRecording")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteRecordingInputSet
      ####
      def new_input_set()
        return DeleteRecordingInputSet.new()
      end

      def make_result_set()
        return DeleteRecordingResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteRecordingResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteRecording
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteRecordingInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the RecordingSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the recording to delete.
        ###

        def set_RecordingSID(value)
          set_input("RecordingSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default), and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the recording. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteRecording Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteRecordingResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteRecording



    ##############################################################################
    #
    # GetLastRecording
    #
    # Returns the latest recording.
    #
    ##############################################################################

    class GetLastRecording < Choreography

      ####
      #  Create a new instance of the GetLastRecording Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Recordings/GetLastRecording")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLastRecordingInputSet
      ####
      def new_input_set()
        return GetLastRecordingInputSet.new()
      end

      def make_result_set()
        return GetLastRecordingResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLastRecordingResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLastRecording
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLastRecordingInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLastRecording Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLastRecordingResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLastRecording



    ##############################################################################
    #
    # GetRecording
    #
    # Retrieves an individual recording.
    #
    ##############################################################################

    class GetRecording < Choreography

      ####
      #  Create a new instance of the GetRecording Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Recordings/GetRecording")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecordingInputSet
      ####
      def new_input_set()
        return GetRecordingInputSet.new()
      end

      def make_result_set()
        return GetRecordingResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetRecordingResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecording
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecordingInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the RecordingSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the recording to retrieve.
        ###

        def set_RecordingSID(value)
          set_input("RecordingSID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default), xml, wav, and mp3.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the recording. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecording Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecordingResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecording



    ##############################################################################
    #
    # ListRecordings
    #
    # Returns a list of recordings for the specified account.
    #
    ##############################################################################

    class ListRecordings < Choreography

      ####
      #  Create a new instance of the ListRecordings Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Recordings/ListRecordings")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListRecordingsInputSet
      ####
      def new_input_set()
        return ListRecordingsInputSet.new()
      end

      def make_result_set()
        return ListRecordingsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListRecordingsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListRecordings
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListRecordingsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the recording. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListRecordings Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListRecordingsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListRecordings




  end # module Recordings

  module SMSMessages



    ##############################################################################
    #
    # GetLastMessageFromNumber
    #
    # Retrieves the latest message received from a specified number.
    #
    ##############################################################################

    class GetLastMessageFromNumber < Choreography

      ####
      #  Create a new instance of the GetLastMessageFromNumber Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/SMSMessages/GetLastMessageFromNumber")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLastMessageFromNumberInputSet
      ####
      def new_input_set()
        return GetLastMessageFromNumberInputSet.new()
      end

      def make_result_set()
        return GetLastMessageFromNumberResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLastMessageFromNumberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLastMessageFromNumber
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLastMessageFromNumberInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the From input for this Choreo. 
        # 
        # @param String - (required, string) The phone number to retrieve messages from.
        ###

        def set_From(value)
          set_input("From", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml. This parameter is only valid when setting ResponseMode to "verbose".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ResponseMode input for this Choreo. 
        # 
        # @param String - (optional, string) Used to simplify the response. Valid values are: simple and verbose. When set to simple, only the message string is returned. Verbose mode returns the full object. Defaults to "simple".
        ###

        def set_ResponseMode(value)
          set_input("ResponseMode", value)
        end
        #### 
        # Set the value of the ReturnLegacyFormat input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If set to true, a verbose XML response will be formatted using the deprecated /SMS/Messages resource schema. This should only be used if you have existing code that relies on the older schema.
        ###

        def set_ReturnLegacyFormat(value)
          set_input("ReturnLegacyFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLastMessageFromNumber Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLastMessageFromNumberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLastMessageFromNumber



    ##############################################################################
    #
    # GetLastMessageThatContains
    #
    # Retrieves the latest received message that contains the specified search string.
    #
    ##############################################################################

    class GetLastMessageThatContains < Choreography

      ####
      #  Create a new instance of the GetLastMessageThatContains Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/SMSMessages/GetLastMessageThatContains")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetLastMessageThatContainsInputSet
      ####
      def new_input_set()
        return GetLastMessageThatContainsInputSet.new()
      end

      def make_result_set()
        return GetLastMessageThatContainsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetLastMessageThatContainsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLastMessageThatContains
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetLastMessageThatContainsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the Filter input for this Choreo. 
        # 
        # @param String - (required, string) A search string to apply to the message body field.
        ###

        def set_Filter(value)
          set_input("Filter", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page to search through. Defaults to 50.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml. This parameter is only valid when setting ResponseMode to "verbose".
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ResponseMode input for this Choreo. 
        # 
        # @param String - (optional, string) Used to simplify the response. Valid values are: simple and verbose. When set to simple, only the message string is returned. Verbose mode returns the full object. Defaults to "simple".
        ###

        def set_ResponseMode(value)
          set_input("ResponseMode", value)
        end
        #### 
        # Set the value of the ReturnLegacyFormat input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If set to true, XML responses will be formatted using the deprecated /SMS/Messages resource schema. This should only be used if you have existing code that relies on the older schema.
        ###

        def set_ReturnLegacyFormat(value)
          set_input("ReturnLegacyFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLastMessageThatContains Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetLastMessageThatContainsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "TotalPages" output from this Choreo execution
      	#
      	# @return String - (integer) The total number of result pages that are available to search. If your search returns no results, you can increment the Page input to search further into the list of messages.
      	####
      	def get_TotalPages()
      	  return @outputs["TotalPages"]
      	end
      end

    end # class GetLastMessageThatContains



    ##############################################################################
    #
    # GetMessage
    #
    # Retrieves a specific SMS from Twilio by allowing you to specify a message ID.
    #
    ##############################################################################

    class GetMessage < Choreography

      ####
      #  Create a new instance of the GetMessage Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/SMSMessages/GetMessage")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMessageInputSet
      ####
      def new_input_set()
        return GetMessageInputSet.new()
      end

      def make_result_set()
        return GetMessageResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetMessageResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMessage
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMessageInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SMSMessageSID input for this Choreo. 
        # 
        # @param String - (required, string) The unique ID for the Twilio message you want to retrieve.
        ###

        def set_SMSMessageSID(value)
          set_input("SMSMessageSID", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount to retrieve messages for. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMessage Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMessageResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMessage



    ##############################################################################
    #
    # GetMessagesThatContain
    #
    # Retrieves messages that contain the specified search string.
    #
    ##############################################################################

    class GetMessagesThatContain < Choreography

      ####
      #  Create a new instance of the GetMessagesThatContain Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/SMSMessages/GetMessagesThatContain")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMessagesThatContainInputSet
      ####
      def new_input_set()
        return GetMessagesThatContainInputSet.new()
      end

      def make_result_set()
        return GetMessagesThatContainResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetMessagesThatContainResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMessagesThatContain
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMessagesThatContainInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the Filter input for this Choreo. 
        # 
        # @param String - (required, string) A search string to apply to the message body field.
        ###

        def set_Filter(value)
          set_input("Filter", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page to search through. Defaults to 50.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ResponseMode input for this Choreo. 
        # 
        # @param String - (optional, string) Used to simplify the response. Valid values are: simple and verbose. When set to simple, an array of message strings is returned. Verbose mode returns an array of full object. Defaults to "simple".
        ###

        def set_ResponseMode(value)
          set_input("ResponseMode", value)
        end
        #### 
        # Set the value of the ReturnLegacyFormat input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If set to true, XML responses will be formatted using the deprecated /SMS/Messages resource schema. This should only be used if you have existing code that relies on the older schema.
        ###

        def set_ReturnLegacyFormat(value)
          set_input("ReturnLegacyFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMessagesThatContain Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMessagesThatContainResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "TotalPages" output from this Choreo execution
      	#
      	# @return String - (integer) The total number of result pages that are available to search. If your search returns no results, you can increment the Page input to search further into the list of messages.
      	####
      	def get_TotalPages()
      	  return @outputs["TotalPages"]
      	end
      end

    end # class GetMessagesThatContain



    ##############################################################################
    #
    # ListMessages
    #
    # Retrieves a list of SMS messages from your Twilio account.
    #
    ##############################################################################

    class ListMessages < Choreography

      ####
      #  Create a new instance of the ListMessages Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/SMSMessages/ListMessages")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListMessagesInputSet
      ####
      def new_input_set()
        return ListMessagesInputSet.new()
      end

      def make_result_set()
        return ListMessagesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListMessagesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListMessages
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListMessagesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the DateSent input for this Choreo. 
        # 
        # @param String - (optional, date) A date in YYYY-MM-DD format. If you use this input, the Choreo will retrieve only messages sent on this date.
        ###

        def set_DateSent(value)
          set_input("DateSent", value)
        end
        #### 
        # Set the value of the From input for this Choreo. 
        # 
        # @param String - (optional, string) If used, the Choreo will only retrieve messages sent from this phone number.
        ###

        def set_From(value)
          set_input("From", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ReturnLegacyFormat input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If set to true, the response will be formatted using the deprecated /SMS/Messages resource schema. This should only be used if you have existing code that relies on the older schema.
        ###

        def set_ReturnLegacyFormat(value)
          set_input("ReturnLegacyFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount to retrieve the message from. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (optional, string) If used, the Choreo will only retrieve messages sent to this phone number.
        ###

        def set_To(value)
          set_input("To", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListMessages Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListMessagesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListMessages



    ##############################################################################
    #
    # SendSMS
    #
    # Sends an SMS to a specified phone number using the Twilio API.
    #
    ##############################################################################

    class SendSMS < Choreography

      ####
      #  Create a new instance of the SendSMS Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/SMSMessages/SendSMS")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SendSMSInputSet
      ####
      def new_input_set()
        return SendSMSInputSet.new()
      end

      def make_result_set()
        return SendSMSResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SendSMSResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SendSMS
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SendSMSInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the Body input for this Choreo. 
        # 
        # @param String - (required, string) The text of your SMS message.
        ###

        def set_Body(value)
          set_input("Body", value)
        end
        #### 
        # Set the value of the From input for this Choreo. 
        # 
        # @param String - (required, string) The purchased Twilio phone number (or Twilio Sandbox number) to send the message from.
        ###

        def set_From(value)
          set_input("From", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount to send the message from. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end
        #### 
        # Set the value of the To input for this Choreo. 
        # 
        # @param String - (required, string) The destination phone number for the SMS message.
        ###

        def set_To(value)
          set_input("To", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SendSMS Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SendSMSResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The Twilio response.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SendSMS




  end # module SMSMessages
  ##############################################################################
  #
  # SendSMS
  #
  # Sends an SMS to a specified phone number using the Twilio API.
  #
  ##############################################################################

  class SendSMS < Choreography

    ####
    #  Create a new instance of the SendSMS Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Twilio/SendSMS")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SendSMSInputSet
    ####
    def new_input_set()
      return SendSMSInputSet.new()
    end

    def make_result_set()
      return SendSMSResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = SendSMSResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SendSMS
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SendSMSInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountSID input for this Choreo. 
      # 
      # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
      ###

      def set_AccountSID(value)
        set_input("AccountSID", value)
      end
      #### 
      # Set the value of the AuthToken input for this Choreo. 
      # 
      # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
      ###

      def set_AuthToken(value)
        set_input("AuthToken", value)
      end
      #### 
      # Set the value of the Body input for this Choreo. 
      # 
      # @param String - (required, string) The text of your SMS message.
      ###

      def set_Body(value)
        set_input("Body", value)
      end
      #### 
      # Set the value of the From input for this Choreo. 
      # 
      # @param String - (required, string) The purchased Twilio phone number (or Twilio Sandbox number) to send the message from.
      ###

      def set_From(value)
        set_input("From", value)
      end
      #### 
      # Set the value of the To input for this Choreo. 
      # 
      # @param String - (required, string) The destination phone number for the SMS message.
      ###

      def set_To(value)
        set_input("To", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SendSMS Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SendSMSResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The Twilio response.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SendSMS




  module ShortCodes



    ##############################################################################
    #
    # GetShortCode
    #
    # Retrieves an individual short code resource.
    #
    ##############################################################################

    class GetShortCode < Choreography

      ####
      #  Create a new instance of the GetShortCode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/ShortCodes/GetShortCode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetShortCodeInputSet
      ####
      def new_input_set()
        return GetShortCodeInputSet.new()
      end

      def make_result_set()
        return GetShortCodeResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetShortCodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetShortCode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetShortCodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ShortCodeSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the short code to retrieve.
        ###

        def set_ShortCodeSID(value)
          set_input("ShortCodeSID", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with short code. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetShortCode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetShortCodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetShortCode



    ##############################################################################
    #
    # ListShortCodes
    #
    # Returns a list of Twilio short codes which can send and receive SMS messages with mobile phones.
    #
    ##############################################################################

    class ListShortCodes < Choreography

      ####
      #  Create a new instance of the ListShortCodes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/ShortCodes/ListShortCodes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListShortCodesInputSet
      ####
      def new_input_set()
        return ListShortCodesInputSet.new()
      end

      def make_result_set()
        return ListShortCodesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListShortCodesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListShortCodes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListShortCodesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) Only return the short code resources with friendly names that exactly match this name.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ShortCode input for this Choreo. 
        # 
        # @param String - (optional, string) Only return the short code resources that match this pattern. You can specify partial numbers and use '*' as a wildcard for any digit.
        ###

        def set_ShortCode(value)
          set_input("ShortCode", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the list of short codes. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListShortCodes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListShortCodesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListShortCodes



    ##############################################################################
    #
    # UpdateShortCode
    #
    # Attempts to update an existing short code resource.
    #
    ##############################################################################

    class UpdateShortCode < Choreography

      ####
      #  Create a new instance of the UpdateShortCode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/ShortCodes/UpdateShortCode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateShortCodeInputSet
      ####
      def new_input_set()
        return UpdateShortCodeInputSet.new()
      end

      def make_result_set()
        return UpdateShortCodeResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateShortCodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateShortCode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateShortCodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIVersion input for this Choreo. 
        # 
        # @param String - (optional, string) SMSs to this short code will start a new TwiML session with this API version. Either 2010-04-01 or 2008-08-01.
        ###

        def set_APIVersion(value)
          set_input("APIVersion", value)
        end
        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the FriendlyName input for this Choreo. 
        # 
        # @param String - (optional, string) A human readable description of the short code, with maximum length 64 characters.
        ###

        def set_FriendlyName(value)
          set_input("FriendlyName", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ShortCodeSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the short code to update.
        ###

        def set_ShortCodeSID(value)
          set_input("ShortCodeSID", value)
        end
        #### 
        # Set the value of the SmsFallbackMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the SmsFallbackUrl. Either GET or POST.
        ###

        def set_SmsFallbackMethod(value)
          set_input("SmsFallbackMethod", value)
        end
        #### 
        # Set the value of the SmsFallbackURL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL that Twilio will request if an error occurs requesting or executing the TwiML at the SmsUrl.
        ###

        def set_SmsFallbackURL(value)
          set_input("SmsFallbackURL", value)
        end
        #### 
        # Set the value of the SmsMethod input for this Choreo. 
        # 
        # @param String - (optional, string) The HTTP method that should be used to request the SmsUrl. Either GET or POST.
        ###

        def set_SmsMethod(value)
          set_input("SmsMethod", value)
        end
        #### 
        # Set the value of the SmsURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Twilio should request when somebody sends an SMS to the short code.
        ###

        def set_SmsURL(value)
          set_input("SmsURL", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with short code. If not specified, the main AccountSID used to authenticate is used in the request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateShortCode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateShortCodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateShortCode




  end # module ShortCodes

  module Transcriptions



    ##############################################################################
    #
    # GetTranscription
    #
    # Returns a an individual transcription of a recorded call.
    #
    ##############################################################################

    class GetTranscription < Choreography

      ####
      #  Create a new instance of the GetTranscription Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Transcriptions/GetTranscription")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTranscriptionInputSet
      ####
      def new_input_set()
        return GetTranscriptionInputSet.new()
      end

      def make_result_set()
        return GetTranscriptionResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetTranscriptionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTranscription
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTranscriptionInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the transcription. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end
        #### 
        # Set the value of the TranscriptionSID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the transcription to retrieve.
        ###

        def set_TranscriptionSID(value)
          set_input("TranscriptionSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTranscription Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTranscriptionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTranscription



    ##############################################################################
    #
    # ListTranscriptions
    #
    # Returns a list of transcriptions for the specified account.
    #
    ##############################################################################

    class ListTranscriptions < Choreography

      ####
      #  Create a new instance of the ListTranscriptions Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twilio/Transcriptions/ListTranscriptions")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListTranscriptionsInputSet
      ####
      def new_input_set()
        return ListTranscriptionsInputSet.new()
      end

      def make_result_set()
        return ListTranscriptionsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListTranscriptionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListTranscriptions
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListTranscriptionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccountSID input for this Choreo. 
        # 
        # @param String - (required, string) The AccountSID provided when you signed up for a Twilio account.
        ###

        def set_AccountSID(value)
          set_input("AccountSID", value)
        end
        #### 
        # Set the value of the AuthToken input for this Choreo. 
        # 
        # @param String - (required, string) The authorization token provided when you signed up for a Twilio account.
        ###

        def set_AuthToken(value)
          set_input("AuthToken", value)
        end
        #### 
        # Set the value of the PageSize input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results per page.
        ###

        def set_PageSize(value)
          set_input("PageSize", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page of results to retrieve. Defaults to 0.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json (the default) and xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SubAccountSID input for this Choreo. 
        # 
        # @param String - (optional, string) The SID of the subaccount associated with the transcription. If not specified, the main AccountSID used to authenticate is used in request.
        ###

        def set_SubAccountSID(value)
          set_input("SubAccountSID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListTranscriptions Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListTranscriptionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twilio.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListTranscriptions




  end # module Transcriptions

end # module Twilio