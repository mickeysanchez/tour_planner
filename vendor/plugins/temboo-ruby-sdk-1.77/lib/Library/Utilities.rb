require "temboo"

module Utilities




  module Authentication




    module OAuth1



      ##############################################################################
      #
      # FinalizeOAuth
      #
      # Completes the OAuth process by retrieving an access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
      #
      ##############################################################################

      class FinalizeOAuth < Choreography

        ####
        #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Utilities/Authentication/OAuth1/FinalizeOAuth")
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
          # Set the value of the AccessTokenURL input for this Choreo. 
          # 
          # @param String - (required, string) The URL for the authorization server that issues access tokens (e.g. https://api.dropbox.com/1/oauth/access_token).
          ###

          def set_AccessTokenURL(value)
            set_input("AccessTokenURL", value)
          end
          #### 
          # Set the value of the CallbackID input for this Choreo. 
          # 
          # @param String - (required, string) The callback ID returned by the InitializeOAuth Choreo. Used to retrieve the callback data after the user authorizes.
          ###

          def set_CallbackID(value)
            set_input("CallbackID", value)
          end
          #### 
          # Set the value of the ConsumerKey input for this Choreo. 
          # 
          # @param String - (required, string) The Consumer Key provided by the service.
          ###

          def set_ConsumerKey(value)
            set_input("ConsumerKey", value)
          end
          #### 
          # Set the value of the ConsumerSecret input for this Choreo. 
          # 
          # @param String - (required, string) The Consumer Secret provided by the service.
          ###

          def set_ConsumerSecret(value)
            set_input("ConsumerSecret", value)
          end
          #### 
          # Set the value of the OAuthTokenSecret input for this Choreo. 
          # 
          # @param String - (required, string) The oauth_token_secret retrieved during the OAuth process. This is returned by the InitializeOAuth Choreo.
          ###

          def set_OAuthTokenSecret(value)
            set_input("OAuthTokenSecret", value)
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
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (string) The response from the Authorization Server.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class FinalizeOAuth



      ##############################################################################
      #
      # InitializeOAuth
      #
      # Generates an authorization URL that an application can use to complete the first step in the OAuth 1.0 process.
      #
      ##############################################################################

      class InitializeOAuth < Choreography

        ####
        #  Create a new instance of the InitializeOAuth Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Utilities/Authentication/OAuth1/InitializeOAuth")
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
          # Set the value of the AuthorizationEndpoint input for this Choreo. 
          # 
          # @param String - (required, string) The endpoint that the user should be redirected to in order to authenticate and grant access (e.g. https://www.dropbox.com/1/oauth/authorize).
          ###

          def set_AuthorizationEndpoint(value)
            set_input("AuthorizationEndpoint", value)
          end
          #### 
          # Set the value of the ConsumerKey input for this Choreo. 
          # 
          # @param String - (required, string) The Consumer Key provided by the service.
          ###

          def set_ConsumerKey(value)
            set_input("ConsumerKey", value)
          end
          #### 
          # Set the value of the ConsumerSecret input for this Choreo. 
          # 
          # @param String - (required, string) The Consumer Secret provided by the service.
          ###

          def set_ConsumerSecret(value)
            set_input("ConsumerSecret", value)
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
          # Set the value of the RequestTokenEndpoint input for this Choreo. 
          # 
          # @param String - (required, string) The Authorization Server URL where the initial token request occurs (e.g. https://api.dropbox.com/1/oauth/request_token).
          ###

          def set_RequestTokenEndpoint(value)
            set_input("RequestTokenEndpoint", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the InitializeOAuth Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class InitializeOAuthResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "OAuthTokenSecret" output from this Choreo execution
        	#
        	# @return String - (string) The temporary OAuth Token Secret that can be exchanged for permanent tokens using the FinalizeOAuth Choreo.
        	####
        	def get_OAuthTokenSecret()
        	  return @outputs["OAuthTokenSecret"]
        	end
        	####
        	# Retrieve the value for the "AuthorizationURL" output from this Choreo execution
        	#
        	# @return String - (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
        	####
        	def get_AuthorizationURL()
        	  return @outputs["AuthorizationURL"]
        	end
        	####
        	# Retrieve the value for the "CallbackID" output from this Choreo execution
        	#
        	# @return String - (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
        	####
        	def get_CallbackID()
        	  return @outputs["CallbackID"]
        	end
        end

      end # class InitializeOAuth




      module Utils



        ##############################################################################
        #
        # ParameterStringFormatter
        #
        # 
        #
        ##############################################################################

        class ParameterStringFormatter < Choreography

          ####
          #  Create a new instance of the ParameterStringFormatter Choreo. A TembooSession object, containing a valid
          #  set of Temboo credentials, must be supplied.
          ####
          def initialize(session)
            super(session, "/Library/Utilities/Authentication/OAuth1/Utils/ParameterStringFormatter")
          end

          #### 
          # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
          #
          # @return ParameterStringFormatterInputSet
          ####
          def new_input_set()
            return ParameterStringFormatterInputSet.new()
          end

          def make_result_set()
            return ParameterStringFormatterResultSet.new()
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
            results = ParameterStringFormatterResultSet.new(resp)
            return results
          end

          ####
          # An InputSet with methods appropriate for specifying the inputs to the ParameterStringFormatter
          # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
          ####
          class ParameterStringFormatterInputSet < Choreography::InputSet

            #### 
            # Set the value of the ParamString input for this Choreo. 
            # 
            # @param String - (required, string) 
            ###

            def set_ParamString(value)
              set_input("ParamString", value)
            end

          end

          ####
          # A ResultSet with methods tailored to the values returned by the ParameterStringFormatter Choreo.
          # The ResultSet object is used to retrieve the results of a Choreo execution.
          ####
          class ParameterStringFormatterResultSet < Choreography::ResultSet
          	####
          	# Retrieve the value for the "JSONResponse" output from this Choreo execution
          	#
          	# @return String - (json) 
          	####
          	def get_JSONResponse()
          	  return @outputs["JSONResponse"]
          	end
          end

        end # class ParameterStringFormatter




      end # module Utils

    end # module OAuth1

    module OAuth2



      ##############################################################################
      #
      # FinalizeOAuth
      #
      # Completes the OAuth process by retrieving an access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
      #
      ##############################################################################

      class FinalizeOAuth < Choreography

        ####
        #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Utilities/Authentication/OAuth2/FinalizeOAuth")
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
          # Set the value of the AccessTokenEndpoint input for this Choreo. 
          # 
          # @param String - (required, string) The URL for the authorization server that issues access tokens (e.g. https://accounts.google.com/o/oauth2/token).
          ###

          def set_AccessTokenEndpoint(value)
            set_input("AccessTokenEndpoint", value)
          end
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
          # @param String - (required, string) The Client ID provided by the service.
          ###

          def set_ClientID(value)
            set_input("ClientID", value)
          end
          #### 
          # Set the value of the ClientSecret input for this Choreo. 
          # 
          # @param String - (required, string) The Client Secret provided by the service.
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
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - The response from the server.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class FinalizeOAuth



      ##############################################################################
      #
      # InitializeOAuth
      #
      # Generates an authorization URL that an application can use to complete the first step in the OAuth 2.0 process.
      #
      ##############################################################################

      class InitializeOAuth < Choreography

        ####
        #  Create a new instance of the InitializeOAuth Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Utilities/Authentication/OAuth2/InitializeOAuth")
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
          # @param String - (required, string) The Client ID provided by the service.
          ###

          def set_ClientID(value)
            set_input("ClientID", value)
          end
          #### 
          # Set the value of the CustomCallbackID input for this Choreo. 
          # 
          # @param String - (optional, string) A unique identifier that you can pass to eliminate the need to wait for a Temboo-generated CallbackID. Callback identifiers may only contain numbers, letters, periods, and hyphens.
          ###

          def set_CustomCallbackID(value)
            set_input("CustomCallbackID", value)
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
          # Set the value of the RequestTokenEndpoint input for this Choreo. 
          # 
          # @param String - (required, string) The Authorization Server URL where the initial token request occurs (e.g. https://accounts.google.com/o/oauth2/auth).
          ###

          def set_RequestTokenEndpoint(value)
            set_input("RequestTokenEndpoint", value)
          end
          #### 
          # Set the value of the Scope input for this Choreo. 
          # 
          # @param String - (conditional, string) The OAuth scope that should be associated with the access token being requested. This is not always required. Typically, you can specify multiple scopes separated by spaces, commas, or pipes.
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




    end # module OAuth2

  end # module Authentication

  module DataConversions



    ##############################################################################
    #
    # CSVToJSON
    #
    # Converts a CSV formatted file to JSON.
    #
    ##############################################################################

    class CSVToJSON < Choreography

      ####
      #  Create a new instance of the CSVToJSON Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/CSVToJSON")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CSVToJSONInputSet
      ####
      def new_input_set()
        return CSVToJSONInputSet.new()
      end

      def make_result_set()
        return CSVToJSONResultSet.new()
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
        results = CSVToJSONResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CSVToJSON
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CSVToJSONInputSet < Choreography::InputSet

        #### 
        # Set the value of the CSV input for this Choreo. 
        # 
        # @param String - (required, multiline) The CSV file to convert to JSON. Your CSV data must contain column names.
        ###

        def set_CSV(value)
          set_input("CSV", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CSVToJSON Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CSVToJSONResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "JSON" output from this Choreo execution
      	#
      	# @return String - (json) The JSON formatted data.
      	####
      	def get_JSON()
      	  return @outputs["JSON"]
      	end
      end

    end # class CSVToJSON



    ##############################################################################
    #
    # CSVToXLS
    #
    # Converts a CSV formatted file to Base64 encoded Excel data.
    #
    ##############################################################################

    class CSVToXLS < Choreography

      ####
      #  Create a new instance of the CSVToXLS Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/CSVToXLS")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CSVToXLSInputSet
      ####
      def new_input_set()
        return CSVToXLSInputSet.new()
      end

      def make_result_set()
        return CSVToXLSResultSet.new()
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
        results = CSVToXLSResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CSVToXLS
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CSVToXLSInputSet < Choreography::InputSet

        #### 
        # Set the value of the CSV input for this Choreo. 
        # 
        # @param String - (conditional, multiline) The CSV data you want to convert to XLS format. Required unless using the VaultFile input alias (an advanced option used when running Choreos in the Temboo Designer).
        ###

        def set_CSV(value)
          set_input("CSV", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - (optional, vault file) A path to a CSV file you've stored in the Vault. This can be used as an alternative to the CSVFile input variable.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CSVToXLS Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CSVToXLSResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "XLS" output from this Choreo execution
      	#
      	# @return String - (string) The Base64 encoded Excel data.
      	####
      	def get_XLS()
      	  return @outputs["XLS"]
      	end
      end

    end # class CSVToXLS



    ##############################################################################
    #
    # CSVToXML
    #
    # Converts a CSV formatted file to XML.
    #
    ##############################################################################

    class CSVToXML < Choreography

      ####
      #  Create a new instance of the CSVToXML Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/CSVToXML")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CSVToXMLInputSet
      ####
      def new_input_set()
        return CSVToXMLInputSet.new()
      end

      def make_result_set()
        return CSVToXMLResultSet.new()
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
        results = CSVToXMLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CSVToXML
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CSVToXMLInputSet < Choreography::InputSet

        #### 
        # Set the value of the CSV input for this Choreo. 
        # 
        # @param String - (required, multiline) The CSV file to convert to XML. Your CSV data must contain column names.
        ###

        def set_CSV(value)
          set_input("CSV", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CSVToXML Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CSVToXMLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "XML" output from this Choreo execution
      	#
      	# @return String - (xml) The XML formatted data.
      	####
      	def get_XML()
      	  return @outputs["XML"]
      	end
      end

    end # class CSVToXML



    ##############################################################################
    #
    # ConvertCSVToBase64EncodedExcel
    #
    # Converts a CSV formatted file to Base64 encoded Excel data.
    #
    ##############################################################################

    class ConvertCSVToBase64EncodedExcel < Choreography

      ####
      #  Create a new instance of the ConvertCSVToBase64EncodedExcel Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/ConvertCSVToBase64EncodedExcel")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ConvertCSVToBase64EncodedExcelInputSet
      ####
      def new_input_set()
        return ConvertCSVToBase64EncodedExcelInputSet.new()
      end

      def make_result_set()
        return ConvertCSVToBase64EncodedExcelResultSet.new()
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
        results = ConvertCSVToBase64EncodedExcelResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ConvertCSVToBase64EncodedExcel
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ConvertCSVToBase64EncodedExcelInputSet < Choreography::InputSet

        #### 
        # Set the value of the CSVFile input for this Choreo. 
        # 
        # @param String - (conditional, multiline) The CSV data you want to convert to XLS format. Required unless using the VaultFile input alias (an advanced option used when running Choreos in the Temboo Designer).
        ###

        def set_CSVFile(value)
          set_input("CSVFile", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - (optional, vault file) A path to a CSV file you've stored in the Vault. This can be used as an alternative to the CSVFile input variable.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ConvertCSVToBase64EncodedExcel Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ConvertCSVToBase64EncodedExcelResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ExcelFile" output from this Choreo execution
      	#
      	# @return String - (string) The Base64 encoded Excel data.
      	####
      	def get_ExcelFile()
      	  return @outputs["ExcelFile"]
      	end
      end

    end # class ConvertCSVToBase64EncodedExcel



    ##############################################################################
    #
    # ConvertExcelToCSV
    #
    # Converts Excel (.xls) formatted data to CSV.
    #
    ##############################################################################

    class ConvertExcelToCSV < Choreography

      ####
      #  Create a new instance of the ConvertExcelToCSV Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/ConvertExcelToCSV")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ConvertExcelToCSVInputSet
      ####
      def new_input_set()
        return ConvertExcelToCSVInputSet.new()
      end

      def make_result_set()
        return ConvertExcelToCSVResultSet.new()
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
        results = ConvertExcelToCSVResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ConvertExcelToCSV
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ConvertExcelToCSVInputSet < Choreography::InputSet

        #### 
        # Set the value of the ExcelFile input for this Choreo. 
        # 
        # @param String - (conditional, string) The base64-encoded contents of the Excel file that you want to convert to CSV. Required unless using the VaultFile input alias (an advanced option used when running Choreos in the Temboo Designer).
        ###

        def set_ExcelFile(value)
          set_input("ExcelFile", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - (optional, vault file) A path to an Excel file you've stored in the Vault. This can be used as an alternative to the ExcelFile input variable.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ConvertExcelToCSV Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ConvertExcelToCSVResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "CSVFile" output from this Choreo execution
      	#
      	# @return String - (string) The CSV formatted data.
      	####
      	def get_CSVFile()
      	  return @outputs["CSVFile"]
      	end
      end

    end # class ConvertExcelToCSV



    ##############################################################################
    #
    # ConvertExcelToXML
    #
    # Converts Excel (.xls) formatted data to XML.
    #
    ##############################################################################

    class ConvertExcelToXML < Choreography

      ####
      #  Create a new instance of the ConvertExcelToXML Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/ConvertExcelToXML")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ConvertExcelToXMLInputSet
      ####
      def new_input_set()
        return ConvertExcelToXMLInputSet.new()
      end

      def make_result_set()
        return ConvertExcelToXMLResultSet.new()
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
        results = ConvertExcelToXMLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ConvertExcelToXML
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ConvertExcelToXMLInputSet < Choreography::InputSet

        #### 
        # Set the value of the ExcelFile input for this Choreo. 
        # 
        # @param String - (conditional, string) The base64-encoded contents of the Excel file that you want to convert to CSV. Required unless using the VaultFile input alias (an advanced option used when running Choreos in the Temboo Designer).
        ###

        def set_ExcelFile(value)
          set_input("ExcelFile", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - (optional, vault file) A path to an Excel file that has been uploaded to the vault. You can use this input alias as an alternative to the ExcelFile input variable.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ConvertExcelToXML Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ConvertExcelToXMLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "XMLFile" output from this Choreo execution
      	#
      	# @return String - (xml) The data in XML format.
      	####
      	def get_XMLFile()
      	  return @outputs["XMLFile"]
      	end
      end

    end # class ConvertExcelToXML



    ##############################################################################
    #
    # ConvertJSONToXML
    #
    # Converts data from JSON format to a XML format.
    #
    ##############################################################################

    class ConvertJSONToXML < Choreography

      ####
      #  Create a new instance of the ConvertJSONToXML Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/ConvertJSONToXML")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ConvertJSONToXMLInputSet
      ####
      def new_input_set()
        return ConvertJSONToXMLInputSet.new()
      end

      def make_result_set()
        return ConvertJSONToXMLResultSet.new()
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
        results = ConvertJSONToXMLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ConvertJSONToXML
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ConvertJSONToXMLInputSet < Choreography::InputSet

        #### 
        # Set the value of the JSON input for this Choreo. 
        # 
        # @param String - (required, json) The JSON data that you want to convert to XML.
        ###

        def set_JSON(value)
          set_input("JSON", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ConvertJSONToXML Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ConvertJSONToXMLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "XML" output from this Choreo execution
      	#
      	# @return String - (xml) The converted data in XML format.
      	####
      	def get_XML()
      	  return @outputs["XML"]
      	end
      end

    end # class ConvertJSONToXML



    ##############################################################################
    #
    # ConvertXMLToBase64EncodedExcel
    #
    # Converts an XML file to a Base64 encoded Excel file.
    #
    ##############################################################################

    class ConvertXMLToBase64EncodedExcel < Choreography

      ####
      #  Create a new instance of the ConvertXMLToBase64EncodedExcel Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/ConvertXMLToBase64EncodedExcel")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ConvertXMLToBase64EncodedExcelInputSet
      ####
      def new_input_set()
        return ConvertXMLToBase64EncodedExcelInputSet.new()
      end

      def make_result_set()
        return ConvertXMLToBase64EncodedExcelResultSet.new()
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
        results = ConvertXMLToBase64EncodedExcelResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ConvertXMLToBase64EncodedExcel
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ConvertXMLToBase64EncodedExcelInputSet < Choreography::InputSet

        #### 
        # Set the value of the XMLFile input for this Choreo. 
        # 
        # @param String - (required, xml) The XML file you want to convert to XLS format. See documentation for information on the required XML schema.
        ###

        def set_XMLFile(value)
          set_input("XMLFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ConvertXMLToBase64EncodedExcel Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ConvertXMLToBase64EncodedExcelResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ExcelFile" output from this Choreo execution
      	#
      	# @return String - The Base64 encoded Excel data .
      	####
      	def get_ExcelFile()
      	  return @outputs["ExcelFile"]
      	end
      end

    end # class ConvertXMLToBase64EncodedExcel



    ##############################################################################
    #
    # ConvertXMLToJSON
    #
    # Converts data from XML format to a JSON format.
    #
    ##############################################################################

    class ConvertXMLToJSON < Choreography

      ####
      #  Create a new instance of the ConvertXMLToJSON Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/ConvertXMLToJSON")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ConvertXMLToJSONInputSet
      ####
      def new_input_set()
        return ConvertXMLToJSONInputSet.new()
      end

      def make_result_set()
        return ConvertXMLToJSONResultSet.new()
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
        results = ConvertXMLToJSONResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ConvertXMLToJSON
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ConvertXMLToJSONInputSet < Choreography::InputSet

        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (required, xml) The XML file that you want to convert to JSON format.
        ###

        def set_XML(value)
          set_input("XML", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ConvertXMLToJSON Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ConvertXMLToJSONResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "JSON" output from this Choreo execution
      	#
      	# @return String - (json) The converted data in JSON format.
      	####
      	def get_JSON()
      	  return @outputs["JSON"]
      	end
      end

    end # class ConvertXMLToJSON



    ##############################################################################
    #
    # JSONToXML
    #
    # Converts data from JSON format to XML format.
    #
    ##############################################################################

    class JSONToXML < Choreography

      ####
      #  Create a new instance of the JSONToXML Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/JSONToXML")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return JSONToXMLInputSet
      ####
      def new_input_set()
        return JSONToXMLInputSet.new()
      end

      def make_result_set()
        return JSONToXMLResultSet.new()
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
        results = JSONToXMLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the JSONToXML
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class JSONToXMLInputSet < Choreography::InputSet

        #### 
        # Set the value of the JSON input for this Choreo. 
        # 
        # @param String - (required, json) The JSON data that you want to convert to XML.
        ###

        def set_JSON(value)
          set_input("JSON", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the JSONToXML Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class JSONToXMLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "XML" output from this Choreo execution
      	#
      	# @return String - (xml) The converted data in XML format.
      	####
      	def get_XML()
      	  return @outputs["XML"]
      	end
      end

    end # class JSONToXML



    ##############################################################################
    #
    # RSSToJSON
    #
    # Retrieves a specified RSS Feed, and converts it to JSON format.
    #
    ##############################################################################

    class RSSToJSON < Choreography

      ####
      #  Create a new instance of the RSSToJSON Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/RSSToJSON")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RSSToJSONInputSet
      ####
      def new_input_set()
        return RSSToJSONInputSet.new()
      end

      def make_result_set()
        return RSSToJSONResultSet.new()
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
        results = RSSToJSONResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RSSToJSON
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RSSToJSONInputSet < Choreography::InputSet

        #### 
        # Set the value of the RSSFeed input for this Choreo. 
        # 
        # @param String - (required, string) The URL for an RSS feed that you wish to convert to JSON.
        ###

        def set_RSSFeed(value)
          set_input("RSSFeed", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RSSToJSON Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RSSToJSONResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The feed data in JSON format.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RSSToJSON



    ##############################################################################
    #
    # TSVToJSON
    #
    # Converts a TSV formatted file to JSON.
    #
    ##############################################################################

    class TSVToJSON < Choreography

      ####
      #  Create a new instance of the TSVToJSON Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/TSVToJSON")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TSVToJSONInputSet
      ####
      def new_input_set()
        return TSVToJSONInputSet.new()
      end

      def make_result_set()
        return TSVToJSONResultSet.new()
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
        results = TSVToJSONResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TSVToJSON
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TSVToJSONInputSet < Choreography::InputSet

        #### 
        # Set the value of the TSV input for this Choreo. 
        # 
        # @param String - (required, multiline) The TSV file to convert to XML. Your TSV data must contain column names.
        ###

        def set_TSV(value)
          set_input("TSV", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TSVToJSON Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TSVToJSONResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "JSON" output from this Choreo execution
      	#
      	# @return String - (json) The JSON formatted data.
      	####
      	def get_JSON()
      	  return @outputs["JSON"]
      	end
      end

    end # class TSVToJSON



    ##############################################################################
    #
    # TSVToXML
    #
    # Converts a TSV formatted file to XML.
    #
    ##############################################################################

    class TSVToXML < Choreography

      ####
      #  Create a new instance of the TSVToXML Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/TSVToXML")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TSVToXMLInputSet
      ####
      def new_input_set()
        return TSVToXMLInputSet.new()
      end

      def make_result_set()
        return TSVToXMLResultSet.new()
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
        results = TSVToXMLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TSVToXML
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TSVToXMLInputSet < Choreography::InputSet

        #### 
        # Set the value of the TSV input for this Choreo. 
        # 
        # @param String - (required, multiline) The TSV file to convert to XML. Your TSV data must contain column names.
        ###

        def set_TSV(value)
          set_input("TSV", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TSVToXML Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TSVToXMLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "XML" output from this Choreo execution
      	#
      	# @return String - (xml) The XML formatted data.
      	####
      	def get_XML()
      	  return @outputs["XML"]
      	end
      end

    end # class TSVToXML



    ##############################################################################
    #
    # XLSToCSV
    #
    # Converts Excel (.xls) formatted data to CSV.
    #
    ##############################################################################

    class XLSToCSV < Choreography

      ####
      #  Create a new instance of the XLSToCSV Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/XLSToCSV")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return XLSToCSVInputSet
      ####
      def new_input_set()
        return XLSToCSVInputSet.new()
      end

      def make_result_set()
        return XLSToCSVResultSet.new()
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
        results = XLSToCSVResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the XLSToCSV
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class XLSToCSVInputSet < Choreography::InputSet

        #### 
        # Set the value of the XLS input for this Choreo. 
        # 
        # @param String - (conditional, string) The base64-encoded contents of the Excel file that you want to convert to CSV format. Compatible with Excel 97-2003.
        ###

        def set_XLS(value)
          set_input("XLS", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - (optional, vault file) A path to an Excel file you've stored in the Vault. This can be used as an alternative to the ExcelFile input variable.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the XLSToCSV Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class XLSToCSVResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "CSV" output from this Choreo execution
      	#
      	# @return String - (string) The CSV formatted data.
      	####
      	def get_CSV()
      	  return @outputs["CSV"]
      	end
      end

    end # class XLSToCSV



    ##############################################################################
    #
    # XLSToXML
    #
    # Converts Excel (.xls) formatted data to XML.
    #
    ##############################################################################

    class XLSToXML < Choreography

      ####
      #  Create a new instance of the XLSToXML Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/XLSToXML")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return XLSToXMLInputSet
      ####
      def new_input_set()
        return XLSToXMLInputSet.new()
      end

      def make_result_set()
        return XLSToXMLResultSet.new()
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
        results = XLSToXMLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the XLSToXML
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class XLSToXMLInputSet < Choreography::InputSet

        #### 
        # Set the value of the XLS input for this Choreo. 
        # 
        # @param String - (conditional, string) The base64-encoded contents of the Excel file that you want to convert to XML. Compatible with Excel 97-2003.
        ###

        def set_XLS(value)
          set_input("XLS", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - (optional, vault file) A path to an Excel file that has been uploaded to the vault. You can use this input alias as an alternative to the ExcelFile input variable.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the XLSToXML Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class XLSToXMLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "XML" output from this Choreo execution
      	#
      	# @return String - (xml) The data in XML format.
      	####
      	def get_XML()
      	  return @outputs["XML"]
      	end
      end

    end # class XLSToXML



    ##############################################################################
    #
    # XMLToCSV
    #
    # Converts an XML file to CSV format.
    #
    ##############################################################################

    class XMLToCSV < Choreography

      ####
      #  Create a new instance of the XMLToCSV Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/XMLToCSV")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return XMLToCSVInputSet
      ####
      def new_input_set()
        return XMLToCSVInputSet.new()
      end

      def make_result_set()
        return XMLToCSVResultSet.new()
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
        results = XMLToCSVResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the XMLToCSV
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class XMLToCSVInputSet < Choreography::InputSet

        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (required, xml) The XML file to convert to CSV data.
        ###

        def set_XML(value)
          set_input("XML", value)
        end
        #### 
        # Set the value of the Path input for this Choreo. 
        # 
        # @param String - (optional, string) If your XML is not in "/rowset/row/column_name" format, specify a path to the rows. See documentation for examples.
        ###

        def set_Path(value)
          set_input("Path", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the XMLToCSV Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class XMLToCSVResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "CSV" output from this Choreo execution
      	#
      	# @return String - (multiline) The CSV data generated from the XML input.
      	####
      	def get_CSV()
      	  return @outputs["CSV"]
      	end
      end

    end # class XMLToCSV



    ##############################################################################
    #
    # XMLToJSON
    #
    # Converts data from XML format to JSON format.
    #
    ##############################################################################

    class XMLToJSON < Choreography

      ####
      #  Create a new instance of the XMLToJSON Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/XMLToJSON")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return XMLToJSONInputSet
      ####
      def new_input_set()
        return XMLToJSONInputSet.new()
      end

      def make_result_set()
        return XMLToJSONResultSet.new()
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
        results = XMLToJSONResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the XMLToJSON
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class XMLToJSONInputSet < Choreography::InputSet

        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (required, xml) The XML file that you want to convert to JSON format.
        ###

        def set_XML(value)
          set_input("XML", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the XMLToJSON Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class XMLToJSONResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "JSON" output from this Choreo execution
      	#
      	# @return String - (json) The converted data in JSON format.
      	####
      	def get_JSON()
      	  return @outputs["JSON"]
      	end
      end

    end # class XMLToJSON



    ##############################################################################
    #
    # XMLToTSV
    #
    # Converts an XML file to TSV format (TAB-separated values).
    #
    ##############################################################################

    class XMLToTSV < Choreography

      ####
      #  Create a new instance of the XMLToTSV Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/XMLToTSV")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return XMLToTSVInputSet
      ####
      def new_input_set()
        return XMLToTSVInputSet.new()
      end

      def make_result_set()
        return XMLToTSVResultSet.new()
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
        results = XMLToTSVResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the XMLToTSV
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class XMLToTSVInputSet < Choreography::InputSet

        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (required, xml) The XML file to convert to TSV data.
        ###

        def set_XML(value)
          set_input("XML", value)
        end
        #### 
        # Set the value of the Path input for this Choreo. 
        # 
        # @param String - (optional, string) If your XML is not in "/rowset/row/column_name" format, specify a path to the rows. See documentation for examples.
        ###

        def set_Path(value)
          set_input("Path", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the XMLToTSV Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class XMLToTSVResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "TSV" output from this Choreo execution
      	#
      	# @return String - (multiline) The tab-separated data generated from the XML input.
      	####
      	def get_TSV()
      	  return @outputs["TSV"]
      	end
      end

    end # class XMLToTSV



    ##############################################################################
    #
    # XMLToXLS
    #
    # Converts an XML file to a Base64 encoded Excel file.
    #
    ##############################################################################

    class XMLToXLS < Choreography

      ####
      #  Create a new instance of the XMLToXLS Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/DataConversions/XMLToXLS")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return XMLToXLSInputSet
      ####
      def new_input_set()
        return XMLToXLSInputSet.new()
      end

      def make_result_set()
        return XMLToXLSResultSet.new()
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
        results = XMLToXLSResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the XMLToXLS
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class XMLToXLSInputSet < Choreography::InputSet

        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (required, xml) The XML file you want to convert to XLS format. See documentation for information on the required XML schema.
        ###

        def set_XML(value)
          set_input("XML", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the XMLToXLS Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class XMLToXLSResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "XLS" output from this Choreo execution
      	#
      	# @return String - The Base64 encoded Excel data .
      	####
      	def get_XLS()
      	  return @outputs["XLS"]
      	end
      end

    end # class XMLToXLS




  end # module DataConversions

  module Email



    ##############################################################################
    #
    # GetEmail
    #
    # Retrieves a single email message from a specified email account.
    #
    ##############################################################################

    class GetEmail < Choreography

      ####
      #  Create a new instance of the GetEmail Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Email/GetEmail")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEmailInputSet
      ####
      def new_input_set()
        return GetEmailInputSet.new()
      end

      def make_result_set()
        return GetEmailResultSet.new()
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
        results = GetEmailResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEmail
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEmailInputSet < Choreography::InputSet

        #### 
        # Set the value of the DeleteAfterRetrieval input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) To delete the message after retrieval, set to 1. Defaults to 0 indicating that the message will not be deleted after retrieval.
        ###

        def set_DeleteAfterRetrieval(value)
          set_input("DeleteAfterRetrieval", value)
        end
        #### 
        # Set the value of the MailboxFolder input for this Choreo. 
        # 
        # @param String - (optional, string) The folder name to retrieve emails from. This is only used when the Protocol input is set to imap. The default value is "Inbox".
        ###

        def set_MailboxFolder(value)
          set_input("MailboxFolder", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The password for the email account.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Port input for this Choreo. 
        # 
        # @param Integer - (required, integer) Specify the port number.
        ###

        def set_Port(value)
          set_input("Port", value)
        end
        #### 
        # Set the value of the Protocol input for this Choreo. 
        # 
        # @param String - (required, string) Specify the protocol. Valid values are: pop or imap.
        ###

        def set_Protocol(value)
          set_input("Protocol", value)
        end
        #### 
        # Set the value of the SenderAddressFilter input for this Choreo. 
        # 
        # @param String - (optional, string) A string used to filter by a particular sender address.
        ###

        def set_SenderAddressFilter(value)
          set_input("SenderAddressFilter", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) The name or IP address of the email server.
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the SubjectFilter input for this Choreo. 
        # 
        # @param String - (optional, string) A string used to filter by subject.
        ###

        def set_SubjectFilter(value)
          set_input("SubjectFilter", value)
        end
        #### 
        # Set the value of the UseSSL input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to use SSL. Defaults to 1 (true).
        ###

        def set_UseSSL(value)
          set_input("UseSSL", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The username for the email account.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEmail Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEmailResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Subject" output from this Choreo execution
      	#
      	# @return String - (string) The subject of the email.
      	####
      	def get_Subject()
      	  return @outputs["Subject"]
      	end
      	####
      	# Retrieve the value for the "Message" output from this Choreo execution
      	#
      	# @return String - (xml) The response from the mail server including the message body and message header fields.
      	####
      	def get_Message()
      	  return @outputs["Message"]
      	end
      	####
      	# Retrieve the value for the "Sender" output from this Choreo execution
      	#
      	# @return String - (string) The sender email address.
      	####
      	def get_Sender()
      	  return @outputs["Sender"]
      	end
      	####
      	# Retrieve the value for the "MessageBody" output from this Choreo execution
      	#
      	# @return String - (string) The message body of the email.
      	####
      	def get_MessageBody()
      	  return @outputs["MessageBody"]
      	end
      	####
      	# Retrieve the value for the "Attachment" output from this Choreo execution
      	#
      	# @return String - (string) If the email has an attachment, the Base64 encoded contents of the attachment are returned in this output variable.
      	####
      	def get_Attachment()
      	  return @outputs["Attachment"]
      	end
      end

    end # class GetEmail



    ##############################################################################
    #
    # GetEmails
    #
    # Retrieves one or more email messages from a specified mail account.
    #
    ##############################################################################

    class GetEmails < Choreography

      ####
      #  Create a new instance of the GetEmails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Email/GetEmails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEmailsInputSet
      ####
      def new_input_set()
        return GetEmailsInputSet.new()
      end

      def make_result_set()
        return GetEmailsResultSet.new()
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
        results = GetEmailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEmails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEmailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the DeleteAfterRetrieval input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) To delete messages after retrieval, set to 1. Defaults to 0 indicating that the messages will not be deleted after retrieval.
        ###

        def set_DeleteAfterRetrieval(value)
          set_input("DeleteAfterRetrieval", value)
        end
        #### 
        # Set the value of the MailboxFolder input for this Choreo. 
        # 
        # @param String - (optional, string) The folder name to retrieve emails from. This is only used when the Protocol input is set to imap. The default value is "Inbox".
        ###

        def set_MailboxFolder(value)
          set_input("MailboxFolder", value)
        end
        #### 
        # Set the value of the MaxMessages input for this Choreo. 
        # 
        # @param String - (optional, string) The max number of email messages to retrieve. Valid values are 1-100. Defaults to 100.
        ###

        def set_MaxMessages(value)
          set_input("MaxMessages", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The password for the email account.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Port input for this Choreo. 
        # 
        # @param Integer - (required, integer) Specify the port number.
        ###

        def set_Port(value)
          set_input("Port", value)
        end
        #### 
        # Set the value of the Protocol input for this Choreo. 
        # 
        # @param String - (required, string) Specify the protocol. Valid values are: pop or imap.
        ###

        def set_Protocol(value)
          set_input("Protocol", value)
        end
        #### 
        # Set the value of the SenderAddressFilter input for this Choreo. 
        # 
        # @param String - (optional, string) A string used to filter by a particular sender address.
        ###

        def set_SenderAddressFilter(value)
          set_input("SenderAddressFilter", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) The name or IP address of the email server.
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the SubjectFilter input for this Choreo. 
        # 
        # @param String - (optional, string) A string used to filter by subject.
        ###

        def set_SubjectFilter(value)
          set_input("SubjectFilter", value)
        end
        #### 
        # Set the value of the UseSSL input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to use SSL. Defaults to 1 (true).
        ###

        def set_UseSSL(value)
          set_input("UseSSL", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The username for the email account.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEmails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEmailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Messages" output from this Choreo execution
      	#
      	# @return String - (xml) A list of the email messages retrieved from the mail server. Each email message will contain the message body and message header fields.
      	####
      	def get_Messages()
      	  return @outputs["Messages"]
      	end
      end

    end # class GetEmails



    ##############################################################################
    #
    # SendEmail
    #
    # Sends an email using a specified email server.
    #
    ##############################################################################

    class SendEmail < Choreography

      ####
      #  Create a new instance of the SendEmail Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Email/SendEmail")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SendEmailInputSet
      ####
      def new_input_set()
        return SendEmailInputSet.new()
      end

      def make_result_set()
        return SendEmailResultSet.new()
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
        results = SendEmailResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SendEmail
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SendEmailInputSet < Choreography::InputSet

        #### 
        # Set the value of the AttachmentName input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the file to attach to the email.
        ###

        def set_AttachmentName(value)
          set_input("AttachmentName", value)
        end
        #### 
        # Set the value of the AttachmentURL input for this Choreo. 
        # 
        # @param String - (optional, string) URL of a hosted file that you wish to add as an attachment.  Use this instead of a normal Attachment.
        ###

        def set_AttachmentURL(value)
          set_input("AttachmentURL", value)
        end
        #### 
        # Set the value of the Attachment input for this Choreo. 
        # 
        # @param String - (optional, string) The Base64 encoded contents of the file to attach to the email.  Use this instead of AttachmentURL.
        ###

        def set_Attachment(value)
          set_input("Attachment", value)
        end
        #### 
        # Set the value of the BCC input for this Choreo. 
        # 
        # @param String - (optional, string) An email address to BCC on the email you're sending. Can be a comma separated list of email addresses.
        ###

        def set_BCC(value)
          set_input("BCC", value)
        end
        #### 
        # Set the value of the CC input for this Choreo. 
        # 
        # @param String - (optional, string) An email address to CC on the email you're sending. Can be a comma separated list of email addresses.
        ###

        def set_CC(value)
          set_input("CC", value)
        end
        #### 
        # Set the value of the FromAddress input for this Choreo. 
        # 
        # @param String - (conditional, string) The name and email address that the message is being sent from.
        ###

        def set_FromAddress(value)
          set_input("FromAddress", value)
        end
        #### 
        # Set the value of the MessageBody input for this Choreo. 
        # 
        # @param String - (required, string) The message body for the email.
        ###

        def set_MessageBody(value)
          set_input("MessageBody", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, password) The password for your email account.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Port input for this Choreo. 
        # 
        # @param Integer - (required, integer) Specify the port number (i.e. 25 or 465).
        ###

        def set_Port(value)
          set_input("Port", value)
        end
        #### 
        # Set the value of the Server input for this Choreo. 
        # 
        # @param String - (required, string) The name or IP address of the email server.
        ###

        def set_Server(value)
          set_input("Server", value)
        end
        #### 
        # Set the value of the Subject input for this Choreo. 
        # 
        # @param String - (required, string) The subject line of the email.
        ###

        def set_Subject(value)
          set_input("Subject", value)
        end
        #### 
        # Set the value of the ToAddress input for this Choreo. 
        # 
        # @param String - (required, string) The email address that you want to send an email to. Can be a comma separated list of email addresses.
        ###

        def set_ToAddress(value)
          set_input("ToAddress", value)
        end
        #### 
        # Set the value of the UseSSL input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 to connect over SSL. Set to 0 for no SSL. Defaults to 1.
        ###

        def set_UseSSL(value)
          set_input("UseSSL", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Your username for your email account.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SendEmail Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SendEmailResultSet < Choreography::ResultSet
      end

    end # class SendEmail




    module Utils



      ##############################################################################
      #
      # GetAndDeleteEmailNoSSL
      #
      # 
      #
      ##############################################################################

      class GetAndDeleteEmailNoSSL < Choreography

        ####
        #  Create a new instance of the GetAndDeleteEmailNoSSL Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Utilities/Email/Utils/GetAndDeleteEmailNoSSL")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetAndDeleteEmailNoSSLInputSet
        ####
        def new_input_set()
          return GetAndDeleteEmailNoSSLInputSet.new()
        end

        def make_result_set()
          return GetAndDeleteEmailNoSSLResultSet.new()
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
          results = GetAndDeleteEmailNoSSLResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetAndDeleteEmailNoSSL
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetAndDeleteEmailNoSSLInputSet < Choreography::InputSet

          #### 
          # Set the value of the MailboxFolder input for this Choreo. 
          # 
          # @param String - (optional, string) The folder name to retrieve emails from. This is only used when the Protocol input is set to imap. The default value is "Inbox".
          ###

          def set_MailboxFolder(value)
            set_input("MailboxFolder", value)
          end
          #### 
          # Set the value of the Password input for this Choreo. 
          # 
          # @param String - (required, string) Your Gmail password.
          ###

          def set_Password(value)
            set_input("Password", value)
          end
          #### 
          # Set the value of the Port input for this Choreo. 
          # 
          # @param Integer - (required, integer) Specify the port number. If not specified, the default is 995 for pop protocol and 993 for imap.
          ###

          def set_Port(value)
            set_input("Port", value)
          end
          #### 
          # Set the value of the Protocol input for this Choreo. 
          # 
          # @param String - (required, string) Specify the protocol. Valid values are: pop or imap.
          ###

          def set_Protocol(value)
            set_input("Protocol", value)
          end
          #### 
          # Set the value of the SenderAddressFilter input for this Choreo. 
          # 
          # @param String - (optional, string) A string used to filter by a particular sender address.
          ###

          def set_SenderAddressFilter(value)
            set_input("SenderAddressFilter", value)
          end
          #### 
          # Set the value of the Server input for this Choreo. 
          # 
          # @param String - (required, string) The name or IP address of the email server.
          ###

          def set_Server(value)
            set_input("Server", value)
          end
          #### 
          # Set the value of the SubjectFilter input for this Choreo. 
          # 
          # @param String - (optional, string) A string used to filter by subject.
          ###

          def set_SubjectFilter(value)
            set_input("SubjectFilter", value)
          end
          #### 
          # Set the value of the Username input for this Choreo. 
          # 
          # @param String - (required, string) Your Gmail username. Provide the complete email address used for logging into Gmail.
          ###

          def set_Username(value)
            set_input("Username", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetAndDeleteEmailNoSSL Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetAndDeleteEmailNoSSLResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (xml) The response from Gmail including all details about the retrieved email in XML format.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "AttachmentFolder" output from this Choreo execution
        	#
        	# @return String - 
        	####
        	def get_AttachmentFolder()
        	  return @outputs["AttachmentFolder"]
        	end
        end

      end # class GetAndDeleteEmailNoSSL



      ##############################################################################
      #
      # GetAndDeleteEmailUseSSL
      #
      # 
      #
      ##############################################################################

      class GetAndDeleteEmailUseSSL < Choreography

        ####
        #  Create a new instance of the GetAndDeleteEmailUseSSL Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Utilities/Email/Utils/GetAndDeleteEmailUseSSL")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetAndDeleteEmailUseSSLInputSet
        ####
        def new_input_set()
          return GetAndDeleteEmailUseSSLInputSet.new()
        end

        def make_result_set()
          return GetAndDeleteEmailUseSSLResultSet.new()
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
          results = GetAndDeleteEmailUseSSLResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetAndDeleteEmailUseSSL
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetAndDeleteEmailUseSSLInputSet < Choreography::InputSet

          #### 
          # Set the value of the MailboxFolder input for this Choreo. 
          # 
          # @param String - (optional, string) The folder name to retrieve emails from. This is only used when the Protocol input is set to imap. The default value is "Inbox".
          ###

          def set_MailboxFolder(value)
            set_input("MailboxFolder", value)
          end
          #### 
          # Set the value of the Password input for this Choreo. 
          # 
          # @param String - (required, string) Your Gmail password.
          ###

          def set_Password(value)
            set_input("Password", value)
          end
          #### 
          # Set the value of the Port input for this Choreo. 
          # 
          # @param Integer - (conditional, integer) Specify the port number. If not specified, the default is 995 for pop protocol and 993 for imap.
          ###

          def set_Port(value)
            set_input("Port", value)
          end
          #### 
          # Set the value of the Protocol input for this Choreo. 
          # 
          # @param String - (required, string) Specify the protocol. Valid values are: pop or imap.
          ###

          def set_Protocol(value)
            set_input("Protocol", value)
          end
          #### 
          # Set the value of the SenderAddressFilter input for this Choreo. 
          # 
          # @param String - (optional, string) A string used to filter by a particular sender address.
          ###

          def set_SenderAddressFilter(value)
            set_input("SenderAddressFilter", value)
          end
          #### 
          # Set the value of the Server input for this Choreo. 
          # 
          # @param String - (required, string) The name or IP address of the email server.
          ###

          def set_Server(value)
            set_input("Server", value)
          end
          #### 
          # Set the value of the SubjectFilter input for this Choreo. 
          # 
          # @param String - (optional, string) A string used to filter by subject.
          ###

          def set_SubjectFilter(value)
            set_input("SubjectFilter", value)
          end
          #### 
          # Set the value of the Username input for this Choreo. 
          # 
          # @param String - (required, string) Your Gmail username. Provide the complete email address used for logging into Gmail.
          ###

          def set_Username(value)
            set_input("Username", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetAndDeleteEmailUseSSL Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetAndDeleteEmailUseSSLResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (xml) The response from Gmail including all details about the retrieved email in XML format.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "AttachmentFolder" output from this Choreo execution
        	#
        	# @return String - 
        	####
        	def get_AttachmentFolder()
        	  return @outputs["AttachmentFolder"]
        	end
        end

      end # class GetAndDeleteEmailUseSSL



      ##############################################################################
      #
      # GetEmailNoDeleteNoSSL
      #
      # 
      #
      ##############################################################################

      class GetEmailNoDeleteNoSSL < Choreography

        ####
        #  Create a new instance of the GetEmailNoDeleteNoSSL Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Utilities/Email/Utils/GetEmailNoDeleteNoSSL")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetEmailNoDeleteNoSSLInputSet
        ####
        def new_input_set()
          return GetEmailNoDeleteNoSSLInputSet.new()
        end

        def make_result_set()
          return GetEmailNoDeleteNoSSLResultSet.new()
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
          results = GetEmailNoDeleteNoSSLResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetEmailNoDeleteNoSSL
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetEmailNoDeleteNoSSLInputSet < Choreography::InputSet

          #### 
          # Set the value of the MailboxFolder input for this Choreo. 
          # 
          # @param String - (optional, string) The folder name to retrieve emails from. This is only used when the Protocol input is set to imap. The default value is "Inbox".
          ###

          def set_MailboxFolder(value)
            set_input("MailboxFolder", value)
          end
          #### 
          # Set the value of the Password input for this Choreo. 
          # 
          # @param String - (required, string) Your Gmail password.
          ###

          def set_Password(value)
            set_input("Password", value)
          end
          #### 
          # Set the value of the Port input for this Choreo. 
          # 
          # @param Integer - (required, integer) Specify the port number. If not specified, the default is 995 for pop protocol and 993 for imap.
          ###

          def set_Port(value)
            set_input("Port", value)
          end
          #### 
          # Set the value of the Protocol input for this Choreo. 
          # 
          # @param String - (required, string) Specify the protocol. Valid values are: pop or imap.
          ###

          def set_Protocol(value)
            set_input("Protocol", value)
          end
          #### 
          # Set the value of the SenderAddressFilter input for this Choreo. 
          # 
          # @param String - (optional, string) A string used to filter by a particular sender address.
          ###

          def set_SenderAddressFilter(value)
            set_input("SenderAddressFilter", value)
          end
          #### 
          # Set the value of the Server input for this Choreo. 
          # 
          # @param String - (required, string) The name or IP address of the email server.
          ###

          def set_Server(value)
            set_input("Server", value)
          end
          #### 
          # Set the value of the SubjectFilter input for this Choreo. 
          # 
          # @param String - (optional, string) A string used to filter by subject.
          ###

          def set_SubjectFilter(value)
            set_input("SubjectFilter", value)
          end
          #### 
          # Set the value of the Username input for this Choreo. 
          # 
          # @param String - (required, string) Your Gmail username. Provide the complete email address used for logging into Gmail.
          ###

          def set_Username(value)
            set_input("Username", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetEmailNoDeleteNoSSL Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetEmailNoDeleteNoSSLResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (xml) The response from Gmail including all details about the retrieved email in XML format.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        	####
        	# Retrieve the value for the "AttachmentFolder" output from this Choreo execution
        	#
        	# @return String - 
        	####
        	def get_AttachmentFolder()
        	  return @outputs["AttachmentFolder"]
        	end
        end

      end # class GetEmailNoDeleteNoSSL



      ##############################################################################
      #
      # GetEmailNoDeleteUseSSL
      #
      # 
      #
      ##############################################################################

      class GetEmailNoDeleteUseSSL < Choreography

        ####
        #  Create a new instance of the GetEmailNoDeleteUseSSL Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Utilities/Email/Utils/GetEmailNoDeleteUseSSL")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return GetEmailNoDeleteUseSSLInputSet
        ####
        def new_input_set()
          return GetEmailNoDeleteUseSSLInputSet.new()
        end

        def make_result_set()
          return GetEmailNoDeleteUseSSLResultSet.new()
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
          results = GetEmailNoDeleteUseSSLResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the GetEmailNoDeleteUseSSL
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class GetEmailNoDeleteUseSSLInputSet < Choreography::InputSet

          #### 
          # Set the value of the MailboxFolder input for this Choreo. 
          # 
          # @param String - (optional, string) The folder name to retrieve emails from. This is only used when the Protocol input is set to imap. The default value is "Inbox".
          ###

          def set_MailboxFolder(value)
            set_input("MailboxFolder", value)
          end
          #### 
          # Set the value of the Password input for this Choreo. 
          # 
          # @param String - (required, string) Your Gmail password.
          ###

          def set_Password(value)
            set_input("Password", value)
          end
          #### 
          # Set the value of the Port input for this Choreo. 
          # 
          # @param Integer - (required, integer) Specify the port number. If not specified, the default is 995 for pop protocol and 993 for imap.
          ###

          def set_Port(value)
            set_input("Port", value)
          end
          #### 
          # Set the value of the Protocol input for this Choreo. 
          # 
          # @param String - (required, string) Specify the protocol. Valid values are: pop or imap.
          ###

          def set_Protocol(value)
            set_input("Protocol", value)
          end
          #### 
          # Set the value of the SenderAddressFilter input for this Choreo. 
          # 
          # @param String - (optional, string) A string used to filter by a particular sender address.
          ###

          def set_SenderAddressFilter(value)
            set_input("SenderAddressFilter", value)
          end
          #### 
          # Set the value of the Server input for this Choreo. 
          # 
          # @param String - (required, string) The name or IP address of the email server.
          ###

          def set_Server(value)
            set_input("Server", value)
          end
          #### 
          # Set the value of the SubjectFilter input for this Choreo. 
          # 
          # @param String - (optional, string) A string used to filter by subject.
          ###

          def set_SubjectFilter(value)
            set_input("SubjectFilter", value)
          end
          #### 
          # Set the value of the Username input for this Choreo. 
          # 
          # @param String - (required, string) Your Gmail username. Provide the complete email address used for logging into Gmail.
          ###

          def set_Username(value)
            set_input("Username", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the GetEmailNoDeleteUseSSL Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class GetEmailNoDeleteUseSSLResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "AttachmentFolder" output from this Choreo execution
        	#
        	# @return String - 
        	####
        	def get_AttachmentFolder()
        	  return @outputs["AttachmentFolder"]
        	end
        	####
        	# Retrieve the value for the "Response" output from this Choreo execution
        	#
        	# @return String - (xml) The response from Gmail including all details about the retrieved email in XML format.
        	####
        	def get_Response()
        	  return @outputs["Response"]
        	end
        end

      end # class GetEmailNoDeleteUseSSL




    end # module Utils

  end # module Email

  module Encoding



    ##############################################################################
    #
    # Base64Decode
    #
    # Returns the specified Base64 encoded string as decoded text.
    #
    ##############################################################################

    class Base64Decode < Choreography

      ####
      #  Create a new instance of the Base64Decode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Encoding/Base64Decode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return Base64DecodeInputSet
      ####
      def new_input_set()
        return Base64DecodeInputSet.new()
      end

      def make_result_set()
        return Base64DecodeResultSet.new()
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
        results = Base64DecodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Base64Decode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class Base64DecodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the Base64EncodedText input for this Choreo. 
        # 
        # @param String - (required, string) The Base64 encoded text to decode. Note that Base64 encoded binary data is not allowed.
        ###

        def set_Base64EncodedText(value)
          set_input("Base64EncodedText", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Base64Decode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class Base64DecodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Text" output from this Choreo execution
      	#
      	# @return String - (string) The decoded text.
      	####
      	def get_Text()
      	  return @outputs["Text"]
      	end
      end

    end # class Base64Decode



    ##############################################################################
    #
    # Base64Encode
    #
    # Returns the specified text or file as a Base64 encoded string.
    #
    ##############################################################################

    class Base64Encode < Choreography

      ####
      #  Create a new instance of the Base64Encode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Encoding/Base64Encode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return Base64EncodeInputSet
      ####
      def new_input_set()
        return Base64EncodeInputSet.new()
      end

      def make_result_set()
        return Base64EncodeResultSet.new()
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
        results = Base64EncodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Base64Encode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class Base64EncodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (conditional, string) The text that should be Base64 encoded. Required unless providing a value for the URL input.
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (conditional, string) A URL to a hosted file that should be Base64 encoded. Required unless providing a value for the Text input.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Base64Encode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class Base64EncodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Base64EncodedText" output from this Choreo execution
      	#
      	# @return String - (string) The Base64 encoded text.
      	####
      	def get_Base64EncodedText()
      	  return @outputs["Base64EncodedText"]
      	end
      end

    end # class Base64Encode



    ##############################################################################
    #
    # HTMLEscape
    #
    # Replaces HTML markup characters in the specified text with equivalent character entity names. 
    #
    ##############################################################################

    class HTMLEscape < Choreography

      ####
      #  Create a new instance of the HTMLEscape Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Encoding/HTMLEscape")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return HTMLEscapeInputSet
      ####
      def new_input_set()
        return HTMLEscapeInputSet.new()
      end

      def make_result_set()
        return HTMLEscapeResultSet.new()
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
        results = HTMLEscapeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the HTMLEscape
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class HTMLEscapeInputSet < Choreography::InputSet

        #### 
        # Set the value of the UnescapedHTML input for this Choreo. 
        # 
        # @param String - (required, string) The HTML that needs to be escaped.
        ###

        def set_UnescapedHTML(value)
          set_input("UnescapedHTML", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the HTMLEscape Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class HTMLEscapeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "EscapedHTML" output from this Choreo execution
      	#
      	# @return String - (string) The escaped HTML.
      	####
      	def get_EscapedHTML()
      	  return @outputs["EscapedHTML"]
      	end
      end

    end # class HTMLEscape



    ##############################################################################
    #
    # HTMLUnescape
    #
    # Replaces character entity names in the specified text with equivalent HTML markup characters.
    #
    ##############################################################################

    class HTMLUnescape < Choreography

      ####
      #  Create a new instance of the HTMLUnescape Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Encoding/HTMLUnescape")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return HTMLUnescapeInputSet
      ####
      def new_input_set()
        return HTMLUnescapeInputSet.new()
      end

      def make_result_set()
        return HTMLUnescapeResultSet.new()
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
        results = HTMLUnescapeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the HTMLUnescape
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class HTMLUnescapeInputSet < Choreography::InputSet

        #### 
        # Set the value of the EscapedHTML input for this Choreo. 
        # 
        # @param String - (required, string) The escaped HTML that should be unescaped.
        ###

        def set_EscapedHTML(value)
          set_input("EscapedHTML", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the HTMLUnescape Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class HTMLUnescapeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "UnescapedHTML" output from this Choreo execution
      	#
      	# @return String - (string) The unescaped HTML.
      	####
      	def get_UnescapedHTML()
      	  return @outputs["UnescapedHTML"]
      	end
      end

    end # class HTMLUnescape



    ##############################################################################
    #
    # URLDecode
    #
    # Removes URL encoding from the specified text string.
    #
    ##############################################################################

    class URLDecode < Choreography

      ####
      #  Create a new instance of the URLDecode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Encoding/URLDecode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return URLDecodeInputSet
      ####
      def new_input_set()
        return URLDecodeInputSet.new()
      end

      def make_result_set()
        return URLDecodeResultSet.new()
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
        results = URLDecodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the URLDecode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class URLDecodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (required, string) The text that should be URL decoded.
        ###

        def set_Text(value)
          set_input("Text", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the URLDecode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class URLDecodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "URLDecodedText" output from this Choreo execution
      	#
      	# @return String - (string) The URL decoded text.
      	####
      	def get_URLDecodedText()
      	  return @outputs["URLDecodedText"]
      	end
      end

    end # class URLDecode



    ##############################################################################
    #
    # URLEncode
    #
    # Returns the specified text string in the application/x-www-form-urlencoded format.
    #
    ##############################################################################

    class URLEncode < Choreography

      ####
      #  Create a new instance of the URLEncode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Encoding/URLEncode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return URLEncodeInputSet
      ####
      def new_input_set()
        return URLEncodeInputSet.new()
      end

      def make_result_set()
        return URLEncodeResultSet.new()
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
        results = URLEncodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the URLEncode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class URLEncodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (required, string) The text that should be URL encoded.
        ###

        def set_Text(value)
          set_input("Text", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the URLEncode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class URLEncodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "URLEncodedText" output from this Choreo execution
      	#
      	# @return String - (string) The URL encoded text.
      	####
      	def get_URLEncodedText()
      	  return @outputs["URLEncodedText"]
      	end
      end

    end # class URLEncode




    module Utils



      ##############################################################################
      #
      # SplitQueryParameters
      #
      # 
      #
      ##############################################################################

      class SplitQueryParameters < Choreography

        ####
        #  Create a new instance of the SplitQueryParameters Choreo. A TembooSession object, containing a valid
        #  set of Temboo credentials, must be supplied.
        ####
        def initialize(session)
          super(session, "/Library/Utilities/Encoding/Utils/SplitQueryParameters")
        end

        #### 
        # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
        #
        # @return SplitQueryParametersInputSet
        ####
        def new_input_set()
          return SplitQueryParametersInputSet.new()
        end

        def make_result_set()
          return SplitQueryParametersResultSet.new()
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
          results = SplitQueryParametersResultSet.new(resp)
          return results
        end

        ####
        # An InputSet with methods appropriate for specifying the inputs to the SplitQueryParameters
        # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
        ####
        class SplitQueryParametersInputSet < Choreography::InputSet

          #### 
          # Set the value of the QueryParamString input for this Choreo. 
          # 
          # @param String - (required, string) Query parameter string to split.
          ###

          def set_QueryParamString(value)
            set_input("QueryParamString", value)
          end

        end

        ####
        # A ResultSet with methods tailored to the values returned by the SplitQueryParameters Choreo.
        # The ResultSet object is used to retrieve the results of a Choreo execution.
        ####
        class SplitQueryParametersResultSet < Choreography::ResultSet
        	####
        	# Retrieve the value for the "QueryParamJSON" output from this Choreo execution
        	#
        	# @return String - (json) 
        	####
        	def get_QueryParamJSON()
        	  return @outputs["QueryParamJSON"]
        	end
        end

      end # class SplitQueryParameters




    end # module Utils

  end # module Encoding

  module Finding



    ##############################################################################
    #
    # RegexMatch
    #
    # Returns the first substring that matches the specified regular expression pattern in the specified string.
    #
    ##############################################################################

    class RegexMatch < Choreography

      ####
      #  Create a new instance of the RegexMatch Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Finding/RegexMatch")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RegexMatchInputSet
      ####
      def new_input_set()
        return RegexMatchInputSet.new()
      end

      def make_result_set()
        return RegexMatchResultSet.new()
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
        results = RegexMatchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RegexMatch
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RegexMatchInputSet < Choreography::InputSet

        #### 
        # Set the value of the Pattern input for this Choreo. 
        # 
        # @param String - (conditional, string) A regular experession.
        ###

        def set_Pattern(value)
          set_input("Pattern", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (conditional, string) The text on which to perform a regex match.
        ###

        def set_Text(value)
          set_input("Text", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RegexMatch Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RegexMatchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Result" output from this Choreo execution
      	#
      	# @return String - (string) The result of the match.
      	####
      	def get_Result()
      	  return @outputs["Result"]
      	end
      end

    end # class RegexMatch




  end # module Finding

  module Formatting



    ##############################################################################
    #
    # AddDateHelper
    #
    # 
    #
    ##############################################################################

    class AddDateHelper < Choreography

      ####
      #  Create a new instance of the AddDateHelper Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Formatting/AddDateHelper")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddDateHelperInputSet
      ####
      def new_input_set()
        return AddDateHelperInputSet.new()
      end

      def make_result_set()
        return AddDateHelperResultSet.new()
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
        results = AddDateHelperResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddDateHelper
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddDateHelperInputSet < Choreography::InputSet

        #### 
        # Set the value of the AddDays input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_AddDays(value)
          set_input("AddDays", value)
        end
        #### 
        # Set the value of the AddHours input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_AddHours(value)
          set_input("AddHours", value)
        end
        #### 
        # Set the value of the AddMinutes input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_AddMinutes(value)
          set_input("AddMinutes", value)
        end
        #### 
        # Set the value of the AddMonths input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_AddMonths(value)
          set_input("AddMonths", value)
        end
        #### 
        # Set the value of the AddSeconds input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_AddSeconds(value)
          set_input("AddSeconds", value)
        end
        #### 
        # Set the value of the AddYears input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_AddYears(value)
          set_input("AddYears", value)
        end
        #### 
        # Set the value of the Timestamp input for this Choreo. 
        # 
        # @param String - (conditional, date) 
        ###

        def set_Timestamp(value)
          set_input("Timestamp", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddDateHelper Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddDateHelperResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Timestamp" output from this Choreo execution
      	#
      	# @return String - (conditional, date) 
      	####
      	def get_Timestamp()
      	  return @outputs["Timestamp"]
      	end
      end

    end # class AddDateHelper



    ##############################################################################
    #
    # FormatDateParameters
    #
    # Returns the specified date parameters as the number of milliseconds since January 1, 1970 (epoch time).
    #
    ##############################################################################

    class FormatDateParameters < Choreography

      ####
      #  Create a new instance of the FormatDateParameters Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Formatting/FormatDateParameters")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FormatDateParametersInputSet
      ####
      def new_input_set()
        return FormatDateParametersInputSet.new()
      end

      def make_result_set()
        return FormatDateParametersResultSet.new()
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
        results = FormatDateParametersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FormatDateParameters
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FormatDateParametersInputSet < Choreography::InputSet

        #### 
        # Set the value of the Day input for this Choreo. 
        # 
        # @param Integer - (required, integer) Sets the day (1–31) of the timestamp.
        ###

        def set_Day(value)
          set_input("Day", value)
        end
        #### 
        # Set the value of the Hour input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Sets the hours (0–23) of the timestamp.
        ###

        def set_Hour(value)
          set_input("Hour", value)
        end
        #### 
        # Set the value of the Minute input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Sets the minutes (0–59) of the timestamp.
        ###

        def set_Minute(value)
          set_input("Minute", value)
        end
        #### 
        # Set the value of the Month input for this Choreo. 
        # 
        # @param Integer - (required, integer) Sets the month (1–12) of the timestamp.
        ###

        def set_Month(value)
          set_input("Month", value)
        end
        #### 
        # Set the value of the Second input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Sets the seconds (0–59) of the timestamp.
        ###

        def set_Second(value)
          set_input("Second", value)
        end
        #### 
        # Set the value of the Year input for this Choreo. 
        # 
        # @param Integer - (required, integer) Sets the year of the timestamp.
        ###

        def set_Year(value)
          set_input("Year", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FormatDateParameters Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FormatDateParametersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Timestamp" output from this Choreo execution
      	#
      	# @return String - (date) A number representing the specified date and time, expressed as the number of milliseconds since January 1, 1970 (epoch time). 
      	####
      	def get_Timestamp()
      	  return @outputs["Timestamp"]
      	end
      end

    end # class FormatDateParameters



    ##############################################################################
    #
    # FormatTimestamp
    #
    # Returns the specified date serial number in the desired format.
    #
    ##############################################################################

    class FormatTimestamp < Choreography

      ####
      #  Create a new instance of the FormatTimestamp Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Formatting/FormatTimestamp")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FormatTimestampInputSet
      ####
      def new_input_set()
        return FormatTimestampInputSet.new()
      end

      def make_result_set()
        return FormatTimestampResultSet.new()
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
        results = FormatTimestampResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FormatTimestamp
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FormatTimestampInputSet < Choreography::InputSet

        #### 
        # Set the value of the AddDays input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Adds the specified number of days to the specified date serial number. A negative number will subtract.
        ###

        def set_AddDays(value)
          set_input("AddDays", value)
        end
        #### 
        # Set the value of the AddHours input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Adds the specified number of hours to the specified date serial number. A negative number will subtract.
        ###

        def set_AddHours(value)
          set_input("AddHours", value)
        end
        #### 
        # Set the value of the AddMinutes input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Adds the specified number of minutes to the specified date serial number. A negative number will subtract.
        ###

        def set_AddMinutes(value)
          set_input("AddMinutes", value)
        end
        #### 
        # Set the value of the AddMonths input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Adds the specified number of months to the specified date serial number. A negative number will subtract.
        ###

        def set_AddMonths(value)
          set_input("AddMonths", value)
        end
        #### 
        # Set the value of the AddSeconds input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Adds the specified number of seconds to the specified date serial number. A negative number will subtract.
        ###

        def set_AddSeconds(value)
          set_input("AddSeconds", value)
        end
        #### 
        # Set the value of the AddYears input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Adds the specified number of years to the specified date serial number. A negative number will subtract.
        ###

        def set_AddYears(value)
          set_input("AddYears", value)
        end
        #### 
        # Set the value of the Format input for this Choreo. 
        # 
        # @param String - (conditional, string) The format that the timestamp should be in. Java SimpleDateFormat conventions are supported. Defaults to "yyyy-MM-dd'T'HH:mm:ss.SSSZ".
        ###

        def set_Format(value)
          set_input("Format", value)
        end
        #### 
        # Set the value of the LocaleCountry input for this Choreo. 
        # 
        # @param String - (optional, string) An ISO country code to specify locale.
        ###

        def set_LocaleCountry(value)
          set_input("LocaleCountry", value)
        end
        #### 
        # Set the value of the LocaleLanguage input for this Choreo. 
        # 
        # @param String - (optional, string) An ISO language code to specify locale.
        ###

        def set_LocaleLanguage(value)
          set_input("LocaleLanguage", value)
        end
        #### 
        # Set the value of the LocaleVariant input for this Choreo. 
        # 
        # @param String - (optional, string) A local variant code such as "NY" to add additional context for a locale.
        ###

        def set_LocaleVariant(value)
          set_input("LocaleVariant", value)
        end
        #### 
        # Set the value of the SetDay input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Sets the day of month (1–31) of the specified date serial number.
        ###

        def set_SetDay(value)
          set_input("SetDay", value)
        end
        #### 
        # Set the value of the SetHour input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Sets the hours (0–23) of the specified date serial number.
        ###

        def set_SetHour(value)
          set_input("SetHour", value)
        end
        #### 
        # Set the value of the SetMinute input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Sets the minutes (0–59) of the specified date serial number.
        ###

        def set_SetMinute(value)
          set_input("SetMinute", value)
        end
        #### 
        # Set the value of the SetMonth input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Sets the month (1–12) of the specified date serial number.
        ###

        def set_SetMonth(value)
          set_input("SetMonth", value)
        end
        #### 
        # Set the value of the SetSecond input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Sets the seconds (0–59) of the specified date serial number.
        ###

        def set_SetSecond(value)
          set_input("SetSecond", value)
        end
        #### 
        # Set the value of the SetYear input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Sets the year (such as 1989) of the specified date serial number.
        ###

        def set_SetYear(value)
          set_input("SetYear", value)
        end
        #### 
        # Set the value of the TimeZone input for this Choreo. 
        # 
        # @param String - (optional, string) The timezone to use for the date formatting function. Defaults to UTC.
        ###

        def set_TimeZone(value)
          set_input("TimeZone", value)
        end
        #### 
        # Set the value of the Timestamp input for this Choreo. 
        # 
        # @param String - (conditional, date) A number representing the current date and time, expressed as the number of milliseconds since January 1, 1970 (epoch time).
        ###

        def set_Timestamp(value)
          set_input("Timestamp", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FormatTimestamp Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FormatTimestampResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "FormattedDate" output from this Choreo execution
      	#
      	# @return String - (date) The formatted version of the timestamp.
      	####
      	def get_FormattedDate()
      	  return @outputs["FormattedDate"]
      	end
      end

    end # class FormatTimestamp



    ##############################################################################
    #
    # RemoveWhiteSpace
    #
    # Returns the specified formatted text as a compact string with no new lines, tabs, or preceding/trailing white space.
    #
    ##############################################################################

    class RemoveWhiteSpace < Choreography

      ####
      #  Create a new instance of the RemoveWhiteSpace Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Formatting/RemoveWhiteSpace")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RemoveWhiteSpaceInputSet
      ####
      def new_input_set()
        return RemoveWhiteSpaceInputSet.new()
      end

      def make_result_set()
        return RemoveWhiteSpaceResultSet.new()
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
        results = RemoveWhiteSpaceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RemoveWhiteSpace
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RemoveWhiteSpaceInputSet < Choreography::InputSet

        #### 
        # Set the value of the FormattedText input for this Choreo. 
        # 
        # @param String - (required, multiline) The formatted text that should have line breaks and tabs removed.
        ###

        def set_FormattedText(value)
          set_input("FormattedText", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RemoveWhiteSpace Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RemoveWhiteSpaceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "CompactText" output from this Choreo execution
      	#
      	# @return String - (string) 
      	####
      	def get_CompactText()
      	  return @outputs["CompactText"]
      	end
      end

    end # class RemoveWhiteSpace



    ##############################################################################
    #
    # SetDateHelper
    #
    # 
    #
    ##############################################################################

    class SetDateHelper < Choreography

      ####
      #  Create a new instance of the SetDateHelper Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Formatting/SetDateHelper")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SetDateHelperInputSet
      ####
      def new_input_set()
        return SetDateHelperInputSet.new()
      end

      def make_result_set()
        return SetDateHelperResultSet.new()
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
        results = SetDateHelperResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SetDateHelper
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SetDateHelperInputSet < Choreography::InputSet

        #### 
        # Set the value of the SetDay input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_SetDay(value)
          set_input("SetDay", value)
        end
        #### 
        # Set the value of the SetHour input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_SetHour(value)
          set_input("SetHour", value)
        end
        #### 
        # Set the value of the SetMinute input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_SetMinute(value)
          set_input("SetMinute", value)
        end
        #### 
        # Set the value of the SetMonth input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_SetMonth(value)
          set_input("SetMonth", value)
        end
        #### 
        # Set the value of the SetSecond input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_SetSecond(value)
          set_input("SetSecond", value)
        end
        #### 
        # Set the value of the SetYear input for this Choreo. 
        # 
        # @param String - (conditional, any) 
        ###

        def set_SetYear(value)
          set_input("SetYear", value)
        end
        #### 
        # Set the value of the Timestamp input for this Choreo. 
        # 
        # @param String - (conditional, date) 
        ###

        def set_Timestamp(value)
          set_input("Timestamp", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SetDateHelper Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SetDateHelperResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Timestamp" output from this Choreo execution
      	#
      	# @return String - (conditional, date) 
      	####
      	def get_Timestamp()
      	  return @outputs["Timestamp"]
      	end
      end

    end # class SetDateHelper




  end # module Formatting

  module HTTP



    ##############################################################################
    #
    # Delete
    #
    # Generates a HTTP DELETE request.
    #
    ##############################################################################

    class Delete < Choreography

      ####
      #  Create a new instance of the Delete Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/HTTP/Delete")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteInputSet
      ####
      def new_input_set()
        return DeleteInputSet.new()
      end

      def make_result_set()
        return DeleteResultSet.new()
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
        results = DeleteResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Delete
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteInputSet < Choreography::InputSet

        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (optional, string) A valid password. This is used if the request required basic authentication.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the RequestHeaders input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the HTTP request headers.
        ###

        def set_RequestHeaders(value)
          set_input("RequestHeaders", value)
        end
        #### 
        # Set the value of the RequestParameters input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the url string as HTTP parameters.
        ###

        def set_RequestParameters(value)
          set_input("RequestParameters", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) The base URL for the request (including http:// or https://).
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (optional, string) A valid username. This is used if the request required basic authentication.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Delete Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      	####
      	# Retrieve the value for the "HTTPLog" output from this Choreo execution
      	#
      	# @return String - (string) A log of the http request that has been generated.
      	####
      	def get_HTTPLog()
      	  return @outputs["HTTPLog"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the server.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Delete



    ##############################################################################
    #
    # Get
    #
    # Generates a HTTP GET request.
    #
    ##############################################################################

    class Get < Choreography

      ####
      #  Create a new instance of the Get Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/HTTP/Get")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetInputSet
      ####
      def new_input_set()
        return GetInputSet.new()
      end

      def make_result_set()
        return GetResultSet.new()
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
        results = GetResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Get
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetInputSet < Choreography::InputSet

        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (optional, string) A valid password. This is used if the request required basic authentication.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the RequestHeaders input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the HTTP request headers.
        ###

        def set_RequestHeaders(value)
          set_input("RequestHeaders", value)
        end
        #### 
        # Set the value of the RequestParameters input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the url string as http parameters.
        ###

        def set_RequestParameters(value)
          set_input("RequestParameters", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) The base URL for the request (including http:// or https://).
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (optional, string) A valid username. This is used if the request required basic authentication.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Get Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HTTPLog" output from this Choreo execution
      	#
      	# @return String - (string) A log of the http request that has been generated.
      	####
      	def get_HTTPLog()
      	  return @outputs["HTTPLog"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the server.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Get



    ##############################################################################
    #
    # Post
    #
    # Generates a HTTP POST request.
    #
    ##############################################################################

    class Post < Choreography

      ####
      #  Create a new instance of the Post Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/HTTP/Post")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PostInputSet
      ####
      def new_input_set()
        return PostInputSet.new()
      end

      def make_result_set()
        return PostResultSet.new()
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
        results = PostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Post
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PostInputSet < Choreography::InputSet

        #### 
        # Set the value of the RequestBody input for this Choreo. 
        # 
        # @param String - (optional, multiline) The request body for the POST request.
        ###

        def set_RequestBody(value)
          set_input("RequestBody", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (optional, string) A valid password. This is used if the request required basic authentication.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the RequestHeaders input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the HTTP request headers.
        ###

        def set_RequestHeaders(value)
          set_input("RequestHeaders", value)
        end
        #### 
        # Set the value of the RequestParameters input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the url string as http parameters.
        ###

        def set_RequestParameters(value)
          set_input("RequestParameters", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) The base URL for the request (including http:// or https://).
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (optional, string) A valid username. This is used if the request required basic authentication.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Post Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      	####
      	# Retrieve the value for the "HTTPLog" output from this Choreo execution
      	#
      	# @return String - (string) A log of the http request that has been generated.
      	####
      	def get_HTTPLog()
      	  return @outputs["HTTPLog"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the server.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Post



    ##############################################################################
    #
    # Put
    #
    # Generates a HTTP PUT request.
    #
    ##############################################################################

    class Put < Choreography

      ####
      #  Create a new instance of the Put Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/HTTP/Put")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PutInputSet
      ####
      def new_input_set()
        return PutInputSet.new()
      end

      def make_result_set()
        return PutResultSet.new()
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
        results = PutResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Put
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PutInputSet < Choreography::InputSet

        #### 
        # Set the value of the RequestBody input for this Choreo. 
        # 
        # @param String - (optional, multiline) The request body for the PUT request.
        ###

        def set_RequestBody(value)
          set_input("RequestBody", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (optional, string) A valid password. This is used if the request required basic authentication.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the RequestHeaders input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the HTTP request headers.
        ###

        def set_RequestHeaders(value)
          set_input("RequestHeaders", value)
        end
        #### 
        # Set the value of the RequestParameters input for this Choreo. 
        # 
        # @param String - (optional, json) A JSON object containing up to 10 key/value pairs that will be mapped to the url string as HTTP parameters.
        ###

        def set_RequestParameters(value)
          set_input("RequestParameters", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (required, string) The base URL for the request (including http:// or https://).
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (optional, string) A valid username. This is used if the request required basic authentication.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Put Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PutResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from the server.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "HTTPLog" output from this Choreo execution
      	#
      	# @return String - (string) A log of the http request that has been generated.
      	####
      	def get_HTTPLog()
      	  return @outputs["HTTPLog"]
      	end
      	####
      	# Retrieve the value for the "ResponseStatusCode" output from this Choreo execution
      	#
      	# @return String - (integer) The response status code.
      	####
      	def get_ResponseStatusCode()
      	  return @outputs["ResponseStatusCode"]
      	end
      end

    end # class Put




  end # module HTTP

  module Hashing



    ##############################################################################
    #
    # Checksum
    #
    # Returns a checksum of the specified text calculated using the specified algorithm. 
    #
    ##############################################################################

    class Checksum < Choreography

      ####
      #  Create a new instance of the Checksum Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Hashing/Checksum")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ChecksumInputSet
      ####
      def new_input_set()
        return ChecksumInputSet.new()
      end

      def make_result_set()
        return ChecksumResultSet.new()
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
        results = ChecksumResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Checksum
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ChecksumInputSet < Choreography::InputSet

        #### 
        # Set the value of the Algorithm input for this Choreo. 
        # 
        # @param String - (required, string) Algorithm used to calculate the checksum. Valid values are: FIX44,  MD5+BASE64, or MD5+HEX (the default). MD5+BASE64 and MD5+HEX return the result in Base64 and hexadecimal encoding, respectively.
        ###

        def set_Algorithm(value)
          set_input("Algorithm", value)
        end
        #### 
        # Set the value of the Base64DecodeValue input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Setting this parameter to 1 indicates that the Text is Base64 encoded, and that the choreo should decode the value before calculating the checksum. Defaults to 0.
        ###

        def set_Base64DecodeValue(value)
          set_input("Base64DecodeValue", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (required, string) The text to return a checksum for.
        ###

        def set_Text(value)
          set_input("Text", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Checksum Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ChecksumResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Checksum" output from this Choreo execution
      	#
      	# @return String - (string) The checksum result.
      	####
      	def get_Checksum()
      	  return @outputs["Checksum"]
      	end
      end

    end # class Checksum



    ##############################################################################
    #
    # HmacSHA1
    #
    # Generates a SHA1-encrypted HMAC signature for the specified message text using the specified secret key.
    #
    ##############################################################################

    class HmacSHA1 < Choreography

      ####
      #  Create a new instance of the HmacSHA1 Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Hashing/HmacSHA1")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return HmacSHA1InputSet
      ####
      def new_input_set()
        return HmacSHA1InputSet.new()
      end

      def make_result_set()
        return HmacSHA1ResultSet.new()
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
        results = HmacSHA1ResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the HmacSHA1
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class HmacSHA1InputSet < Choreography::InputSet

        #### 
        # Set the value of the Key input for this Choreo. 
        # 
        # @param String - (required, string) The secret key used to generate the SHA1-encrypted HMAC signature.
        ###

        def set_Key(value)
          set_input("Key", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (required, string) The text that should be SHA1-encrypted.
        ###

        def set_Text(value)
          set_input("Text", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the HmacSHA1 Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class HmacSHA1ResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "HmacSignature" output from this Choreo execution
      	#
      	# @return String - (string) The HMAC Signature for the specified string.
      	####
      	def get_HmacSignature()
      	  return @outputs["HmacSignature"]
      	end
      end

    end # class HmacSHA1




  end # module Hashing

  module Validation



    ##############################################################################
    #
    # CanadianPostalCodes
    #
    # Verifies that a given zip code matches the format expected for Canadian addresses.
    #
    ##############################################################################

    class CanadianPostalCodes < Choreography

      ####
      #  Create a new instance of the CanadianPostalCodes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Validation/CanadianPostalCodes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CanadianPostalCodesInputSet
      ####
      def new_input_set()
        return CanadianPostalCodesInputSet.new()
      end

      def make_result_set()
        return CanadianPostalCodesResultSet.new()
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
        results = CanadianPostalCodesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CanadianPostalCodes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CanadianPostalCodesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ZipCode input for this Choreo. 
        # 
        # @param String - (required, string) The zip code to validate.
        ###

        def set_ZipCode(value)
          set_input("ZipCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CanadianPostalCodes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CanadianPostalCodesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Match" output from this Choreo execution
      	#
      	# @return String - (string) Contains a string indicating the result of the match -- "valid" or "invalid".
      	####
      	def get_Match()
      	  return @outputs["Match"]
      	end
      end

    end # class CanadianPostalCodes



    ##############################################################################
    #
    # DutchPostalCodes
    #
    # Verifies that a given zip code matches the format expected for Dutch addresses.
    #
    ##############################################################################

    class DutchPostalCodes < Choreography

      ####
      #  Create a new instance of the DutchPostalCodes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Validation/DutchPostalCodes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DutchPostalCodesInputSet
      ####
      def new_input_set()
        return DutchPostalCodesInputSet.new()
      end

      def make_result_set()
        return DutchPostalCodesResultSet.new()
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
        results = DutchPostalCodesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DutchPostalCodes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DutchPostalCodesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ZipCode input for this Choreo. 
        # 
        # @param String - (required, string) The zip code to validate.
        ###

        def set_ZipCode(value)
          set_input("ZipCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DutchPostalCodes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DutchPostalCodesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Match" output from this Choreo execution
      	#
      	# @return String - (string) Contains a string indicating the result of the match -- "valid" or "invalid".
      	####
      	def get_Match()
      	  return @outputs["Match"]
      	end
      end

    end # class DutchPostalCodes



    ##############################################################################
    #
    # EmailAddress
    #
    # Verifies that a given email address matches an expected standard pattern.
    #
    ##############################################################################

    class EmailAddress < Choreography

      ####
      #  Create a new instance of the EmailAddress Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Validation/EmailAddress")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return EmailAddressInputSet
      ####
      def new_input_set()
        return EmailAddressInputSet.new()
      end

      def make_result_set()
        return EmailAddressResultSet.new()
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
        results = EmailAddressResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the EmailAddress
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class EmailAddressInputSet < Choreography::InputSet

        #### 
        # Set the value of the EmailAddress input for this Choreo. 
        # 
        # @param String - (required, string) The email address to validate.
        ###

        def set_EmailAddress(value)
          set_input("EmailAddress", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the EmailAddress Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class EmailAddressResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Match" output from this Choreo execution
      	#
      	# @return String - (string) Contains a string indicating the result of the match -- "valid" or "invalid".
      	####
      	def get_Match()
      	  return @outputs["Match"]
      	end
      end

    end # class EmailAddress



    ##############################################################################
    #
    # GermanPostalCodes
    #
    # Verifies that a given zip code matches the format expected for German addresses.
    #
    ##############################################################################

    class GermanPostalCodes < Choreography

      ####
      #  Create a new instance of the GermanPostalCodes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Validation/GermanPostalCodes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GermanPostalCodesInputSet
      ####
      def new_input_set()
        return GermanPostalCodesInputSet.new()
      end

      def make_result_set()
        return GermanPostalCodesResultSet.new()
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
        results = GermanPostalCodesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GermanPostalCodes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GermanPostalCodesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ZipCode input for this Choreo. 
        # 
        # @param String - (required, string) The zip code to validate.
        ###

        def set_ZipCode(value)
          set_input("ZipCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GermanPostalCodes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GermanPostalCodesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Match" output from this Choreo execution
      	#
      	# @return String - (string) Contains a string indicating the result of the match -- "valid" or "invalid".
      	####
      	def get_Match()
      	  return @outputs["Match"]
      	end
      end

    end # class GermanPostalCodes



    ##############################################################################
    #
    # JSON
    #
    # Determines if a specified JSON string is well-formed.
    #
    ##############################################################################

    class JSON < Choreography

      ####
      #  Create a new instance of the JSON Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Validation/JSON")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return JSONInputSet
      ####
      def new_input_set()
        return JSONInputSet.new()
      end

      def make_result_set()
        return JSONResultSet.new()
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
        results = JSONResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the JSON
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class JSONInputSet < Choreography::InputSet

        #### 
        # Set the value of the JSON input for this Choreo. 
        # 
        # @param String - (required, multiline) The JSON string to validate.
        ###

        def set_JSON(value)
          set_input("JSON", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the JSON Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class JSONResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Result" output from this Choreo execution
      	#
      	# @return String - (string) The result of the JSON validation. This will return "valid" or "invalid".
      	####
      	def get_Result()
      	  return @outputs["Result"]
      	end
      end

    end # class JSON



    ##############################################################################
    #
    # PasswordCriteria
    #
    # Verifies that a given password matches a standard pattern for passwords.
    #
    ##############################################################################

    class PasswordCriteria < Choreography

      ####
      #  Create a new instance of the PasswordCriteria Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Validation/PasswordCriteria")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PasswordCriteriaInputSet
      ####
      def new_input_set()
        return PasswordCriteriaInputSet.new()
      end

      def make_result_set()
        return PasswordCriteriaResultSet.new()
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
        results = PasswordCriteriaResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PasswordCriteria
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PasswordCriteriaInputSet < Choreography::InputSet

        #### 
        # Set the value of the MaxLength input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The max length you want to allow for the password. Defaults to 14.
        ###

        def set_MaxLength(value)
          set_input("MaxLength", value)
        end
        #### 
        # Set the value of the MinLength input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The minimum length you want to allow for the password. Defaults to 6.
        ###

        def set_MinLength(value)
          set_input("MinLength", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) The password to validate.
        ###

        def set_Password(value)
          set_input("Password", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PasswordCriteria Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PasswordCriteriaResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Match" output from this Choreo execution
      	#
      	# @return String - (string) Contains a string indicating the result of the match -- "valid" or "invalid".
      	####
      	def get_Match()
      	  return @outputs["Match"]
      	end
      end

    end # class PasswordCriteria



    ##############################################################################
    #
    # RussianPostalCodes
    #
    # Verifies that a given zip code matches the format expected for Russian addresses.
    #
    ##############################################################################

    class RussianPostalCodes < Choreography

      ####
      #  Create a new instance of the RussianPostalCodes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Validation/RussianPostalCodes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RussianPostalCodesInputSet
      ####
      def new_input_set()
        return RussianPostalCodesInputSet.new()
      end

      def make_result_set()
        return RussianPostalCodesResultSet.new()
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
        results = RussianPostalCodesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RussianPostalCodes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RussianPostalCodesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ZipCode input for this Choreo. 
        # 
        # @param String - (required, string) The zip code to validate.
        ###

        def set_ZipCode(value)
          set_input("ZipCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RussianPostalCodes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RussianPostalCodesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Match" output from this Choreo execution
      	#
      	# @return String - (string) Contains a string indicating the result of the match -- "valid" or "invalid".
      	####
      	def get_Match()
      	  return @outputs["Match"]
      	end
      end

    end # class RussianPostalCodes



    ##############################################################################
    #
    # UKPostalCodes
    #
    # Verifies that a given zip code matches the format expected for UK addresses.
    #
    ##############################################################################

    class UKPostalCodes < Choreography

      ####
      #  Create a new instance of the UKPostalCodes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Validation/UKPostalCodes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UKPostalCodesInputSet
      ####
      def new_input_set()
        return UKPostalCodesInputSet.new()
      end

      def make_result_set()
        return UKPostalCodesResultSet.new()
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
        results = UKPostalCodesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UKPostalCodes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UKPostalCodesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ZipCode input for this Choreo. 
        # 
        # @param String - (required, string) The zip code to validate. Letters must be in uppercase to be valid.
        ###

        def set_ZipCode(value)
          set_input("ZipCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UKPostalCodes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UKPostalCodesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Match" output from this Choreo execution
      	#
      	# @return String - (string) Contains a string indicating the result of the match -- "valid" or "invalid".
      	####
      	def get_Match()
      	  return @outputs["Match"]
      	end
      end

    end # class UKPostalCodes



    ##############################################################################
    #
    # USPostalCodes
    #
    # Verifies that a given zip code matches the format expected for US addresses.
    #
    ##############################################################################

    class USPostalCodes < Choreography

      ####
      #  Create a new instance of the USPostalCodes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Validation/USPostalCodes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return USPostalCodesInputSet
      ####
      def new_input_set()
        return USPostalCodesInputSet.new()
      end

      def make_result_set()
        return USPostalCodesResultSet.new()
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
        results = USPostalCodesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the USPostalCodes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class USPostalCodesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ZipCode input for this Choreo. 
        # 
        # @param String - (required, string) The zip code to validate.
        ###

        def set_ZipCode(value)
          set_input("ZipCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the USPostalCodes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class USPostalCodesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Match" output from this Choreo execution
      	#
      	# @return String - (string) Contains a string indicating the result of the match --"valid" or "invalid".
      	####
      	def get_Match()
      	  return @outputs["Match"]
      	end
      end

    end # class USPostalCodes



    ##############################################################################
    #
    # XML
    #
    # Validates XML for basic well-formedness and allows you to check XML against a specified XSD schema file.
    #
    ##############################################################################

    class XML < Choreography

      ####
      #  Create a new instance of the XML Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/Validation/XML")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return XMLInputSet
      ####
      def new_input_set()
        return XMLInputSet.new()
      end

      def make_result_set()
        return XMLResultSet.new()
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
        results = XMLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the XML
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class XMLInputSet < Choreography::InputSet

        #### 
        # Set the value of the XMLFile input for this Choreo. 
        # 
        # @param String - (required, xml) The XML file you want to validate.
        ###

        def set_XMLFile(value)
          set_input("XMLFile", value)
        end
        #### 
        # Set the value of the XSDFile input for this Choreo. 
        # 
        # @param String - (optional, xml) The XSD file to validate an XML file against.
        ###

        def set_XSDFile(value)
          set_input("XSDFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the XML Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class XMLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Error" output from this Choreo execution
      	#
      	# @return String - (string) The error description that is generated if a validation error occurs.
      	####
      	def get_Error()
      	  return @outputs["Error"]
      	end
      	####
      	# Retrieve the value for the "Result" output from this Choreo execution
      	#
      	# @return String - (string) The result of the validation. Returns the string "valid" or "invalid".
      	####
      	def get_Result()
      	  return @outputs["Result"]
      	end
      end

    end # class XML




  end # module Validation

  module XML



    ##############################################################################
    #
    # GetValuesFromXML
    #
    # Returns all element or attribute values with a specified name.
    #
    ##############################################################################

    class GetValuesFromXML < Choreography

      ####
      #  Create a new instance of the GetValuesFromXML Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/XML/GetValuesFromXML")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetValuesFromXMLInputSet
      ####
      def new_input_set()
        return GetValuesFromXMLInputSet.new()
      end

      def make_result_set()
        return GetValuesFromXMLResultSet.new()
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
        results = GetValuesFromXMLResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetValuesFromXML
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetValuesFromXMLInputSet < Choreography::InputSet

        #### 
        # Set the value of the Node input for this Choreo. 
        # 
        # @param String - (required, string) The name of the element or attribute that contains the values you want to return. Note that attribute names should be preceded with an "@" sign (e.g. @name).
        ###

        def set_Node(value)
          set_input("Node", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json or csv.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (required, xml) The XML that contains the elements or attributes you want to retrieve.
        ###

        def set_XML(value)
          set_input("XML", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetValuesFromXML Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetValuesFromXMLResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Result" output from this Choreo execution
      	#
      	# @return String - The element or attribute values.
      	####
      	def get_Result()
      	  return @outputs["Result"]
      	end
      end

    end # class GetValuesFromXML



    ##############################################################################
    #
    # RunXPathQuery
    #
    # Executes an XPath query against a specified XML file and returns the result in CSV or JSON format.
    #
    ##############################################################################

    class RunXPathQuery < Choreography

      ####
      #  Create a new instance of the RunXPathQuery Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Utilities/XML/RunXPathQuery")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RunXPathQueryInputSet
      ####
      def new_input_set()
        return RunXPathQueryInputSet.new()
      end

      def make_result_set()
        return RunXPathQueryResultSet.new()
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
        results = RunXPathQueryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RunXPathQuery
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RunXPathQueryInputSet < Choreography::InputSet

        #### 
        # Set the value of the Mode input for this Choreo. 
        # 
        # @param String - (conditional, string) Valid values are "select" (the default) or "recursive". Recursive mode will iterate using the provided XPath. Select mode will return the first match if there are multiple rows in the XML provided.
        ###

        def set_Mode(value)
          set_input("Mode", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that the response should be in. Valid values are: json or csv.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the XML input for this Choreo. 
        # 
        # @param String - (required, xml) The XML that contains the elements or attributes you want to retrieve.
        ###

        def set_XML(value)
          set_input("XML", value)
        end
        #### 
        # Set the value of the XPath input for this Choreo. 
        # 
        # @param String - (required, string) The XPath query to run.
        ###

        def set_XPath(value)
          set_input("XPath", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RunXPathQuery Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RunXPathQueryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Result" output from this Choreo execution
      	#
      	# @return String - The XPath query result.
      	####
      	def get_Result()
      	  return @outputs["Result"]
      	end
      end

    end # class RunXPathQuery




  end # module XML

end # module Utilities