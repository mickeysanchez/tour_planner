require "temboo"

module Salesforce



  ##############################################################################
  #
  # BatchCSVInsert
  #
  # Create Salesforce Objects of any type (Account, Lead, Contact, etc) by specifying rows in CSV format.
  #
  ##############################################################################

  class BatchCSVInsert < Choreography

    ####
    #  Create a new instance of the BatchCSVInsert Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Salesforce/BatchCSVInsert")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return BatchCSVInsertInputSet
    ####
    def new_input_set()
      return BatchCSVInsertInputSet.new()
    end

    def make_result_set()
      return BatchCSVInsertResultSet.new()
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
      results = BatchCSVInsertResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the BatchCSVInsert
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class BatchCSVInsertInputSet < Choreography::InputSet

      #### 
      # Set the value of the CSVInput input for this Choreo. 
      # 
      # @param String - (conditional, multiline) CSV data to insert. Column names must match Salesforce field names exactly. Required unless using the VaultFile alias (an advanced option used when running Choreos in the Temboo Designer).
      ###

      def set_CSVInput(value)
        set_input("CSVInput", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Salesforce password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the SalesforceObjectType input for this Choreo. 
      # 
      # @param String - (optional, string) The object type that you are inserting (i.e.Lead, Contact, Account). Defaults to Lead.
      ###

      def set_SalesforceObjectType(value)
        set_input("SalesforceObjectType", value)
      end
      #### 
      # Set the value of the SecurityToken input for this Choreo. 
      # 
      # @param String - (required, string) Your Salesforce security token for making API calls.
      ###

      def set_SecurityToken(value)
        set_input("SecurityToken", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) Your Salesforce username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end
      #### 
      # Set the value of the VaultCSVFile input for this Choreo. 
      # 
      # @param TembooPath - A path to a CSV file in the vault. Required unless specifying your data in CSVInput.
      ###

      def set_VaultCSVFile(value)
        set_alias("VaultCSVFile", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the BatchCSVInsert Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class BatchCSVInsertResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Salesforce
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class BatchCSVInsert



  ##############################################################################
  #
  # CreateAccountObject
  #
  # Creates new account object.
  #
  ##############################################################################

  class CreateAccountObject < Choreography

    ####
    #  Create a new instance of the CreateAccountObject Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Salesforce/CreateAccountObject")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateAccountObjectInputSet
    ####
    def new_input_set()
      return CreateAccountObjectInputSet.new()
    end

    def make_result_set()
      return CreateAccountObjectResultSet.new()
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
      results = CreateAccountObjectResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateAccountObject
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateAccountObjectInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountName input for this Choreo. 
      # 
      # @param String - (required, string) The name of the account to create
      ###

      def set_AccountName(value)
        set_input("AccountName", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Salesforce password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the SecurityToken input for this Choreo. 
      # 
      # @param String - (required, string) Your Salesforce security token used for making API calls.
      ###

      def set_SecurityToken(value)
        set_input("SecurityToken", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) Your Salesforce username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateAccountObject Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateAccountObjectResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The full response from Salesforce
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateAccountObject



  ##############################################################################
  #
  # DeleteObject
  #
  # Deletes a specified Salesforce Object.
  #
  ##############################################################################

  class DeleteObject < Choreography

    ####
    #  Create a new instance of the DeleteObject Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Salesforce/DeleteObject")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteObjectInputSet
    ####
    def new_input_set()
      return DeleteObjectInputSet.new()
    end

    def make_result_set()
      return DeleteObjectResultSet.new()
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
      results = DeleteObjectResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteObject
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteObjectInputSet < Choreography::InputSet

      #### 
      # Set the value of the ID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the Object you wish to delete
      ###

      def set_ID(value)
        set_input("ID", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Salesforce password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the SecurityToken input for this Choreo. 
      # 
      # @param String - (required, string) Your Salesforce security token used for API calls.
      ###

      def set_SecurityToken(value)
        set_input("SecurityToken", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) Your Salesforce username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteObject Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteObjectResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The full response from Salesforce
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteObject




  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Salesforce access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/OAuth/FinalizeOAuth")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FinalizeOAuthInputSet
      ####
      def new_input_set()
        return FinalizeOAuthInputSet.new()
      end

      def make_result_set()
        return FinalizeOAuthResultSet.new()
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
        results = FinalizeOAuthResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FinalizeOAuth
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FinalizeOAuthInputSet < Choreography::InputSet

        #### 
        # Set the value of the CallbackID input for this Choreo. 
        # 
        # @param String - (required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the authorization code after the user authorizes.
        ###

        def set_CallbackID(value)
          set_input("CallbackID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by Salesforce.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by Salesforce.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Timeout input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The amount of time (in seconds) to poll your Temboo callback URL to see if your app's user has allowed or denied the request for access. Defaults to 20. Max is 60.
        ###

        def set_Timeout(value)
          set_input("Timeout", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FinalizeOAuth Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FinalizeOAuthResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The access token for the user that has granted access to your application.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      	####
      	# Retrieve the value for the "RefreshToken" output from this Choreo execution
      	#
      	# @return String - (string) A token that may be used to obtain a new access token when the short-lived access token expires.
      	####
      	def get_RefreshToken()
      	  return @outputs["RefreshToken"]
      	end
      end

    end # class FinalizeOAuth



    ##############################################################################
    #
    # InitializeOAuth
    #
    # Generates an authorization URL that an application can use to complete the first step in the OAuth process.
    #
    ##############################################################################

    class InitializeOAuth < Choreography

      ####
      #  Create a new instance of the InitializeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/OAuth/InitializeOAuth")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return InitializeOAuthInputSet
      ####
      def new_input_set()
        return InitializeOAuthInputSet.new()
      end

      def make_result_set()
        return InitializeOAuthResultSet.new()
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
        results = InitializeOAuthResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the InitializeOAuth
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class InitializeOAuthInputSet < Choreography::InputSet

        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by Salesforce.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the CustomCallbackID input for this Choreo. 
        # 
        # @param String - (optional, string) A unique identifier that you can pass to eliminate the need to wait for a Temboo generated CallbackID. Callback identifiers may only contain numbers, letters, periods, and hyphens.
        ###

        def set_CustomCallbackID(value)
          set_input("CustomCallbackID", value)
        end
        #### 
        # Set the value of the Display input for this Choreo. 
        # 
        # @param String - (optional, string) Tailors the login page to the user's device type. Currently the only values supported are:  page, popup and touch.
        ###

        def set_Display(value)
          set_input("Display", value)
        end
        #### 
        # Set the value of the ForwardingURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Temboo will redirect your users to after they grant access to your application. This should include the "https://" or "http://" prefix and be a fully qualified URL.
        ###

        def set_ForwardingURL(value)
          set_input("ForwardingURL", value)
        end
        #### 
        # Set the value of the Immediate input for this Choreo. 
        # 
        # @param String - (optional, string) Avoid interacting with the user.  false - Prompt the user for login and approval (default),  true - If the user is currently logged in and has previously given approval, the approval step is skipped.
        ###

        def set_Immediate(value)
          set_input("Immediate", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (optional, string) A space separated list of scope values.  Supported values are: api, chatter_api, full, id, refresh_token, visualforce, web.  defaults to: id, api, refresh_token.
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the InitializeOAuth Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class InitializeOAuthResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "CallbackID" output from this Choreo execution
      	#
      	# @return String - (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
      	####
      	def get_CallbackID()
      	  return @outputs["CallbackID"]
      	end
      	####
      	# Retrieve the value for the "AuthorizationURL" output from this Choreo execution
      	#
      	# @return String - (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
      	####
      	def get_AuthorizationURL()
      	  return @outputs["AuthorizationURL"]
      	end
      end

    end # class InitializeOAuth



    ##############################################################################
    #
    # RefreshToken
    #
    # Retrieves a new access token when the provided access token is expired.
    #
    ##############################################################################

    class RefreshToken < Choreography

      ####
      #  Create a new instance of the RefreshToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/OAuth/RefreshToken")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RefreshTokenInputSet
      ####
      def new_input_set()
        return RefreshTokenInputSet.new()
      end

      def make_result_set()
        return RefreshTokenResultSet.new()
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
        results = RefreshTokenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RefreshToken
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RefreshTokenInputSet < Choreography::InputSet

        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The client ID provided by Google when you sign up for an account.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The client secret provided by Google when you sign up for an account.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (required, string) The refresh token retrieved in the OAuth process to be used when your access token expires.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RefreshToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RefreshTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The access token that is parsed from the request to refresh the token.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      end

    end # class RefreshToken




  end # module OAuth

  module Objects



    ##############################################################################
    #
    # CreateRecord
    #
    # Creates a new Salesforce Object such as an individual Account, Contact, or Lead record.
    #
    ##############################################################################

    class CreateRecord < Choreography

      ####
      #  Create a new instance of the CreateRecord Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Objects/CreateRecord")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateRecordInputSet
      ####
      def new_input_set()
        return CreateRecordInputSet.new()
      end

      def make_result_set()
        return CreateRecordResultSet.new()
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
        results = CreateRecordResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateRecord
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateRecordInputSet < Choreography::InputSet

        #### 
        # Set the value of the SObject input for this Choreo. 
        # 
        # @param String - (required, json) A JSON string containing the SObject properties you wish to set.
        ###

        def set_SObject(value)
          set_input("SObject", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
        # Set the value of the SObjectName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the Salesforce object type being created (e.g. Account, Contact, Lead, etc).
        ###

        def set_SObjectName(value)
          set_input("SObjectName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateRecord Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateRecordResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ID" output from this Choreo execution
      	#
      	# @return String - (string) The id of the object that was created.
      	####
      	def get_ID()
      	  return @outputs["ID"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      end

    end # class CreateRecord



    ##############################################################################
    #
    # DeleteRecord
    #
    # Deletes a Salesforce Object such as an individual Account, Contact, or Lead record.
    #
    ##############################################################################

    class DeleteRecord < Choreography

      ####
      #  Create a new instance of the DeleteRecord Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Objects/DeleteRecord")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteRecordInputSet
      ####
      def new_input_set()
        return DeleteRecordInputSet.new()
      end

      def make_result_set()
        return DeleteRecordResultSet.new()
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
        results = DeleteRecordResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteRecord
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteRecordInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the object to be deleted.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the SObjectName input for this Choreo. 
        # 
        # @param String - (conditional, string) The name of the Salesforce object type being deleted (e.g. Account, Contact, Lead, etc).
        ###

        def set_SObjectName(value)
          set_input("SObjectName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteRecord Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteRecordResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Salesforce. A 204 is expected for a successful request.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class DeleteRecord



    ##############################################################################
    #
    # DeleteRecordFields
    #
    # Deletes specific field values from a specified record.
    #
    ##############################################################################

    class DeleteRecordFields < Choreography

      ####
      #  Create a new instance of the DeleteRecordFields Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Objects/DeleteRecordFields")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteRecordFieldsInputSet
      ####
      def new_input_set()
        return DeleteRecordFieldsInputSet.new()
      end

      def make_result_set()
        return DeleteRecordFieldsResultSet.new()
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
        results = DeleteRecordFieldsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteRecordFields
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteRecordFieldsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (required, string) Comma-separated list of up to 10 field names.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the object that that is being modified.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the SObjectName input for this Choreo. 
        # 
        # @param String - (conditional, string) The name of the Salesforce object type being created (e.g. Account, Contact, Lead, etc).
        ###

        def set_SObjectName(value)
          set_input("SObjectName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteRecordFields Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteRecordFieldsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Salesforce. A 204 is expected for a successful request.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class DeleteRecordFields



    ##############################################################################
    #
    # DescribeObjectMetadata
    #
    # Describes the individual metadata at all levels for the specified object.
    #
    ##############################################################################

    class DescribeObjectMetadata < Choreography

      ####
      #  Create a new instance of the DescribeObjectMetadata Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Objects/DescribeObjectMetadata")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DescribeObjectMetadataInputSet
      ####
      def new_input_set()
        return DescribeObjectMetadataInputSet.new()
      end

      def make_result_set()
        return DescribeObjectMetadataResultSet.new()
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
        results = DescribeObjectMetadataResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DescribeObjectMetadata
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DescribeObjectMetadataInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
        # Set the value of the SObjectName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the SObject to retrieve (e.g. Contact, Lead, Account, etc).
        ###

        def set_SObjectName(value)
          set_input("SObjectName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DescribeObjectMetadata Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DescribeObjectMetadataResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      end

    end # class DescribeObjectMetadata



    ##############################################################################
    #
    # GetObjectMetadata
    #
    # Retrieves the individual metadata for the specified object type such as a Contact, Lead, or Account object.
    #
    ##############################################################################

    class GetObjectMetadata < Choreography

      ####
      #  Create a new instance of the GetObjectMetadata Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Objects/GetObjectMetadata")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetObjectMetadataInputSet
      ####
      def new_input_set()
        return GetObjectMetadataInputSet.new()
      end

      def make_result_set()
        return GetObjectMetadataResultSet.new()
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
        results = GetObjectMetadataResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetObjectMetadata
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetObjectMetadataInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
        # Set the value of the SObjectName input for this Choreo. 
        # 
        # @param String - (required, string) The name of the SObject to retrieve (e.g. Contact, Lead, Account, etc).
        ###

        def set_SObjectName(value)
          set_input("SObjectName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetObjectMetadata Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetObjectMetadataResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      end

    end # class GetObjectMetadata



    ##############################################################################
    #
    # GetRecord
    #
    # Retrieves a Salesforce Object such as an individual Account, Contact, or Lead record.
    #
    ##############################################################################

    class GetRecord < Choreography

      ####
      #  Create a new instance of the GetRecord Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Objects/GetRecord")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecordInputSet
      ####
      def new_input_set()
        return GetRecordInputSet.new()
      end

      def make_result_set()
        return GetRecordResultSet.new()
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
        results = GetRecordResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecord
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecordInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Comma-separated list of up to 10 field names.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the object that you want to retrieve.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
        # Set the value of the SObjectName input for this Choreo. 
        # 
        # @param String - (conditional, string) The name of the Salesforce object type being retrieved (e.g. Account, Contact, Lead, etc).
        ###

        def set_SObjectName(value)
          set_input("SObjectName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecord Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecordResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      end

    end # class GetRecord



    ##############################################################################
    #
    # GetRecordByExternalID
    #
    # Retrieve records with a specific external ID.
    #
    ##############################################################################

    class GetRecordByExternalID < Choreography

      ####
      #  Create a new instance of the GetRecordByExternalID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Objects/GetRecordByExternalID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRecordByExternalIDInputSet
      ####
      def new_input_set()
        return GetRecordByExternalIDInputSet.new()
      end

      def make_result_set()
        return GetRecordByExternalIDResultSet.new()
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
        results = GetRecordByExternalIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRecordByExternalID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRecordByExternalIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the FieldName input for this Choreo. 
        # 
        # @param String - (conditional, string) FieldName for external ID
        ###

        def set_FieldName(value)
          set_input("FieldName", value)
        end
        #### 
        # Set the value of the FieldValue input for this Choreo. 
        # 
        # @param String - (conditional, string) Field value for external ID
        ###

        def set_FieldValue(value)
          set_input("FieldValue", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
        # Set the value of the SObjectName input for this Choreo. 
        # 
        # @param String - (conditional, string) The name of the Salesforce object type being created (e.g. Account, Contact, Lead, etc).
        ###

        def set_SObjectName(value)
          set_input("SObjectName", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRecordByExternalID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRecordByExternalIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRecordByExternalID



    ##############################################################################
    #
    # ListObjectTypes
    #
    # Lists the available objects and their metadata for your organization's data.
    #
    ##############################################################################

    class ListObjectTypes < Choreography

      ####
      #  Create a new instance of the ListObjectTypes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Objects/ListObjectTypes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListObjectTypesInputSet
      ####
      def new_input_set()
        return ListObjectTypesInputSet.new()
      end

      def make_result_set()
        return ListObjectTypesResultSet.new()
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
        results = ListObjectTypesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListObjectTypes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListObjectTypesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
      # A ResultSet with methods tailored to the values returned by the ListObjectTypes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListObjectTypesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      end

    end # class ListObjectTypes




  end # module Objects

  module Passwords



    ##############################################################################
    #
    # ChangePassword
    #
    # Changes a user's password.
    #
    ##############################################################################

    class ChangePassword < Choreography

      ####
      #  Create a new instance of the ChangePassword Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Passwords/ChangePassword")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ChangePasswordInputSet
      ####
      def new_input_set()
        return ChangePasswordInputSet.new()
      end

      def make_result_set()
        return ChangePasswordResultSet.new()
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
        results = ChangePasswordResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ChangePassword
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ChangePasswordInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user whose password you want to change.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the NewPassword input for this Choreo. 
        # 
        # @param String - (required, string) The new password.
        ###

        def set_NewPassword(value)
          set_input("NewPassword", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ChangePassword Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ChangePasswordResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code returned from Salesforce. A 204 is expected for a successful request.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class ChangePassword



    ##############################################################################
    #
    # GetPasswordInfo
    #
    # Gets information on a user's password.
    #
    ##############################################################################

    class GetPasswordInfo < Choreography

      ####
      #  Create a new instance of the GetPasswordInfo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Passwords/GetPasswordInfo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPasswordInfoInputSet
      ####
      def new_input_set()
        return GetPasswordInfoInputSet.new()
      end

      def make_result_set()
        return GetPasswordInfoResultSet.new()
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
        results = GetPasswordInfoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPasswordInfo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPasswordInfoInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user you're getting info for.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
      # A ResultSet with methods tailored to the values returned by the GetPasswordInfo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPasswordInfoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPasswordInfo



    ##############################################################################
    #
    # ResetPassword
    #
    # Resets a user's password to new randomized password.
    #
    ##############################################################################

    class ResetPassword < Choreography

      ####
      #  Create a new instance of the ResetPassword Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Passwords/ResetPassword")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ResetPasswordInputSet
      ####
      def new_input_set()
        return ResetPasswordInputSet.new()
      end

      def make_result_set()
        return ResetPasswordResultSet.new()
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
        results = ResetPasswordResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ResetPassword
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ResetPasswordInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the user whos password you are resetting.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
      # A ResultSet with methods tailored to the values returned by the ResetPassword Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ResetPasswordResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "NewPassword" output from this Choreo execution
      	#
      	# @return String - (string) New password returned from Salesforce.
      	####
      	def get_NewPassword()
      	  return @outputs["NewPassword"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ResetPassword




  end # module Passwords

  module Queries



    ##############################################################################
    #
    # GetNextResults
    #
    # Retrieves the remaining query results using a query locator ID.
    #
    ##############################################################################

    class GetNextResults < Choreography

      ####
      #  Create a new instance of the GetNextResults Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Queries/GetNextResults")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetNextResultsInputSet
      ####
      def new_input_set()
        return GetNextResultsInputSet.new()
      end

      def make_result_set()
        return GetNextResultsResultSet.new()
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
        results = GetNextResultsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetNextResults
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetNextResultsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the QueryLocator input for this Choreo. 
        # 
        # @param String - (required, string) The query locator ID to use for retrieving the next batch of records. This ID is returned by the Query Choreo.
        ###

        def set_QueryLocator(value)
          set_input("QueryLocator", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
      # A ResultSet with methods tailored to the values returned by the GetNextResults Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetNextResultsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NextQueryLocator" output from this Choreo execution
      	#
      	# @return String - (string) The next query locator to use when there are more results to retrieve.
      	####
      	def get_NextQueryLocator()
      	  return @outputs["NextQueryLocator"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetNextResults



    ##############################################################################
    #
    # Query
    #
    # Executes the specified SOQL query.
    #
    ##############################################################################

    class Query < Choreography

      ####
      #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Queries/Query")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return QueryInputSet
      ####
      def new_input_set()
        return QueryInputSet.new()
      end

      def make_result_set()
        return QueryResultSet.new()
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
        results = QueryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Query
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class QueryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
        # Set the value of the SOQL input for this Choreo. 
        # 
        # @param String - (required, string) The SOQL statement used to retrieve the set of records matching a specific criteria (e.g. select FirstName, LastName from Lead limit 1).
        ###

        def set_SOQL(value)
          set_input("SOQL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Query Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class QueryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "QueryLocator" output from this Choreo execution
      	#
      	# @return String - (string) The query locator ID that can be used to retrieve the next batch of records. This will only be present when more than 2000 records meet the criteria of a query causing the response to be truncated.
      	####
      	def get_QueryLocator()
      	  return @outputs["QueryLocator"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      end

    end # class Query




  end # module Queries
  ##############################################################################
  #
  # Query
  #
  # Executes a query against a Salesforce object and returns data that matches the specified criteria.
  #
  ##############################################################################

  class Query < Choreography

    ####
    #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Salesforce/Query")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return QueryInputSet
    ####
    def new_input_set()
      return QueryInputSet.new()
    end

    def make_result_set()
      return QueryResultSet.new()
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
      results = QueryResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Query
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class QueryInputSet < Choreography::InputSet

      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Salesforce password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) The query to submit to Salesforce. This should be SOQL which differs from standard SQL in some cases (select FirstName, LastName from Lead limit 1).
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the SecurityToken input for this Choreo. 
      # 
      # @param String - (required, string) Your Salesforce security token for making API calls.
      ###

      def set_SecurityToken(value)
        set_input("SecurityToken", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) Your Salesforce username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Query Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class QueryResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from the Salesforce query
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Query




  module Resources



    ##############################################################################
    #
    # GetResources
    #
    # List available resources for a specified API version.
    #
    ##############################################################################

    class GetResources < Choreography

      ####
      #  Create a new instance of the GetResources Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Resources/GetResources")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetResourcesInputSet
      ####
      def new_input_set()
        return GetResourcesInputSet.new()
      end

      def make_result_set()
        return GetResourcesResultSet.new()
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
        results = GetResourcesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetResources
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetResourcesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth Refresh Token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
        # Set the value of the Version input for this Choreo. 
        # 
        # @param String - (optional, string) The API version number to retrieve resources for. Defaults to "v28.0".
        ###

        def set_Version(value)
          set_input("Version", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetResources Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetResourcesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      end

    end # class GetResources




  end # module Resources

  module Searching



    ##############################################################################
    #
    # Search
    #
    # Executes the specified SOSL search.
    #
    ##############################################################################

    class Search < Choreography

      ####
      #  Create a new instance of the Search Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Searching/Search")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchInputSet
      ####
      def new_input_set()
        return SearchInputSet.new()
      end

      def make_result_set()
        return SearchResultSet.new()
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
        results = SearchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Search
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
        # Set the value of the SOSL input for this Choreo. 
        # 
        # @param String - (required, string) The SOSL statement used to retrieve the set of records matching a specific criteria (e.g. FIND {joe})
        ###

        def set_SOSL(value)
          set_input("SOSL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Search Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      end

    end # class Search



    ##############################################################################
    #
    # SearchScopeAndOrder
    #
    # Executes the specified SOSL search in the default global search scope of a logged-in user.
    #
    ##############################################################################

    class SearchScopeAndOrder < Choreography

      ####
      #  Create a new instance of the SearchScopeAndOrder Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Searching/SearchScopeAndOrder")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchScopeAndOrderInputSet
      ####
      def new_input_set()
        return SearchScopeAndOrderInputSet.new()
      end

      def make_result_set()
        return SearchScopeAndOrderResultSet.new()
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
        results = SearchScopeAndOrderResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchScopeAndOrder
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchScopeAndOrderInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Salesforce. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
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
      # A ResultSet with methods tailored to the values returned by the SearchScopeAndOrder Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchScopeAndOrderResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "NewAccessToken" output from this Choreo execution
      	#
      	# @return String - (string) Contains a new AccessToken when the RefreshToken is provided.
      	####
      	def get_NewAccessToken()
      	  return @outputs["NewAccessToken"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchScopeAndOrder




  end # module Searching
  ##############################################################################
  #
  # UpdateAccountObject
  #
  # Updates an Account Object name.
  #
  ##############################################################################

  class UpdateAccountObject < Choreography

    ####
    #  Create a new instance of the UpdateAccountObject Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Salesforce/UpdateAccountObject")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UpdateAccountObjectInputSet
    ####
    def new_input_set()
      return UpdateAccountObjectInputSet.new()
    end

    def make_result_set()
      return UpdateAccountObjectResultSet.new()
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
      results = UpdateAccountObjectResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UpdateAccountObject
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UpdateAccountObjectInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccountId input for this Choreo. 
      # 
      # @param String - (required, string) The ID for the account you want to update
      ###

      def set_AccountId(value)
        set_input("AccountId", value)
      end
      #### 
      # Set the value of the AccountName input for this Choreo. 
      # 
      # @param String - (required, string) A new name to update the Account with
      ###

      def set_AccountName(value)
        set_input("AccountName", value)
      end
      #### 
      # Set the value of the Password input for this Choreo. 
      # 
      # @param String - (required, password) Your Salesforce password.
      ###

      def set_Password(value)
        set_input("Password", value)
      end
      #### 
      # Set the value of the SecurityToken input for this Choreo. 
      # 
      # @param String - (required, string) Your Salesforce security token used for making API calls.
      ###

      def set_SecurityToken(value)
        set_input("SecurityToken", value)
      end
      #### 
      # Set the value of the Username input for this Choreo. 
      # 
      # @param String - (required, string) Your Salesforce username.
      ###

      def set_Username(value)
        set_input("Username", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the UpdateAccountObject Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UpdateAccountObjectResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Salesforce
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UpdateAccountObject




  module Versions



    ##############################################################################
    #
    # ListVersions
    #
    # Lists summary information about each Salesforce version currently available, including the version, label, and a link to each version's root.
    #
    ##############################################################################

    class ListVersions < Choreography

      ####
      #  Create a new instance of the ListVersions Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Salesforce/Versions/ListVersions")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListVersionsInputSet
      ####
      def new_input_set()
        return ListVersionsInputSet.new()
      end

      def make_result_set()
        return ListVersionsResultSet.new()
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
        results = ListVersionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListVersions
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListVersionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the InstanceName input for this Choreo. 
        # 
        # @param String - (required, string) The server url prefix that indicates which instance your Salesforce account is on (e.g. na1, na2, na3, etc).
        ###

        def set_InstanceName(value)
          set_input("InstanceName", value)
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
      # A ResultSet with methods tailored to the values returned by the ListVersions Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListVersionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Salesforce.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListVersions




  end # module Versions

end # module Salesforce