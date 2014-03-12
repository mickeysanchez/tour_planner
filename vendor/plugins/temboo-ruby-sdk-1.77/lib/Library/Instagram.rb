require "temboo"

module Instagram



  ##############################################################################
  #
  # CreateMediaComment
  #
  # Creates a comment on a specified media object. 
  #
  ##############################################################################

  class CreateMediaComment < Choreography

    ####
    #  Create a new instance of the CreateMediaComment Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/CreateMediaComment")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return CreateMediaCommentInputSet
    ####
    def new_input_set()
      return CreateMediaCommentInputSet.new()
    end

    def make_result_set()
      return CreateMediaCommentResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = CreateMediaCommentResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the CreateMediaComment
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class CreateMediaCommentInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The access token retrieved during the OAuth 2.0 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the MediaID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the media object to leave a comment on.
      ###

      def set_MediaID(value)
        set_input("MediaID", value)
      end
      #### 
      # Set the value of the Text input for this Choreo. 
      # 
      # @param String - (required, string) The text to post as a comment on the media.
      ###

      def set_Text(value)
        set_input("Text", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the CreateMediaComment Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class CreateMediaCommentResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class CreateMediaComment



  ##############################################################################
  #
  # DeleteMediaComment
  #
  # Removes a specified comment from a user's media.
  #
  ##############################################################################

  class DeleteMediaComment < Choreography

    ####
    #  Create a new instance of the DeleteMediaComment Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/DeleteMediaComment")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return DeleteMediaCommentInputSet
    ####
    def new_input_set()
      return DeleteMediaCommentInputSet.new()
    end

    def make_result_set()
      return DeleteMediaCommentResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = DeleteMediaCommentResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the DeleteMediaComment
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class DeleteMediaCommentInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The access token retrieved during the OAuth 2.0 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the CommentID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the comment to delete.
      ###

      def set_CommentID(value)
        set_input("CommentID", value)
      end
      #### 
      # Set the value of the MediaID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the media object that you want to delete comments from.
      ###

      def set_MediaID(value)
        set_input("MediaID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the DeleteMediaComment Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class DeleteMediaCommentResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class DeleteMediaComment



  ##############################################################################
  #
  # GetFollowerRequests
  #
  # Retrieves a list of users who have requested permission to follow a given user.
  #
  ##############################################################################

  class GetFollowerRequests < Choreography

    ####
    #  Create a new instance of the GetFollowerRequests Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetFollowerRequests")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetFollowerRequestsInputSet
    ####
    def new_input_set()
      return GetFollowerRequestsInputSet.new()
    end

    def make_result_set()
      return GetFollowerRequestsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetFollowerRequestsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetFollowerRequests
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetFollowerRequestsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The access token retrieved during the OAuth 2.0 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetFollowerRequests Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetFollowerRequestsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetFollowerRequests



  ##############################################################################
  #
  # GetLikedMediaForUser
  #
  # Retrieves the authenticated user's list of media they've liked.
  #
  ##############################################################################

  class GetLikedMediaForUser < Choreography

    ####
    #  Create a new instance of the GetLikedMediaForUser Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetLikedMediaForUser")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetLikedMediaForUserInputSet
    ####
    def new_input_set()
      return GetLikedMediaForUserInputSet.new()
    end

    def make_result_set()
      return GetLikedMediaForUserResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetLikedMediaForUserResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetLikedMediaForUser
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetLikedMediaForUserInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The access token retrieved during the OAuth 2.0 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of results to return.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the MaxID input for this Choreo. 
      # 
      # @param String - (optional, string) Returns media liked before this id.
      ###

      def set_MaxID(value)
        set_input("MaxID", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (optional, string) The ID of the user to retrieve media for. Defaults to 'self' indicating that the authenticating user is assumed.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetLikedMediaForUser Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetLikedMediaForUserResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetLikedMediaForUser



  ##############################################################################
  #
  # GetLocationInformation
  #
  # Retrieves information about a location.
  #
  ##############################################################################

  class GetLocationInformation < Choreography

    ####
    #  Create a new instance of the GetLocationInformation Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetLocationInformation")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetLocationInformationInputSet
    ####
    def new_input_set()
      return GetLocationInformationInputSet.new()
    end

    def make_result_set()
      return GetLocationInformationResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetLocationInformationResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetLocationInformation
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetLocationInformationInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide an AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the LocationID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID for the location that you want to retrieve information for.
      ###

      def set_LocationID(value)
        set_input("LocationID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetLocationInformation Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetLocationInformationResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetLocationInformation



  ##############################################################################
  #
  # GetMediaByID
  #
  # Retrieves information about a specified media object.
  #
  ##############################################################################

  class GetMediaByID < Choreography

    ####
    #  Create a new instance of the GetMediaByID Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetMediaByID")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetMediaByIDInputSet
    ####
    def new_input_set()
      return GetMediaByIDInputSet.new()
    end

    def make_result_set()
      return GetMediaByIDResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetMediaByIDResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetMediaByID
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetMediaByIDInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide an AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the MediaID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the media object you want to retrieve.
      ###

      def set_MediaID(value)
        set_input("MediaID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetMediaByID Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetMediaByIDResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetMediaByID



  ##############################################################################
  #
  # GetMediaByLikes
  #
  # Retrieves a list of users who like the specified media.
  #
  ##############################################################################

  class GetMediaByLikes < Choreography

    ####
    #  Create a new instance of the GetMediaByLikes Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetMediaByLikes")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetMediaByLikesInputSet
    ####
    def new_input_set()
      return GetMediaByLikesInputSet.new()
    end

    def make_result_set()
      return GetMediaByLikesResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetMediaByLikesResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetMediaByLikes
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetMediaByLikesInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide an AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the MediaID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the media object you want to retrieve.
      ###

      def set_MediaID(value)
        set_input("MediaID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetMediaByLikes Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetMediaByLikesResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetMediaByLikes



  ##############################################################################
  #
  # GetMediaComments
  #
  # Retrieves a full list of comments for a specified media object.
  #
  ##############################################################################

  class GetMediaComments < Choreography

    ####
    #  Create a new instance of the GetMediaComments Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetMediaComments")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetMediaCommentsInputSet
    ####
    def new_input_set()
      return GetMediaCommentsInputSet.new()
    end

    def make_result_set()
      return GetMediaCommentsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetMediaCommentsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetMediaComments
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetMediaCommentsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide an AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the MediaID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the media object that you want to get comments for.
      ###

      def set_MediaID(value)
        set_input("MediaID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetMediaComments Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetMediaCommentsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetMediaComments



  ##############################################################################
  #
  # GetPopularMedia
  #
  # Retrieves a list of what media is most popular at the moment.
  #
  ##############################################################################

  class GetPopularMedia < Choreography

    ####
    #  Create a new instance of the GetPopularMedia Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetPopularMedia")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetPopularMediaInputSet
    ####
    def new_input_set()
      return GetPopularMediaInputSet.new()
    end

    def make_result_set()
      return GetPopularMediaResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetPopularMediaResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetPopularMedia
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetPopularMediaInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide an AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetPopularMedia Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetPopularMediaResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetPopularMedia



  ##############################################################################
  #
  # GetRecentMediaForLocation
  #
  # Retrieves a list of recent media objects from a given location.
  #
  ##############################################################################

  class GetRecentMediaForLocation < Choreography

    ####
    #  Create a new instance of the GetRecentMediaForLocation Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetRecentMediaForLocation")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetRecentMediaForLocationInputSet
    ####
    def new_input_set()
      return GetRecentMediaForLocationInputSet.new()
    end

    def make_result_set()
      return GetRecentMediaForLocationResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetRecentMediaForLocationResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetRecentMediaForLocation
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetRecentMediaForLocationInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide an AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the LocationID input for this Choreo. 
      # 
      # @param Integer - (required, integer) The ID for the location that you want to retrieve information for.
      ###

      def set_LocationID(value)
        set_input("LocationID", value)
      end
      #### 
      # Set the value of the MaxID input for this Choreo. 
      # 
      # @param String - (optional, string) Returns media after this max_id.
      ###

      def set_MaxID(value)
        set_input("MaxID", value)
      end
      #### 
      # Set the value of the MaxTimestamp input for this Choreo. 
      # 
      # @param String - (optional, date) Returns media before this UNIX timestamp.
      ###

      def set_MaxTimestamp(value)
        set_input("MaxTimestamp", value)
      end
      #### 
      # Set the value of the MinID input for this Choreo. 
      # 
      # @param String - (optional, string) Returns media before this min_id.
      ###

      def set_MinID(value)
        set_input("MinID", value)
      end
      #### 
      # Set the value of the MinTimestamp input for this Choreo. 
      # 
      # @param String - (optional, date) Returns media after this UNIX timestamp.
      ###

      def set_MinTimestamp(value)
        set_input("MinTimestamp", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetRecentMediaForLocation Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetRecentMediaForLocationResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetRecentMediaForLocation



  ##############################################################################
  #
  # GetRecentMediaForUser
  #
  # Retrieves the most recent media published by a user.
  #
  ##############################################################################

  class GetRecentMediaForUser < Choreography

    ####
    #  Create a new instance of the GetRecentMediaForUser Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetRecentMediaForUser")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetRecentMediaForUserInputSet
    ####
    def new_input_set()
      return GetRecentMediaForUserInputSet.new()
    end

    def make_result_set()
      return GetRecentMediaForUserResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetRecentMediaForUserResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetRecentMediaForUser
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetRecentMediaForUserInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The access token retrieved during the OAuth 2.0 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of results to return.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the MaxID input for this Choreo. 
      # 
      # @param String - (optional, string) Return media liked before this id.
      ###

      def set_MaxID(value)
        set_input("MaxID", value)
      end
      #### 
      # Set the value of the MinID input for this Choreo. 
      # 
      # @param String - (optional, string) Returns media later than this min_id.
      ###

      def set_MinID(value)
        set_input("MinID", value)
      end
      #### 
      # Set the value of the MinTimestamp input for this Choreo. 
      # 
      # @param String - (optional, date) Returns media after this UNIX timestamp.
      ###

      def set_MinTimestamp(value)
        set_input("MinTimestamp", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (optional, string) The ID of the user whose media to return. Defaults to 'self' indicating that the authenticating user is assumed.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetRecentMediaForUser Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetRecentMediaForUserResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetRecentMediaForUser



  ##############################################################################
  #
  # GetRelationship
  #
  # Retrieves information about the relationship between the authenticating user and the specified user.
  #
  ##############################################################################

  class GetRelationship < Choreography

    ####
    #  Create a new instance of the GetRelationship Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetRelationship")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetRelationshipInputSet
    ####
    def new_input_set()
      return GetRelationshipInputSet.new()
    end

    def make_result_set()
      return GetRelationshipResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetRelationshipResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetRelationship
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetRelationshipInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The access token retrieved during the OAuth 2.0 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the target user.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetRelationship Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetRelationshipResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetRelationship



  ##############################################################################
  #
  # GetUserFeed
  #
  # Retrieves the authenticated user's feed.
  #
  ##############################################################################

  class GetUserFeed < Choreography

    ####
    #  Create a new instance of the GetUserFeed Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetUserFeed")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetUserFeedInputSet
    ####
    def new_input_set()
      return GetUserFeedInputSet.new()
    end

    def make_result_set()
      return GetUserFeedResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetUserFeedResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetUserFeed
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetUserFeedInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The access token retrieved during the OAuth 2.0 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of results to return.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the MaxID input for this Choreo. 
      # 
      # @param String - (optional, string) Returns media earlier than this max_id.
      ###

      def set_MaxID(value)
        set_input("MaxID", value)
      end
      #### 
      # Set the value of the MinID input for this Choreo. 
      # 
      # @param String - (optional, string) Returns media later than this min_id.
      ###

      def set_MinID(value)
        set_input("MinID", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (optional, string) The ID of the user whose feed to retrieve. Defaults to 'self' indicating that the authenticating user is assumed.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetUserFeed Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetUserFeedResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetUserFeed



  ##############################################################################
  #
  # GetUserInformation
  #
  # Retrieves basic information about a user.
  #
  ##############################################################################

  class GetUserInformation < Choreography

    ####
    #  Create a new instance of the GetUserInformation Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/GetUserInformation")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return GetUserInformationInputSet
    ####
    def new_input_set()
      return GetUserInformationInputSet.new()
    end

    def make_result_set()
      return GetUserInformationResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = GetUserInformationResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the GetUserInformation
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class GetUserInformationInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The access token retrieved during the OAuth 2.0 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (optional, string) The ID of the user that you want to retrieve. Defaults to 'self' indicating that the authenticating user is assumed.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the GetUserInformation Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class GetUserInformationResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class GetUserInformation



  ##############################################################################
  #
  # LikeMedia
  #
  # Sets the specified media as being liked by the authenticating user.
  #
  ##############################################################################

  class LikeMedia < Choreography

    ####
    #  Create a new instance of the LikeMedia Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/LikeMedia")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return LikeMediaInputSet
    ####
    def new_input_set()
      return LikeMediaInputSet.new()
    end

    def make_result_set()
      return LikeMediaResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = LikeMediaResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the LikeMedia
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class LikeMediaInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The access token retrieved during the OAuth 2.0 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the MediaID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the media to like.
      ###

      def set_MediaID(value)
        set_input("MediaID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the LikeMedia Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class LikeMediaResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class LikeMedia



  ##############################################################################
  #
  # ModifyRelationship
  #
  # Modifies the relationship between the authenticating user and the target user.
  #
  ##############################################################################

  class ModifyRelationship < Choreography

    ####
    #  Create a new instance of the ModifyRelationship Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/ModifyRelationship")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return ModifyRelationshipInputSet
    ####
    def new_input_set()
      return ModifyRelationshipInputSet.new()
    end

    def make_result_set()
      return ModifyRelationshipResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = ModifyRelationshipResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the ModifyRelationship
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class ModifyRelationshipInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The access token retrieved during the OAuth 2.0 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the Action input for this Choreo. 
      # 
      # @param String - (required, string) The type of relationship modification to perform. Valid values are: follow, unfollow, block, unblock, approve, or deny.
      ###

      def set_Action(value)
        set_input("Action", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the target user.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the ModifyRelationship Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class ModifyRelationshipResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class ModifyRelationship




  module OAuth



    ##############################################################################
    #
    # FinalizeOAuth
    #
    # Completes the OAuth process by retrieving a Instagram access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Instagram/OAuth/FinalizeOAuth")
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
        # @param String - (required, string) The Client ID provided by Instagram after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by Instagram after registering your application.
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
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - (json) The response from Instagram.
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
    # Generates an authorization URL that an application can use to complete the first step in the OAuth process.
    #
    ##############################################################################

    class InitializeOAuth < Choreography

      ####
      #  Create a new instance of the InitializeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Instagram/OAuth/InitializeOAuth")
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
        # @param String - (required, string) The Client ID provided by Instagram after registering your application.
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
        # @param String - (optional, string) The scope of the access you're requesting from the user. Valid values are: basic, comments, relationships, and likes. Multiple scope values should separated by spaces.
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
  ##############################################################################
  #
  # RecentlyTaggedMedia
  #
  # Retrieves a list of recently tagged media.
  #
  ##############################################################################

  class RecentlyTaggedMedia < Choreography

    ####
    #  Create a new instance of the RecentlyTaggedMedia Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/RecentlyTaggedMedia")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return RecentlyTaggedMediaInputSet
    ####
    def new_input_set()
      return RecentlyTaggedMediaInputSet.new()
    end

    def make_result_set()
      return RecentlyTaggedMediaResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = RecentlyTaggedMediaResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the RecentlyTaggedMedia
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class RecentlyTaggedMediaInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the MaxID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Returns media earlier than this max_id.
      ###

      def set_MaxID(value)
        set_input("MaxID", value)
      end
      #### 
      # Set the value of the MinID input for this Choreo. 
      # 
      # @param Integer - (optional, integer) Returns media later than this min_id.
      ###

      def set_MinID(value)
        set_input("MinID", value)
      end
      #### 
      # Set the value of the TagName input for this Choreo. 
      # 
      # @param String - (required, string) Enter a valid tag identifier, such as: nofliter
      ###

      def set_TagName(value)
        set_input("TagName", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the RecentlyTaggedMedia Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class RecentlyTaggedMediaResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class RecentlyTaggedMedia



  ##############################################################################
  #
  # SearchLocations
  #
  # Searches for locations by geographic coordinates. 
  #
  ##############################################################################

  class SearchLocations < Choreography

    ####
    #  Create a new instance of the SearchLocations Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/SearchLocations")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchLocationsInputSet
    ####
    def new_input_set()
      return SearchLocationsInputSet.new()
    end

    def make_result_set()
      return SearchLocationsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = SearchLocationsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchLocations
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchLocationsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the Distance input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The distance to search. Default is 1000m (distance=1000), max distance is 5000.
      ###

      def set_Distance(value)
        set_input("Distance", value)
      end
      #### 
      # Set the value of the FoursquareID input for this Choreo. 
      # 
      # @param String - (conditional, string) Returns a location mapped off of a foursquare v2 api location id. If used, you are not required to provide values for Latitude or Longitude.
      ###

      def set_FoursquareID(value)
        set_input("FoursquareID", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (conditional, decimal) Latitude of the center search coordinate. If used, Longitude is required.
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (conditional, decimal) Longitude of the center search coordinate. If used, Latitude is required.
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchLocations Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchLocationsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchLocations



  ##############################################################################
  #
  # SearchMedia
  #
  # Allows you to search for media in a given area.
  #
  ##############################################################################

  class SearchMedia < Choreography

    ####
    #  Create a new instance of the SearchMedia Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/SearchMedia")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchMediaInputSet
    ####
    def new_input_set()
      return SearchMediaInputSet.new()
    end

    def make_result_set()
      return SearchMediaResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = SearchMediaResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchMedia
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchMediaInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the Distance input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The distance in meters. Defaults to 1000. Max is 5000.
      ###

      def set_Distance(value)
        set_input("Distance", value)
      end
      #### 
      # Set the value of the Latitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Latitude of the center search coordinate.
      ###

      def set_Latitude(value)
        set_input("Latitude", value)
      end
      #### 
      # Set the value of the Longitude input for this Choreo. 
      # 
      # @param BigDecimal - (required, decimal) Longitude of the center search coordinate.
      ###

      def set_Longitude(value)
        set_input("Longitude", value)
      end
      #### 
      # Set the value of the MaxTimestamp input for this Choreo. 
      # 
      # @param String - (optional, date) A unix timestamp. All media returned will be taken earlier than this timestamp.
      ###

      def set_MaxTimestamp(value)
        set_input("MaxTimestamp", value)
      end
      #### 
      # Set the value of the MinTimestamp input for this Choreo. 
      # 
      # @param String - (optional, date) A unix timestamp. All media returned will be taken later than this timestamp.
      ###

      def set_MinTimestamp(value)
        set_input("MinTimestamp", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchMedia Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchMediaResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchMedia



  ##############################################################################
  #
  # SearchTags
  #
  # Searches for tags by name.
  #
  ##############################################################################

  class SearchTags < Choreography

    ####
    #  Create a new instance of the SearchTags Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/SearchTags")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchTagsInputSet
    ####
    def new_input_set()
      return SearchTagsInputSet.new()
    end

    def make_result_set()
      return SearchTagsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = SearchTagsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchTags
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchTagsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide an AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) A tag name to search for (e.g., snow, beach). Do not include a leading hash symbol in your query.
      ###

      def set_Query(value)
        set_input("Query", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchTags Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchTagsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchTags



  ##############################################################################
  #
  # SearchUsers
  #
  # Allows you to search for users by name.
  #
  ##############################################################################

  class SearchUsers < Choreography

    ####
    #  Create a new instance of the SearchUsers Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/SearchUsers")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return SearchUsersInputSet
    ####
    def new_input_set()
      return SearchUsersInputSet.new()
    end

    def make_result_set()
      return SearchUsersResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = SearchUsersResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the SearchUsers
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class SearchUsersInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide an AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the Count input for this Choreo. 
      # 
      # @param Integer - (optional, integer) The number of results to return.
      ###

      def set_Count(value)
        set_input("Count", value)
      end
      #### 
      # Set the value of the Query input for this Choreo. 
      # 
      # @param String - (required, string) The query string to use for the user search.
      ###

      def set_Query(value)
        set_input("Query", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the SearchUsers Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class SearchUsersResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class SearchUsers



  ##############################################################################
  #
  # TagName
  #
  # Retrieves information about a tag object.
  #
  ##############################################################################

  class TagName < Choreography

    ####
    #  Create a new instance of the TagName Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/TagName")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return TagNameInputSet
    ####
    def new_input_set()
      return TagNameInputSet.new()
    end

    def make_result_set()
      return TagNameResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = TagNameResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the TagName
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class TagNameInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide an AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the TagName input for this Choreo. 
      # 
      # @param String - (required, string) Enter a valid tag identifier, such as: nofliter
      ###

      def set_TagName(value)
        set_input("TagName", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the TagName Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class TagNameResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class TagName



  ##############################################################################
  #
  # UnlikeMedia
  #
  # Allows a user to unlike a specified media object.
  #
  ##############################################################################

  class UnlikeMedia < Choreography

    ####
    #  Create a new instance of the UnlikeMedia Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/UnlikeMedia")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UnlikeMediaInputSet
    ####
    def new_input_set()
      return UnlikeMediaInputSet.new()
    end

    def make_result_set()
      return UnlikeMediaResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = UnlikeMediaResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UnlikeMedia
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UnlikeMediaInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (required, string) The access token retrieved during the OAuth 2.0 process.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the MediaID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the media to unlike.
      ###

      def set_MediaID(value)
        set_input("MediaID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the UnlikeMedia Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UnlikeMediaResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UnlikeMedia



  ##############################################################################
  #
  # UserFollows
  #
  # Retrieve the list of users that the authenticating user is following.
  #
  ##############################################################################

  class UserFollows < Choreography

    ####
    #  Create a new instance of the UserFollows Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/UserFollows")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UserFollowsInputSet
    ####
    def new_input_set()
      return UserFollowsInputSet.new()
    end

    def make_result_set()
      return UserFollowsResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = UserFollowsResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UserFollows
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UserFollowsInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (required, string) The ID of the user associated with the list to return. Defaults to 'self' indicating that the authenticating user is assumed.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the UserFollows Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UserFollowsResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UserFollows



  ##############################################################################
  #
  # UserIsFollowedBy
  #
  # Retrieve the list of users following the authenticating user.
  #
  ##############################################################################

  class UserIsFollowedBy < Choreography

    ####
    #  Create a new instance of the UserIsFollowedBy Choreo. A TembooSession object, containing a valid
    #  set of Temboo credentials, must be supplied.
    ####
    def initialize(session)
      super(session, "/Library/Instagram/UserIsFollowedBy")
    end

    #### 
    # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
    #
    # @return UserIsFollowedByInputSet
    ####
    def new_input_set()
      return UserIsFollowedByInputSet.new()
    end

    def make_result_set()
      return UserIsFollowedByResultSet.new()
    end

    ####
    # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
    # and return a ResultSet containing the execution results.
    # @param choreoInputs
    # @return
    # @throws TembooException
    ####
    def execute(input_set = nil)
      resp = super(input_set)
      results = UserIsFollowedByResultSet.new(resp)
      return results
    end

    ####
    # An InputSet with methods appropriate for specifying the inputs to the UserIsFollowedBy
    # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
    ####
    class UserIsFollowedByInputSet < Choreography::InputSet

      #### 
      # Set the value of the AccessToken input for this Choreo. 
      # 
      # @param String - (conditional, string) The access token retrieved during the OAuth 2.0 process. Required unless you provide the ClientID.
      ###

      def set_AccessToken(value)
        set_input("AccessToken", value)
      end
      #### 
      # Set the value of the ClientID input for this Choreo. 
      # 
      # @param String - (conditional, string) The Client ID provided by Instagram after registering your application. Required unless you provide the AccessToken.
      ###

      def set_ClientID(value)
        set_input("ClientID", value)
      end
      #### 
      # Set the value of the UserID input for this Choreo. 
      # 
      # @param String - (optional, string) The ID of the user associated with the list to return. Defaults to 'self' indicating that the authenticating user is assumed.
      ###

      def set_UserID(value)
        set_input("UserID", value)
      end

    end

    ####
    # A ResultSet with methods tailored to the values returned by the UserIsFollowedBy Choreo.
    # The ResultSet object is used to retrieve the results of a Choreo execution.
    ####
    class UserIsFollowedByResultSet < Choreography::ResultSet
    	####
    	# Retrieve the value for the "Response" output from this Choreo execution
    	#
    	# @return String - (json) The response from Instagram.
    	####
    	def get_Response()
    	  return @outputs["Response"]
    	end
    end

  end # class UserIsFollowedBy




end # module Instagram