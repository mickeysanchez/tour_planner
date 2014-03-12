require "temboo"

module Wordnik




  module Account



    ##############################################################################
    #
    # GetAuthToken
    #
    # Obtains an authentication token for use in other Wordnik Choreos.
    #
    ##############################################################################

    class GetAuthToken < Choreography

      ####
      #  Create a new instance of the GetAuthToken Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Account/GetAuthToken")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAuthTokenInputSet
      ####
      def new_input_set()
        return GetAuthTokenInputSet.new()
      end

      def make_result_set()
        return GetAuthTokenResultSet.new()
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
        results = GetAuthTokenResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAuthToken
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAuthTokenInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) Password of the Wordnik account.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Username of the Wordnik account.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAuthToken Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAuthTokenResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Token" output from this Choreo execution
      	#
      	# @return String - The Token obtained from running this Choreo.
      	####
      	def get_Token()
      	  return @outputs["Token"]
      	end
      end

    end # class GetAuthToken



    ##############################################################################
    #
    # GetKeyStatus
    #
    # Obtains the status of the user's current API Key.
    #
    ##############################################################################

    class GetKeyStatus < Choreography

      ####
      #  Create a new instance of the GetKeyStatus Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Account/GetKeyStatus")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetKeyStatusInputSet
      ####
      def new_input_set()
        return GetKeyStatusInputSet.new()
      end

      def make_result_set()
        return GetKeyStatusResultSet.new()
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
        results = GetKeyStatusResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetKeyStatus
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetKeyStatusInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetKeyStatus Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetKeyStatusResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetKeyStatus



    ##############################################################################
    #
    # GetUser
    #
    # Retrieves information on the specified user.
    #
    ##############################################################################

    class GetUser < Choreography

      ####
      #  Create a new instance of the GetUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Account/GetUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUserInputSet
      ####
      def new_input_set()
        return GetUserInputSet.new()
      end

      def make_result_set()
        return GetUserResultSet.new()
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
        results = GetUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) Password of the Wordnik account. 
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) Username of the Wordnik account.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetUser



    ##############################################################################
    #
    # GetWordLists
    #
    # Retrieves the word lists for the specified user.
    #
    ##############################################################################

    class GetWordLists < Choreography

      ####
      #  Create a new instance of the GetWordLists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Account/GetWordLists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWordListsInputSet
      ####
      def new_input_set()
        return GetWordListsInputSet.new()
      end

      def make_result_set()
        return GetWordListsResultSet.new()
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
        results = GetWordListsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWordLists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWordListsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of results to return. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) The Password of the Wordnik account.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to skip. Defaults to 0.
        ###

        def set_Skip(value)
          set_input("Skip", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The Username of the Wordnik account.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWordLists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWordListsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWordLists




  end # module Account

  module Word



    ##############################################################################
    #
    # GetAudio
    #
    # Retrieves the audio pronunciation of a given word.
    #
    ##############################################################################

    class GetAudio < Choreography

      ####
      #  Create a new instance of the GetAudio Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Word/GetAudio")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAudioInputSet
      ####
      def new_input_set()
        return GetAudioInputSet.new()
      end

      def make_result_set()
        return GetAudioResultSet.new()
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
        results = GetAudioResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAudio
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAudioInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Cannonical input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Cannonical(value)
          set_input("Cannonical", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of results to return. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the UseCanonical input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
        ###

        def set_UseCanonical(value)
          set_input("UseCanonical", value)
        end
        #### 
        # Set the value of the Word input for this Choreo. 
        # 
        # @param String - (required, string) The word you want to look up on Wordnik.
        ###

        def set_Word(value)
          set_input("Word", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAudio Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAudioResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetAudio



    ##############################################################################
    #
    # GetDefinitions
    #
    # Retrieves the definition of a given word.
    #
    ##############################################################################

    class GetDefinitions < Choreography

      ####
      #  Create a new instance of the GetDefinitions Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Word/GetDefinitions")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetDefinitionsInputSet
      ####
      def new_input_set()
        return GetDefinitionsInputSet.new()
      end

      def make_result_set()
        return GetDefinitionsResultSet.new()
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
        results = GetDefinitionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetDefinitions
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetDefinitionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Cannonical input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Cannonical(value)
          set_input("Cannonical", value)
        end
        #### 
        # Set the value of the Dictionaries input for this Choreo. 
        # 
        # @param String - (optional, string) Source dictionary to return definitions from. Defaults to all, which returns definitions from all sources. See docs fro full list of acceptable values.
        ###

        def set_Dictionaries(value)
          set_input("Dictionaries", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of results to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the PartOfSpeech input for this Choreo. 
        # 
        # @param String - (optional, string) Returns only definitions for particular parts of speech when this input is specified. Acceptable values include: adjective, noun, etc. See docs for full list.
        ###

        def set_PartOfSpeech(value)
          set_input("PartOfSpeech", value)
        end
        #### 
        # Set the value of the RelatedWords input for this Choreo. 
        # 
        # @param String - (optional, string) Returns related words with definitions when true. Defaults to false.
        ###

        def set_RelatedWords(value)
          set_input("RelatedWords", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the UseCanonical input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
        ###

        def set_UseCanonical(value)
          set_input("UseCanonical", value)
        end
        #### 
        # Set the value of the Word input for this Choreo. 
        # 
        # @param String - (required, string) The word you want to look up on Wordnik.
        ###

        def set_Word(value)
          set_input("Word", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetDefinitions Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetDefinitionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetDefinitions



    ##############################################################################
    #
    # GetEtymology
    #
    # Retrieves the etymology of a given word.
    #
    ##############################################################################

    class GetEtymology < Choreography

      ####
      #  Create a new instance of the GetEtymology Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Word/GetEtymology")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetEtymologyInputSet
      ####
      def new_input_set()
        return GetEtymologyInputSet.new()
      end

      def make_result_set()
        return GetEtymologyResultSet.new()
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
        results = GetEtymologyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetEtymology
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetEtymologyInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Cannonical input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Cannonical(value)
          set_input("Cannonical", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the UseCanonical input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
        ###

        def set_UseCanonical(value)
          set_input("UseCanonical", value)
        end
        #### 
        # Set the value of the Word input for this Choreo. 
        # 
        # @param String - (required, string) The word you want to look up on Wordnik.
        ###

        def set_Word(value)
          set_input("Word", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetEtymology Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetEtymologyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetEtymology



    ##############################################################################
    #
    # GetExamples
    #
    # Retrieves the examples of a given word.
    #
    ##############################################################################

    class GetExamples < Choreography

      ####
      #  Create a new instance of the GetExamples Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Word/GetExamples")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetExamplesInputSet
      ####
      def new_input_set()
        return GetExamplesInputSet.new()
      end

      def make_result_set()
        return GetExamplesResultSet.new()
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
        results = GetExamplesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetExamples
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetExamplesInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Cannonical input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Cannonical(value)
          set_input("Cannonical", value)
        end
        #### 
        # Set the value of the Duplicates input for this Choreo. 
        # 
        # @param String - (optional, string) Shows duplicate examples from different sources when set to true. Defaults to false.
        ###

        def set_Duplicates(value)
          set_input("Duplicates", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of results to return.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Results to skip. Defaults to 0.
        ###

        def set_Skip(value)
          set_input("Skip", value)
        end
        #### 
        # Set the value of the UseCanonical input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
        ###

        def set_UseCanonical(value)
          set_input("UseCanonical", value)
        end
        #### 
        # Set the value of the Word input for this Choreo. 
        # 
        # @param String - (required, string) The word you want to look up on Wordnik.
        ###

        def set_Word(value)
          set_input("Word", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetExamples Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetExamplesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetExamples



    ##############################################################################
    #
    # GetFrequency
    #
    # Retrieves the word frequency of a given word.
    #
    ##############################################################################

    class GetFrequency < Choreography

      ####
      #  Create a new instance of the GetFrequency Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Word/GetFrequency")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFrequencyInputSet
      ####
      def new_input_set()
        return GetFrequencyInputSet.new()
      end

      def make_result_set()
        return GetFrequencyResultSet.new()
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
        results = GetFrequencyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFrequency
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFrequencyInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Cannonical input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Cannonical(value)
          set_input("Cannonical", value)
        end
        #### 
        # Set the value of the EndYear input for this Choreo. 
        # 
        # @param Integer - (optional, integer) End year for which to return word use frequencies. Defaults to 2012.
        ###

        def set_EndYear(value)
          set_input("EndYear", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the StartYear input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Start year for which to return word use frequencies. Defaults to 1800.
        ###

        def set_StartYear(value)
          set_input("StartYear", value)
        end
        #### 
        # Set the value of the UseCanonical input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
        ###

        def set_UseCanonical(value)
          set_input("UseCanonical", value)
        end
        #### 
        # Set the value of the Word input for this Choreo. 
        # 
        # @param String - (required, string) The word you want to look up on Wordnik.
        ###

        def set_Word(value)
          set_input("Word", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFrequency Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFrequencyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFrequency



    ##############################################################################
    #
    # GetHyphenation
    #
    # Retrieves the hyphenation of a given word.
    #
    ##############################################################################

    class GetHyphenation < Choreography

      ####
      #  Create a new instance of the GetHyphenation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Word/GetHyphenation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetHyphenationInputSet
      ####
      def new_input_set()
        return GetHyphenationInputSet.new()
      end

      def make_result_set()
        return GetHyphenationResultSet.new()
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
        results = GetHyphenationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetHyphenation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetHyphenationInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Cannonical input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Cannonical(value)
          set_input("Cannonical", value)
        end
        #### 
        # Set the value of the Dictionary input for this Choreo. 
        # 
        # @param String - (optional, string) Source dictionary to return pronunciation from. Acceptable values: ahd, century, cmu, macmillan, wiktionary,webster, wordnet.
        ###

        def set_Dictionary(value)
          set_input("Dictionary", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of results to return. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the UseCanonical input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
        ###

        def set_UseCanonical(value)
          set_input("UseCanonical", value)
        end
        #### 
        # Set the value of the Word input for this Choreo. 
        # 
        # @param String - (required, string) The word you want to look up on Wordnik.
        ###

        def set_Word(value)
          set_input("Word", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetHyphenation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetHyphenationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetHyphenation



    ##############################################################################
    #
    # GetPronunciations
    #
    # Retrieves the pronuciation of a given word.
    #
    ##############################################################################

    class GetPronunciations < Choreography

      ####
      #  Create a new instance of the GetPronunciations Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Word/GetPronunciations")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPronunciationsInputSet
      ####
      def new_input_set()
        return GetPronunciationsInputSet.new()
      end

      def make_result_set()
        return GetPronunciationsResultSet.new()
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
        results = GetPronunciationsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPronunciations
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPronunciationsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Cannonical input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Cannonical(value)
          set_input("Cannonical", value)
        end
        #### 
        # Set the value of the Dictionary input for this Choreo. 
        # 
        # @param String - (optional, string) Source dictionary to return pronunciation from. Acceptable values: ahd, century, cmu, macmillan, wiktionary,webster, wordnet.
        ###

        def set_Dictionary(value)
          set_input("Dictionary", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of results to return. Defaults to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the TypeFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Text pronunciation type. Acceptable values: ahd, arpabet, gcide-diacritical, IPA.
        ###

        def set_TypeFormat(value)
          set_input("TypeFormat", value)
        end
        #### 
        # Set the value of the UseCanonical input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
        ###

        def set_UseCanonical(value)
          set_input("UseCanonical", value)
        end
        #### 
        # Set the value of the Word input for this Choreo. 
        # 
        # @param String - (required, string) The word you want to look up on Wordnik.
        ###

        def set_Word(value)
          set_input("Word", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPronunciations Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPronunciationsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetPronunciations



    ##############################################################################
    #
    # GetRelatedWords
    #
    # Retrieves the related words of a given word.
    #
    ##############################################################################

    class GetRelatedWords < Choreography

      ####
      #  Create a new instance of the GetRelatedWords Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Word/GetRelatedWords")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRelatedWordsInputSet
      ####
      def new_input_set()
        return GetRelatedWordsInputSet.new()
      end

      def make_result_set()
        return GetRelatedWordsResultSet.new()
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
        results = GetRelatedWordsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRelatedWords
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRelatedWordsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Cannonical input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Cannonical(value)
          set_input("Cannonical", value)
        end
        #### 
        # Set the value of the LimitPerType input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the amount of results returned for each relationship type included in the output. Defaults to 10.
        ###

        def set_LimitPerType(value)
          set_input("LimitPerType", value)
        end
        #### 
        # Set the value of the RelationshipType input for this Choreo. 
        # 
        # @param String - (optional, string) Limits the total results per type of relationship. Acceptable values inlcude adjective, noun, etc. See docs for complete list.
        ###

        def set_RelationshipType(value)
          set_input("RelationshipType", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the UseCanonical input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
        ###

        def set_UseCanonical(value)
          set_input("UseCanonical", value)
        end
        #### 
        # Set the value of the Word input for this Choreo. 
        # 
        # @param String - (required, string) The word you want to look up on Wordnik.
        ###

        def set_Word(value)
          set_input("Word", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRelatedWords Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRelatedWordsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetRelatedWords



    ##############################################################################
    #
    # GetTopExample
    #
    # Retrieves the top example of a given word.
    #
    ##############################################################################

    class GetTopExample < Choreography

      ####
      #  Create a new instance of the GetTopExample Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Word/GetTopExample")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetTopExampleInputSet
      ####
      def new_input_set()
        return GetTopExampleInputSet.new()
      end

      def make_result_set()
        return GetTopExampleResultSet.new()
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
        results = GetTopExampleResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetTopExample
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetTopExampleInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Cannonical input for this Choreo. 
        # 
        # @param String - (optional, string) Deprecated (retained for backward compatibility only).
        ###

        def set_Cannonical(value)
          set_input("Cannonical", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the UseCanonical input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If true will try to return the correct word root ('cats' -> 'cat'). If false returns exactly what was requested. Defaults to false.
        ###

        def set_UseCanonical(value)
          set_input("UseCanonical", value)
        end
        #### 
        # Set the value of the Word input for this Choreo. 
        # 
        # @param String - (required, string) The word you want to look up on Wordnik.
        ###

        def set_Word(value)
          set_input("Word", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetTopExample Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetTopExampleResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetTopExample




  end # module Word

  module WordList



    ##############################################################################
    #
    # DeleteWordList
    #
    # Deletes a given word list.
    #
    ##############################################################################

    class DeleteWordList < Choreography

      ####
      #  Create a new instance of the DeleteWordList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/WordList/DeleteWordList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteWordListInputSet
      ####
      def new_input_set()
        return DeleteWordListInputSet.new()
      end

      def make_result_set()
        return DeleteWordListResultSet.new()
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
        results = DeleteWordListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteWordList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteWordListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) The Password of the Wordnik account.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The Username of the Wordnik account.
        ###

        def set_Username(value)
          set_input("Username", value)
        end
        #### 
        # Set the value of the WordList input for this Choreo. 
        # 
        # @param String - (required, string) The perma-link of the WordLIst to delete.
        ###

        def set_WordList(value)
          set_input("WordList", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteWordList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteWordListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteWordList



    ##############################################################################
    #
    # GetWordList
    #
    # Retrieves a word list by its ID.
    #
    ##############################################################################

    class GetWordList < Choreography

      ####
      #  Create a new instance of the GetWordList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/WordList/GetWordList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWordListInputSet
      ####
      def new_input_set()
        return GetWordListInputSet.new()
      end

      def make_result_set()
        return GetWordListResultSet.new()
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
        results = GetWordListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWordList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWordListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) The Password of the Wordnik account.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The Username of the Wordnik account.
        ###

        def set_Username(value)
          set_input("Username", value)
        end
        #### 
        # Set the value of the WordList input for this Choreo. 
        # 
        # @param String - (required, string) The perma-link for the Word List to retrieve.
        ###

        def set_WordList(value)
          set_input("WordList", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWordList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWordListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWordList



    ##############################################################################
    #
    # GetWordsInWordList
    #
    # Retrievs the words in a word list.
    #
    ##############################################################################

    class GetWordsInWordList < Choreography

      ####
      #  Create a new instance of the GetWordsInWordList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/WordList/GetWordsInWordList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWordsInWordListInputSet
      ####
      def new_input_set()
        return GetWordsInWordListInputSet.new()
      end

      def make_result_set()
        return GetWordsInWordListResultSet.new()
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
        results = GetWordsInWordListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWordsInWordList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWordsInWordListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits teh number of results returned. Defaults to 100.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) The Password of the Wordnik user account.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to skip. Defaults to 0.
        ###

        def set_Skip(value)
          set_input("Skip", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) Sorts the results by either alpha (alphabetically) or createDate (the date created). Defaults to createDate.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) The direction to sort results by either asc (ascending) or desc (descending). Defaults to desc.
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The Username of the Wordnik user.
        ###

        def set_Username(value)
          set_input("Username", value)
        end
        #### 
        # Set the value of the WordList input for this Choreo. 
        # 
        # @param String - (required, string) The perma-link for the Word List to retrieve.
        ###

        def set_WordList(value)
          set_input("WordList", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWordsInWordList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWordsInWordListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWordsInWordList




  end # module WordList

  module WordLists



    ##############################################################################
    #
    # CreateWordList
    #
    # Creates a new word list for the specified user.
    #
    ##############################################################################

    class CreateWordList < Choreography

      ####
      #  Create a new instance of the CreateWordList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/WordLists/CreateWordList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateWordListInputSet
      ####
      def new_input_set()
        return CreateWordListInputSet.new()
      end

      def make_result_set()
        return CreateWordListResultSet.new()
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
        results = CreateWordListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateWordList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateWordListInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key obtained from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ListDescription input for this Choreo. 
        # 
        # @param String - (required, string) A description of the list to create.
        ###

        def set_ListDescription(value)
          set_input("ListDescription", value)
        end
        #### 
        # Set the value of the ListName input for this Choreo. 
        # 
        # @param String - (required, string) Name of list to create.
        ###

        def set_ListName(value)
          set_input("ListName", value)
        end
        #### 
        # Set the value of the ListStatus input for this Choreo. 
        # 
        # @param String - (optional, string) Determines whether the list to cretae is public or private. Acceptable values: PUBLIC or PRIVATE.
        ###

        def set_ListStatus(value)
          set_input("ListStatus", value)
        end
        #### 
        # Set the value of the Password input for this Choreo. 
        # 
        # @param String - (required, string) The Password of the Wordnik account.
        ###

        def set_Password(value)
          set_input("Password", value)
        end
        #### 
        # Set the value of the Username input for this Choreo. 
        # 
        # @param String - (required, string) The Username of the Wordnik account.
        ###

        def set_Username(value)
          set_input("Username", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateWordList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateWordListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateWordList




  end # module WordLists

  module Words



    ##############################################################################
    #
    # GetWordOfTheDay
    #
    # Retrieves the word of the day for specified dates.
    #
    ##############################################################################

    class GetWordOfTheDay < Choreography

      ####
      #  Create a new instance of the GetWordOfTheDay Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Words/GetWordOfTheDay")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetWordOfTheDayInputSet
      ####
      def new_input_set()
        return GetWordOfTheDayInputSet.new()
      end

      def make_result_set()
        return GetWordOfTheDayResultSet.new()
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
        results = GetWordOfTheDayResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetWordOfTheDay
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetWordOfTheDayInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (required, string) The date of the Word of the Day to retrieve, in yyyy-MM-dd format.
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetWordOfTheDay Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetWordOfTheDayResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetWordOfTheDay



    ##############################################################################
    #
    # RandomWord
    #
    # Retrieves a random word.
    #
    ##############################################################################

    class RandomWord < Choreography

      ####
      #  Create a new instance of the RandomWord Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Words/RandomWord")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RandomWordInputSet
      ####
      def new_input_set()
        return RandomWordInputSet.new()
      end

      def make_result_set()
        return RandomWordResultSet.new()
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
        results = RandomWordResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RandomWord
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RandomWordInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ExcludePartOfSpeech input for this Choreo. 
        # 
        # @param String - (optional, string) Excludes the specified comma-delimited parts of speech from the results returned. Acceptable values include: adjective, noun, etc. See docs for full list.
        ###

        def set_ExcludePartOfSpeech(value)
          set_input("ExcludePartOfSpeech", value)
        end
        #### 
        # Set the value of the HasDefinition input for this Choreo. 
        # 
        # @param String - (optional, string) Only returns words that have dictionary definitions when true. Otherwise false. Defaults to true.
        ###

        def set_HasDefinition(value)
          set_input("HasDefinition", value)
        end
        #### 
        # Set the value of the IncludePartOfSpeech input for this Choreo. 
        # 
        # @param String - (optional, string) Only includes the specified comma-delimited parts of speech. Acceptable values include: adjective, noun, etc. See docs for full list.
        ###

        def set_IncludePartOfSpeech(value)
          set_input("IncludePartOfSpeech", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of results to return. Defaults to 10.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MaxCorpus input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count below the given number.
        ###

        def set_MaxCorpus(value)
          set_input("MaxCorpus", value)
        end
        #### 
        # Set the value of the MaxDictionaries input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of dictionaries in which the words appear.
        ###

        def set_MaxDictionaries(value)
          set_input("MaxDictionaries", value)
        end
        #### 
        # Set the value of the MaxLength input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum word length.
        ###

        def set_MaxLength(value)
          set_input("MaxLength", value)
        end
        #### 
        # Set the value of the MinCorpus input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count above the given number.
        ###

        def set_MinCorpus(value)
          set_input("MinCorpus", value)
        end
        #### 
        # Set the value of the MinDictionaries input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Minimum number of dictionaries in which the words appear.
        ###

        def set_MinDictionaries(value)
          set_input("MinDictionaries", value)
        end
        #### 
        # Set the value of the MinLength input for this Choreo. 
        # 
        # @param Integer - (optional, integer) ‪Minimum word length.
        ###

        def set_MinLength(value)
          set_input("MinLength", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RandomWord Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RandomWordResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RandomWord



    ##############################################################################
    #
    # RandomWords
    #
    # Retrieves a list of random words.
    #
    ##############################################################################

    class RandomWords < Choreography

      ####
      #  Create a new instance of the RandomWords Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Words/RandomWords")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RandomWordsInputSet
      ####
      def new_input_set()
        return RandomWordsInputSet.new()
      end

      def make_result_set()
        return RandomWordsResultSet.new()
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
        results = RandomWordsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RandomWords
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RandomWordsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ExcludePartOfSpeech input for this Choreo. 
        # 
        # @param String - (optional, string) Excludes the specified comma-delimited parts of speech from the results returned. Acceptable values include: adjective, noun, etc. See docs for full list.
        ###

        def set_ExcludePartOfSpeech(value)
          set_input("ExcludePartOfSpeech", value)
        end
        #### 
        # Set the value of the HasDefinition input for this Choreo. 
        # 
        # @param String - (optional, string) Only returns words that have dictionary definitions when true. Otherwise false. Defaults to true.
        ###

        def set_HasDefinition(value)
          set_input("HasDefinition", value)
        end
        #### 
        # Set the value of the IncludePartOfSpeech input for this Choreo. 
        # 
        # @param String - (optional, string) Only includes the specified comma-delimited parts of speech. Acceptable values include: adjective, noun, etc. See docs for full list.
        ###

        def set_IncludePartOfSpeech(value)
          set_input("IncludePartOfSpeech", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of results to return. Defaults to 10.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MaxCorpus input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count below the given number.
        ###

        def set_MaxCorpus(value)
          set_input("MaxCorpus", value)
        end
        #### 
        # Set the value of the MaxDictionaries input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of dictionaries in which the words appear.
        ###

        def set_MaxDictionaries(value)
          set_input("MaxDictionaries", value)
        end
        #### 
        # Set the value of the MaxLength input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum word length.
        ###

        def set_MaxLength(value)
          set_input("MaxLength", value)
        end
        #### 
        # Set the value of the MinCorpus input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count above the given number.
        ###

        def set_MinCorpus(value)
          set_input("MinCorpus", value)
        end
        #### 
        # Set the value of the MinDictionaries input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Minimum number of dictionaries in which the words appear.
        ###

        def set_MinDictionaries(value)
          set_input("MinDictionaries", value)
        end
        #### 
        # Set the value of the MinLength input for this Choreo. 
        # 
        # @param Integer - (optional, integer) ‪Minimum word length.
        ###

        def set_MinLength(value)
          set_input("MinLength", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) Results can be sorted by: alpha, count, or length.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Indicate the order to sort, either asc (ascending) or desc (descending).
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RandomWords Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RandomWordsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RandomWords



    ##############################################################################
    #
    # ReverseDictionary
    #
    # Retrieves a reverse dictionary search for a given word.
    #
    ##############################################################################

    class ReverseDictionary < Choreography

      ####
      #  Create a new instance of the ReverseDictionary Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Words/ReverseDictionary")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReverseDictionaryInputSet
      ####
      def new_input_set()
        return ReverseDictionaryInputSet.new()
      end

      def make_result_set()
        return ReverseDictionaryResultSet.new()
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
        results = ReverseDictionaryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReverseDictionary
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReverseDictionaryInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the ExcludePartOfSpeech input for this Choreo. 
        # 
        # @param String - (optional, string) Excludes the specified comma-delimited parts of speech from the results returned. Acceptable values include: adjective, noun, etc. See docs for full list.
        ###

        def set_ExcludePartOfSpeech(value)
          set_input("ExcludePartOfSpeech", value)
        end
        #### 
        # Set the value of the ExcludeSource input for this Choreo. 
        # 
        # @param String - (optional, string) Exclude these comma-delimited source dictionaries: ahd, century, wiktionary,webster, wordnet.
        ###

        def set_ExcludeSource(value)
          set_input("ExcludeSource", value)
        end
        #### 
        # Set the value of the ExpandTerms input for this Choreo. 
        # 
        # @param String - (optional, any) Expand terms by either: synonym or hypernym.
        ###

        def set_ExpandTerms(value)
          set_input("ExpandTerms", value)
        end
        #### 
        # Set the value of the IncludePartOfSpeech input for this Choreo. 
        # 
        # @param String - (optional, string) Only includes the specified comma-delimited parts of speech. Acceptable values include: adjective, noun, etc. See docs for full list.
        ###

        def set_IncludePartOfSpeech(value)
          set_input("IncludePartOfSpeech", value)
        end
        #### 
        # Set the value of the IncludeSource input for this Choreo. 
        # 
        # @param String - (optional, string) Only include these comma-delimited source dictionaries: ahd, century, wiktionary,webster, wordnet.
        ###

        def set_IncludeSource(value)
          set_input("IncludeSource", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of results to return. Defaults to 10.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MaxCorpus input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count below the given number.
        ###

        def set_MaxCorpus(value)
          set_input("MaxCorpus", value)
        end
        #### 
        # Set the value of the MaxLength input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum word length.
        ###

        def set_MaxLength(value)
          set_input("MaxLength", value)
        end
        #### 
        # Set the value of the MinCorpus input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count above the given number.
        ###

        def set_MinCorpus(value)
          set_input("MinCorpus", value)
        end
        #### 
        # Set the value of the MinLength input for this Choreo. 
        # 
        # @param Integer - (optional, integer) ‪Minimum word length.
        ###

        def set_MinLength(value)
          set_input("MinLength", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) Word or fragment to query for in Wordnik.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to skip.
        ###

        def set_Skip(value)
          set_input("Skip", value)
        end
        #### 
        # Set the value of the SortBy input for this Choreo. 
        # 
        # @param String - (optional, string) Results can be sorted by: alpha, count, or length.
        ###

        def set_SortBy(value)
          set_input("SortBy", value)
        end
        #### 
        # Set the value of the SortOrder input for this Choreo. 
        # 
        # @param String - (optional, string) Indicate the order to sort, either asc (ascending) or desc (descending).
        ###

        def set_SortOrder(value)
          set_input("SortOrder", value)
        end
        #### 
        # Set the value of the WordSense input for this Choreo. 
        # 
        # @param String - (optional, string) Restricts words and finds the closest sense to the one indicated.
        ###

        def set_WordSense(value)
          set_input("WordSense", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReverseDictionary Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReverseDictionaryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ReverseDictionary



    ##############################################################################
    #
    # SearchWords
    #
    # Searches words.
    #
    ##############################################################################

    class SearchWords < Choreography

      ####
      #  Create a new instance of the SearchWords Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Wordnik/Words/SearchWords")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchWordsInputSet
      ####
      def new_input_set()
        return SearchWordsInputSet.new()
      end

      def make_result_set()
        return SearchWordsResultSet.new()
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
        results = SearchWordsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchWords
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchWordsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key from Wordnik.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the CaseSensitive input for this Choreo. 
        # 
        # @param String - (optional, string) Makes the query case-insensitive when false. Defaults to true, so queries are case-sensitive.
        ###

        def set_CaseSensitive(value)
          set_input("CaseSensitive", value)
        end
        #### 
        # Set the value of the ExcludePartOfSpeech input for this Choreo. 
        # 
        # @param String - (optional, string) Excludes the specified comma-delimited parts of speech from the results returned. Acceptable values include: adjective, noun, etc. See docs for full list.
        ###

        def set_ExcludePartOfSpeech(value)
          set_input("ExcludePartOfSpeech", value)
        end
        #### 
        # Set the value of the IncludePartOfSpeech input for this Choreo. 
        # 
        # @param String - (optional, string) Only includes the specified comma-delimited parts of speech. Acceptable values include: adjective, noun, etc. See docs for full list.
        ###

        def set_IncludePartOfSpeech(value)
          set_input("IncludePartOfSpeech", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum number of results to return. Defaults to 10.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the MaxCorpus input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count below the given number.
        ###

        def set_MaxCorpus(value)
          set_input("MaxCorpus", value)
        end
        #### 
        # Set the value of the MaxEntries input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the results to words that have fewer than the given numner of dictionary entries.
        ###

        def set_MaxEntries(value)
          set_input("MaxEntries", value)
        end
        #### 
        # Set the value of the MaxLength input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Maximum word length.
        ###

        def set_MaxLength(value)
          set_input("MaxLength", value)
        end
        #### 
        # Set the value of the MinCorpus input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Results include a corpus frequency count for each word returned. When this input is specified, results are limited to words with a corpus frequency count above the given number.
        ###

        def set_MinCorpus(value)
          set_input("MinCorpus", value)
        end
        #### 
        # Set the value of the MinEntries input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limits the results to words that have more than the given numner of dictionary entries.
        ###

        def set_MinEntries(value)
          set_input("MinEntries", value)
        end
        #### 
        # Set the value of the MinLength input for this Choreo. 
        # 
        # @param Integer - (optional, integer) ‪Minimum word length.
        ###

        def set_MinLength(value)
          set_input("MinLength", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) Word or fragment to query for in Wordnik.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseType input for this Choreo. 
        # 
        # @param String - (optional, string) Response can be either JSON or XML. Defaults to JSON.
        ###

        def set_ResponseType(value)
          set_input("ResponseType", value)
        end
        #### 
        # Set the value of the Skip input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to skip.
        ###

        def set_Skip(value)
          set_input("Skip", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchWords Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchWordsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Wordnik.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchWords




  end # module Words

end # module Wordnik