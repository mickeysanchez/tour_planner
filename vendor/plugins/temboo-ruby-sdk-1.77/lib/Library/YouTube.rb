require "temboo"

module YouTube




  module Activities



    ##############################################################################
    #
    # InsertActivity
    #
    # Posts a bulletin for a specific channel.
    #
    ##############################################################################

    class InsertActivity < Choreography

      ####
      #  Create a new instance of the InsertActivity Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Activities/InsertActivity")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return InsertActivityInputSet
      ####
      def new_input_set()
        return InsertActivityInputSet.new()
      end

      def make_result_set()
        return InsertActivityResultSet.new()
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
        results = InsertActivityResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the InsertActivity
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class InsertActivityInputSet < Choreography::InputSet

        #### 
        # Set the value of the ActivityMetadata input for this Choreo. 
        # 
        # @param String - (required, json) A JSON representation of the activity resource to create. See documentation for examples.
        ###

        def set_ActivityMetadata(value)
          set_input("ActivityMetadata", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields that are being set and that will be returned in the response. Part names that can be passed are: snippet and contentDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the InsertActivity Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class InsertActivityResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from Google.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class InsertActivity



    ##############################################################################
    #
    # ListActivitiesByChannel
    #
    # Returns a list of activities for a specified channel.
    #
    ##############################################################################

    class ListActivitiesByChannel < Choreography

      ####
      #  Create a new instance of the ListActivitiesByChannel Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Activities/ListActivitiesByChannel")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListActivitiesByChannelInputSet
      ####
      def new_input_set()
        return ListActivitiesByChannelInputSet.new()
      end

      def make_result_set()
        return ListActivitiesByChannelResultSet.new()
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
        results = ListActivitiesByChannelResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListActivitiesByChannel
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListActivitiesByChannelInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ChannelID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the channel to list activities for.
        ###

        def set_ChannelID(value)
          set_input("ChannelID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of one or more activity resource properties that the API response will include. Part names that you can pass are id, snippet, and contentDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the PublishedAfter input for this Choreo. 
        # 
        # @param String - (optional, date) Returns only results created after the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
        ###

        def set_PublishedAfter(value)
          set_input("PublishedAfter", value)
        end
        #### 
        # Set the value of the PublishedBefore input for this Choreo. 
        # 
        # @param String - (optional, date) Returns only results created before the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
        ###

        def set_PublishedBefore(value)
          set_input("PublishedBefore", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListActivitiesByChannel Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListActivitiesByChannelResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from YouTube.
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

    end # class ListActivitiesByChannel



    ##############################################################################
    #
    # ListHomePageActivities
    #
    # Returns an activity feed that displays on the YouTube home page for the currently authenticated user.
    #
    ##############################################################################

    class ListHomePageActivities < Choreography

      ####
      #  Create a new instance of the ListHomePageActivities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Activities/ListHomePageActivities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListHomePageActivitiesInputSet
      ####
      def new_input_set()
        return ListHomePageActivitiesInputSet.new()
      end

      def make_result_set()
        return ListHomePageActivitiesResultSet.new()
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
        results = ListHomePageActivitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListHomePageActivities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListHomePageActivitiesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of one or more activity resource properties that the API response will include. Part names that you can pass are id, snippet, and contentDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the PublishedAfter input for this Choreo. 
        # 
        # @param String - (optional, date) Returns only results created after the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
        ###

        def set_PublishedAfter(value)
          set_input("PublishedAfter", value)
        end
        #### 
        # Set the value of the PublishedBefore input for this Choreo. 
        # 
        # @param String - (optional, date) Returns only results created before the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
        ###

        def set_PublishedBefore(value)
          set_input("PublishedBefore", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListHomePageActivities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListHomePageActivitiesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from YouTube.
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

    end # class ListHomePageActivities



    ##############################################################################
    #
    # ListMyActivities
    #
    # Returns a list of activity events for the authenticated user.
    #
    ##############################################################################

    class ListMyActivities < Choreography

      ####
      #  Create a new instance of the ListMyActivities Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Activities/ListMyActivities")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListMyActivitiesInputSet
      ####
      def new_input_set()
        return ListMyActivitiesInputSet.new()
      end

      def make_result_set()
        return ListMyActivitiesResultSet.new()
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
        results = ListMyActivitiesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListMyActivities
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListMyActivitiesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of one or more activity resource properties that the API response will include. Part names that you can pass are id, snippet, and contentDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the PublishedAfter input for this Choreo. 
        # 
        # @param String - (optional, date) Returns only results created after the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
        ###

        def set_PublishedAfter(value)
          set_input("PublishedAfter", value)
        end
        #### 
        # Set the value of the PublishedBefore input for this Choreo. 
        # 
        # @param String - (optional, date) Returns only results created before the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
        ###

        def set_PublishedBefore(value)
          set_input("PublishedBefore", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListMyActivities Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListMyActivitiesResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from YouTube.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListMyActivities




  end # module Activities

  module Channels



    ##############################################################################
    #
    # ListChannelsByCategory
    #
    # Returns a list of channels associated with a particular category.
    #
    ##############################################################################

    class ListChannelsByCategory < Choreography

      ####
      #  Create a new instance of the ListChannelsByCategory Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Channels/ListChannelsByCategory")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListChannelsByCategoryInputSet
      ####
      def new_input_set()
        return ListChannelsByCategoryInputSet.new()
      end

      def make_result_set()
        return ListChannelsByCategoryResultSet.new()
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
        results = ListChannelsByCategoryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListChannelsByCategory
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListChannelsByCategoryInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a category. Indicates that only channels associated with a particular category should be returned.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of channels resource properties that the API response will include. Part names that you can pass are: id, snippet, contentDetails, statistics, and topicDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListChannelsByCategory Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListChannelsByCategoryResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from YouTube.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListChannelsByCategory



    ##############################################################################
    #
    # ListChannelsByID
    #
    # Returns a list of channels that match the list of IDs provided.
    #
    ##############################################################################

    class ListChannelsByID < Choreography

      ####
      #  Create a new instance of the ListChannelsByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Channels/ListChannelsByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListChannelsByIDInputSet
      ####
      def new_input_set()
        return ListChannelsByIDInputSet.new()
      end

      def make_result_set()
        return ListChannelsByIDResultSet.new()
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
        results = ListChannelsByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListChannelsByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListChannelsByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ChannelID input for this Choreo. 
        # 
        # @param String - (required, string) A comma-separated list of the YouTube channel ID(s) for the resource(s) that are being retrieved.
        ###

        def set_ChannelID(value)
          set_input("ChannelID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of channels resource properties that the API response will include. Part names that you can pass are: id, snippet, contentDetails, statistics, and topicDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListChannelsByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListChannelsByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from YouTube.
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

    end # class ListChannelsByID



    ##############################################################################
    #
    # ListMyChannels
    #
    # Returns a list of channels owned by the authenticated user.
    #
    ##############################################################################

    class ListMyChannels < Choreography

      ####
      #  Create a new instance of the ListMyChannels Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Channels/ListMyChannels")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListMyChannelsInputSet
      ####
      def new_input_set()
        return ListMyChannelsInputSet.new()
      end

      def make_result_set()
        return ListMyChannelsResultSet.new()
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
        results = ListMyChannelsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListMyChannels
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListMyChannelsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of channels resource properties that the API response will include. Part names that you can pass are: id, snippet, contentDetails, statistics, and topicDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListMyChannels Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListMyChannelsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from YouTube.
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

    end # class ListMyChannels



    ##############################################################################
    #
    # ListMySubscribers
    #
    # Returns a list of channels that have subscribed to the authenticated user's channel.
    #
    ##############################################################################

    class ListMySubscribers < Choreography

      ####
      #  Create a new instance of the ListMySubscribers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Channels/ListMySubscribers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListMySubscribersInputSet
      ####
      def new_input_set()
        return ListMySubscribersInputSet.new()
      end

      def make_result_set()
        return ListMySubscribersResultSet.new()
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
        results = ListMySubscribersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListMySubscribers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListMySubscribersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of channels resource properties that the API response will include. Part names that you can pass are: id, snippet, contentDetails, statistics, and topicDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListMySubscribers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListMySubscribersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from YouTube.
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

    end # class ListMySubscribers




  end # module Channels
  ##############################################################################
  #
  # FilterSearchResults
  #
  # Retrieve specific data fields for videos that match a search term.
  #
  ##############################################################################

  class FilterSearchResults < Choreography

    ####
    #  Create a new instance of the FilterSearchResults Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/YouTube/FilterSearchResults")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return FilterSearchResultsInputSet
    ####
    def new_input_set()
      return FilterSearchResultsInputSet.new()
    end

    def make_result_set()
      return FilterSearchResultsResultSet.new()
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
      results = FilterSearchResultsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the FilterSearchResults
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class FilterSearchResultsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Callback input for this Choreo. 
      # 
      # @param String - (optional, string) Value to identify the callback function to which the API response will be sent. Only necessary when ResponseFormat is json-in-script.
      ###

      def set_Callback(value)
        set_input("Callback", value)
      end
      #### 
      # Set the value of the FieldsToReturn input for this Choreo. 
      # 
      # @param String - (required, string) Specify the fields and conditions to return in the result set.
      ###

      def set_FieldsToReturn(value)
        set_input("FieldsToReturn", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum number of results to return. The default value is 10, the maximum value is 50.
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) A feed search query term, including title, keyword, description, authors' username, or category. Enclose in quotation marks for an exact match.
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from YouTube. Accepts atom, rss, json, json-in-script, and jsonc. Defaults to atom.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the first matching result to return. Uses a one-based index (the first result is 1 by default).
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the FilterSearchResults Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class FilterSearchResultsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from YouTube.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class FilterSearchResults



  ##############################################################################
  #
  # GetLiveEvents
  #
  # Retrieve a list of live video events.
  #
  ##############################################################################

  class GetLiveEvents < Choreography

    ####
    #  Create a new instance of the GetLiveEvents Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/YouTube/GetLiveEvents")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetLiveEventsInputSet
    ####
    def new_input_set()
      return GetLiveEventsInputSet.new()
    end

    def make_result_set()
      return GetLiveEventsResultSet.new()
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
      results = GetLiveEventsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetLiveEvents
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetLiveEventsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Callback input for this Choreo. 
      # 
      # @param String - (optional, string) Value to identify the callback function to which the API response will be sent. Only necessary when ResponseFormat is json-in-script.
      ###

      def set_Callback(value)
        set_input("Callback", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum number of results to return. The default value is 10, the maximum value is 50.
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from YouTube. Accepts atom, rss, json, json-in-script, and jsonc. Defaults to atom.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the first matching result to return. Uses a one-based index (the first result is 1 by default).
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (required, string) Specify the kind of live YouTube event list to retrieve: featured, live_now, upcoming, or recently_broadcasted.
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetLiveEvents Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetLiveEventsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from YouTube.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetLiveEvents



  ##############################################################################
  #
  # GetStandardFeeds
  #
  # Retrieve a list of videos that reflect YouTube user behavior, or that were selected by YouTube staff.
  #
  ##############################################################################

  class GetStandardFeeds < Choreography

    ####
    #  Create a new instance of the GetStandardFeeds Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/YouTube/GetStandardFeeds")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetStandardFeedsInputSet
    ####
    def new_input_set()
      return GetStandardFeedsInputSet.new()
    end

    def make_result_set()
      return GetStandardFeedsResultSet.new()
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
      results = GetStandardFeedsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetStandardFeeds
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetStandardFeedsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Callback input for this Choreo. 
      # 
      # @param String - (optional, string) Value to identify the callback function to which the API response will be sent. Only necessary when ResponseFormat is json-in-script.
      ###

      def set_Callback(value)
        set_input("Callback", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum number of results to return. The default value is 10, the maximum value is 50.
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from YouTube. Accepts atom, rss, json, json-in-script, and jsonc. Defaults to atom.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the first matching result to return. Uses a one-based index (the first result is 1 by default).
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end
      #### 
      # Set the value of the Time input for this Choreo. 
      # 
      # @param String - (optional, string) Restrict the response to results relevant to the specified time frame. Valid values: today, this_week, this_month, and all_time (the default)
      ###

      def set_Time(value)
        set_input("Time", value)
      end
      #### 
      # Set the value of the Type input for this Choreo. 
      # 
      # @param String - (required, string) Enter top_rated, top_favorites, most_viewed, most_shared, most_popular, most_recent, most_discussed, most_responded, recently_featured, or on_the_web.
      ###

      def set_Type(value)
        set_input("Type", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetStandardFeeds Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetStandardFeedsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from YouTube.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetStandardFeeds



  ##############################################################################
  #
  # GetTrendingVideos
  #
  # Retrieves Movies and Trailers videos that have had the greatest increases in popularity.
  #
  ##############################################################################

  class GetTrendingVideos < Choreography

    ####
    #  Create a new instance of the GetTrendingVideos Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/YouTube/GetTrendingVideos")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetTrendingVideosInputSet
    ####
    def new_input_set()
      return GetTrendingVideosInputSet.new()
    end

    def make_result_set()
      return GetTrendingVideosResultSet.new()
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
      results = GetTrendingVideosResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetTrendingVideos
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetTrendingVideosInputSet < Choreography::InputSet

      #### 
      # Set the value of the Callback input for this Choreo. 
      # 
      # @param String - (optional, string) Value to identify the callback function to which the API response will be sent. Only necessary when ResponseFormat is json-in-script.
      ###

      def set_Callback(value)
        set_input("Callback", value)
      end
      #### 
      # Set the value of the PaidContent input for this Choreo. 
      # 
      # @param Boolean - (optional, boolean) Restrict the search to only include paid content ("true") or to include both paid and free content ("false", the default).
      ###

      def set_PaidContent(value)
        set_input("PaidContent", value)
      end
      #### 
      # Set the value of the Region input for this Choreo. 
      # 
      # @param String - (optional, string) Restrict search to movies viewable in a specific region (defaults to "US"). Required for paid-content-only searches.
      ###

      def set_Region(value)
        set_input("Region", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from YouTube. Accepts atom, rss, json, json-in-script, and jsonc. Defaults to atom.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetTrendingVideos Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetTrendingVideosResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from YouTube.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetTrendingVideos



  ##############################################################################
  #
  # GetVideoData
  #
  # Retrieve information about a single video using its ID.
  #
  ##############################################################################

  class GetVideoData < Choreography

    ####
    #  Create a new instance of the GetVideoData Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/YouTube/GetVideoData")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetVideoDataInputSet
    ####
    def new_input_set()
      return GetVideoDataInputSet.new()
    end

    def make_result_set()
      return GetVideoDataResultSet.new()
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
      results = GetVideoDataResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetVideoData
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetVideoDataInputSet < Choreography::InputSet

      #### 
      # Set the value of the Callback input for this Choreo. 
      # 
      # @param String - (optional, string) Value to identify the callback function to which the API response will be sent. Only necessary when ResponseFormat is json-in-script.
      ###

      def set_Callback(value)
        set_input("Callback", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from YouTube. Accepts atom, rss, json, json-in-script, and jsonc. Defaults to atom.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the VideoID input for this Choreo. 
      # 
      # @param String - (required, string) The unique ID given to a video by YouTube.
      ###

      def set_VideoID(value)
        set_input("VideoID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetVideoData Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetVideoDataResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from YouTube.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetVideoData




  module GuideCategories



    ##############################################################################
    #
    # ListGuideCategoriesByID
    #
    # Returns a list of categories that match the IDs provided.
    #
    ##############################################################################

    class ListGuideCategoriesByID < Choreography

      ####
      #  Create a new instance of the ListGuideCategoriesByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/GuideCategories/ListGuideCategoriesByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListGuideCategoriesByIDInputSet
      ####
      def new_input_set()
        return ListGuideCategoriesByIDInputSet.new()
      end

      def make_result_set()
        return ListGuideCategoriesByIDResultSet.new()
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
        results = ListGuideCategoriesByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListGuideCategoriesByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListGuideCategoriesByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the GuideCategoryID input for this Choreo. 
        # 
        # @param String - (conditional, string) A comma-separated list of the YouTube channel category ID(s) for the resource(s) that are being retrieved.
        ###

        def set_GuideCategoryID(value)
          set_input("GuideCategoryID", value)
        end
        #### 
        # Set the value of the H1 input for this Choreo. 
        # 
        # @param String - (optional, string) The hl parameter specifies the language that should be used for text values in the API response. The default value is en_US.
        ###

        def set_H1(value)
          set_input("H1", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of one or more guideCategory resource properties that the API response will include. Valid values are: id and snippet.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListGuideCategoriesByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListGuideCategoriesByIDResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from YouTube.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListGuideCategoriesByID



    ##############################################################################
    #
    # ListGuideCategoriesByRegion
    #
    # Returns a list of guide categories available in the specified country.
    #
    ##############################################################################

    class ListGuideCategoriesByRegion < Choreography

      ####
      #  Create a new instance of the ListGuideCategoriesByRegion Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/GuideCategories/ListGuideCategoriesByRegion")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListGuideCategoriesByRegionInputSet
      ####
      def new_input_set()
        return ListGuideCategoriesByRegionInputSet.new()
      end

      def make_result_set()
        return ListGuideCategoriesByRegionResultSet.new()
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
        results = ListGuideCategoriesByRegionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListGuideCategoriesByRegion
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListGuideCategoriesByRegionInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the H1 input for this Choreo. 
        # 
        # @param String - (optional, string) The hl parameter specifies the language that should be used for text values in the API response. The default value is en_US.
        ###

        def set_H1(value)
          set_input("H1", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of one or more guideCategory resource properties that the API response will include. Valid values are: id and snippet.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the RegionCode input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates to return the list of guide categories available in the specified country. The parameter value is an ISO 3166-1 alpha-2 country code. Defaults to US.
        ###

        def set_RegionCode(value)
          set_input("RegionCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListGuideCategoriesByRegion Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListGuideCategoriesByRegionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from YouTube.
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

    end # class ListGuideCategoriesByRegion




  end # module GuideCategories

  module PlaylistItems



    ##############################################################################
    #
    # InsertItem
    #
    # Creates a new item within a playlist.
    #
    ##############################################################################

    class InsertItem < Choreography

      ####
      #  Create a new instance of the InsertItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/PlaylistItems/InsertItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return InsertItemInputSet
      ####
      def new_input_set()
        return InsertItemInputSet.new()
      end

      def make_result_set()
        return InsertItemResultSet.new()
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
        results = InsertItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the InsertItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class InsertItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields that are being set and that will be returned in the response. Part names that can be passed are: snippet and contentDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the PlaylistID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the playlist to add an item to.
        ###

        def set_PlaylistID(value)
          set_input("PlaylistID", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the VideoID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the video to add to the playlist.
        ###

        def set_VideoID(value)
          set_input("VideoID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the InsertItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class InsertItemResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from Google.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class InsertItem



    ##############################################################################
    #
    # ListItemsByID
    #
    # Returns a collection of playlist items that match the list of IDs provided.
    #
    ##############################################################################

    class ListItemsByID < Choreography

      ####
      #  Create a new instance of the ListItemsByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/PlaylistItems/ListItemsByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListItemsByIDInputSet
      ####
      def new_input_set()
        return ListItemsByIDInputSet.new()
      end

      def make_result_set()
        return ListItemsByIDResultSet.new()
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
        results = ListItemsByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListItemsByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListItemsByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (conditional, string) A comma-separated list of IDs for playlist items to retrieve.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of playlistItem resource properties that the API response will include. Part names that you can pass are: id, snippet, and contentDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the VideoID input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates that only the playlist items that contain the specified video should be returned.
        ###

        def set_VideoID(value)
          set_input("VideoID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListItemsByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListItemsByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from YouTube.
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

    end # class ListItemsByID



    ##############################################################################
    #
    # ListItemsByPlaylist
    #
    # Returns a collection of playlist items within a specific playlist.
    #
    ##############################################################################

    class ListItemsByPlaylist < Choreography

      ####
      #  Create a new instance of the ListItemsByPlaylist Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/PlaylistItems/ListItemsByPlaylist")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListItemsByPlaylistInputSet
      ####
      def new_input_set()
        return ListItemsByPlaylistInputSet.new()
      end

      def make_result_set()
        return ListItemsByPlaylistResultSet.new()
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
        results = ListItemsByPlaylistResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListItemsByPlaylist
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListItemsByPlaylistInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of playlistItem resource properties that the API response will include. Part names that you can pass are: id, snippet, and contentDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the PlaylistID input for this Choreo. 
        # 
        # @param String - (conditional, string) A unique ID of the playlist for which you want to retrieve playlist items.
        ###

        def set_PlaylistID(value)
          set_input("PlaylistID", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the VideoID input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates that only the playlist items that contain the specified video should be returned.
        ###

        def set_VideoID(value)
          set_input("VideoID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListItemsByPlaylist Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListItemsByPlaylistResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from YouTube.
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

    end # class ListItemsByPlaylist




  end # module PlaylistItems

  module Playlists



    ##############################################################################
    #
    # DeletePlaylist
    #
    # Deletes a YouTube playlist.
    #
    ##############################################################################

    class DeletePlaylist < Choreography

      ####
      #  Create a new instance of the DeletePlaylist Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Playlists/DeletePlaylist")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeletePlaylistInputSet
      ####
      def new_input_set()
        return DeletePlaylistInputSet.new()
      end

      def make_result_set()
        return DeletePlaylistResultSet.new()
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
        results = DeletePlaylistResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeletePlaylist
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeletePlaylistInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the PlaylistID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the playlist to delete.
        ###

        def set_PlaylistID(value)
          set_input("PlaylistID", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeletePlaylist Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeletePlaylistResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from Google.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeletePlaylist



    ##############################################################################
    #
    # InsertPlaylist
    #
    # Creates a playlist.
    #
    ##############################################################################

    class InsertPlaylist < Choreography

      ####
      #  Create a new instance of the InsertPlaylist Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Playlists/InsertPlaylist")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return InsertPlaylistInputSet
      ####
      def new_input_set()
        return InsertPlaylistInputSet.new()
      end

      def make_result_set()
        return InsertPlaylistResultSet.new()
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
        results = InsertPlaylistResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the InsertPlaylist
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class InsertPlaylistInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) The playlist's description.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields that are being set and that will be returned in the response (i.e. snippet,status).
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the PrivacyStatus input for this Choreo. 
        # 
        # @param String - (optional, string) The playlist's privacy status. Valid values are: private or public.
        ###

        def set_PrivacyStatus(value)
          set_input("PrivacyStatus", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (required, string) The title of the playlist.
        ###

        def set_Title(value)
          set_input("Title", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the InsertPlaylist Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class InsertPlaylistResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Google.
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

    end # class InsertPlaylist



    ##############################################################################
    #
    # ListMyPlaylists
    #
    # Returns a collection of playlists owned by the authenticated user.
    #
    ##############################################################################

    class ListMyPlaylists < Choreography

      ####
      #  Create a new instance of the ListMyPlaylists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Playlists/ListMyPlaylists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListMyPlaylistsInputSet
      ####
      def new_input_set()
        return ListMyPlaylistsInputSet.new()
      end

      def make_result_set()
        return ListMyPlaylistsResultSet.new()
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
        results = ListMyPlaylistsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListMyPlaylists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListMyPlaylistsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of playlist resource properties that the API response will include. Part names that you can pass are: id, snippet, and status.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListMyPlaylists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListMyPlaylistsResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from YouTube.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListMyPlaylists



    ##############################################################################
    #
    # ListPlaylistsByChannel
    #
    # Returns a collection of playlists associated with a specified channel.
    #
    ##############################################################################

    class ListPlaylistsByChannel < Choreography

      ####
      #  Create a new instance of the ListPlaylistsByChannel Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Playlists/ListPlaylistsByChannel")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPlaylistsByChannelInputSet
      ####
      def new_input_set()
        return ListPlaylistsByChannelInputSet.new()
      end

      def make_result_set()
        return ListPlaylistsByChannelResultSet.new()
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
        results = ListPlaylistsByChannelResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPlaylistsByChannel
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPlaylistsByChannelInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ChannelID input for this Choreo. 
        # 
        # @param String - (required, string) Indicates that only the specified channel's playlists should be returned.
        ###

        def set_ChannelID(value)
          set_input("ChannelID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of playlist resource properties that the API response will include. Part names that you can pass are: id, snippet, and status.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPlaylistsByChannel Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPlaylistsByChannelResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from YouTube.
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

    end # class ListPlaylistsByChannel



    ##############################################################################
    #
    # ListPlaylistsByID
    #
    # Returns a collection of playlists that match the provided IDs.
    #
    ##############################################################################

    class ListPlaylistsByID < Choreography

      ####
      #  Create a new instance of the ListPlaylistsByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Playlists/ListPlaylistsByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListPlaylistsByIDInputSet
      ####
      def new_input_set()
        return ListPlaylistsByIDInputSet.new()
      end

      def make_result_set()
        return ListPlaylistsByIDResultSet.new()
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
        results = ListPlaylistsByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListPlaylistsByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListPlaylistsByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of playlist resource properties that the API response will include. Part names that you can pass are: id, snippet, and status.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the PlaylistID input for this Choreo. 
        # 
        # @param String - (required, string) A comma-separated list of the YouTube playlist ID(s) for the resource(s) that are being retrieved.
        ###

        def set_PlaylistID(value)
          set_input("PlaylistID", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListPlaylistsByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListPlaylistsByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from YouTube.
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

    end # class ListPlaylistsByID



    ##############################################################################
    #
    # UpdatePlaylist
    #
    # Updates a playlist.
    #
    ##############################################################################

    class UpdatePlaylist < Choreography

      ####
      #  Create a new instance of the UpdatePlaylist Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Playlists/UpdatePlaylist")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdatePlaylistInputSet
      ####
      def new_input_set()
        return UpdatePlaylistInputSet.new()
      end

      def make_result_set()
        return UpdatePlaylistResultSet.new()
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
        results = UpdatePlaylistResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdatePlaylist
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdatePlaylistInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) The playlist's description.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields that are being set and that will be returned in the response (i.e. snippet,status).
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the PlaylistID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the playlist to update.
        ###

        def set_PlaylistID(value)
          set_input("PlaylistID", value)
        end
        #### 
        # Set the value of the PrivacyStatus input for this Choreo. 
        # 
        # @param String - (optional, string) The playlist's privacy status. Valid values are: private or public.
        ###

        def set_PrivacyStatus(value)
          set_input("PrivacyStatus", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the Title input for this Choreo. 
        # 
        # @param String - (required, string) The title of the playlist.
        ###

        def set_Title(value)
          set_input("Title", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdatePlaylist Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdatePlaylistResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Google.
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

    end # class UpdatePlaylist




  end # module Playlists
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
      super(session, "/Library/YouTube/RefreshToken")
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
      # Set the value of the ClientId input for this Choreo. 
      # 
      # @param String - (required, string) The client id provided by Google Pacasa when you sign up for an account
      ###

      def set_ClientId(value)
        set_input("ClientId", value)
      end
      #### 
      # Set the value of the ClientSecret input for this Choreo. 
      # 
      # @param String - (required, string) The client secret provided by Google Picasa when you sign up for an account
      ###

      def set_ClientSecret(value)
        set_input("ClientSecret", value)
      end
      #### 
      # Set the value of the RefreshToken input for this Choreo. 
      # 
      # @param String - (required, string) The refresh token retrieved in the Oauth process to be used when your access token expires
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
    	# @return String - (string) The access token that is parsed from the request to refresh the token
    	####
    	def get_AccessToken()
    	  return @outputs["AccessToken"]
    	end
    end

  end # class RefreshToken




  module Search



    ##############################################################################
    #
    # ListSearchResults
    #
    # Returns a list of search results that match the specified query parameters.
    #
    ##############################################################################

    class ListSearchResults < Choreography

      ####
      #  Create a new instance of the ListSearchResults Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Search/ListSearchResults")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListSearchResultsInputSet
      ####
      def new_input_set()
        return ListSearchResultsInputSet.new()
      end

      def make_result_set()
        return ListSearchResultsResultSet.new()
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
        results = ListSearchResultsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListSearchResults
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListSearchResultsInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ChannelID input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates that the response should only contain resources created by this channel.
        ###

        def set_ChannelID(value)
          set_input("ChannelID", value)
        end
        #### 
        # Set the value of the ChannelType input for this Choreo. 
        # 
        # @param String - (optional, string) Restricts a search to a particular type of channel. Valid values are: "any" (returns all channels) and "show" (only retrieves shows).
        ###

        def set_ChannelType(value)
          set_input("ChannelType", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (optional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (optional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates how the results are sorted. Valid values are: date, rating, relevance, and viewCount.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies a comma-separated list of one or more search resource properties that the API response will include. Part names that you can pass are 'id' and 'snippet' (the default).
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the PublishedAfter input for this Choreo. 
        # 
        # @param String - (optional, date) Returns only results created after the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
        ###

        def set_PublishedAfter(value)
          set_input("PublishedAfter", value)
        end
        #### 
        # Set the value of the PublishedBefore input for this Choreo. 
        # 
        # @param String - (optional, date) Returns only results created before the specified time (formatted as a RFC 3339 date-time i.e. 1970-01-01T00:00:00Z).
        ###

        def set_PublishedBefore(value)
          set_input("PublishedBefore", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (conditional, string) A query string for searching videos.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (optional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the RegionCode input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results for the specified country. The parameter value is an ISO 3166-1 alpha-2 country code.
        ###

        def set_RegionCode(value)
          set_input("RegionCode", value)
        end
        #### 
        # Set the value of the RelatedToVideoID input for this Choreo. 
        # 
        # @param String - (optional, string) Retrieves a list of videos that are related to this video id. When using this parameter, the Type parameter must be set to video.
        ###

        def set_RelatedToVideoID(value)
          set_input("RelatedToVideoID", value)
        end
        #### 
        # Set the value of the TopicID input for this Choreo. 
        # 
        # @param String - (optional, string) Returns only results associated with the specified topic.
        ###

        def set_TopicID(value)
          set_input("TopicID", value)
        end
        #### 
        # Set the value of the Type input for this Choreo. 
        # 
        # @param String - (optional, string) Restricts a search query to only retrieve a particular type of resource. The default value is: video,channel,playlist.
        ###

        def set_Type(value)
          set_input("Type", value)
        end
        #### 
        # Set the value of the VideoCaption input for this Choreo. 
        # 
        # @param String - (optional, string) Returns filtered results based on whether videos have captions. Valid values are: any (the default), closedCaption (only returns videos with captions), or none (only returns videos without captions).
        ###

        def set_VideoCaption(value)
          set_input("VideoCaption", value)
        end
        #### 
        # Set the value of the VideoCategoryID input for this Choreo. 
        # 
        # @param String - (optional, string) Filters video search results based on their category.
        ###

        def set_VideoCategoryID(value)
          set_input("VideoCategoryID", value)
        end
        #### 
        # Set the value of the VideoDefinition input for this Choreo. 
        # 
        # @param String - (optional, string) Filters video results based high or standard definition. Valid values are: any, high, or standard.
        ###

        def set_VideoDefinition(value)
          set_input("VideoDefinition", value)
        end
        #### 
        # Set the value of the VideoDimension input for this Choreo. 
        # 
        # @param String - (optional, string) Restrict a search to only retrieve 2D or 3D videos. Valid values are: 2d, 3d, or any.
        ###

        def set_VideoDimension(value)
          set_input("VideoDimension", value)
        end
        #### 
        # Set the value of the VideoDuration input for this Choreo. 
        # 
        # @param String - (optional, string) Filters search results based on the video duration. Valid values are: any, long, medium, and short.
        ###

        def set_VideoDuration(value)
          set_input("VideoDuration", value)
        end
        #### 
        # Set the value of the VideoEmbeddable input for this Choreo. 
        # 
        # @param String - (optional, string) Filters search results to include only videos that can be embedded into a webpage. Valid values are: any (the default) or true (which will enable this filter).
        ###

        def set_VideoEmbeddable(value)
          set_input("VideoEmbeddable", value)
        end
        #### 
        # Set the value of the VideoLicense input for this Choreo. 
        # 
        # @param String - (optional, string) Filters search results to only include videos with a particular license. Valid values are: any, creativeCommon, and youtube.
        ###

        def set_VideoLicense(value)
          set_input("VideoLicense", value)
        end
        #### 
        # Set the value of the VideoSyndicated input for this Choreo. 
        # 
        # @param String - (optional, string) Filters search results for videos that can be played outside of youtube.com. Valid values are: any (the default) or true (which will enable this filter).
        ###

        def set_VideoSyndicated(value)
          set_input("VideoSyndicated", value)
        end
        #### 
        # Set the value of the VideoType input for this Choreo. 
        # 
        # @param String - (optional, string) Filters search results to a particular type of videos. Valid values are: any, episode, and movie.
        ###

        def set_VideoType(value)
          set_input("VideoType", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListSearchResults Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListSearchResultsResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from YouTube.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListSearchResults




  end # module Search
  ##############################################################################
  #
  # SearchByCategory
  #
  # Retrieve a list of videos in a specified category.
  #
  ##############################################################################

  class SearchByCategory < Choreography

    ####
    #  Create a new instance of the SearchByCategory Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/YouTube/SearchByCategory")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchByCategoryInputSet
    ####
    def new_input_set()
      return SearchByCategoryInputSet.new()
    end

    def make_result_set()
      return SearchByCategoryResultSet.new()
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
      results = SearchByCategoryResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchByCategory
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchByCategoryInputSet < Choreography::InputSet

      #### 
      # Set the value of the Callback input for this Choreo. 
      # 
      # @param String - (optional, string) Value to identify the callback function to which the API response will be sent. Only necessary when ResponseFormat is json-in-script.
      ###

      def set_Callback(value)
        set_input("Callback", value)
      end
      #### 
      # Set the value of the Category input for this Choreo. 
      # 
      # @param String - (required, string) A valid YouTube video category name, entered with the first letter capitalized.
      ###

      def set_Category(value)
        set_input("Category", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum number of results to return. The default value is 10, the maximum value is 50.
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from YouTube. Accepts atom, rss, json, json-in-script, and jsonc. Defaults to atom.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the first matching result to return. Uses a one-based index (the first result is 1 by default).
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchByCategory Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchByCategoryResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from YouTube.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchByCategory



  ##############################################################################
  #
  # SearchByKeyword
  #
  # Retrieve a list of videos to which a specified keyword has been assigned.
  #
  ##############################################################################

  class SearchByKeyword < Choreography

    ####
    #  Create a new instance of the SearchByKeyword Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/YouTube/SearchByKeyword")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchByKeywordInputSet
    ####
    def new_input_set()
      return SearchByKeywordInputSet.new()
    end

    def make_result_set()
      return SearchByKeywordResultSet.new()
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
      results = SearchByKeywordResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchByKeyword
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchByKeywordInputSet < Choreography::InputSet

      #### 
      # Set the value of the Callback input for this Choreo. 
      # 
      # @param String - (optional, string) Value to identify the callback function to which the API response will be sent. Only necessary when ResponseFormat is json-in-script.
      ###

      def set_Callback(value)
        set_input("Callback", value)
      end
      #### 
      # Set the value of the Keyword input for this Choreo. 
      # 
      # @param String - (required, string) A keyword associated with a  video, entered in all lowercase letters. Separate multiple keywords with commas (but no spaces).
      ###

      def set_Keyword(value)
        set_input("Keyword", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum number of results to return. The default value is 10, the maximum value is 50.
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from YouTube. Accepts atom, rss, json, json-in-script, and jsonc. Defaults to atom.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the first matching result to return. Uses a one-based index (the first result is 1 by default).
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchByKeyword Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchByKeywordResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from YouTube.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchByKeyword



  ##############################################################################
  #
  # SearchChannels
  #
  # Retrieve a list of video channels.
  #
  ##############################################################################

  class SearchChannels < Choreography

    ####
    #  Create a new instance of the SearchChannels Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/YouTube/SearchChannels")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchChannelsInputSet
    ####
    def new_input_set()
      return SearchChannelsInputSet.new()
    end

    def make_result_set()
      return SearchChannelsResultSet.new()
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
      results = SearchChannelsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchChannels
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchChannelsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Callback input for this Choreo. 
      # 
      # @param String - (optional, string) Value to identify the callback function to which the API response will be sent. Only necessary when ResponseFormat is json-in-script.
      ###

      def set_Callback(value)
        set_input("Callback", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum number of results to return. The default value is 10, the maximum value is 50.
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) A search query term, such as a title, keyword, description, author's username, or category. Enclose in quotation marks for an exact match.
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from YouTube. Accepts atom, rss, json, json-in-script, and jsonc. Defaults to atom.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the first matching result to return. Uses a one-based index (the first result is 1 by default).
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchChannels Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchChannelsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from YouTube.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchChannels



  ##############################################################################
  #
  # SearchPlaylists
  #
  # Retrieve a list of playlists matching a search term.
  #
  ##############################################################################

  class SearchPlaylists < Choreography

    ####
    #  Create a new instance of the SearchPlaylists Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/YouTube/SearchPlaylists")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchPlaylistsInputSet
    ####
    def new_input_set()
      return SearchPlaylistsInputSet.new()
    end

    def make_result_set()
      return SearchPlaylistsResultSet.new()
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
      results = SearchPlaylistsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchPlaylists
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchPlaylistsInputSet < Choreography::InputSet

      #### 
      # Set the value of the Callback input for this Choreo. 
      # 
      # @param String - (optional, string) Value to identify the callback function to which the API response will be sent. Only necessary when ResponseFormat is json-in-script.
      ###

      def set_Callback(value)
        set_input("Callback", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum number of results to return. The default value is 10, the maximum value is 50.
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the Playlist input for this Choreo. 
      # 
      # @param String - (required, string) The name of a playlist to search for. Separate multiple playlist names with commas (but no spaces).
      ###

      def set_Playlist(value)
        set_input("Playlist", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (required, string) The format of the response from YouTube. Accepts atom, rss, json, json-in-script, and jsonc. Defaults to atom.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the first matching result to return. Uses a one-based index (the first result is 1 by default).
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchPlaylists Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchPlaylistsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from YouTube.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchPlaylists



  ##############################################################################
  #
  # SearchVideos
  #
  # Retrieve a list of videos matching a specified search term.
  #
  ##############################################################################

  class SearchVideos < Choreography

    ####
    #  Create a new instance of the SearchVideos Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/YouTube/SearchVideos")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchVideosInputSet
    ####
    def new_input_set()
      return SearchVideosInputSet.new()
    end

    def make_result_set()
      return SearchVideosResultSet.new()
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
      results = SearchVideosResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchVideos
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchVideosInputSet < Choreography::InputSet

      #### 
      # Set the value of the Callback input for this Choreo. 
      # 
      # @param String - (optional, string) Value to identify the callback function to which the API response will be sent. Only necessary when ResponseFormat is json-in-script.
      ###

      def set_Callback(value)
        set_input("Callback", value)
      end
      #### 
      # Set the value of the MaxResults input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the maximum number of results to return. The default value is 10, the maximum value is 50.
      ###

      def set_MaxResults(value)
        set_input("MaxResults", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) A search query term, including title, keyword, description, author's username, or category. Enclose in quotation marks for an for an exact match.
      ###

      def set_Query(value)
        set_input("Query", value)
      end
      #### 
      # Set the value of the ResponseFormat input for this Choreo. 
      # 
      # @param String - (optional, string) The format of the response from YouTube. Accepts atom, rss, json, json-in-script, and jsonc. Defaults to atom.
      ###

      def set_ResponseFormat(value)
        set_input("ResponseFormat", value)
      end
      #### 
      # Set the value of the StartIndex input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Specify the first matching result to return. Uses a one-based index (the first result is 1 by default).
      ###

      def set_StartIndex(value)
        set_input("StartIndex", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchVideos Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchVideosResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - The response from YouTube.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchVideos




  module Subscriptions



    ##############################################################################
    #
    # DeleteSubscription
    #
    # Deletes a YouTube subscription.
    #
    ##############################################################################

    class DeleteSubscription < Choreography

      ####
      #  Create a new instance of the DeleteSubscription Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Subscriptions/DeleteSubscription")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteSubscriptionInputSet
      ####
      def new_input_set()
        return DeleteSubscriptionInputSet.new()
      end

      def make_result_set()
        return DeleteSubscriptionResultSet.new()
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
        results = DeleteSubscriptionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteSubscription
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteSubscriptionInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the SubscriptionID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the subscription to delete.
        ###

        def set_SubscriptionID(value)
          set_input("SubscriptionID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteSubscription Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteSubscriptionResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from Google.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteSubscription



    ##############################################################################
    #
    # ListMySubscriptions
    #
    # Returns a list of the authenticated user's subscriptions.
    #
    ##############################################################################

    class ListMySubscriptions < Choreography

      ####
      #  Create a new instance of the ListMySubscriptions Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Subscriptions/ListMySubscriptions")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListMySubscriptionsInputSet
      ####
      def new_input_set()
        return ListMySubscriptionsInputSet.new()
      end

      def make_result_set()
        return ListMySubscriptionsResultSet.new()
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
        results = ListMySubscriptionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListMySubscriptions
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListMySubscriptionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the ForChannelId input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of channel IDs. The response will include only subscription matching these channels.
        ###

        def set_ForChannelId(value)
          set_input("ForChannelId", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates how the results are sorted. Valid values are: alphabetical, relevance, or unread.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include. Valid values are: id, snippet, and contentDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListMySubscriptions Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListMySubscriptionsResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from Google.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListMySubscriptions



    ##############################################################################
    #
    # ListSubscriptionsByChannel
    #
    # Returns a list of subscription for a specified channel.
    #
    ##############################################################################

    class ListSubscriptionsByChannel < Choreography

      ####
      #  Create a new instance of the ListSubscriptionsByChannel Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Subscriptions/ListSubscriptionsByChannel")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListSubscriptionsByChannelInputSet
      ####
      def new_input_set()
        return ListSubscriptionsByChannelInputSet.new()
      end

      def make_result_set()
        return ListSubscriptionsByChannelResultSet.new()
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
        results = ListSubscriptionsByChannelResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListSubscriptionsByChannel
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListSubscriptionsByChannelInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ChannelID input for this Choreo. 
        # 
        # @param String - (required, string) Indicates that the API only return this channel's subscriptions.
        ###

        def set_ChannelID(value)
          set_input("ChannelID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the ForChannelId input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of channel IDs. The response will include only subscription matching these channels.
        ###

        def set_ForChannelId(value)
          set_input("ForChannelId", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates how the results are sorted. Valid values are: alphabetical, relevance, or unread.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include. Valid values are: id, snippet, and contentDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListSubscriptionsByChannel Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListSubscriptionsByChannelResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from Google.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListSubscriptionsByChannel



    ##############################################################################
    #
    # ListSubscriptionsByID
    #
    # Returns a list of subscription that match the provided IDs.
    #
    ##############################################################################

    class ListSubscriptionsByID < Choreography

      ####
      #  Create a new instance of the ListSubscriptionsByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Subscriptions/ListSubscriptionsByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListSubscriptionsByIDInputSet
      ####
      def new_input_set()
        return ListSubscriptionsByIDInputSet.new()
      end

      def make_result_set()
        return ListSubscriptionsByIDResultSet.new()
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
        results = ListSubscriptionsByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListSubscriptionsByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListSubscriptionsByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the ForChannelId input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of channel IDs. The response will include only subscription matching these channels.
        ###

        def set_ForChannelId(value)
          set_input("ForChannelId", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end
        #### 
        # Set the value of the Order input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates how the results are sorted. Valid values are: alphabetical, relevance, or unread.
        ###

        def set_Order(value)
          set_input("Order", value)
        end
        #### 
        # Set the value of the PageToken input for this Choreo. 
        # 
        # @param String - (optional, string) The "nextPageToken" found in the response which is used to page through results.
        ###

        def set_PageToken(value)
          set_input("PageToken", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include. Valid values are: id, snippet, and contentDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the SubscriptionID input for this Choreo. 
        # 
        # @param String - (required, string) A comma-separated list of the YouTube subscription ID(s) for the resource(s) that are being retrieved.
        ###

        def set_SubscriptionID(value)
          set_input("SubscriptionID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListSubscriptionsByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListSubscriptionsByIDResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from Google.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListSubscriptionsByID



    ##############################################################################
    #
    # SubscribeToChannel
    #
    # Adds a specified channel to the authenticated user's subscriptions.
    #
    ##############################################################################

    class SubscribeToChannel < Choreography

      ####
      #  Create a new instance of the SubscribeToChannel Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Subscriptions/SubscribeToChannel")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SubscribeToChannelInputSet
      ####
      def new_input_set()
        return SubscribeToChannelInputSet.new()
      end

      def make_result_set()
        return SubscribeToChannelResultSet.new()
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
        results = SubscribeToChannelResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SubscribeToChannel
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SubscribeToChannelInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ChannelID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the channel to subscribe to.
        ###

        def set_ChannelID(value)
          set_input("ChannelID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields that are being set and that will be returned in the response (i.e. snippet,contentDetails).
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SubscribeToChannel Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SubscribeToChannelResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Google.
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

    end # class SubscribeToChannel




  end # module Subscriptions

  module VideoCategories



    ##############################################################################
    #
    # ListCategoriesByID
    #
    # Returns a list of categories that match the provided IDs.
    #
    ##############################################################################

    class ListCategoriesByID < Choreography

      ####
      #  Create a new instance of the ListCategoriesByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/VideoCategories/ListCategoriesByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListCategoriesByIDInputSet
      ####
      def new_input_set()
        return ListCategoriesByIDInputSet.new()
      end

      def make_result_set()
        return ListCategoriesByIDResultSet.new()
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
        results = ListCategoriesByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListCategoriesByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListCategoriesByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (conditional, string) A comma-separated list of the YouTube video category ID(s) that are being retrieved.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the H1 input for this Choreo. 
        # 
        # @param String - (optional, string) The hl parameter specifies the language that should be used for text values in the API response. The default value is en_US.
        ###

        def set_H1(value)
          set_input("H1", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies the videoCategory resource parts that the API response will include. Valid values are: id and snippet.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListCategoriesByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListCategoriesByIDResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from YouTube.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListCategoriesByID



    ##############################################################################
    #
    # ListCategoriesByRegion
    #
    # Returns a list of categories available in the specified country.
    #
    ##############################################################################

    class ListCategoriesByRegion < Choreography

      ####
      #  Create a new instance of the ListCategoriesByRegion Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/VideoCategories/ListCategoriesByRegion")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListCategoriesByRegionInputSet
      ####
      def new_input_set()
        return ListCategoriesByRegionInputSet.new()
      end

      def make_result_set()
        return ListCategoriesByRegionResultSet.new()
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
        results = ListCategoriesByRegionResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListCategoriesByRegion
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListCategoriesByRegionInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the H1 input for this Choreo. 
        # 
        # @param String - (optional, string) The hl parameter specifies the language that should be used for text values in the API response. The default value is en_US.
        ###

        def set_H1(value)
          set_input("H1", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies the videoCategory resource parts that the API response will include. Valid values are: id and snippet.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the RegionCode input for this Choreo. 
        # 
        # @param String - (conditional, string) Indicates to return the list of video categories available in the specified country. The parameter value is an ISO 3166-1 alpha-2 country code.
        ###

        def set_RegionCode(value)
          set_input("RegionCode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListCategoriesByRegion Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListCategoriesByRegionResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from YouTube.
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

    end # class ListCategoriesByRegion




  end # module VideoCategories

  module Videos



    ##############################################################################
    #
    # DeleteVideo
    #
    # Deletes a YouTube video.
    #
    ##############################################################################

    class DeleteVideo < Choreography

      ####
      #  Create a new instance of the DeleteVideo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Videos/DeleteVideo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteVideoInputSet
      ####
      def new_input_set()
        return DeleteVideoInputSet.new()
      end

      def make_result_set()
        return DeleteVideoResultSet.new()
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
        results = DeleteVideoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteVideo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteVideoInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the VideoID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the video to delete.
        ###

        def set_VideoID(value)
          set_input("VideoID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteVideo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteVideoResultSet < Choreography::ResultSet
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
      	# @return String - (json) The response from Google.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteVideo



    ##############################################################################
    #
    # Insert
    #
    # Uploads a video to YouTube and optionally sets the video's metadata.
    #
    ##############################################################################

    class Insert < Choreography

      ####
      #  Create a new instance of the Insert Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Videos/Insert")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return InsertInputSet
      ####
      def new_input_set()
        return InsertInputSet.new()
      end

      def make_result_set()
        return InsertResultSet.new()
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
        results = InsertResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Insert
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class InsertInputSet < Choreography::InputSet

        #### 
        # Set the value of the VideoMetadata input for this Choreo. 
        # 
        # @param String - (conditional, json) A JSON representation of fields in a video resource. Video metadata information (such as the title) can be inserted using this input. See documentation for formatting examples.
        ###

        def set_VideoMetadata(value)
          set_input("VideoMetadata", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth2 process. This is required unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Selector specifying a subset of fields to include in the response.
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (required, string) A comma-separated list of properties that will be set in the request and returned in the response (i.e. snippet,status).
        ###

        def set_Part(value)
          set_input("Part", value)
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
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (conditional, string) A URL to the video to fetch and upload to YouTube. Required unless providing VideoContent.
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the VideoContent input for this Choreo. 
        # 
        # @param String - (conditional, string) The Base64 encoded contents of the video to upload.
        ###

        def set_VideoContent(value)
          set_input("VideoContent", value)
        end
        #### 
        # Set the value of the Video input for this Choreo. 
        # 
        # @param TembooPath - A path to a vault file to upload. This can be used as an alternative to the VideoContent or URL input.
        ###

        def set_Video(value)
          set_alias("Video", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Insert Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class InsertResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Google.
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

    end # class Insert



    ##############################################################################
    #
    # ListVideosByID
    #
    # Returns a list of YouTube videos that match the IDs provided.
    #
    ##############################################################################

    class ListVideosByID < Choreography

      ####
      #  Create a new instance of the ListVideosByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Videos/ListVideosByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListVideosByIDInputSet
      ####
      def new_input_set()
        return ListVideosByIDInputSet.new()
      end

      def make_result_set()
        return ListVideosByIDResultSet.new()
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
        results = ListVideosByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListVideosByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListVideosByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the APIKey input for this Choreo. 
        # 
        # @param String - (optional, string) The API Key provided by Google for simple API access when you do not need to access user data.
        ###

        def set_APIKey(value)
          set_input("APIKey", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields to include. Valid values are: id, snippet, contentDetails, fileDetails, player, processingDetails, recordingDetails, statistics, status, suggestions, and topicDetails.
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end
        #### 
        # Set the value of the VideoID input for this Choreo. 
        # 
        # @param String - (required, string) A comma-separated list of the YouTube video ID(s) that are being retrieved.
        ###

        def set_VideoID(value)
          set_input("VideoID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListVideosByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListVideosByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Google.
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

    end # class ListVideosByID



    ##############################################################################
    #
    # UpdateVideo
    #
    # Updates a video's metadata.
    #
    ##############################################################################

    class UpdateVideo < Choreography

      ####
      #  Create a new instance of the UpdateVideo Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/YouTube/Videos/UpdateVideo")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateVideoInputSet
      ####
      def new_input_set()
        return UpdateVideoInputSet.new()
      end

      def make_result_set()
        return UpdateVideoResultSet.new()
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
        results = UpdateVideoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateVideo
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateVideoInputSet < Choreography::InputSet

        #### 
        # Set the value of the VideoMetadata input for this Choreo. 
        # 
        # @param String - (required, json) A JSON representation of the video resource containing fields to update. The id key for the video is requried for updates. See documentation for examples.
        ###

        def set_VideoMetadata(value)
          set_input("VideoMetadata", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (optional, string) A valid access token retrieved during the OAuth process. This is required for OAuth authentication unless you provide the ClientID, ClientSecret, and RefreshToken to generate a new access token.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client ID provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Client Secret provided by Google. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Fields input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to specify a subset of fields to include in the response using an xpath-like syntax (i.e. items/snippet/title).
        ###

        def set_Fields(value)
          set_input("Fields", value)
        end
        #### 
        # Set the value of the Part input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of fields that are being set and that will be returned in the response (i.e. snippet,status).
        ###

        def set_Part(value)
          set_input("Part", value)
        end
        #### 
        # Set the value of the RefreshToken input for this Choreo. 
        # 
        # @param String - (conditional, string) An OAuth refresh token used to generate a new access token when the original token is expired. Required for OAuth authentication unless providing a valid AccessToken.
        ###

        def set_RefreshToken(value)
          set_input("RefreshToken", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateVideo Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateVideoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Google.
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

    end # class UpdateVideo




  end # module Videos

end # module YouTube