require "temboo"

module Netflix



  ##############################################################################
  #
  # GetDiscQueue
  #
  # Retrieves the contents of a subscriber's disc queue.
  #
  ##############################################################################

  class GetDiscQueue < Choreography

    ####
    #  Create a new instance of the GetDiscQueue Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Netflix/GetDiscQueue")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetDiscQueueInputSet
    ####
    def new_input_set()
      return GetDiscQueueInputSet.new()
    end

    def make_result_set()
      return GetDiscQueueResultSet.new()
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
      results = GetDiscQueueResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetDiscQueue
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetDiscQueueInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Set this to the maximum number of results to return. This number cannot be greater than 500. If you do not specify max_results, the default value is 25
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the SharedSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
      ###

      def set_SharedSecret(value)
        set_input("SharedSecret", value)
      end
      #### 
      # Set the value of the Sort input for this Choreo. 
      # 
      # @param String - (optional, string) Use this to specify the sort order for the queue entries. Sort order may be by queue_sequence, date_added, or alphabetical. The default sort order, if you do not specify one, is queue_sequence.
      ###

      def set_Sort(value)
        set_input("Sort", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The offset number of the results from the query.
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end
      #### 
      # Set the value of the UpdatedMin input for this Choreo. 
      # 
      # @param String - (optional, date) If set, the response will include only those items with updated timestamps greater than or equal to the timestamp provided. Specify this value either in Unix time format (seconds since epoch).
      ###

      def set_UpdatedMin(value)
        set_input("UpdatedMin", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (required, string) The ID associated with the user whose queue information you want to retrieve.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetDiscQueue Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetDiscQueueResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Netflix.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetDiscQueue



  ##############################################################################
  #
  # GetInstantQueue
  #
  # Retrieves the contents of a subscriber's instant-watch queue.
  #
  ##############################################################################

  class GetInstantQueue < Choreography

    ####
    #  Create a new instance of the GetInstantQueue Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Netflix/GetInstantQueue")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetInstantQueueInputSet
    ####
    def new_input_set()
      return GetInstantQueueInputSet.new()
    end

    def make_result_set()
      return GetInstantQueueResultSet.new()
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
      results = GetInstantQueueResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetInstantQueue
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetInstantQueueInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Set this to the maximum number of results to return. This number cannot be greater than 500. If you do not specify max_results, the default value is 25
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the SharedSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
      ###

      def set_SharedSecret(value)
        set_input("SharedSecret", value)
      end
      #### 
      # Set the value of the Sort input for this Choreo. 
      # 
      # @param String - (optional, string) Use this to specify the sort order for the queue entries. Sort order may be by queue_sequence, date_added, or alphabetical. The default sort order, if you do not specify one, is queue_sequence.
      ###

      def set_Sort(value)
        set_input("Sort", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The offset number of the results from the query.
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end
      #### 
      # Set the value of the UpdatedMin input for this Choreo. 
      # 
      # @param String - (optional, date) If set, the response will include only those items with updated timestamps greater than or equal to the timestamp provided. Specify this value either in Unix time format (seconds since epoch).
      ###

      def set_UpdatedMin(value)
        set_input("UpdatedMin", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (required, string) The ID associated with the user whose queue information you want to retrieve.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetInstantQueue Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetInstantQueueResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Netflix.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetInstantQueue



  ##############################################################################
  #
  # GetQueues
  #
  # Retrieves a list of a subscriber's queues.
  #
  ##############################################################################

  class GetQueues < Choreography

    ####
    #  Create a new instance of the GetQueues Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Netflix/GetQueues")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetQueuesInputSet
    ####
    def new_input_set()
      return GetQueuesInputSet.new()
    end

    def make_result_set()
      return GetQueuesResultSet.new()
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
      results = GetQueuesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetQueues
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetQueuesInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Set this to the maximum number of results to return. This number cannot be greater than 500. If you do not specify max_results, the default value is 25
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the SharedSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
      ###

      def set_SharedSecret(value)
        set_input("SharedSecret", value)
      end
      #### 
      # Set the value of the Sort input for this Choreo. 
      # 
      # @param String - (optional, string) Use this to specify the sort order for the queue entries. Sort order may be by queue_sequence, date_added, or alphabetical. The default sort order, if you do not specify one, is queue_sequence.
      ###

      def set_Sort(value)
        set_input("Sort", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The offset number of the results from the query.
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end
      #### 
      # Set the value of the UpdatedMin input for this Choreo. 
      # 
      # @param String - (optional, date) If set, the response will include only those items with updated timestamps greater than or equal to the timestamp provided. Specify this value either in Unix time format (seconds since epoch).
      ###

      def set_UpdatedMin(value)
        set_input("UpdatedMin", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (required, string) The ID associated with the user whose queue information you want to retrieve.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetQueues Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetQueuesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Netflix.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetQueues



  ##############################################################################
  #
  # GetRecommendations
  #
  # Retrieves a list of catalog title recommendations for a subscriber.
  #
  ##############################################################################

  class GetRecommendations < Choreography

    ####
    #  Create a new instance of the GetRecommendations Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Netflix/GetRecommendations")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetRecommendationsInputSet
    ####
    def new_input_set()
      return GetRecommendationsInputSet.new()
    end

    def make_result_set()
      return GetRecommendationsResultSet.new()
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
      results = GetRecommendationsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetRecommendations
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetRecommendationsInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Set this to the maximum number of results to return. This number cannot be greater than 500. If you do not specify max_results, the default value is 25
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the SharedSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
      ###

      def set_SharedSecret(value)
        set_input("SharedSecret", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The offset number of the results from the query.
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (required, string) The ID associated with the user whose recommendations you want to retrieve.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetRecommendations Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetRecommendationsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Netflix.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetRecommendations




  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Netflix access token, token secret, and user ID for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Netflix/OAuth/FinalizeOAuth")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
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
        # @param String - (required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the callback data after the user authorizes.
        ###

        def set_CallbackID(value)
          set_input("CallbackID", value)
        end
        #### 
        # Set the value of the OAuthTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The OAuth Token Secret retrieved during the OAuth process. This is returned by the InitializeOAuth Choreo.
        ###

        def set_OAuthTokenSecret(value)
          set_input("OAuthTokenSecret", value)
        end
        #### 
        # Set the value of the SharedSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
        ###

        def set_SharedSecret(value)
          set_input("SharedSecret", value)
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
      	# Retrieve the value for the "AccessTokenSecret" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token Secret retrieved during the OAuth process.
      	####
      	def get_AccessTokenSecret()
      	  return @outputs["AccessTokenSecret"]
      	end
      	####
      	# Retrieve the value for the "UserID" output from this Choreo execution
      	#
      	# @return String - (string) The Netflix Subscriber ID (encrypted) associated with the access token that is being retrieved.
      	####
      	def get_UserID()
      	  return @outputs["UserID"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token retrieved during the OAuth process.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
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
        super(session, "/Library/Netflix/OAuth/InitializeOAuth")
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
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
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
        # Set the value of the ForwardingURL input for this Choreo. 
        # 
        # @param String - (optional, string) The URL that Temboo will redirect your users to after they grant access to your application. This should include the "https://" or "http://" prefix and be a fully qualified URL.
        ###

        def set_ForwardingURL(value)
          set_input("ForwardingURL", value)
        end
        #### 
        # Set the value of the SharedSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
        ###

        def set_SharedSecret(value)
          set_input("SharedSecret", value)
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
      	# Retrieve the value for the "OAuthTokenSecret" output from this Choreo execution
      	#
      	# @return String - (string) The temporary OAuth Token Secret that can be exchanged for permanent tokens using the FinalizeOAuth Choreo.
      	####
      	def get_OAuthTokenSecret()
      	  return @outputs["OAuthTokenSecret"]
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




  end # module OAuth
  ##############################################################################
  #
  # SearchTitleCatalog
  #
  # Searches for a title in the instant-watch title catalog.
  #
  ##############################################################################

  class SearchTitleCatalog < Choreography

    ####
    #  Create a new instance of the SearchTitleCatalog Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Netflix/SearchTitleCatalog")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchTitleCatalogInputSet
    ####
    def new_input_set()
      return SearchTitleCatalogInputSet.new()
    end

    def make_result_set()
      return SearchTitleCatalogResultSet.new()
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
      results = SearchTitleCatalogResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchTitleCatalog
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchTitleCatalogInputSet < Choreography::InputSet

      #### 
      # Set the value of the APIKey input for this Choreo. 
      # 
      # @param String - (required, string) The API Key provided by Netflix (AKA the OAuth Consumer Key).
      ###

      def set_APIKey(value)
        set_input("APIKey", value)
      end
      #### 
      # Set the value of the AccessTokenSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token Secret retrieved during the OAuth process.
      ###

      def set_AccessTokenSecret(value)
        set_input("AccessTokenSecret", value)
      end
      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The Access Token retrieved during the OAuth process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Set this to the maximum number of results to return. This number cannot be greater than 500. If you do not specify max_results, the default value is 25
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the SharedSecret input for this Choreo. 
      # 
      # @param String - (required, string) The Shared Secret provided by Netflix (AKA the OAuth Consumer Secret).
      ###

      def set_SharedSecret(value)
        set_input("SharedSecret", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The offset number of the results from the query.
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end
      #### 
      # Set the value of the Term input for this Choreo. 
      # 
      # @param String - (required, string) Enter a word or phrase to search for in the instant-watch catalog. The Netflix API searches for matching titles and synopses in the catalog.
      ###

      def set_Term(value)
        set_input("Term", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchTitleCatalog Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchTitleCatalogResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (xml) The response from Netflix.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchTitleCatalog




end # module Netflix