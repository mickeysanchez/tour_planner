require "temboo"

module Twitter




  module DirectMessages



    ##############################################################################
    #
    # DestroyDirectMessage
    #
    # Deletes a specified Direct Message.
    #
    ##############################################################################

    class DestroyDirectMessage < Choreography

      ####
      #  Create a new instance of the DestroyDirectMessage Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/DirectMessages/DestroyDirectMessage")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DestroyDirectMessageInputSet
      ####
      def new_input_set()
        return DestroyDirectMessageInputSet.new()
      end

      def make_result_set()
        return DestroyDirectMessageResultSet.new()
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
        results = DestroyDirectMessageResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DestroyDirectMessage
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DestroyDirectMessageInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the direct message.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DestroyDirectMessage Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DestroyDirectMessageResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DestroyDirectMessage



    ##############################################################################
    #
    # DirectMessagesSent
    #
    # Retrieves the 20 most recent direct messages sent by the authenticating user.
    #
    ##############################################################################

    class DirectMessagesSent < Choreography

      ####
      #  Create a new instance of the DirectMessagesSent Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/DirectMessages/DirectMessagesSent")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DirectMessagesSentInputSet
      ####
      def new_input_set()
        return DirectMessagesSentInputSet.new()
      end

      def make_result_set()
        return DirectMessagesSentResultSet.new()
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
        results = DirectMessagesSentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DirectMessagesSent
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DirectMessagesSentInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve up to a maximum of 200.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the MaxID input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxID(value)
          set_input("MaxID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page of results to retrieve.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the SinceID input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceID(value)
          set_input("SinceID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DirectMessagesSent Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DirectMessagesSentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      end

    end # class DirectMessagesSent



    ##############################################################################
    #
    # GetDirectMessages
    #
    # Retrieves the 20 most recent direct messages sent to the authenticating user.
    #
    ##############################################################################

    class GetDirectMessages < Choreography

      ####
      #  Create a new instance of the GetDirectMessages Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/DirectMessages/GetDirectMessages")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetDirectMessagesInputSet
      ####
      def new_input_set()
        return GetDirectMessagesInputSet.new()
      end

      def make_result_set()
        return GetDirectMessagesResultSet.new()
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
        results = GetDirectMessagesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetDirectMessages
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetDirectMessagesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve up to a maximum of 200.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the MaxID input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxID(value)
          set_input("MaxID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page of results to retrieve.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the SinceID input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceID(value)
          set_input("SinceID", value)
        end
        #### 
        # Set the value of the SkipStatus input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, statuses will not be included in the returned user objects.
        ###

        def set_SkipStatus(value)
          set_input("SkipStatus", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetDirectMessages Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetDirectMessagesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class GetDirectMessages



    ##############################################################################
    #
    # GetMessageByID
    #
    # Retrieves a single direct message, specified by an id.
    #
    ##############################################################################

    class GetMessageByID < Choreography

      ####
      #  Create a new instance of the GetMessageByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/DirectMessages/GetMessageByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMessageByIDInputSet
      ####
      def new_input_set()
        return GetMessageByIDInputSet.new()
      end

      def make_result_set()
        return GetMessageByIDResultSet.new()
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
        results = GetMessageByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMessageByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMessageByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the direct message.
        ###

        def set_ID(value)
          set_input("ID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMessageByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMessageByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMessageByID



    ##############################################################################
    #
    # SendDirectMessage
    #
    # Sends a new direct message to the specified user from the authenticating user.
    #
    ##############################################################################

    class SendDirectMessage < Choreography

      ####
      #  Create a new instance of the SendDirectMessage Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/DirectMessages/SendDirectMessage")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SendDirectMessageInputSet
      ####
      def new_input_set()
        return SendDirectMessageInputSet.new()
      end

      def make_result_set()
        return SendDirectMessageResultSet.new()
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
        results = SendDirectMessageResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SendDirectMessage
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SendDirectMessageInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user who should receive the direct message. Required unless specifying the UserId.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (required, string) The text for the direct message. Max characters is 140.
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user who should receive the direct message. Required unless specifying the ScreenName.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SendDirectMessage Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SendDirectMessageResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SendDirectMessage




  end # module DirectMessages

  module Favorites



    ##############################################################################
    #
    # CreateFavorite
    #
    # Marks a specified status as a favorite.
    #
    ##############################################################################

    class CreateFavorite < Choreography

      ####
      #  Create a new instance of the CreateFavorite Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Favorites/CreateFavorite")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateFavoriteInputSet
      ####
      def new_input_set()
        return CreateFavoriteInputSet.new()
      end

      def make_result_set()
        return CreateFavoriteResultSet.new()
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
        results = CreateFavoriteResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateFavorite
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateFavoriteInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the status to favorite.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateFavorite Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateFavoriteResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateFavorite



    ##############################################################################
    #
    # DestroyFavorite
    #
    # Removes the specified status from a favorites list.
    #
    ##############################################################################

    class DestroyFavorite < Choreography

      ####
      #  Create a new instance of the DestroyFavorite Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Favorites/DestroyFavorite")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DestroyFavoriteInputSet
      ####
      def new_input_set()
        return DestroyFavoriteInputSet.new()
      end

      def make_result_set()
        return DestroyFavoriteResultSet.new()
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
        results = DestroyFavoriteResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DestroyFavorite
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DestroyFavoriteInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the status to remove from your favorites.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DestroyFavorite Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DestroyFavoriteResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DestroyFavorite



    ##############################################################################
    #
    # ListFavorites
    #
    # Retrieves the 20 most recent Tweets favorited by the authenticating or specified user.
    #
    ##############################################################################

    class ListFavorites < Choreography

      ####
      #  Create a new instance of the ListFavorites Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Favorites/ListFavorites")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListFavoritesInputSet
      ####
      def new_input_set()
        return ListFavoritesInputSet.new()
      end

      def make_result_set()
        return ListFavoritesResultSet.new()
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
        results = ListFavoritesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListFavorites
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListFavoritesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the MaxId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxId(value)
          set_input("MaxId", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) Screen name of the user to return results for. If ScreenName or UserId are not provided, the authenticating user is assumed.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (optional, string) ID of the user to return results for. If ScreenName or UserId are not provided, the authenticating user is assumed.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListFavorites Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListFavoritesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      end

    end # class ListFavorites




  end # module Favorites

  module FriendsAndFollowers



    ##############################################################################
    #
    # CreateFriendship
    #
    # Allows you to follow another Twitter user by specifying a Twitter user id or screen name.
    #
    ##############################################################################

    class CreateFriendship < Choreography

      ####
      #  Create a new instance of the CreateFriendship Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/FriendsAndFollowers/CreateFriendship")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateFriendshipInputSet
      ####
      def new_input_set()
        return CreateFriendshipInputSet.new()
      end

      def make_result_set()
        return CreateFriendshipResultSet.new()
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
        results = CreateFriendshipResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateFriendship
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateFriendshipInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Follow input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A boolean flag that enables notifications for the target user when set to true.
        ###

        def set_Follow(value)
          set_input("Follow", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name for the friend you want to create a friendship with. Required if UserId isn't specified.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (conditional, string) The user id for the friend you want to create a friendship with. Required if ScreenName isn't specified.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateFriendship Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateFriendshipResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateFriendship



    ##############################################################################
    #
    # DeleteFriendship
    #
    # Allows you to unfollow another Twitter user when you specify a Twitter user ID or screen name.
    #
    ##############################################################################

    class DeleteFriendship < Choreography

      ####
      #  Create a new instance of the DeleteFriendship Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/FriendsAndFollowers/DeleteFriendship")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteFriendshipInputSet
      ####
      def new_input_set()
        return DeleteFriendshipInputSet.new()
      end

      def make_result_set()
        return DeleteFriendshipResultSet.new()
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
        results = DeleteFriendshipResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteFriendship
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteFriendshipInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name for the friend you want to unfollow. Required if UserId isn't specified.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (conditional, string) The user ID for the friend you want to unfollow. Required if ScreenName isn't specified.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteFriendship Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteFriendshipResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteFriendship



    ##############################################################################
    #
    # FriendshipsExist
    #
    # Tests for the existence of friendship between two users.
    #
    ##############################################################################

    class FriendshipsExist < Choreography

      ####
      #  Create a new instance of the FriendshipsExist Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/FriendsAndFollowers/FriendshipsExist")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FriendshipsExistInputSet
      ####
      def new_input_set()
        return FriendshipsExistInputSet.new()
      end

      def make_result_set()
        return FriendshipsExistResultSet.new()
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
        results = FriendshipsExistResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FriendshipsExist
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FriendshipsExistInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (conditional, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the format of the response from Twitter: json, or xml.  Default is set to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ScreenName1 input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen_name of the user you are checking the relationship from. Required unless specifying UserIds instead.
        ###

        def set_ScreenName1(value)
          set_input("ScreenName1", value)
        end
        #### 
        # Set the value of the ScreenName2 input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen_name of the user you are checking the relationship to. Required unless specifying UserIds instead.
        ###

        def set_ScreenName2(value)
          set_input("ScreenName2", value)
        end
        #### 
        # Set the value of the UserID1 input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of the user you are checking the relationship from. Required unless specifying ScreenNames instead.
        ###

        def set_UserID1(value)
          set_input("UserID1", value)
        end
        #### 
        # Set the value of the UserID2 input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of the user you are checking the relationship to. Required unless specifying ScreenNames instead.
        ###

        def set_UserID2(value)
          set_input("UserID2", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FriendshipsExist Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FriendshipsExistResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FriendshipsExist



    ##############################################################################
    #
    # FriendshipsLookup
    #
    # Retrieves the relationship of the authenticating user to the comma-separated list of up to 100 screen names or user IDs provided.
    #
    ##############################################################################

    class FriendshipsLookup < Choreography

      ####
      #  Create a new instance of the FriendshipsLookup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/FriendsAndFollowers/FriendshipsLookup")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FriendshipsLookupInputSet
      ####
      def new_input_set()
        return FriendshipsLookupInputSet.new()
      end

      def make_result_set()
        return FriendshipsLookupResultSet.new()
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
        results = FriendshipsLookupResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FriendshipsLookup
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FriendshipsLookupInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) A comma separated list of screen names. Up to 100 are allowed. Required unless UserID is specified.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) A comma separated list of user IDs. Up to 100 are allowed. Required unless ScreenName is specified.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FriendshipsLookup Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FriendshipsLookupResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      end

    end # class FriendshipsLookup



    ##############################################################################
    #
    # FriendshipsShow
    #
    # Returns detailed information about the relationship between two users.
    #
    ##############################################################################

    class FriendshipsShow < Choreography

      ####
      #  Create a new instance of the FriendshipsShow Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/FriendsAndFollowers/FriendshipsShow")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FriendshipsShowInputSet
      ####
      def new_input_set()
        return FriendshipsShowInputSet.new()
      end

      def make_result_set()
        return FriendshipsShowResultSet.new()
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
        results = FriendshipsShowResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FriendshipsShow
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FriendshipsShowInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the SourceScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen_name of the subject user. Required unless specifying the SourceUserID instead.
        ###

        def set_SourceScreenName(value)
          set_input("SourceScreenName", value)
        end
        #### 
        # Set the value of the SourceUserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the subject user. Required unless specifying the SourceScreenName instead.
        ###

        def set_SourceUserID(value)
          set_input("SourceUserID", value)
        end
        #### 
        # Set the value of the TargetScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen_name of the target user. Required unless specifying the TargetUserID instead.
        ###

        def set_TargetScreenName(value)
          set_input("TargetScreenName", value)
        end
        #### 
        # Set the value of the TargetUserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the target user. Required unless specifying the TargetScreenName instead.
        ###

        def set_TargetUserID(value)
          set_input("TargetUserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FriendshipsShow Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FriendshipsShowResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FriendshipsShow



    ##############################################################################
    #
    # GetFollowersByID
    #
    # Retrieves a list of numeric IDs for every user following the specified user.
    #
    ##############################################################################

    class GetFollowersByID < Choreography

      ####
      #  Create a new instance of the GetFollowersByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/FriendsAndFollowers/GetFollowersByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFollowersByIDInputSet
      ####
      def new_input_set()
        return GetFollowersByIDInputSet.new()
      end

      def make_result_set()
        return GetFollowersByIDResultSet.new()
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
        results = GetFollowersByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFollowersByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFollowersByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user for whom to return results for. Required if UserID isn't specified.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the StringifyIDs input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A boolean flag indicating that Tweet IDs should be returned as strings.
        ###

        def set_StringifyIDs(value)
          set_input("StringifyIDs", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of the user for whom to return results for. Required if ScreenName isn't specified.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFollowersByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFollowersByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetFollowersByID



    ##############################################################################
    #
    # GetFriendsByID
    #
    # Retrieves a list of numeric IDs for every user the specified user is following (also known as their "friends").
    #
    ##############################################################################

    class GetFriendsByID < Choreography

      ####
      #  Create a new instance of the GetFriendsByID Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/FriendsAndFollowers/GetFriendsByID")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetFriendsByIDInputSet
      ####
      def new_input_set()
        return GetFriendsByIDInputSet.new()
      end

      def make_result_set()
        return GetFriendsByIDResultSet.new()
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
        results = GetFriendsByIDResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetFriendsByID
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetFriendsByIDInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user for whom to return results for. Required if UserId isn't specified.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the StringifyIDs input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A boolean flag indicating that Tweet IDs should be returned as strings.
        ###

        def set_StringifyIDs(value)
          set_input("StringifyIDs", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user for whom to return results for. Required if ScreenName isn't specified.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetFriendsByID Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetFriendsByIDResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class GetFriendsByID



    ##############################################################################
    #
    # IncomingFriendships
    #
    # Retrieves a list of numeric IDs for every user who has a pending request to follow the authenticating user.
    #
    ##############################################################################

    class IncomingFriendships < Choreography

      ####
      #  Create a new instance of the IncomingFriendships Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/FriendsAndFollowers/IncomingFriendships")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return IncomingFriendshipsInputSet
      ####
      def new_input_set()
        return IncomingFriendshipsInputSet.new()
      end

      def make_result_set()
        return IncomingFriendshipsResultSet.new()
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
        results = IncomingFriendshipsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the IncomingFriendships
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class IncomingFriendshipsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the StringifyIDs input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A boolean flag indicating that Tweet IDs should be returned as strings.
        ###

        def set_StringifyIDs(value)
          set_input("StringifyIDs", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the IncomingFriendships Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class IncomingFriendshipsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class IncomingFriendships



    ##############################################################################
    #
    # ListFollowers
    #
    # Retrieves a collection of user objects for users following the specified user.
    #
    ##############################################################################

    class ListFollowers < Choreography

      ####
      #  Create a new instance of the ListFollowers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/FriendsAndFollowers/ListFollowers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListFollowersInputSet
      ####
      def new_input_set()
        return ListFollowersInputSet.new()
      end

      def make_result_set()
        return ListFollowersResultSet.new()
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
        results = ListFollowersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListFollowers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListFollowersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the IncludeUserEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The user "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeUserEntities(value)
          set_input("IncludeUserEntities", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user for whom to return results for. Required if UserID isn't specified.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the SkipStatus input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, statuses will not be included in the returned user objects.
        ###

        def set_SkipStatus(value)
          set_input("SkipStatus", value)
        end
        #### 
        # Set the value of the StringifyIDs input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A boolean flag indicating that Tweet IDs should be returned as strings.
        ###

        def set_StringifyIDs(value)
          set_input("StringifyIDs", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user for whom to return results for. Required if ScreenName isn't specified.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListFollowers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListFollowersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      end

    end # class ListFollowers



    ##############################################################################
    #
    # ListFriends
    #
    # Retrieves a collection of user objects for every user the specified user is following.
    #
    ##############################################################################

    class ListFriends < Choreography

      ####
      #  Create a new instance of the ListFriends Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/FriendsAndFollowers/ListFriends")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListFriendsInputSet
      ####
      def new_input_set()
        return ListFriendsInputSet.new()
      end

      def make_result_set()
        return ListFriendsResultSet.new()
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
        results = ListFriendsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListFriends
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListFriendsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the IncludeUserEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The user "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeUserEntities(value)
          set_input("IncludeUserEntities", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user for whom to return results for. Required if UserID isn't specified.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the SkipStatus input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, statuses will not be included in the returned user objects.
        ###

        def set_SkipStatus(value)
          set_input("SkipStatus", value)
        end
        #### 
        # Set the value of the StringifyIDs input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A boolean flag indicating that Tweet IDs should be returned as strings.
        ###

        def set_StringifyIDs(value)
          set_input("StringifyIDs", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user for whom to return results for. Required if ScreenName isn't specified.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListFriends Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListFriendsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      end

    end # class ListFriends



    ##############################################################################
    #
    # OutgoingFriendships
    #
    # Retrieves a list of numeric IDs for every protected user for whom the authenticating user has a pending follow request.
    #
    ##############################################################################

    class OutgoingFriendships < Choreography

      ####
      #  Create a new instance of the OutgoingFriendships Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/FriendsAndFollowers/OutgoingFriendships")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return OutgoingFriendshipsInputSet
      ####
      def new_input_set()
        return OutgoingFriendshipsInputSet.new()
      end

      def make_result_set()
        return OutgoingFriendshipsResultSet.new()
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
        results = OutgoingFriendshipsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the OutgoingFriendships
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class OutgoingFriendshipsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the StringifyIDs input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A boolean flag indicating that Tweet IDs should be returned as strings.
        ###

        def set_StringifyIDs(value)
          set_input("StringifyIDs", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the OutgoingFriendships Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class OutgoingFriendshipsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      end

    end # class OutgoingFriendships




  end # module FriendsAndFollowers

  module Help



    ##############################################################################
    #
    # GetRateLimitStatus
    #
    # Allows you to predict the rate limits available to your application by returning the limits for specified families of methods.
    #
    ##############################################################################

    class GetRateLimitStatus < Choreography

      ####
      #  Create a new instance of the GetRateLimitStatus Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Help/GetRateLimitStatus")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRateLimitStatusInputSet
      ####
      def new_input_set()
        return GetRateLimitStatusInputSet.new()
      end

      def make_result_set()
        return GetRateLimitStatusResultSet.new()
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
        results = GetRateLimitStatusResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRateLimitStatus
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRateLimitStatusInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Resources input for this Choreo. 
        # 
        # @param String - (optional, string) A comma-separated list of resources you want to know the current rate limit disposition for (e.g., statuses,friends,trends).
        ###

        def set_Resources(value)
          set_input("Resources", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRateLimitStatus Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRateLimitStatusResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      end

    end # class GetRateLimitStatus




  end # module Help

  module Lists



    ##############################################################################
    #
    # CreateList
    #
    # Creates a new list.
    #
    ##############################################################################

    class CreateList < Choreography

      ####
      #  Create a new instance of the CreateList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/CreateList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateListInputSet
      ####
      def new_input_set()
        return CreateListInputSet.new()
      end

      def make_result_set()
        return CreateListResultSet.new()
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
        results = CreateListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateListInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A description of the list.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Mode input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates if this list is "public" (the default) or "private".
        ###

        def set_Mode(value)
          set_input("Mode", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) The name of the new list.
        ###

        def set_Name(value)
          set_input("Name", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateList



    ##############################################################################
    #
    # CreateMember
    #
    # Adds one or more members to a list.
    #
    ##############################################################################

    class CreateMember < Choreography

      ####
      #  Create a new instance of the CreateMember Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/CreateMember")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateMemberInputSet
      ####
      def new_input_set()
        return CreateMemberInputSet.new()
      end

      def make_result_set()
        return CreateMemberResultSet.new()
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
        results = CreateMemberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateMember
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateMemberInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user to add to the list. Required unless providing the UserId. Multiple screen names can be provided in a comma-separated list.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user to add to the list. Required unless providing the ScreenName. Multiple user IDs can be provided in a comma-separated list.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateMember Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateMemberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateMember



    ##############################################################################
    #
    # CreateSubscriber
    #
    # Subscribes the authenticated user to the specified list.
    #
    ##############################################################################

    class CreateSubscriber < Choreography

      ####
      #  Create a new instance of the CreateSubscriber Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/CreateSubscriber")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateSubscriberInputSet
      ####
      def new_input_set()
        return CreateSubscriberInputSet.new()
      end

      def make_result_set()
        return CreateSubscriberResultSet.new()
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
        results = CreateSubscriberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateSubscriber
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateSubscriberInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateSubscriber Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateSubscriberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateSubscriber



    ##############################################################################
    #
    # DestroyList
    #
    # Deletes the specified list.
    #
    ##############################################################################

    class DestroyList < Choreography

      ####
      #  Create a new instance of the DestroyList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/DestroyList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DestroyListInputSet
      ####
      def new_input_set()
        return DestroyListInputSet.new()
      end

      def make_result_set()
        return DestroyListResultSet.new()
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
        results = DestroyListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DestroyList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DestroyListInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DestroyList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DestroyListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DestroyList



    ##############################################################################
    #
    # DestroyMember
    #
    # Removes one or more members from a list.
    #
    ##############################################################################

    class DestroyMember < Choreography

      ####
      #  Create a new instance of the DestroyMember Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/DestroyMember")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DestroyMemberInputSet
      ####
      def new_input_set()
        return DestroyMemberInputSet.new()
      end

      def make_result_set()
        return DestroyMemberResultSet.new()
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
        results = DestroyMemberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DestroyMember
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DestroyMemberInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user to remove from the list. Required unless providing the UserId. Multiple screen names can be provided in a comma-separated list.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user to remove from the list. Required unless providing the ScreenName. Multiple user IDs can be provided in a comma-separated list.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DestroyMember Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DestroyMemberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DestroyMember



    ##############################################################################
    #
    # DestroySubscriber
    #
    # Unsubscribes the authenticated user from the specified list.
    #
    ##############################################################################

    class DestroySubscriber < Choreography

      ####
      #  Create a new instance of the DestroySubscriber Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/DestroySubscriber")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DestroySubscriberInputSet
      ####
      def new_input_set()
        return DestroySubscriberInputSet.new()
      end

      def make_result_set()
        return DestroySubscriberResultSet.new()
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
        results = DestroySubscriberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DestroySubscriber
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DestroySubscriberInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DestroySubscriber Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DestroySubscriberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DestroySubscriber



    ##############################################################################
    #
    # GetLists
    #
    # Retrieves all lists the authenticating or specified user subscribes to, including lists that they own.
    #
    ##############################################################################

    class GetLists < Choreography

      ####
      #  Create a new instance of the GetLists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/GetLists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetListsInputSet
      ####
      def new_input_set()
        return GetListsInputSet.new()
      end

      def make_result_set()
        return GetListsResultSet.new()
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
        results = GetListsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetLists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetListsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Reverse input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, owned lists will be returned first in the response.
        ###

        def set_Reverse(value)
          set_input("Reverse", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user for whom to return results for. If not provided, the subscriptions for the authenticating user are returned.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of the user for whom to return results for. If not provided, the subscriptions for the authenticating user are returned.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetLists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetListsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetLists



    ##############################################################################
    #
    # GetMembers
    #
    # Retrieves the members of a specified list.
    #
    ##############################################################################

    class GetMembers < Choreography

      ####
      #  Create a new instance of the GetMembers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/GetMembers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMembersInputSet
      ####
      def new_input_set()
        return GetMembersInputSet.new()
      end

      def make_result_set()
        return GetMembersResultSet.new()
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
        results = GetMembersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMembers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMembersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the SkipStatus input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true, statuses will not be included in the returned user objects.
        ###

        def set_SkipStatus(value)
          set_input("SkipStatus", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMembers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMembersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMembers



    ##############################################################################
    #
    # GetMemberships
    #
    # Retrieves the lists that the specified user has been added to.
    #
    ##############################################################################

    class GetMemberships < Choreography

      ####
      #  Create a new instance of the GetMemberships Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/GetMemberships")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetMembershipsInputSet
      ####
      def new_input_set()
        return GetMembershipsInputSet.new()
      end

      def make_result_set()
        return GetMembershipsResultSet.new()
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
        results = GetMembershipsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetMemberships
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetMembershipsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the FilterToOwnedLists input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, the response includes only lists that the authenticating user owns and lists that the specified user is a member of.
        ###

        def set_FilterToOwnedLists(value)
          set_input("FilterToOwnedLists", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user for whom to return results for. If not provided, the memberships for the authenticating user are returned.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user for whom to return results for. If not provided, the memberships for the authenticating user are returned.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetMemberships Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetMembershipsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetMemberships



    ##############################################################################
    #
    # GetOwnedLists
    #
    # Retrieves lists owned by the specified user.
    #
    ##############################################################################

    class GetOwnedLists < Choreography

      ####
      #  Create a new instance of the GetOwnedLists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/GetOwnedLists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetOwnedListsInputSet
      ####
      def new_input_set()
        return GetOwnedListsInputSet.new()
      end

      def make_result_set()
        return GetOwnedListsResultSet.new()
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
        results = GetOwnedListsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetOwnedLists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetOwnedListsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user for whom to return results for. If not provided, the authenticating user is assumed.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of the user for whom to return results for. If not provided, the authenticating user is assumed.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetOwnedLists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetOwnedListsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      end

    end # class GetOwnedLists



    ##############################################################################
    #
    # GetStatuses
    #
    # Retrieves a timeline of tweets posted by members of the specified list.
    #
    ##############################################################################

    class GetStatuses < Choreography

      ####
      #  Create a new instance of the GetStatuses Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/GetStatuses")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetStatusesInputSet
      ####
      def new_input_set()
        return GetStatusesInputSet.new()
      end

      def make_result_set()
        return GetStatusesResultSet.new()
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
        results = GetStatusesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetStatuses
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetStatusesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the IncludeEntitities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntitities(value)
          set_input("IncludeEntitities", value)
        end
        #### 
        # Set the value of the IncludeRetweets input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, the response will include retweets if they exist.
        ###

        def set_IncludeRetweets(value)
          set_input("IncludeRetweets", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the MaxId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxId(value)
          set_input("MaxId", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetStatuses Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetStatusesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetStatuses



    ##############################################################################
    #
    # GetSubscribers
    #
    # Retrieves the subscribers for a specified list.
    #
    ##############################################################################

    class GetSubscribers < Choreography

      ####
      #  Create a new instance of the GetSubscribers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/GetSubscribers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSubscribersInputSet
      ####
      def new_input_set()
        return GetSubscribersInputSet.new()
      end

      def make_result_set()
        return GetSubscribersResultSet.new()
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
        results = GetSubscribersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSubscribers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSubscribersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the SkipStatus input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true, statuses will not be included in the returned user objects.
        ###

        def set_SkipStatus(value)
          set_input("SkipStatus", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSubscribers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSubscribersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSubscribers



    ##############################################################################
    #
    # GetSubscriptions
    #
    # Retrieves a collection of the lists the specified user is subscribed to.
    #
    ##############################################################################

    class GetSubscriptions < Choreography

      ####
      #  Create a new instance of the GetSubscriptions Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/GetSubscriptions")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSubscriptionsInputSet
      ####
      def new_input_set()
        return GetSubscriptionsInputSet.new()
      end

      def make_result_set()
        return GetSubscriptionsResultSet.new()
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
        results = GetSubscriptionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSubscriptions
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSubscriptionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return per page.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param String - (optional, string) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user for whom to return results for. If not provided, the memberships for the authenticating user are returned.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user for whom to return results for. If not provided, the memberships for the authenticating user are returned.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSubscriptions Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSubscriptionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSubscriptions



    ##############################################################################
    #
    # ShowList
    #
    # Retrieves the specified list.
    #
    ##############################################################################

    class ShowList < Choreography

      ####
      #  Create a new instance of the ShowList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/ShowList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowListInputSet
      ####
      def new_input_set()
        return ShowListInputSet.new()
      end

      def make_result_set()
        return ShowListResultSet.new()
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
        results = ShowListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowListInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      end

    end # class ShowList



    ##############################################################################
    #
    # ShowMember
    #
    # Verifies that the specified user is a member of the specified list.
    #
    ##############################################################################

    class ShowMember < Choreography

      ####
      #  Create a new instance of the ShowMember Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/ShowMember")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowMemberInputSet
      ####
      def new_input_set()
        return ShowMemberInputSet.new()
      end

      def make_result_set()
        return ShowMemberResultSet.new()
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
        results = ShowMemberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowMember
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowMemberInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user to retrieve from the list. Required unless providing the UserId.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the SkipStatus input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true, statuses will not be included in the returned user objects.
        ###

        def set_SkipStatus(value)
          set_input("SkipStatus", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user to retrieve from the list. Required unless providing the ScreenName.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowMember Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowMemberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class ShowMember



    ##############################################################################
    #
    # ShowSubscriber
    #
    # Verifies that the specified user is a subscriber of the specified list.
    #
    ##############################################################################

    class ShowSubscriber < Choreography

      ####
      #  Create a new instance of the ShowSubscriber Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/ShowSubscriber")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowSubscriberInputSet
      ####
      def new_input_set()
        return ShowSubscriberInputSet.new()
      end

      def make_result_set()
        return ShowSubscriberResultSet.new()
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
        results = ShowSubscriberResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ShowSubscriber
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowSubscriberInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user to retrieve from the list. Required unless providing the UserId.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the SkipStatus input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true, statuses will not be included in the returned user objects.
        ###

        def set_SkipStatus(value)
          set_input("SkipStatus", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user to retrieve from the list. Required unless providing the ScreenName.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ShowSubscriber Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowSubscriberResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      end

    end # class ShowSubscriber



    ##############################################################################
    #
    # UpdateList
    #
    # Updates an existing list.
    #
    ##############################################################################

    class UpdateList < Choreography

      ####
      #  Create a new instance of the UpdateList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Lists/UpdateList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateListInputSet
      ####
      def new_input_set()
        return UpdateListInputSet.new()
      end

      def make_result_set()
        return UpdateListResultSet.new()
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
        results = UpdateListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateListInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A description of the list.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the ListId input for this Choreo. 
        # 
        # @param String - (conditional, string) The numerical ID of the list. Required unless Slug is provided.
        ###

        def set_ListId(value)
          set_input("ListId", value)
        end
        #### 
        # Set the value of the Mode input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates if this list is "public" (the default) or "private".
        ###

        def set_Mode(value)
          set_input("Mode", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (optional, string) The name of the new list.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the OwnerId input for this Choreo. 
        # 
        # @param String - (optional, string) The user ID of the user who owns the list being requested by a slug.
        ###

        def set_OwnerId(value)
          set_input("OwnerId", value)
        end
        #### 
        # Set the value of the OwnerScreenName input for this Choreo. 
        # 
        # @param String - (optional, string) The screen name of the user who owns the list being requested by a slug.
        ###

        def set_OwnerScreenName(value)
          set_input("OwnerScreenName", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (optional, string) When identifying a list by a slug, either OwnerScreenName or OwnerId must be provided.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateList




  end # module Lists

  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Twitter access token and access token secret for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/OAuth/FinalizeOAuth")
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
        # @param String - (required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the callback data after the user authorizes.
        ###

        def set_CallbackID(value)
          set_input("CallbackID", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
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
      	# Retrieve the value for the "AccessTokenSecret" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token Secret retrieved during the OAuth process.
      	####
      	def get_AccessTokenSecret()
      	  return @outputs["AccessTokenSecret"]
      	end
      	####
      	# Retrieve the value for the "ScreenName" output from this Choreo execution
      	#
      	# @return String - (string) The Twitter screen name associated with the access token that is being retrieved.
      	####
      	def get_ScreenName()
      	  return @outputs["ScreenName"]
      	end
      	####
      	# Retrieve the value for the "AccessToken" output from this Choreo execution
      	#
      	# @return String - (string) The Access Token retrieved during the OAuth process.
      	####
      	def get_AccessToken()
      	  return @outputs["AccessToken"]
      	end
      	####
      	# Retrieve the value for the "UserID" output from this Choreo execution
      	#
      	# @return String - (integer) The Twitter user id associated with the AccessToken that is being retrieved.
      	####
      	def get_UserID()
      	  return @outputs["UserID"]
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
        super(session, "/Library/Twitter/OAuth/InitializeOAuth")
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
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
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




  end # module OAuth

  module PlacesAndGeo



    ##############################################################################
    #
    # GeoSearch
    #
    # Searches for places that can be attached to a status update using a latitude and a longitude pair, an IP address, or a name.
    #
    ##############################################################################

    class GeoSearch < Choreography

      ####
      #  Create a new instance of the GeoSearch Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/PlacesAndGeo/GeoSearch")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GeoSearchInputSet
      ####
      def new_input_set()
        return GeoSearchInputSet.new()
      end

      def make_result_set()
        return GeoSearchResultSet.new()
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
        results = GeoSearchResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GeoSearch
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GeoSearchInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Accuracy input for this Choreo. 
        # 
        # @param String - (optional, string) A hint on the "region" in which to search. If a number, then this is a radius in meters. You can also specify feet by using the ft suffix (i.e. 5ft).
        ###

        def set_Accuracy(value)
          set_input("Accuracy", value)
        end
        #### 
        # Set the value of the Callback input for this Choreo. 
        # 
        # @param String - (optional, string) If supplied, the response will use the JSONP format with a callback of the given name.
        ###

        def set_Callback(value)
          set_input("Callback", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ContainedWithin input for this Choreo. 
        # 
        # @param String - (optional, string) This is the place_id which you would like to restrict the search results to. This id can be retrieved with the GetPlaceInformation Choreo.
        ###

        def set_ContainedWithin(value)
          set_input("ContainedWithin", value)
        end
        #### 
        # Set the value of the Granularity input for this Choreo. 
        # 
        # @param String - (optional, string) This is the minimal granularity of place types to return and must be one of: poi, neighborhood, city, admin or country. Defaults to neighborhood.
        ###

        def set_Granularity(value)
          set_input("Granularity", value)
        end
        #### 
        # Set the value of the IP input for this Choreo. 
        # 
        # @param String - (conditional, string) An IP address. Used when attempting to fix geolocation based off of the user's IP address. You must provide Latitude and Longitude, IP, or Query.
        ###

        def set_IP(value)
          set_input("IP", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The latitude to search around. You must provide Latitude and Longitude, IP, or Query.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The longitude to search around. You must provide Latitude and Longitude, IP, or Query.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
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
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (conditional, string) Free-form text to match against while executing a geo-based query. You must provide Latitude and Longitude, IP, or Query.
        ###

        def set_Query(value)
          set_input("Query", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GeoSearch Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GeoSearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      end

    end # class GeoSearch



    ##############################################################################
    #
    # GetPlaceInformation
    #
    # Searches for places that can be attached to a statuses/update using a latitude and a longitude pair, an IP address, or a name.
    #
    ##############################################################################

    class GetPlaceInformation < Choreography

      ####
      #  Create a new instance of the GetPlaceInformation Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/PlacesAndGeo/GetPlaceInformation")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetPlaceInformationInputSet
      ####
      def new_input_set()
        return GetPlaceInformationInputSet.new()
      end

      def make_result_set()
        return GetPlaceInformationResultSet.new()
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
        results = GetPlaceInformationResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetPlaceInformation
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetPlaceInformationInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the PlaceId input for this Choreo. 
        # 
        # @param String - (required, string) The id for a place in the world. These IDs can be retrieved from the ReverseGeocode Choreo.
        ###

        def set_PlaceId(value)
          set_input("PlaceId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetPlaceInformation Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetPlaceInformationResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class GetPlaceInformation



    ##############################################################################
    #
    # ReverseGeocode
    #
    # Given a latitude and a longitude coordinates, returns up to 20 places that can be used as a Place ID when updating a status.
    #
    ##############################################################################

    class ReverseGeocode < Choreography

      ####
      #  Create a new instance of the ReverseGeocode Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/PlacesAndGeo/ReverseGeocode")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReverseGeocodeInputSet
      ####
      def new_input_set()
        return ReverseGeocodeInputSet.new()
      end

      def make_result_set()
        return ReverseGeocodeResultSet.new()
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
        results = ReverseGeocodeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ReverseGeocode
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReverseGeocodeInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Accuracy input for this Choreo. 
        # 
        # @param String - (optional, string) A hint on the "region" in which to search. If a number, then this is a radius in meters. You can also specify feet by using the ft suffix (i.e. 5ft).
        ###

        def set_Accuracy(value)
          set_input("Accuracy", value)
        end
        #### 
        # Set the value of the Callback input for this Choreo. 
        # 
        # @param String - (optional, string) If supplied, the response will use the JSONP format with a callback of the given name.
        ###

        def set_Callback(value)
          set_input("Callback", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Granularity input for this Choreo. 
        # 
        # @param String - (optional, string) This is the minimal granularity of place types to return and must be one of: poi, neighborhood, city, admin or country. Defaults to neighborhood.
        ###

        def set_Granularity(value)
          set_input("Granularity", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude to search around.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude to search around.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the MaxResults input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The maximum number of results to return.
        ###

        def set_MaxResults(value)
          set_input("MaxResults", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ReverseGeocode Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReverseGeocodeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      end

    end # class ReverseGeocode



    ##############################################################################
    #
    # SimilarPlaces
    #
    # Locates places near the given coordinates which have a similar name.
    #
    ##############################################################################

    class SimilarPlaces < Choreography

      ####
      #  Create a new instance of the SimilarPlaces Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/PlacesAndGeo/SimilarPlaces")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SimilarPlacesInputSet
      ####
      def new_input_set()
        return SimilarPlacesInputSet.new()
      end

      def make_result_set()
        return SimilarPlacesResultSet.new()
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
        results = SimilarPlacesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SimilarPlaces
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SimilarPlacesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the Callback input for this Choreo. 
        # 
        # @param String - (optional, string) If supplied, the response will use the JSONP format with a callback of the given name.
        ###

        def set_Callback(value)
          set_input("Callback", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ContainedWithin input for this Choreo. 
        # 
        # @param String - (optional, string) This is the place_id which you would like to restrict the search results to. This id can be retrieved with the GetPlaceInformation Choreo.
        ###

        def set_ContainedWithin(value)
          set_input("ContainedWithin", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude to search around.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude to search around.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
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
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) The name of the place.
        ###

        def set_Name(value)
          set_input("Name", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SimilarPlaces Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SimilarPlacesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      end

    end # class SimilarPlaces




  end # module PlacesAndGeo

  module Search



    ##############################################################################
    #
    # Query
    #
    # Retrieves tweets that match a specified query.
    #
    ##############################################################################

    class Query < Choreography

      ####
      #  Create a new instance of the Query Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Search/Query")
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
        # Set the value of the Geocode input for this Choreo. 
        # 
        # @param String - (optional, string) Returns tweets by users located within a given radius of the given latitude/longitude. Should be specified in a string like "latitude,longitude,radius" (i.e. 37.781157,-122.398720,1mi).
        ###

        def set_Geocode(value)
          set_input("Geocode", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true or 1, each tweet will include a node called "entities". This node offers a variety of extra metadata about the tweet.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the Language input for this Choreo. 
        # 
        # @param String - (optional, string) Restricts tweets to the given language, given by an ISO 639-1 code.
        ###

        def set_Language(value)
          set_input("Language", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The page number (starting at 1) to return, up to a max of roughly 1500 results. Used in conjunction with the ResultPerPage input.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) A search string to use for the query.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the format of the response from Twitter: json, or atom.  Default is set to atom.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ResultType input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies what type of search results you would prefer to receive. Valid values are: mixed, recent, or popular.
        ###

        def set_ResultType(value)
          set_input("ResultType", value)
        end
        #### 
        # Set the value of the ResultsPerPage input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of tweets to return per page, up to a max of 100.
        ###

        def set_ResultsPerPage(value)
          set_input("ResultsPerPage", value)
        end
        #### 
        # Set the value of the ShowUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When true, prepends ":" to the beginning of the tweet. This is useful for readers that do not display Atom's author field.
        ###

        def set_ShowUser(value)
          set_input("ShowUser", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns results with an ID greater than (that is, more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Returns tweets generated before the given date. Date should be formatted as YYYY-MM-DD.
        ###

        def set_Until(value)
          set_input("Until", value)
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
      	# @return String - The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Query



    ##############################################################################
    #
    # Tweets
    #
    # Retrieves a collection of relevant Tweets matching a specified query.
    #
    ##############################################################################

    class Tweets < Choreography

      ####
      #  Create a new instance of the Tweets Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Search/Tweets")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TweetsInputSet
      ####
      def new_input_set()
        return TweetsInputSet.new()
      end

      def make_result_set()
        return TweetsResultSet.new()
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
        results = TweetsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Tweets
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TweetsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the Geocode input for this Choreo. 
        # 
        # @param String - (optional, string) Returns tweets by users located within a given radius of the given latitude/longitude. Formatted like: 37.781157,-122.398720,1mi.
        ###

        def set_Geocode(value)
          set_input("Geocode", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the Language input for this Choreo. 
        # 
        # @param String - (optional, string) Restricts tweets to the given language, given by an ISO 639-1 code.
        ###

        def set_Language(value)
          set_input("Language", value)
        end
        #### 
        # Set the value of the MaxId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxId(value)
          set_input("MaxId", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (required, string) A search query of up to 1,000 characters.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResultType input for this Choreo. 
        # 
        # @param String - (optional, string) Specifies what type of search results you want to receive. The default is "mixed." Valid values are: mixed, recent, and popular.
        ###

        def set_ResultType(value)
          set_input("ResultType", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the Until input for this Choreo. 
        # 
        # @param String - (optional, date) Returns tweets generated before the given date. Date should be formatted as YYYY-MM-DD.
        ###

        def set_Until(value)
          set_input("Until", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Tweets Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TweetsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class Tweets




  end # module Search

  module SuggestedUsers



    ##############################################################################
    #
    # GetSuggestedUsers
    #
    # Retrieves users in a given category of the Twitter suggested user list.
    #
    ##############################################################################

    class GetSuggestedUsers < Choreography

      ####
      #  Create a new instance of the GetSuggestedUsers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/SuggestedUsers/GetSuggestedUsers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetSuggestedUsersInputSet
      ####
      def new_input_set()
        return GetSuggestedUsersInputSet.new()
      end

      def make_result_set()
        return GetSuggestedUsersResultSet.new()
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
        results = GetSuggestedUsersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetSuggestedUsers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetSuggestedUsersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Language input for this Choreo. 
        # 
        # @param String - (optional, string) Restricts the suggested categories to the requested language. The language must be specified by the appropriate two letter ISO 639-1 code (e.g., en).
        ###

        def set_Language(value)
          set_input("Language", value)
        end
        #### 
        # Set the value of the Members input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, makes a request to users/suggestions/:slug/members and retrieves the most recent statuses for users that are not protected.
        ###

        def set_Members(value)
          set_input("Members", value)
        end
        #### 
        # Set the value of the Slug input for this Choreo. 
        # 
        # @param String - (required, string) The short name of  the category (e.g., news, technology, government). These are returned in the response of the GetSuggestedCategories Choreo.
        ###

        def set_Slug(value)
          set_input("Slug", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetSuggestedUsers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetSuggestedUsersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetSuggestedUsers



    ##############################################################################
    #
    # GetUserCategories
    #
    # Retrieves the list of suggested user categories.
    #
    ##############################################################################

    class GetUserCategories < Choreography

      ####
      #  Create a new instance of the GetUserCategories Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/SuggestedUsers/GetUserCategories")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetUserCategoriesInputSet
      ####
      def new_input_set()
        return GetUserCategoriesInputSet.new()
      end

      def make_result_set()
        return GetUserCategoriesResultSet.new()
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
        results = GetUserCategoriesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetUserCategories
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetUserCategoriesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Language input for this Choreo. 
        # 
        # @param String - (optional, string) Restricts the suggested categories to the requested language. The language must be specified by the appropriate two letter ISO 639-1 code (e.g., en). 
        ###

        def set_Language(value)
          set_input("Language", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetUserCategories Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetUserCategoriesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class GetUserCategories




  end # module SuggestedUsers

  module Timelines



    ##############################################################################
    #
    # HomeTimeline
    #
    # Retrieves a collection of the most recent Tweets and retweets posted by the authenticating user and the users they follow.
    #
    ##############################################################################

    class HomeTimeline < Choreography

      ####
      #  Create a new instance of the HomeTimeline Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Timelines/HomeTimeline")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return HomeTimelineInputSet
      ####
      def new_input_set()
        return HomeTimelineInputSet.new()
      end

      def make_result_set()
        return HomeTimelineResultSet.new()
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
        results = HomeTimelineResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the HomeTimeline
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class HomeTimelineInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ContributorDetails input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to true to include the screen_name of the contributor. By default only the user_id of the contributor is included.
        ###

        def set_ContributorDetails(value)
          set_input("ContributorDetails", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the ExcludeReplies input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to true to prevent replies from appearing in the returned timeline.
        ###

        def set_ExcludeReplies(value)
          set_input("ExcludeReplies", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the MaxId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxId(value)
          set_input("MaxId", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the HomeTimeline Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class HomeTimelineResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      end

    end # class HomeTimeline



    ##############################################################################
    #
    # Mentions
    #
    # Retrieves the 20 most recent mentions for the authenticating user.
    #
    ##############################################################################

    class Mentions < Choreography

      ####
      #  Create a new instance of the Mentions Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Timelines/Mentions")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MentionsInputSet
      ####
      def new_input_set()
        return MentionsInputSet.new()
      end

      def make_result_set()
        return MentionsResultSet.new()
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
        results = MentionsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Mentions
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MentionsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.n
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ContributorDetails input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to true to include the screen_name of the contributor. By default only the user_id of the contributor is included.
        ###

        def set_ContributorDetails(value)
          set_input("ContributorDetails", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of tweets to retrieve. Must be less than or equal to 200. Defaults to 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the MaxId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxId(value)
          set_input("MaxId", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false, which returns the complete user object.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Mentions Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MentionsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class Mentions



    ##############################################################################
    #
    # PublicTimeline
    #
    # Retrieves the 20 most recent statuses, including retweets if they exist, from non-protected users.
    #
    ##############################################################################

    class PublicTimeline < Choreography

      ####
      #  Create a new instance of the PublicTimeline Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Timelines/PublicTimeline")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PublicTimelineInputSet
      ####
      def new_input_set()
        return PublicTimelineInputSet.new()
      end

      def make_result_set()
        return PublicTimelineResultSet.new()
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
        results = PublicTimelineResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PublicTimeline
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PublicTimelineInputSet < Choreography::InputSet

        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) An advanced option for returning more verbose metadata. When set to either true or 1, each tweet will include a node called "entities".
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the format of the response from Twitter: json, or xml.  Default is set to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true, t or 1, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PublicTimeline Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PublicTimelineResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PublicTimeline



    ##############################################################################
    #
    # RetweetedByMe
    #
    # Retrieves the 20 most recent retweets posted by the authenticating user.
    #
    ##############################################################################

    class RetweetedByMe < Choreography

      ####
      #  Create a new instance of the RetweetedByMe Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Timelines/RetweetedByMe")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetweetedByMeInputSet
      ####
      def new_input_set()
        return RetweetedByMeInputSet.new()
      end

      def make_result_set()
        return RetweetedByMeResultSet.new()
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
        results = RetweetedByMeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetweetedByMe
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetweetedByMeInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) An advanced option for returning more verbose metadata. When set to either true or 1, each tweet will include a node called "entities".
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the MaxId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxId(value)
          set_input("MaxId", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page of results to retrieve.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the format of the response from Twitter: json, or xml.  Default is set to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true, t or 1, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetweetedByMe Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetweetedByMeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetweetedByMe



    ##############################################################################
    #
    # RetweetedByUser
    #
    # Retrieves the 20 most recent retweets posted by the specified user.
    #
    ##############################################################################

    class RetweetedByUser < Choreography

      ####
      #  Create a new instance of the RetweetedByUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Timelines/RetweetedByUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetweetedByUserInputSet
      ####
      def new_input_set()
        return RetweetedByUserInputSet.new()
      end

      def make_result_set()
        return RetweetedByUserResultSet.new()
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
        results = RetweetedByUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetweetedByUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetweetedByUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (conditional, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ContributorDetails input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to either true, t or 1 to include the screen_name of the contributor. By default only the user_id of the contributor is included.
        ###

        def set_ContributorDetails(value)
          set_input("ContributorDetails", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the ExcludeReplies input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to either true, t or 1 to prevent replies from appearing in the returned timeline.
        ###

        def set_ExcludeReplies(value)
          set_input("ExcludeReplies", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) An advanced option for returning more verbose metadata. When set to either true or 1, each tweet will include a node called "entities".
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the IncludeRetweets input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true or 1, the timeline will contain native retweets (if they exist) in addition to the standard stream of tweets.
        ###

        def set_IncludeRetweets(value)
          set_input("IncludeRetweets", value)
        end
        #### 
        # Set the value of the MaxId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxId(value)
          set_input("MaxId", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page of results to retrieve.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the format of the response from Twitter: json, or xml.  Default is set to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (required, string) The screen name of the user for whom to return results for.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true, t or 1, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of the user for whom to return results for. Required unless providing a ScreenName.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetweetedByUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetweetedByUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetweetedByUser



    ##############################################################################
    #
    # RetweetedToMe
    #
    # Retrieves the 20 most recent retweets posted by users that the authenticating user follows.
    #
    ##############################################################################

    class RetweetedToMe < Choreography

      ####
      #  Create a new instance of the RetweetedToMe Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Timelines/RetweetedToMe")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetweetedToMeInputSet
      ####
      def new_input_set()
        return RetweetedToMeInputSet.new()
      end

      def make_result_set()
        return RetweetedToMeResultSet.new()
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
        results = RetweetedToMeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetweetedToMe
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetweetedToMeInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) An advanced option for returning more verbose metadata. When set to either true or 1, each tweet will include a node called "entities".
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the MaxId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxId(value)
          set_input("MaxId", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page of results to retrieve.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the format of the response from Twitter: json, or xml.  Default is set to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true, t or 1, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetweetedToMe Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetweetedToMeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetweetedToMe



    ##############################################################################
    #
    # RetweetedToUser
    #
    # Retrieves the 20 most recent retweets posted by users the specified user follows.
    #
    ##############################################################################

    class RetweetedToUser < Choreography

      ####
      #  Create a new instance of the RetweetedToUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Timelines/RetweetedToUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetweetedToUserInputSet
      ####
      def new_input_set()
        return RetweetedToUserInputSet.new()
      end

      def make_result_set()
        return RetweetedToUserResultSet.new()
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
        results = RetweetedToUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetweetedToUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetweetedToUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (conditional, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ContributorDetails input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to either true, t or 1 to include the screen_name of the contributor. By default only the user_id of the contributor is included.
        ###

        def set_ContributorDetails(value)
          set_input("ContributorDetails", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the ExcludeReplies input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to either true, t or 1 to prevent replies from appearing in the returned timeline.
        ###

        def set_ExcludeReplies(value)
          set_input("ExcludeReplies", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) An advanced option for returning more verbose metadata. When set to either true or 1, each tweet will include a node called "entities".
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the IncludeRetweets input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true or 1,the timeline will contain native retweets (if they exist) in addition to the standard stream of tweets.
        ###

        def set_IncludeRetweets(value)
          set_input("IncludeRetweets", value)
        end
        #### 
        # Set the value of the MaxId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxId(value)
          set_input("MaxId", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page of results to retrieve.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the format of the response from Twitter: json, or xml.  Default is set to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user for whom to return results for. Required unless providing a UserId.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true, t or 1, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) The ID of the user for whom to return results for. Required unless providing a ScreenName.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetweetedToUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetweetedToUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetweetedToUser



    ##############################################################################
    #
    # RetweetsOfMe
    #
    # Retrieves the most recent tweets posted by the authenticating user that have recently been retweeted by others.
    #
    ##############################################################################

    class RetweetsOfMe < Choreography

      ####
      #  Create a new instance of the RetweetsOfMe Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Timelines/RetweetsOfMe")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetweetsOfMeInputSet
      ####
      def new_input_set()
        return RetweetsOfMeInputSet.new()
      end

      def make_result_set()
        return RetweetsOfMeResultSet.new()
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
        results = RetweetsOfMeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetweetsOfMe
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetweetsOfMeInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The tweets "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the IncludeUserEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The user "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeUserEntities(value)
          set_input("IncludeUserEntities", value)
        end
        #### 
        # Set the value of the MaxId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxId(value)
          set_input("MaxId", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetweetsOfMe Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetweetsOfMeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      end

    end # class RetweetsOfMe



    ##############################################################################
    #
    # UserTimeline
    #
    # Retrieves a collection of the most recent Tweets posted by the user whose screen_name or user_id is indicated.
    #
    ##############################################################################

    class UserTimeline < Choreography

      ####
      #  Create a new instance of the UserTimeline Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Timelines/UserTimeline")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UserTimelineInputSet
      ####
      def new_input_set()
        return UserTimelineInputSet.new()
      end

      def make_result_set()
        return UserTimelineResultSet.new()
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
        results = UserTimelineResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UserTimeline
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UserTimelineInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (conditional, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ContributorDetails input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to true to include the screen_name of the contributor. By default only the user_id of the contributor is included.
        ###

        def set_ContributorDetails(value)
          set_input("ContributorDetails", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to retrieve. Must be less than or equal to 200. Defaults to 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the ExcludeReplies input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to true to prevent replies from appearing in the returned timeline.
        ###

        def set_ExcludeReplies(value)
          set_input("ExcludeReplies", value)
        end
        #### 
        # Set the value of the IncludeRetweets input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, the response will include the "entities" node.
        ###

        def set_IncludeRetweets(value)
          set_input("IncludeRetweets", value)
        end
        #### 
        # Set the value of the MaxId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID less than (older than) or equal to the specified ID.
        ###

        def set_MaxId(value)
          set_input("MaxId", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) Screen name of the user to return results for. Required unless providing the UserId.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the SinceId input for this Choreo. 
        # 
        # @param String - (optional, string) Returns results with an ID greater than (more recent than) the specified ID.
        ###

        def set_SinceId(value)
          set_input("SinceId", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (conditional, string) ID of the user to return results for. Required unless providing the ScreenName.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UserTimeline Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UserTimelineResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class UserTimeline




  end # module Timelines

  module Trends



    ##############################################################################
    #
    # Available
    #
    # Retrieves the locations that Twitter has trending topic information for.
    #
    ##############################################################################

    class Available < Choreography

      ####
      #  Create a new instance of the Available Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Trends/Available")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AvailableInputSet
      ####
      def new_input_set()
        return AvailableInputSet.new()
      end

      def make_result_set()
        return AvailableResultSet.new()
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
        results = AvailableResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Available
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AvailableInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Available Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AvailableResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Available



    ##############################################################################
    #
    # Closest
    #
    # Retrieves locations closest to a specified location that Twitter has trending topic info for.
    #
    ##############################################################################

    class Closest < Choreography

      ####
      #  Create a new instance of the Closest Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Trends/Closest")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ClosestInputSet
      ####
      def new_input_set()
        return ClosestInputSet.new()
      end

      def make_result_set()
        return ClosestResultSet.new()
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
        results = ClosestResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Closest
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ClosestInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude coordinate of the location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude coordinate of the location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Closest Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ClosestResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      end

    end # class Closest



    ##############################################################################
    #
    # Daily
    #
    # Retrieves the top 20 trending topics for each hour in a given day.
    #
    ##############################################################################

    class Daily < Choreography

      ####
      #  Create a new instance of the Daily Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Trends/Daily")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DailyInputSet
      ####
      def new_input_set()
        return DailyInputSet.new()
      end

      def make_result_set()
        return DailyResultSet.new()
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
        results = DailyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Daily
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DailyInputSet < Choreography::InputSet

        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The start date for the report. The date should be formatted YYYY-MM-DD.
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Exclude input for this Choreo. 
        # 
        # @param String - (optional, string) Setting this equal to hashtags will remove all hashtags from the trends list.
        ###

        def set_Exclude(value)
          set_input("Exclude", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the format of the response from Twitter: json, or xml.  Default is set to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Daily Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DailyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Daily



    ##############################################################################
    #
    # Place
    #
    # Retrieves the top 10 trending topics for a specific WOEID.
    #
    ##############################################################################

    class Place < Choreography

      ####
      #  Create a new instance of the Place Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Trends/Place")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PlaceInputSet
      ####
      def new_input_set()
        return PlaceInputSet.new()
      end

      def make_result_set()
        return PlaceResultSet.new()
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
        results = PlaceResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Place
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PlaceInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Exclude input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) If set to "hashtags", all hashtags from the trends list will be removed.
        ###

        def set_Exclude(value)
          set_input("Exclude", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The (WOEID) Yahoo! Where On Earth ID of the location to return trending information for. Global information is available by setting this parameter to 1.
        ###

        def set_ID(value)
          set_input("ID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Place Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PlaceResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Place



    ##############################################################################
    #
    # Weekly
    #
    # Retrieves the top 30 trending topics for each day in a given week.
    #
    ##############################################################################

    class Weekly < Choreography

      ####
      #  Create a new instance of the Weekly Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Trends/Weekly")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return WeeklyInputSet
      ####
      def new_input_set()
        return WeeklyInputSet.new()
      end

      def make_result_set()
        return WeeklyResultSet.new()
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
        results = WeeklyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Weekly
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class WeeklyInputSet < Choreography::InputSet

        #### 
        # Set the value of the Date input for this Choreo. 
        # 
        # @param String - (optional, date) The start date for the report. The date should be formatted YYYY-MM-DD.
        ###

        def set_Date(value)
          set_input("Date", value)
        end
        #### 
        # Set the value of the Exclude input for this Choreo. 
        # 
        # @param String - (optional, string) Setting this equal to hashtags will remove all hashtags from the trends list.
        ###

        def set_Exclude(value)
          set_input("Exclude", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the format of the response from Twitter: json, or xml.  Default is set to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Weekly Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class WeeklyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Weekly




  end # module Trends

  module Tweets



    ##############################################################################
    #
    # GetRetweeters
    #
    # Retrieves a collection of up to 100 user IDs belonging to users who have retweeted the specified tweet.
    #
    ##############################################################################

    class GetRetweeters < Choreography

      ####
      #  Create a new instance of the GetRetweeters Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Tweets/GetRetweeters")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRetweetersInputSet
      ####
      def new_input_set()
        return GetRetweetersInputSet.new()
      end

      def make_result_set()
        return GetRetweetersResultSet.new()
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
        results = GetRetweetersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRetweeters
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRetweetersInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Cursor input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Allows you to pass in the previous_cursor or next_cursor in order to page through results.
        ###

        def set_Cursor(value)
          set_input("Cursor", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The numerical ID of the desired status.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the StringifyIDs input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A boolean flag indicating that IDs should be returned as strings.
        ###

        def set_StringifyIDs(value)
          set_input("StringifyIDs", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRetweeters Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRetweetersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      end

    end # class GetRetweeters



    ##############################################################################
    #
    # GetRetweets
    #
    # Retrieves up to 100 of the first retweets of a given tweet.
    #
    ##############################################################################

    class GetRetweets < Choreography

      ####
      #  Create a new instance of the GetRetweets Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Tweets/GetRetweets")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetRetweetsInputSet
      ####
      def new_input_set()
        return GetRetweetsInputSet.new()
      end

      def make_result_set()
        return GetRetweetsResultSet.new()
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
        results = GetRetweetsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetRetweets
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetRetweetsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of records to, up to a maximum of 100.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The numerical ID of the tweet to retrieve retweets for.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetRetweets Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetRetweetsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class GetRetweets



    ##############################################################################
    #
    # RetweetedBy
    #
    # Retrieves user objects of up to 100 members who retweeted a specified status.
    #
    ##############################################################################

    class RetweetedBy < Choreography

      ####
      #  Create a new instance of the RetweetedBy Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Tweets/RetweetedBy")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetweetedByInputSet
      ####
      def new_input_set()
        return RetweetedByInputSet.new()
      end

      def make_result_set()
        return RetweetedByResultSet.new()
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
        results = RetweetedByResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetweetedBy
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetweetedByInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (conditional, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of retweets to try and retrieve, up to a maximum of 100.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The numerical ID of the desired status.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page of results to retrieve.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the format of the response from Twitter: json, or xml.  Default is set to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetweetedBy Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetweetedByResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetweetedBy



    ##############################################################################
    #
    # RetweetedByIDs
    #
    # Retrieves user IDs of up to 100 users who retweeted the status.
    #
    ##############################################################################

    class RetweetedByIDs < Choreography

      ####
      #  Create a new instance of the RetweetedByIDs Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Tweets/RetweetedByIDs")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RetweetedByIDsInputSet
      ####
      def new_input_set()
        return RetweetedByIDsInputSet.new()
      end

      def make_result_set()
        return RetweetedByIDsResultSet.new()
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
        results = RetweetedByIDsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RetweetedByIDs
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RetweetedByIDsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the number of ids to try and retrieve, up to a maximum of 100.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param Integer - (required, integer) The numerical ID of the desired status.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page of results to retrieve.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) Specify the format of the response from Twitter: json, or xml.  Default is set to xml.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the StringifyIDs input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Many programming environments will not consume Twitter's Tweet IDs due to their size. Set this option to 1 to have ids returned as strings instead.
        ###

        def set_StringifyIDs(value)
          set_input("StringifyIDs", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RetweetedByIDs Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RetweetedByIDsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RetweetedByIDs



    ##############################################################################
    #
    # StatusesDestroy
    #
    # Deletes a specified status.
    #
    ##############################################################################

    class StatusesDestroy < Choreography

      ####
      #  Create a new instance of the StatusesDestroy Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Tweets/StatusesDestroy")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return StatusesDestroyInputSet
      ####
      def new_input_set()
        return StatusesDestroyInputSet.new()
      end

      def make_result_set()
        return StatusesDestroyResultSet.new()
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
        results = StatusesDestroyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the StatusesDestroy
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class StatusesDestroyInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The numerical ID of the status to delete.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the StatusesDestroy Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class StatusesDestroyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class StatusesDestroy



    ##############################################################################
    #
    # StatusesShow
    #
    # Retrieves a single Tweet with a given ID.
    #
    ##############################################################################

    class StatusesShow < Choreography

      ####
      #  Create a new instance of the StatusesShow Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Tweets/StatusesShow")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return StatusesShowInputSet
      ####
      def new_input_set()
        return StatusesShowInputSet.new()
      end

      def make_result_set()
        return StatusesShowResultSet.new()
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
        results = StatusesShowResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the StatusesShow
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class StatusesShowInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the ID input for this Choreo. 
        # 
        # @param String - (required, string) The numerical ID of the desired Tweet.
        ###

        def set_ID(value)
          set_input("ID", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the IncludeMyRetweet input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, any Tweets returned that have been retweeted by the authenticating user will include an additional current_user_retweet node, containing the ID of the source status for the retweet.
        ###

        def set_IncludeMyRetweet(value)
          set_input("IncludeMyRetweet", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, each tweet returned in a timeline will include a user object including only the status authors numerical ID. Defaults to false.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the StatusesShow Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class StatusesShowResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class StatusesShow



    ##############################################################################
    #
    # StatusesUpdate
    #
    # Allows you to update your Twitter status (aka Tweet).
    #
    ##############################################################################

    class StatusesUpdate < Choreography

      ####
      #  Create a new instance of the StatusesUpdate Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Tweets/StatusesUpdate")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return StatusesUpdateInputSet
      ####
      def new_input_set()
        return StatusesUpdateInputSet.new()
      end

      def make_result_set()
        return StatusesUpdateResultSet.new()
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
        results = StatusesUpdateResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the StatusesUpdate
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class StatusesUpdateInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the DisplayCoordinates input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Whether or not to put a pin on the exact coordinates a tweet has been sent from.
        ###

        def set_DisplayCoordinates(value)
          set_input("DisplayCoordinates", value)
        end
        #### 
        # Set the value of the InReplyTo input for this Choreo. 
        # 
        # @param String - (optional, string) The ID of an existing status that the update is in reply to.
        ###

        def set_InReplyTo(value)
          set_input("InReplyTo", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The latitude of the location this tweet refers to.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The longitude of the location this tweet refers to.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the PlaceID input for this Choreo. 
        # 
        # @param String - (optional, string) The ID associated with a place in the world. These IDs can be retrieved from the PlacesAndGeo.ReverseGeocode Choreo.
        ###

        def set_PlaceID(value)
          set_input("PlaceID", value)
        end
        #### 
        # Set the value of the StatusUpdate input for this Choreo. 
        # 
        # @param String - (required, string) The text for your status update. 140-character limit.
        ###

        def set_StatusUpdate(value)
          set_input("StatusUpdate", value)
        end
        #### 
        # Set the value of the TrimUser input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to either true, each tweet returned in a timeline will include a user object including only the status authors numerical ID.
        ###

        def set_TrimUser(value)
          set_input("TrimUser", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the StatusesUpdate Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class StatusesUpdateResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class StatusesUpdate




  end # module Tweets

  module Users



    ##############################################################################
    #
    # GetAccountSettings
    #
    # Retrieves settings for the authenticating user including trend, geo, and sleep time information.
    #
    ##############################################################################

    class GetAccountSettings < Choreography

      ####
      #  Create a new instance of the GetAccountSettings Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Users/GetAccountSettings")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetAccountSettingsInputSet
      ####
      def new_input_set()
        return GetAccountSettingsInputSet.new()
      end

      def make_result_set()
        return GetAccountSettingsResultSet.new()
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
        results = GetAccountSettingsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetAccountSettings
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetAccountSettingsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetAccountSettings Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetAccountSettingsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class GetAccountSettings



    ##############################################################################
    #
    # Lookup
    #
    # Returns user objects for up to 100 Twitter users.
    #
    ##############################################################################

    class Lookup < Choreography

      ####
      #  Create a new instance of the Lookup Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Users/Lookup")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LookupInputSet
      ####
      def new_input_set()
        return LookupInputSet.new()
      end

      def make_result_set()
        return LookupResultSet.new()
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
        results = LookupResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Lookup
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LookupInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, the response will include the "entities" node.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) A comma-separated list of up to 100 screen names. Required if UserId isn't specified.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param Integer - (conditional, integer) A comma-separated list of up to 100 user IDs. Required if ScreenName isn't specified.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Lookup Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LookupResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Lookup



    ##############################################################################
    #
    # Search
    #
    # Allows you to search public user accounts on Twitter.
    #
    ##############################################################################

    class Search < Choreography

      ####
      #  Create a new instance of the Search Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Users/Search")
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
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Count input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of potential user results to retrieve per page. This value has a maximum of 20.
        ###

        def set_Count(value)
          set_input("Count", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the Page input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specifies the page of results to retrieve.
        ###

        def set_Page(value)
          set_input("Page", value)
        end
        #### 
        # Set the value of the SearchString input for this Choreo. 
        # 
        # @param String - (required, string) The string used to search for users.
        ###

        def set_SearchString(value)
          set_input("SearchString", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Search Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Search



    ##############################################################################
    #
    # Show
    #
    # Retrieves information about a specific Twitter user.
    #
    ##############################################################################

    class Show < Choreography

      ####
      #  Create a new instance of the Show Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Users/Show")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ShowInputSet
      ####
      def new_input_set()
        return ShowInputSet.new()
      end

      def make_result_set()
        return ShowResultSet.new()
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
        results = ShowResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Show
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ShowInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the IncludeEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeEntities(value)
          set_input("IncludeEntities", value)
        end
        #### 
        # Set the value of the ScreenName input for this Choreo. 
        # 
        # @param String - (conditional, string) The screen name of the user for whom to return results for. Required if UserId isn't specified.
        ###

        def set_ScreenName(value)
          set_input("ScreenName", value)
        end
        #### 
        # Set the value of the UserId input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the user for whom to return results for. Required if ScreenName isn't specified.
        ###

        def set_UserId(value)
          set_input("UserId", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Show Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ShowResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      end

    end # class Show



    ##############################################################################
    #
    # UpdateAccountSettings
    #
    # Updates the authenticating user's settings such as trend location and sleep time settings.
    #
    ##############################################################################

    class UpdateAccountSettings < Choreography

      ####
      #  Create a new instance of the UpdateAccountSettings Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Users/UpdateAccountSettings")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateAccountSettingsInputSet
      ####
      def new_input_set()
        return UpdateAccountSettingsInputSet.new()
      end

      def make_result_set()
        return UpdateAccountSettingsResultSet.new()
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
        results = UpdateAccountSettingsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateAccountSettings
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateAccountSettingsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the EndSleepTime input for this Choreo. 
        # 
        # @param String - (optional, string) The hour that sleep time should end if it is enabled. The value should be provided in ISO8601 format (e.g., 00-23).
        ###

        def set_EndSleepTime(value)
          set_input("EndSleepTime", value)
        end
        #### 
        # Set the value of the Language input for this Choreo. 
        # 
        # @param String - (optional, string) The language which Twitter should render in for this user. The language must be specified by the appropriate two letter ISO 639-1 representation.
        ###

        def set_Language(value)
          set_input("Language", value)
        end
        #### 
        # Set the value of the SleepTimeEnabled input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, enables sleep time for the user. Sleep time is when push or SMS notifications should not be sent to the user.
        ###

        def set_SleepTimeEnabled(value)
          set_input("SleepTimeEnabled", value)
        end
        #### 
        # Set the value of the StartSleepTime input for this Choreo. 
        # 
        # @param String - (optional, string) The hour that sleep time should begin if it is enabled. The value should be provided in ISO8601 format (e.g., 00-23).
        ###

        def set_StartSleepTime(value)
          set_input("StartSleepTime", value)
        end
        #### 
        # Set the value of the Timezone input for this Choreo. 
        # 
        # @param String - (optional, string) The timezone dates and times that should be displayed for the user (e.g., Europe/Copenhagen, Pacific/Tongatapu)
        ###

        def set_Timezone(value)
          set_input("Timezone", value)
        end
        #### 
        # Set the value of the TrendLocationWOEID input for this Choreo. 
        # 
        # @param String - (optional, string) The Yahoo! Where On Earth ID to use as the user's default trend location.
        ###

        def set_TrendLocationWOEID(value)
          set_input("TrendLocationWOEID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateAccountSettings Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateAccountSettingsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      end

    end # class UpdateAccountSettings



    ##############################################################################
    #
    # UpdateProfile
    #
    # Updates values that users are able to set under "Account" tab of their settings page.
    #
    ##############################################################################

    class UpdateProfile < Choreography

      ####
      #  Create a new instance of the UpdateProfile Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Users/UpdateProfile")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateProfileInputSet
      ####
      def new_input_set()
        return UpdateProfileInputSet.new()
      end

      def make_result_set()
        return UpdateProfileResultSet.new()
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
        results = UpdateProfileResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateProfile
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateProfileInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) A description of the user owning the account. Maximum of 160 characters.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the IncludeUserEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The user "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeUserEntities(value)
          set_input("IncludeUserEntities", value)
        end
        #### 
        # Set the value of the Location input for this Choreo. 
        # 
        # @param String - (optional, string) The city or country describing where the user of the account is located.
        ###

        def set_Location(value)
          set_input("Location", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (optional, string) The full name associated with the profile. Maximum of 20 characters.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the SkipStatus input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, statuses will not be included in the returned user objects.
        ###

        def set_SkipStatus(value)
          set_input("SkipStatus", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (optional, string) URL associated with the profile.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateProfile Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateProfileResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateProfile



    ##############################################################################
    #
    # VerifyCredentials
    #
    # Allows you to test if supplied user credentials are valid.
    #
    ##############################################################################

    class VerifyCredentials < Choreography

      ####
      #  Create a new instance of the VerifyCredentials Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Twitter/Users/VerifyCredentials")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VerifyCredentialsInputSet
      ####
      def new_input_set()
        return VerifyCredentialsInputSet.new()
      end

      def make_result_set()
        return VerifyCredentialsResultSet.new()
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
        results = VerifyCredentialsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VerifyCredentials
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VerifyCredentialsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccessTokenSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token Secret provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessTokenSecret(value)
          set_input("AccessTokenSecret", value)
        end
        #### 
        # Set the value of the AccessToken input for this Choreo. 
        # 
        # @param String - (required, string) The Access Token provided by Twitter or retrieved during the OAuth process.
        ###

        def set_AccessToken(value)
          set_input("AccessToken", value)
        end
        #### 
        # Set the value of the ConsumerKey input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Key provided by Twitter.
        ###

        def set_ConsumerKey(value)
          set_input("ConsumerKey", value)
        end
        #### 
        # Set the value of the ConsumerSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Consumer Secret provided by Twitter.
        ###

        def set_ConsumerSecret(value)
          set_input("ConsumerSecret", value)
        end
        #### 
        # Set the value of the IncludeUserEntities input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) The user "entities" node containing extra metadata will not be included when set to false.
        ###

        def set_IncludeUserEntities(value)
          set_input("IncludeUserEntities", value)
        end
        #### 
        # Set the value of the SkipStatus input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) When set to true, statuses will not be included in the returned user objects.
        ###

        def set_SkipStatus(value)
          set_input("SkipStatus", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VerifyCredentials Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VerifyCredentialsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Limit" output from this Choreo execution
      	#
      	# @return String - (integer) The rate limit ceiling for this particular request.
      	####
      	def get_Limit()
      	  return @outputs["Limit"]
      	end
      	####
      	# Retrieve the value for the "Remaining" output from this Choreo execution
      	#
      	# @return String - (integer) The number of requests left for the 15 minute window.
      	####
      	def get_Remaining()
      	  return @outputs["Remaining"]
      	end
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Twitter.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      	####
      	# Retrieve the value for the "Reset" output from this Choreo execution
      	#
      	# @return String - (date) The remaining window before the rate limit resets in UTC epoch seconds.
      	####
      	def get_Reset()
      	  return @outputs["Reset"]
      	end
      end

    end # class VerifyCredentials




  end # module Users

end # module Twitter