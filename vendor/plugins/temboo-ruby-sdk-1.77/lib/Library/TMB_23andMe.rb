require "temboo"

module TMB_23andMe



  ##############################################################################
  #
  # Ancestry
  #
  # Retrieves the ancestral breakdown for the user's profiles.
  #
  ##############################################################################

  class Ancestry < Choreography

    ####
    #  Create a new instance of the Ancestry Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/23andMe/Ancestry")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return AncestryInputSet
    ####
    def new_input_set()
      return AncestryInputSet.new()
    end

    def make_result_set()
      return AncestryResultSet.new()
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
      results = AncestryResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Ancestry
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class AncestryInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved after completing the OAuth2 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the TestMode input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A boolean flag indicating that the request should be made to the "demo" 23andMe endpoint for testing. Set to 1 for test mode. Defaults to 0.
      ###

      def set_TestMode(value)
        set_input("TestMode", value)
      end
      #### 
      # Set the value of the Threshold input for this Choreo. 
      # 
      # @param String - (optional, string) A decimal ranging from 0.5 to 1.0. A higher threshold would increase the unassigned proportions, a lower would speculate (i.e. 0.51 is speculative, 0.75 is standard, and 0.90 is conservative). 
      ###

      def set_Threshold(value)
        set_input("Threshold", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Ancestry Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class AncestryResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from 23AndMe.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Ancestry



  ##############################################################################
  #
  # Genomes
  #
  # Retrieves the entire profile's genome as a string of base pairs.
  #
  ##############################################################################

  class Genomes < Choreography

    ####
    #  Create a new instance of the Genomes Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/23andMe/Genomes")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GenomesInputSet
    ####
    def new_input_set()
      return GenomesInputSet.new()
    end

    def make_result_set()
      return GenomesResultSet.new()
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
      results = GenomesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Genomes
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GenomesInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved after completing the OAuth2 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ProfileID input for this Choreo. 
      # 
      # @param String - (required, string) The unique identifier for a profile to retrieve information for. This ID can be retrieved by running the User Choreo.
      ###

      def set_ProfileID(value)
        set_input("ProfileID", value)
      end
      #### 
      # Set the value of the TestMode input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A boolean flag indicating that the request should be made to the "demo" 23andMe endpoint for testing. Set to 1 for test mode. Defaults to 0.
      ###

      def set_TestMode(value)
        set_input("TestMode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Genomes Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GenomesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from 23AndMe.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Genomes



  ##############################################################################
  #
  # Genotype
  #
  # For each of the user's profiles, retrieves the base-pairs for given locations.
  #
  ##############################################################################

  class Genotype < Choreography

    ####
    #  Create a new instance of the Genotype Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/23andMe/Genotype")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GenotypeInputSet
    ####
    def new_input_set()
      return GenotypeInputSet.new()
    end

    def make_result_set()
      return GenotypeResultSet.new()
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
      results = GenotypeResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Genotype
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GenotypeInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved after completing the OAuth2 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the Locations input for this Choreo. 
      # 
      # @param String - (required, string) A space delimited list of SNPs (i.e. rs3094315 rs3737728).
      ###

      def set_Locations(value)
        set_input("Locations", value)
      end
      #### 
      # Set the value of the TestMode input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A boolean flag indicating that the request should be made to the "demo" 23andMe endpoint for testing. Set to 1 for test mode. Defaults to 0.
      ###

      def set_TestMode(value)
        set_input("TestMode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Genotype Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GenotypeResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from 23AndMe.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Genotype



  ##############################################################################
  #
  # Haplogroups
  #
  # Retrieves maternal and paternal haplogroups for a user's profiles.
  #
  ##############################################################################

  class Haplogroups < Choreography

    ####
    #  Create a new instance of the Haplogroups Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/23andMe/Haplogroups")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return HaplogroupsInputSet
    ####
    def new_input_set()
      return HaplogroupsInputSet.new()
    end

    def make_result_set()
      return HaplogroupsResultSet.new()
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
      results = HaplogroupsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Haplogroups
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class HaplogroupsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved after completing the OAuth2 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the TestMode input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A boolean flag indicating that the request should be made to the "demo" 23andMe endpoint for testing. Set to 1 for test mode. Defaults to 0.
      ###

      def set_TestMode(value)
        set_input("TestMode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Haplogroups Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class HaplogroupsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from 23AndMe.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Haplogroups



  ##############################################################################
  #
  # Names
  #
  # Retrieves first and last names for the user and user's profiles.
  #
  ##############################################################################

  class Names < Choreography

    ####
    #  Create a new instance of the Names Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/23andMe/Names")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return NamesInputSet
    ####
    def new_input_set()
      return NamesInputSet.new()
    end

    def make_result_set()
      return NamesResultSet.new()
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
      results = NamesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the Names
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class NamesInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved after completing the OAuth2 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the TestMode input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A boolean flag indicating that the request should be made to the "demo" 23andMe endpoint for testing. Set to 1 for test mode. Defaults to 0.
      ###

      def set_TestMode(value)
        set_input("TestMode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the Names Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class NamesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from 23AndMe.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class Names




  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a 23andMe access token, refresh token, and expiration time for the access token, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/23andMe/OAuth/FinalizeOAuth")
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
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the AppKeyName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyName(value)
          set_input("AppKeyName", value)
        end
        #### 
        # Set the value of the AppKeyValue input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyValue(value)
          set_input("AppKeyValue", value)
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
        # @param String - (required, string) The Client ID provided by 23andMe.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by 23andMe.
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
      	# Retrieve the value for the "Expires" output from this Choreo execution
      	#
      	# @return String - (integer) The expiration time in seconds of the access token retrieved.
      	####
      	def get_Expires()
      	  return @outputs["Expires"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token for the user that has granted access to your application.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      	####
      	# Retrieve the value for the "RefreshToken" output from this Choreo execution
      	#
      	# @return String - (string) A valid refresh token used to generate a new access token.
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
        super(session, "/Library/23andMe/OAuth/InitializeOAuth")
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
        # Set the value of the AccountName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AccountName(value)
          set_input("AccountName", value)
        end
        #### 
        # Set the value of the AppKeyName input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyName(value)
          set_input("AppKeyName", value)
        end
        #### 
        # Set the value of the AppKeyValue input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_AppKeyValue(value)
          set_input("AppKeyValue", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by 23andMe after registering your application.
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
        # Set the value of the ForwardingURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Temboo will redirect your users to after they grant access to your application. This should include the "https://" or "http://" prefix and be a fully qualified URL.
        ###

        def set_ForwardingURL(value)
          set_input("ForwardingURL", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (required, string) A space-delimited list of scopes in your requests to access certain user data. Ex: "basic names ancestry". See note in Description below for full list and link to more documentation.
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
      	# Retrieve the value for the "AuthorizationURL" output from this Choreo execution
      	#
      	# @return String - (string) The authorization URL that the user needs to go to in order to grant access to your application.
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



    ##############################################################################
    #
    # RefreshToken
    #
    # Returns the latest access token with a given valid refresh token.
    #
    ##############################################################################

    class RefreshToken < Choreography

      ####
      #  Create a new instance of the RefreshToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/23andMe/OAuth/RefreshToken")
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
        # @param String - (required, string) The Client ID provided by 23andMe.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by 23andMe.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (required, string) A valid refresh token used to generate a new access token.
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
      	# Retrieve the value for the "Expires" output from this Choreo execution
      	#
      	# @return String - (integer) The expiration time in seconds of the Access Token.
      	####
      	def get_Expires()
      	  return @outputs["Expires"]
      	end
      	####
      	# Retrieve the value for the "NewRefreshToken" output from this Choreo execution
      	#
      	# @return String - (string) The new refresh token which can be used the next time your app needs to get a new access token.
      	####
      	def get_NewRefreshToken()
      	  return @outputs["NewRefreshToken"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token for the user that has granted access to your application.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      end

    end # class RefreshToken




  end # module OAuth
  ##############################################################################
  #
  # User
  #
  # Retrieves the user id, and a list of profiles including their ids and whether or not they are genotyped.
  #
  ##############################################################################

  class User < Choreography

    ####
    #  Create a new instance of the User Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/23andMe/User")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UserInputSet
    ####
    def new_input_set()
      return UserInputSet.new()
    end

    def make_result_set()
      return UserResultSet.new()
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
      results = UserResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the User
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UserInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved after completing the OAuth2 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the TestMode input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) A boolean flag indicating that the request should be made to the "demo" 23andMe endpoint for testing. Set to 1 for test mode. Defaults to 0.
      ###

      def set_TestMode(value)
        set_input("TestMode", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the User Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UserResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from 23AndMe.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class User




  module Utils



    ##############################################################################
    #
    # GetToken
    #
    # Used to retrieve a new access token when an application needs to access a user's data after the 1 day token expiration time.
    #
    ##############################################################################

    class GetToken < Choreography

      ####
      #  Create a new instance of the GetToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/23andMe/Utils/GetToken")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTokenInputSet
      ####
      def new_input_set()
        return GetTokenInputSet.new()
      end

      def make_result_set()
        return GetTokenResultSet.new()
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
        results = GetTokenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetToken
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTokenInputSet < Choreography::InputSet

        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (required, string) The Client ID provided by 23AndMe.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by 23AndMe.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Code input for this Choreo. 
        # 
        # @param String - (required, string) The authorization code obtained in the first step of the OAuth2 process.
        ###

        def set_Code(value)
          set_input("Code", value)
        end
        #### 
        # Set the value of the RedirectURI input for this Choreo. 
        # 
        # @param String - (required, string) The redirect uri previously registered with 23AndMe.
        ###

        def set_RedirectURI(value)
          set_input("RedirectURI", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (required, string) A space-delimited list of scopes that your app is requesting access for (i.e. basic rs3094315 rs3737728 names haplogroups).
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from 23AndMe.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetToken



    ##############################################################################
    #
    # RefreshToken
    #
    # Used to retrieve a new access token when an application needs to access a user's data after the 1 day token expiration time.
    #
    ##############################################################################

    class RefreshToken < Choreography

      ####
      #  Create a new instance of the RefreshToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/23andMe/Utils/RefreshToken")
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
        # @param String - (required, string) The Client ID provided by 23AndMe.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by 23AndMe.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the RedirectURI input for this Choreo. 
        # 
        # @param String - (required, string) The redirect uri previously registered with 23AndMe.
        ###

        def set_RedirectURI(value)
          set_input("RedirectURI", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (required, string) The refresh token obtained in the original access token request.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the Scope input for this Choreo. 
        # 
        # @param String - (required, string) A space-delimited list of scopes that your app is requesting access for (i.e. basic rs3094315 rs3737728 names haplogroups).
        ###

        def set_Scope(value)
          set_input("Scope", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RefreshToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RefreshTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from 23AndMe.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RefreshToken




  end # module Utils

end # module TMB_23andMe