require "temboo"

module Foursquare




  module Checkins



    ##############################################################################
    #
    # AddComment
    #
    # Adds a comment to a specified check-in.
    #
    ##############################################################################

    class AddComment < Choreography

      ####
      #  Create a new instance of the AddComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Checkins/AddComment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddCommentInputSet
      ####
      def new_input_set()
        return AddCommentInputSet.new()
      end

      def make_result_set()
        return AddCommentResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AddCommentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddComment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddCommentInputSet < Choreography::InputSet

        #### 
        # Set the value of the CheckinID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the check-in that you want to create a comment for.
        ###

        def set_CheckinID(value)
          set_input("CheckinID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (required, string) The text of the comment, up to 200 characters.
        ###

        def set_Text(value)
          set_input("Text", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddComment



    ##############################################################################
    #
    # AddPost
    #
    # Posts user-generated content from an external app to a Foursquare check-in.
    #
    ##############################################################################

    class AddPost < Choreography

      ####
      #  Create a new instance of the AddPost Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Checkins/AddPost")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddPostInputSet
      ####
      def new_input_set()
        return AddPostInputSet.new()
      end

      def make_result_set()
        return AddPostResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AddPostResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddPost
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddPostInputSet < Choreography::InputSet

        #### 
        # Set the value of the CheckinID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the check-in to add a post to.
        ###

        def set_CheckinID(value)
          set_input("CheckinID", value)
        end
        #### 
        # Set the value of the ContentID input for this Choreo. 
        # 
        # @param String - (optional, string) An ID for the post to be used in a native link. Can be up to 50 characters. The URL input must also be specified when using this parameter.
        ###

        def set_ContentID(value)
          set_input("ContentID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (required, string) The text of the post. Max length is 200 characters.
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL linking to more details. The following URL schemes are supported: http, https, foursquare, mailto, tel, and sms.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddPost Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddPostResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddPost



    ##############################################################################
    #
    # CheckinDetails
    #
    # Returns details of a check-in.
    #
    ##############################################################################

    class CheckinDetails < Choreography

      ####
      #  Create a new instance of the CheckinDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Checkins/CheckinDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CheckinDetailsInputSet
      ####
      def new_input_set()
        return CheckinDetailsInputSet.new()
      end

      def make_result_set()
        return CheckinDetailsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CheckinDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CheckinDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CheckinDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the CheckinID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the check-in to retrieve additional information for.
        ###

        def set_CheckinID(value)
          set_input("CheckinID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Signature input for this Choreo. 
        # 
        # @param String - (optional, string) When check-ins are sent to public feeds such as Twitter, foursquare appends a signature to them (s=XXXXXX). The same value can be used here.
        ###

        def set_Signature(value)
          set_input("Signature", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CheckinDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CheckinDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CheckinDetails



    ##############################################################################
    #
    # CreateCheckin
    #
    # Allows you to create a check-in with Foursquare.
    #
    ##############################################################################

    class CreateCheckin < Choreography

      ####
      #  Create a new instance of the CreateCheckin Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Checkins/CreateCheckin")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CreateCheckinInputSet
      ####
      def new_input_set()
        return CreateCheckinInputSet.new()
      end

      def make_result_set()
        return CreateCheckinResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CreateCheckinResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CreateCheckin
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CreateCheckinInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccuracyOfCoordinates input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Accuracy of the user's latitude and longitude, in meters.
        ###

        def set_AccuracyOfCoordinates(value)
          set_input("AccuracyOfCoordinates", value)
        end
        #### 
        # Set the value of the AltitudeAccuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Vertical accuracy of the user's location, in meters.
        ###

        def set_AltitudeAccuracy(value)
          set_input("AltitudeAccuracy", value)
        end
        #### 
        # Set the value of the Altitude input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Altitude of the user's location, in meters.
        ###

        def set_Altitude(value)
          set_input("Altitude", value)
        end
        #### 
        # Set the value of the Broadcast input for this Choreo. 
        # 
        # @param String - (optional, string) Who to broadcast this check-in to. Can be a comma-delimited list: private, public, facebook, twitter, or followers. Defaults to 'public'.
        ###

        def set_Broadcast(value)
          set_input("Broadcast", value)
        end
        #### 
        # Set the value of the EventID input for this Choreo. 
        # 
        # @param String - (optional, string) The event the user is checking in to. A venueId for a venue with this eventId must also be specified in the request.
        ###

        def set_EventID(value)
          set_input("EventID", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The latitude point of the user's location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The longitude point of the user's location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The FourSquare API Oauth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Shout input for this Choreo. 
        # 
        # @param String - (optional, string) A message about your check-in. The maximum length of this field is 140 characters.
        ###

        def set_Shout(value)
          set_input("Shout", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (required, string) The venue where the user is checking in. No venueid is needed if shouting or just providing a venue name.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end
        #### 
        # Set the value of the Venue input for this Choreo. 
        # 
        # @param String - (optional, string) If you are not shouting, but you don't have a venue ID or prefer a 'venueless' checkin, pass the venue name as a string using this parameter.
        ###

        def set_Venue(value)
          set_input("Venue", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CreateCheckin Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CreateCheckinResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CreateCheckin



    ##############################################################################
    #
    # DeleteComment
    #
    # Removes a comment to a specified check-in.
    #
    ##############################################################################

    class DeleteComment < Choreography

      ####
      #  Create a new instance of the DeleteComment Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Checkins/DeleteComment")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteCommentInputSet
      ####
      def new_input_set()
        return DeleteCommentInputSet.new()
      end

      def make_result_set()
        return DeleteCommentResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteCommentResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteComment
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteCommentInputSet < Choreography::InputSet

        #### 
        # Set the value of the CheckinID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the check-in associated with the comment you want to remove.
        ###

        def set_CheckinID(value)
          set_input("CheckinID", value)
        end
        #### 
        # Set the value of the CommentID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the comment to remove.
        ###

        def set_CommentID(value)
          set_input("CommentID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteComment Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteCommentResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteComment



    ##############################################################################
    #
    # FilterHelper
    #
    # Executes an XPath query against a specified XML file and returns the result in CSV or JSON format.
    #
    ##############################################################################

    class FilterHelper < Choreography

      ####
      #  Create a new instance of the FilterHelper Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Checkins/FilterHelper")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FilterHelperInputSet
      ####
      def new_input_set()
        return FilterHelperInputSet.new()
      end

      def make_result_set()
        return FilterHelperResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = FilterHelperResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FilterHelper
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FilterHelperInputSet < Choreography::InputSet

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
      # A ResultSet with methods tailored to the values returned by the FilterHelper Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FilterHelperResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Result" output from this Choreo execution
      	#
      	# @return String - The XPath query result.
      	####
      	def get_Result()
      	  return @outputs["Result"]
      	end
      end

    end # class FilterHelper



    ##############################################################################
    #
    # GetNearbyFriends
    #
    # Returns a list of recent friends' check-ins that are nearby the specified location.
    #
    ##############################################################################

    class GetNearbyFriends < Choreography

      ####
      #  Create a new instance of the GetNearbyFriends Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Checkins/GetNearbyFriends")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return GetNearbyFriendsInputSet
      ####
      def new_input_set()
        return GetNearbyFriendsInputSet.new()
      end

      def make_result_set()
        return GetNearbyFriendsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = GetNearbyFriendsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the GetNearbyFriends
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class GetNearbyFriendsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Distance input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The distance (in meters) between the supplied coordinates and the checkin location. This returns friends' checkins where the distance is less than or equal to this value. Default is 500.
        ###

        def set_Distance(value)
          set_input("Distance", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude point of the user's location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to return, up to 100.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude point of the user's location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseMode input for this Choreo. 
        # 
        # @param String - (optional, string) Used to simplify the response. Valid values are: simple and verbose. When set to simple, an array of user objects are returned. Verbose mode returns an array of checkin objects. Defaults to "simple".
        ###

        def set_ResponseMode(value)
          set_input("ResponseMode", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the GetNearbyFriends Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class GetNearbyFriendsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class GetNearbyFriends



    ##############################################################################
    #
    # Like
    #
    # Allows the authenticated user to like or unlike a check-in.
    #
    ##############################################################################

    class Like < Choreography

      ####
      #  Create a new instance of the Like Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Checkins/Like")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LikeInputSet
      ####
      def new_input_set()
        return LikeInputSet.new()
      end

      def make_result_set()
        return LikeResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LikeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Like
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LikeInputSet < Choreography::InputSet

        #### 
        # Set the value of the CheckinID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the check-in to like or unlike.
        ###

        def set_CheckinID(value)
          set_input("CheckinID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Set input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 (the default) to like this check-in. Set to 0 to undo a previous like.
        ###

        def set_Set(value)
          set_input("Set", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Like Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LikeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Like



    ##############################################################################
    #
    # Likes
    #
    # Returns friends and a total count of users who have liked a check-in.
    #
    ##############################################################################

    class Likes < Choreography

      ####
      #  Create a new instance of the Likes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Checkins/Likes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LikesInputSet
      ####
      def new_input_set()
        return LikesInputSet.new()
      end

      def make_result_set()
        return LikesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LikesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Likes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LikesInputSet < Choreography::InputSet

        #### 
        # Set the value of the CheckinID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the check-in to retrieve likes for.
        ###

        def set_CheckinID(value)
          set_input("CheckinID", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API Oauth token string. Required unless specifying the ClientID and ClientSecret.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Likes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LikesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Likes



    ##############################################################################
    #
    # RecentCheckins
    #
    # Returns a list of recent friends' check-ins.
    #
    ##############################################################################

    class RecentCheckins < Choreography

      ####
      #  Create a new instance of the RecentCheckins Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Checkins/RecentCheckins")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return RecentCheckinsInputSet
      ####
      def new_input_set()
        return RecentCheckinsInputSet.new()
      end

      def make_result_set()
        return RecentCheckinsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = RecentCheckinsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the RecentCheckins
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class RecentCheckinsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AfterTimeStamp input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Seconds after which to look for check-ins, e.g. for looking for new check-ins since the last fetch.
        ###

        def set_AfterTimeStamp(value)
          set_input("AfterTimeStamp", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The latitude point of the user's location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to return, up to 100.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The longitude point of the user's location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The FourSquare API Oauth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the RecentCheckins Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class RecentCheckinsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class RecentCheckins



    ##############################################################################
    #
    # Reply
    #
    # Replies to a user about their check-in.
    #
    ##############################################################################

    class Reply < Choreography

      ####
      #  Create a new instance of the Reply Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Checkins/Reply")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ReplyInputSet
      ####
      def new_input_set()
        return ReplyInputSet.new()
      end

      def make_result_set()
        return ReplyResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ReplyResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Reply
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ReplyInputSet < Choreography::InputSet

        #### 
        # Set the value of the CheckinID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the check-in to add a post to.
        ###

        def set_CheckinID(value)
          set_input("CheckinID", value)
        end
        #### 
        # Set the value of the ContentID input for this Choreo. 
        # 
        # @param String - (optional, string) An ID for the reply to be used in a native link. Can be up to 50 characters. The URL input must also be specified when using this parameter.
        ###

        def set_ContentID(value)
          set_input("ContentID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (required, string) The text of the post. Max length is 200 characters.
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL linking to more details. The following URL schemes are supported: http, https, foursquare, mailto, tel, and sms.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Reply Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ReplyResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Reply




  end # module Checkins

  module Lists



    ##############################################################################
    #
    # AddItem
    #
    # Allows a user to add an item to a list.
    #
    ##############################################################################

    class AddItem < Choreography

      ####
      #  Create a new instance of the AddItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Lists/AddItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddItemInputSet
      ####
      def new_input_set()
        return AddItemInputSet.new()
      end

      def make_result_set()
        return AddItemResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AddItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (conditional, string) The id of an item on a list that you wish to copy to the target list. Used in conjuction with ListID. Note that one of the following must be specified: VenueID, TipID, ItemListID, or ItemID.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ItemListID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of a list that contains an item that you wish to copy to the new list. Used in conjuction with ItemID. Note that one of the following must be specified: VenueID, TipID, ItemListID, or ItemID.
        ###

        def set_ItemListID(value)
          set_input("ItemListID", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the list that  you are adding an item to. This can be a user-created list id or one of tips, todos, or dones.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (optional, string) If the target is a user-created list, this will create a public tip on the venue. If the target is todos, the text will be a private note that is only visible to the author.
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the TipID input for this Choreo. 
        # 
        # @param String - (conditional, string) The id of a tip to add to the list. Cannot be used in conjunction with the Text and URL inputs. Note that one of the following must be specified: VenueID, TipID, ItemListID, or ItemID.
        ###

        def set_TipID(value)
          set_input("TipID", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (optional, string) If adding a new tip using the Text input, this can associate a url with the tip.
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (conditional, string) The id of a venue to add to the list. Note that one of the following must be specified: VenueID, TipID, ItemListID, or ItemID.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddItem



    ##############################################################################
    #
    # AddList
    #
    # Creates a new list.
    #
    ##############################################################################

    class AddList < Choreography

      ####
      #  Create a new instance of the AddList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Lists/AddList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddListInputSet
      ####
      def new_input_set()
        return AddListInputSet.new()
      end

      def make_result_set()
        return AddListResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AddListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddListInputSet < Choreography::InputSet

        #### 
        # Set the value of the Collaborative input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A flag indicating that this list can be edited by friends. Set to 1 for true. Defaults to 0 (false).
        ###

        def set_Collaborative(value)
          set_input("Collaborative", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) The description of the list.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) The name of the list.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of a photo that should be set as the list photo.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddList



    ##############################################################################
    #
    # DeleteItem
    #
    # Allows a user to delete an item from a list.

    #
    ##############################################################################

    class DeleteItem < Choreography

      ####
      #  Create a new instance of the DeleteItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Lists/DeleteItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DeleteItemInputSet
      ####
      def new_input_set()
        return DeleteItemInputSet.new()
      end

      def make_result_set()
        return DeleteItemResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DeleteItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DeleteItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DeleteItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the item to delete.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param String - (required, string) This can be a user-created list id or one of tips, todos, or dones.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DeleteItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DeleteItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DeleteItem



    ##############################################################################
    #
    # FollowList
    #
    # Allows a user to follow a list.
    #
    ##############################################################################

    class FollowList < Choreography

      ####
      #  Create a new instance of the FollowList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Lists/FollowList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FollowListInputSet
      ####
      def new_input_set()
        return FollowListInputSet.new()
      end

      def make_result_set()
        return FollowListResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = FollowListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FollowList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FollowListInputSet < Choreography::InputSet

        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a user-created list.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FollowList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FollowListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FollowList



    ##############################################################################
    #
    # ListDetails
    #
    # Returns details about a given list. 
    #
    ##############################################################################

    class ListDetails < Choreography

      ####
      #  Create a new instance of the ListDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Lists/ListDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListDetailsInputSet
      ####
      def new_input_set()
        return ListDetailsInputSet.new()
      end

      def make_result_set()
        return ListDetailsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ListDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to return, up to 500.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a user-created or followed list or an id for a tip or todo in the form of USER_ID/tips or USER_ID/todos. When getting tips or todos for the acting user, the user id is not required.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) Identity of the user to get lists for. Defaults to "self" to get lists of the acting user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListDetails



    ##############################################################################
    #
    # ListFollowers
    #
    # Returns a count and items of users following the specified list.
    #
    ##############################################################################

    class ListFollowers < Choreography

      ####
      #  Create a new instance of the ListFollowers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Lists/ListFollowers")
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
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a user-created list.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ListFollowers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListFollowersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListFollowers



    ##############################################################################
    #
    # UnfollowList
    #
    # Allows a user to unfollow a list.
    #
    ##############################################################################

    class UnfollowList < Choreography

      ####
      #  Create a new instance of the UnfollowList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Lists/UnfollowList")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UnfollowListInputSet
      ####
      def new_input_set()
        return UnfollowListInputSet.new()
      end

      def make_result_set()
        return UnfollowListResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UnfollowListResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UnfollowList
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UnfollowListInputSet < Choreography::InputSet

        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a user-created list.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UnfollowList Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UnfollowListResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UnfollowList



    ##############################################################################
    #
    # UpdateItem
    #
    # Allows you to add or remove photos and tips from items on user-created lists.
    #
    ##############################################################################

    class UpdateItem < Choreography

      ####
      #  Create a new instance of the UpdateItem Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Lists/UpdateItem")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UpdateItemInputSet
      ####
      def new_input_set()
        return UpdateItemInputSet.new()
      end

      def make_result_set()
        return UpdateItemResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UpdateItemResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UpdateItem
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UpdateItemInputSet < Choreography::InputSet

        #### 
        # Set the value of the ItemID input for this Choreo. 
        # 
        # @param String - (required, string) The id of an item on a list that you wish to update.
        ###

        def set_ItemID(value)
          set_input("ItemID", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of a user-created list to update
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param String - (optional, string) If present and non-empty, adds a photo to this item. If present and empty, will remove the photo on this item. If the photo was a private checkin photo, it will be promoted to a public venue photo.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (optional, string) If present, this creates a public tip on the venue and replaces any existing tip on the item. Cannot be used in conjuction with TipID or PhotoID.
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the TipID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of a tip to add to the list. Cannot be used in conjunction with the Text and URL inputs. Note that one of the following must be specified: VenueID, TipID, ItemListID, or ItemID.
        ###

        def set_TipID(value)
          set_input("TipID", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (optional, string) If adding a new tip using the Text input, this can associate a url with the tip.
        ###

        def set_URL(value)
          set_input("URL", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UpdateItem Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UpdateItemResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UpdateItem



    ##############################################################################
    #
    # UpdateList
    #
    # Updates a given list.
    #
    ##############################################################################

    class UpdateList < Choreography

      ####
      #  Create a new instance of the UpdateList Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Lists/UpdateList")
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
        # Set the value of the Collaborative input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) A flag indicating that this list can be edited by friends. Set to 1 for true. Defaults to 0 (false).
        ###

        def set_Collaborative(value)
          set_input("Collaborative", value)
        end
        #### 
        # Set the value of the Description input for this Choreo. 
        # 
        # @param String - (optional, string) The description of the list.
        ###

        def set_Description(value)
          set_input("Description", value)
        end
        #### 
        # Set the value of the ListID input for this Choreo. 
        # 
        # @param String - (required, string) The id of the list to update.
        ###

        def set_ListID(value)
          set_input("ListID", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (required, string) The name of the list.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param String - (optional, string) The id of a photo that should be set as the list photo.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
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
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
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
    # Completes the OAuth process by retrieving a Foursquare access token for a user, after they have visited the authorization URL returned by the InitializeOAuth choreo and clicked "allow."
    #
    ##############################################################################

    class FinalizeOAuth < Choreography

      ####
      #  Create a new instance of the FinalizeOAuth Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/OAuth/FinalizeOAuth")
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
        # @param String - (required, string) The Client ID provided by Foursquare after registering your application.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (required, string) The Client Secret provided by Foursquare after registering your application.
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
        super(session, "/Library/Foursquare/OAuth/InitializeOAuth")
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
        # @param String - (required, string) The Client ID provided by Foursquare after registering your application.
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
      	####
      	# Retrieve the value for the "AuthorizeURL" output from this Choreo execution
      	#
      	# @return String - (string) Deprecated (retained for backward compatibility only).
      	####
      	def get_AuthorizeURL()
      	  return @outputs["AuthorizeURL"]
      	end
      end

    end # class InitializeOAuth




  end # module OAuth

  module Photos



    ##############################################################################
    #
    # AddPhoto
    #
    # Allows a user to add a new photo to a check-in, tip, or a venue.
    #
    ##############################################################################

    class AddPhoto < Choreography

      ####
      #  Create a new instance of the AddPhoto Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Photos/AddPhoto")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddPhotoInputSet
      ####
      def new_input_set()
        return AddPhotoInputSet.new()
      end

      def make_result_set()
        return AddPhotoResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AddPhotoResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddPhoto
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddPhotoInputSet < Choreography::InputSet

        #### 
        # Set the value of the AltitudeAccuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Vertical accuracy of the user's location, in meters.
        ###

        def set_AltitudeAccuracy(value)
          set_input("AltitudeAccuracy", value)
        end
        #### 
        # Set the value of the Altitude input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Altitude of the user's location, in meters.
        ###

        def set_Altitude(value)
          set_input("Altitude", value)
        end
        #### 
        # Set the value of the Broadcast input for this Choreo. 
        # 
        # @param String - (optional, string) Whether to broadcast this photo. Set to "twitter" if you want to send to twitter, "facebook "if you want to send to facebook, or "twitter,facebook" if you want to send to both.
        ###

        def set_Broadcast(value)
          set_input("Broadcast", value)
        end
        #### 
        # Set the value of the CheckinID input for this Choreo. 
        # 
        # @param String - (conditional, any) The ID of the checkin to attach a photo to. One of the id fields (CheckinID, TipID, or VenueID) must be specified.
        ###

        def set_CheckinID(value)
          set_input("CheckinID", value)
        end
        #### 
        # Set the value of the ImageFile input for this Choreo. 
        # 
        # @param String - (conditional, string) The base64 encoded image contents. Required unless using the VaultFile alias (an advanced option used when running Choreos in the Temboo Designer).
        ###

        def set_ImageFile(value)
          set_input("ImageFile", value)
        end
        #### 
        # Set the value of the LLAccuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Accuracy of the user's latitude and longitude, in meters.
        ###

        def set_LLAccuracy(value)
          set_input("LLAccuracy", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Laitude of the user's location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) Longitude of the user's location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the TipID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the tip to attach a photo to. One of the id fields (CheckinID, TipID, or VenueID) must be specified.
        ###

        def set_TipID(value)
          set_input("TipID", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (conditional, string) The ID of the venue to attach a photo to. One of the id fields (CheckinID, TipID, or VenueID) must be specified.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end
        #### 
        # Set the value of the VaultFile input for this Choreo. 
        # 
        # @param TembooPath - A path to an image in the vault. Required unless specifying the ImageFile input variable.
        ###

        def set_VaultFile(value)
          set_alias("VaultFile", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddPhoto Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddPhotoResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddPhoto



    ##############################################################################
    #
    # PhotoDetails
    #
    # Retrieves details of a photo. 
    #
    ##############################################################################

    class PhotoDetails < Choreography

      ####
      #  Create a new instance of the PhotoDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Photos/PhotoDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PhotoDetailsInputSet
      ####
      def new_input_set()
        return PhotoDetailsInputSet.new()
      end

      def make_result_set()
        return PhotoDetailsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PhotoDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PhotoDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PhotoDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the PhotoID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the photo to get details for.
        ###

        def set_PhotoID(value)
          set_input("PhotoID", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PhotoDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PhotoDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PhotoDetails




  end # module Photos

  module Specials



    ##############################################################################
    #
    # SearchSpecials
    #
    # Returns a list of specials near the current location.
    #
    ##############################################################################

    class SearchSpecials < Choreography

      ####
      #  Create a new instance of the SearchSpecials Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Specials/SearchSpecials")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchSpecialsInputSet
      ####
      def new_input_set()
        return SearchSpecialsInputSet.new()
      end

      def make_result_set()
        return SearchSpecialsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SearchSpecialsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchSpecials
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchSpecialsInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccuracyOfCoordinates input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Accuracy of latitude and longitude, in meters.
        ###

        def set_AccuracyOfCoordinates(value)
          set_input("AccuracyOfCoordinates", value)
        end
        #### 
        # Set the value of the AltitudeAccuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Accuracy of the user's altitude, in meters.
        ###

        def set_AltitudeAccuracy(value)
          set_input("AltitudeAccuracy", value)
        end
        #### 
        # Set the value of the Altitude input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Altitude of the user's location, in meters.
        ###

        def set_Altitude(value)
          set_input("Altitude", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The latitude point of the user's location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to retun, up to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The longitude point of the user's location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Foursquare API Oauth token string. Required unless specifying the ClientID and ClientSecret.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Radius input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Limit results to venues within this many meters of the specified location. Defaults to a city-wide area.
        ###

        def set_Radius(value)
          set_input("Radius", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchSpecials Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchSpecialsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchSpecials




  end # module Specials

  module Tips



    ##############################################################################
    #
    # AddTips
    #
    # Allows you to add a new tip at a venue. 
    #
    ##############################################################################

    class AddTips < Choreography

      ####
      #  Create a new instance of the AddTips Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Tips/AddTips")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return AddTipsInputSet
      ####
      def new_input_set()
        return AddTipsInputSet.new()
      end

      def make_result_set()
        return AddTipsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = AddTipsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the AddTips
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class AddTipsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Broadcast input for this Choreo. 
        # 
        # @param String - (optional, string) Whether to broadcast this tip. Set to "twitter" if you want to send to twitter, "facebook" if you want to send to facebook, or "twitter,facebook" if you want to send to both.
        ###

        def set_Broadcast(value)
          set_input("Broadcast", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Text input for this Choreo. 
        # 
        # @param String - (required, string) The text of the tip, up to 200 characters.
        ###

        def set_Text(value)
          set_input("Text", value)
        end
        #### 
        # Set the value of the URL input for this Choreo. 
        # 
        # @param String - (optional, string) A URL related to this tip.
        ###

        def set_URL(value)
          set_input("URL", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (required, string) The venue where you want to add this tip.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the AddTips Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class AddTipsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class AddTips



    ##############################################################################
    #
    # Done
    #
    # Returns an array of users have done this tip.
    #
    ##############################################################################

    class Done < Choreography

      ####
      #  Create a new instance of the Done Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Tips/Done")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DoneInputSet
      ####
      def new_input_set()
        return DoneInputSet.new()
      end

      def make_result_set()
        return DoneResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DoneResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Done
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DoneInputSet < Choreography::InputSet

        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to return, up to 200.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the TipID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a tip to get users who have marked the tip as done.
        ###

        def set_TipID(value)
          set_input("TipID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Done Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DoneResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Done



    ##############################################################################
    #
    # Listed
    #
    # Returns the lists that a tip appears on.
    #
    ##############################################################################

    class Listed < Choreography

      ####
      #  Create a new instance of the Listed Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Tips/Listed")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ListedInputSet
      ####
      def new_input_set()
        return ListedInputSet.new()
      end

      def make_result_set()
        return ListedResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ListedResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Listed
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ListedInputSet < Choreography::InputSet

        #### 
        # Set the value of the Group input for this Choreo. 
        # 
        # @param String - (optional, string) Accepted values are: created, edited, followed, friends, other. If no acting user is present, only other is supported.
        ###

        def set_Group(value)
          set_input("Group", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the TipID input for this Choreo. 
        # 
        # @param String - (required, string) The id of a tip to get lists for.
        ###

        def set_TipID(value)
          set_input("TipID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Listed Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ListedResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Listed



    ##############################################################################
    #
    # SearchNearbyTips
    #
    # Get a list of tips near the specified area.
    #
    ##############################################################################

    class SearchNearbyTips < Choreography

      ####
      #  Create a new instance of the SearchNearbyTips Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Tips/SearchNearbyTips")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchNearbyTipsInputSet
      ####
      def new_input_set()
        return SearchNearbyTipsInputSet.new()
      end

      def make_result_set()
        return SearchNearbyTipsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SearchNearbyTipsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchNearbyTips
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchNearbyTipsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Filter input for this Choreo. 
        # 
        # @param String - (optional, string) Filter results.  If set to 'friends', the choreo returns tips from friends.
        ###

        def set_Filter(value)
          set_input("Filter", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude point of the user's location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to be returned by the search, up to 500.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude point of the user's location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Use to page through the list of results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) Only find tips matching the given term. Cannot be used in conjunction with 'friends' filter.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchNearbyTips Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchNearbyTipsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchNearbyTips



    ##############################################################################
    #
    # TipDetails
    #
    # Gives details about a tip, including which users (especially friends) have marked the tip to-do or done. 
    #
    ##############################################################################

    class TipDetails < Choreography

      ####
      #  Create a new instance of the TipDetails Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Tips/TipDetails")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TipDetailsInputSet
      ####
      def new_input_set()
        return TipDetailsInputSet.new()
      end

      def make_result_set()
        return TipDetailsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = TipDetailsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TipDetails
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TipDetailsInputSet < Choreography::InputSet

        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the TipID input for this Choreo. 
        # 
        # @param String - (required, string) ID of tip to retrieve
        ###

        def set_TipID(value)
          set_input("TipID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TipDetails Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TipDetailsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TipDetails




  end # module Tips

  module Users



    ##############################################################################
    #
    # ApproveFriendRequest
    #
    # Approves a pending friend request from another user.
    #
    ##############################################################################

    class ApproveFriendRequest < Choreography

      ####
      #  Create a new instance of the ApproveFriendRequest Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/ApproveFriendRequest")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ApproveFriendRequestInputSet
      ####
      def new_input_set()
        return ApproveFriendRequestInputSet.new()
      end

      def make_result_set()
        return ApproveFriendRequestResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ApproveFriendRequestResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the ApproveFriendRequest
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ApproveFriendRequestInputSet < Choreography::InputSet

        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The user ID of a pending friend.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the ApproveFriendRequest Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ApproveFriendRequestResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ApproveFriendRequest



    ##############################################################################
    #
    # Badges
    #
    # Returns badges for a given user.
    #
    ##############################################################################

    class Badges < Choreography

      ####
      #  Create a new instance of the Badges Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/Badges")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return BadgesInputSet
      ####
      def new_input_set()
        return BadgesInputSet.new()
      end

      def make_result_set()
        return BadgesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = BadgesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Badges
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class BadgesInputSet < Choreography::InputSet

        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) Identity of the user to get badges for. Defaults to "self" to get lists of the acting user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Badges Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class BadgesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Badges



    ##############################################################################
    #
    # CheckinsByUser
    #
    # Retrieve a list of check-ins for an authenticated user.
    #
    ##############################################################################

    class CheckinsByUser < Choreography

      ####
      #  Create a new instance of the CheckinsByUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/CheckinsByUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return CheckinsByUserInputSet
      ####
      def new_input_set()
        return CheckinsByUserInputSet.new()
      end

      def make_result_set()
        return CheckinsByUserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = CheckinsByUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the CheckinsByUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class CheckinsByUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the AfterTimeStamp input for this Choreo. 
        # 
        # @param String - (optional, date) Retrieve the first results after the seconds entered since epoch time.
        ###

        def set_AfterTimeStamp(value)
          set_input("AfterTimeStamp", value)
        end
        #### 
        # Set the value of the BeforeTimeStamp input for this Choreo. 
        # 
        # @param String - (optional, date) Retrieve the first results prior to the seconds specified. Useful for paging backward in time.
        ###

        def set_BeforeTimeStamp(value)
          set_input("BeforeTimeStamp", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The total number of results to be returned, up to 250.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API Oauth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to skip. Used to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) Only 'self' is supported at this moment by the Foursquare API. Defaults to: self.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the CheckinsByUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class CheckinsByUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class CheckinsByUser



    ##############################################################################
    #
    # DenyFriendRequest
    #
    # Denies a pending friend request from another user.
    #
    ##############################################################################

    class DenyFriendRequest < Choreography

      ####
      #  Create a new instance of the DenyFriendRequest Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/DenyFriendRequest")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return DenyFriendRequestInputSet
      ####
      def new_input_set()
        return DenyFriendRequestInputSet.new()
      end

      def make_result_set()
        return DenyFriendRequestResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = DenyFriendRequestResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the DenyFriendRequest
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class DenyFriendRequestInputSet < Choreography::InputSet

        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (required, string) The user ID of a pending friend.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the DenyFriendRequest Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class DenyFriendRequestResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class DenyFriendRequest



    ##############################################################################
    #
    # FindUsers
    #
    # Allows a user to locate friends.
    #
    ##############################################################################

    class FindUsers < Choreography

      ####
      #  Create a new instance of the FindUsers Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/FindUsers")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return FindUsersInputSet
      ####
      def new_input_set()
        return FindUsersInputSet.new()
      end

      def make_result_set()
        return FindUsersResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = FindUsersResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the FindUsers
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class FindUsersInputSet < Choreography::InputSet

        #### 
        # Set the value of the Email input for this Choreo. 
        # 
        # @param String - (conditional, string) A comma-delimited list of email addresses to look for. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
        ###

        def set_Email(value)
          set_input("Email", value)
        end
        #### 
        # Set the value of the FacebookID input for this Choreo. 
        # 
        # @param String - (conditional, string) A comma-delimited list of Facebook ID's to look for. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
        ###

        def set_FacebookID(value)
          set_input("FacebookID", value)
        end
        #### 
        # Set the value of the Name input for this Choreo. 
        # 
        # @param String - (conditional, string) A single string to search for in users' names. A single string to search for in users' names. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
        ###

        def set_Name(value)
          set_input("Name", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Phone input for this Choreo. 
        # 
        # @param String - (conditional, string) A comma-delimited list of phone numbers to look for. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
        ###

        def set_Phone(value)
          set_input("Phone", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the TwitterSource input for this Choreo. 
        # 
        # @param String - (conditional, string) A single Twitter handle. Results will be users that this handle follows on Twitter who use Foursquare. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
        ###

        def set_TwitterSource(value)
          set_input("TwitterSource", value)
        end
        #### 
        # Set the value of the Twitter input for this Choreo. 
        # 
        # @param String - (conditional, string) A comma-delimited list of Twitter handles to look for. Must specify one of Name, Phone, Email, FacebookID, Twitter, or TwitterSource.
        ###

        def set_Twitter(value)
          set_input("Twitter", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the FindUsers Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class FindUsersResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class FindUsers



    ##############################################################################
    #
    # Leaderboard
    #
    # Return the user's Leaderboard
    #
    ##############################################################################

    class Leaderboard < Choreography

      ####
      #  Create a new instance of the Leaderboard Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/Leaderboard")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LeaderboardInputSet
      ####
      def new_input_set()
        return LeaderboardInputSet.new()
      end

      def make_result_set()
        return LeaderboardResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LeaderboardResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Leaderboard
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LeaderboardInputSet < Choreography::InputSet

        #### 
        # Set the value of the Neighbors input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of friends' scores to return that are adjacent to your score, in ranked order.
        ###

        def set_Neighbors(value)
          set_input("Neighbors", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Leaderboard Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LeaderboardResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Leaderboard



    ##############################################################################
    #
    # ListFriends
    #
    # Retrieve a list of a user's friends.
    #
    ##############################################################################

    class ListFriends < Choreography

      ####
      #  Create a new instance of the ListFriends Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/ListFriends")
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
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results returned, up to 500.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API Oauth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Specify an offest to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) Identity of the user to get friends for. Defaults to "self" to get lists of the acting user.
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
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class ListFriends



    ##############################################################################
    #
    # Mayorships
    #
    # Returns a user's mayorships.
    #
    ##############################################################################

    class Mayorships < Choreography

      ####
      #  Create a new instance of the Mayorships Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/Mayorships")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return MayorshipsInputSet
      ####
      def new_input_set()
        return MayorshipsInputSet.new()
      end

      def make_result_set()
        return MayorshipsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = MayorshipsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Mayorships
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class MayorshipsInputSet < Choreography::InputSet

        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) Identity of the user to get mayorships for. Defaults to "self" to get lists of the acting user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Mayorships Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class MayorshipsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Mayorships



    ##############################################################################
    #
    # PendingFriendRequests
    #
    # Retrieves a list of pending friend requests for the authenticated user.
    #
    ##############################################################################

    class PendingFriendRequests < Choreography

      ####
      #  Create a new instance of the PendingFriendRequests Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/PendingFriendRequests")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PendingFriendRequestsInputSet
      ####
      def new_input_set()
        return PendingFriendRequestsInputSet.new()
      end

      def make_result_set()
        return PendingFriendRequestsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PendingFriendRequestsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PendingFriendRequests
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PendingFriendRequestsInputSet < Choreography::InputSet

        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PendingFriendRequests Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PendingFriendRequestsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PendingFriendRequests



    ##############################################################################
    #
    # PhotosFromUser
    #
    # Returns photos from a user.
    #
    ##############################################################################

    class PhotosFromUser < Choreography

      ####
      #  Create a new instance of the PhotosFromUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/PhotosFromUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return PhotosFromUserInputSet
      ####
      def new_input_set()
        return PhotosFromUserInputSet.new()
      end

      def make_result_set()
        return PhotosFromUserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = PhotosFromUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the PhotosFromUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class PhotosFromUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to return, up to 500.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) Identity of the user to get badges for. Defaults to "self" to get lists of the acting user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the PhotosFromUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class PhotosFromUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class PhotosFromUser



    ##############################################################################
    #
    # TipsFromUser
    #
    # Returns tips from a user.
    #
    ##############################################################################

    class TipsFromUser < Choreography

      ####
      #  Create a new instance of the TipsFromUser Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/TipsFromUser")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TipsFromUserInputSet
      ####
      def new_input_set()
        return TipsFromUserInputSet.new()
      end

      def make_result_set()
        return TipsFromUserResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = TipsFromUserResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TipsFromUser
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TipsFromUserInputSet < Choreography::InputSet

        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The latitude point of the user's location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to return, up to 500.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (optional, decimal) The longitude point of the user's location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Enter: recent, nearby, or popular. NEARBY requires geolat and geolong to be provided.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) Identity of the user to get tips for. Defaults to "self" to get lists of the acting user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TipsFromUser Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TipsFromUserResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TipsFromUser



    ##############################################################################
    #
    # UserLists
    #
    # Retrieves user lists.
    #
    ##############################################################################

    class UserLists < Choreography

      ####
      #  Create a new instance of the UserLists Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/UserLists")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return UserListsInputSet
      ####
      def new_input_set()
        return UserListsInputSet.new()
      end

      def make_result_set()
        return UserListsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = UserListsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the UserLists
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class UserListsInputSet < Choreography::InputSet

        #### 
        # Set the value of the Group input for this Choreo. 
        # 
        # @param String - (optional, string) Used to narrow down the lists to returns. Valid values are: created, edited, followed, friends, and suggested. See documentation for definitions of these parameter values.
        ###

        def set_Group(value)
          set_input("Group", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) Latitude of user's location. Required in order to return the suggested group.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) Longitude of user's location. Required in order to return the suggested group.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) Identity of the user to get lists for. Defaults to "self" to get lists of the acting user.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the UserLists Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class UserListsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class UserLists



    ##############################################################################
    #
    # VenueHistory
    #
    # Returns a list of all venues visited by the specified user, along with how many visits and when they were last there. 
    #
    ##############################################################################

    class VenueHistory < Choreography

      ####
      #  Create a new instance of the VenueHistory Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Users/VenueHistory")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VenueHistoryInputSet
      ####
      def new_input_set()
        return VenueHistoryInputSet.new()
      end

      def make_result_set()
        return VenueHistoryResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = VenueHistoryResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VenueHistory
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VenueHistoryInputSet < Choreography::InputSet

        #### 
        # Set the value of the AfterTimeStamp input for this Choreo. 
        # 
        # @param String - (optional, date) Retrieve the first results after the seconds entered since epoch time.
        ###

        def set_AfterTimeStamp(value)
          set_input("AfterTimeStamp", value)
        end
        #### 
        # Set the value of the BeforeTimeStamp input for this Choreo. 
        # 
        # @param String - (optional, date) Retrieve the first results prior to the seconds specified. Useful for paging backward in time.
        ###

        def set_BeforeTimeStamp(value)
          set_input("BeforeTimeStamp", value)
        end
        #### 
        # Set the value of the CategoryID input for this Choreo. 
        # 
        # @param String - (optional, string) Limits returned venues to those in this category. If specifying a top-level category, all sub-categories will also match the query.
        ###

        def set_CategoryID(value)
          set_input("CategoryID", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the UserID input for this Choreo. 
        # 
        # @param String - (optional, string) Only 'self' is supported at this moment by the Foursquare API. Defaults to: self.
        ###

        def set_UserID(value)
          set_input("UserID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VenueHistory Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VenueHistoryResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class VenueHistory




  end # module Users

  module Venues



    ##############################################################################
    #
    # Explore
    #
    # Returns a list of recommended venues near the current location.
    #
    ##############################################################################

    class Explore < Choreography

      ####
      #  Create a new instance of the Explore Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Venues/Explore")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return ExploreInputSet
      ####
      def new_input_set()
        return ExploreInputSet.new()
      end

      def make_result_set()
        return ExploreResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = ExploreResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Explore
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class ExploreInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccuracyOfCoordinates input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Accuracy of latitude and longitude, in meters.
        ###

        def set_AccuracyOfCoordinates(value)
          set_input("AccuracyOfCoordinates", value)
        end
        #### 
        # Set the value of the AltitudeAccuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Accuracy of the user's altitude, in meters.
        ###

        def set_AltitudeAccuracy(value)
          set_input("AltitudeAccuracy", value)
        end
        #### 
        # Set the value of the Altitude input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Altitude of the user's location, in meters.
        ###

        def set_Altitude(value)
          set_input("Altitude", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Intent input for this Choreo. 
        # 
        # @param String - (optional, string) Limit results to venues when set to "specials".
        ###

        def set_Intent(value)
          set_input("Intent", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The latitude point of the user's location. Required unless the Near parameter is provided.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to retun, up to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (conditional, decimal) The longitude point of the user's location. Required unless the Near parameter is provided.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the Near input for this Choreo. 
        # 
        # @param String - (conditional, string) A string naming a place in the world. If the near string is not geocodable, returns a failed_geocode error. Required unless provided Latitude and Longitude.
        ###

        def set_Near(value)
          set_input("Near", value)
        end
        #### 
        # Set the value of the Novelty input for this Choreo. 
        # 
        # @param String - (optional, string) Pass new or old to limit results to places the acting user hasn't been or has been, respectively. Omitting this parameter returns a mixture of both new and old.
        ###

        def set_Novelty(value)
          set_input("Novelty", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Foursquare API OAuth token string. Required unless specifying the ClientID and ClientSecret.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) A search term to be applied against tips, category, etc. at a venue.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the Radius input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Radius to search within, in meters. If radius is not specified, a suggested radius will be used depending on the density of venues in the area.
        ###

        def set_Radius(value)
          set_input("Radius", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Section input for this Choreo. 
        # 
        # @param String - (optional, string) One of food, drinks, coffee, shops, arts, or outdoors. Choosing one of these limits results to venues with categories matching these terms.
        ###

        def set_Section(value)
          set_input("Section", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Explore Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class ExploreResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Explore



    ##############################################################################
    #
    # HereNow
    #
    # Retrieves a count of how many people are at a given venue. For authenticated users, friends and friends-of-friends at the venue are also returned.
    #
    ##############################################################################

    class HereNow < Choreography

      ####
      #  Create a new instance of the HereNow Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Venues/HereNow")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return HereNowInputSet
      ####
      def new_input_set()
        return HereNowInputSet.new()
      end

      def make_result_set()
        return HereNowResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = HereNowResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the HereNow
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class HereNowInputSet < Choreography::InputSet

        #### 
        # Set the value of the AfterTimestamp input for this Choreo. 
        # 
        # @param String - (optional, date) Retrieve the first results to follow this timestamp (an epoch timestamp in seconds).
        ###

        def set_AfterTimestamp(value)
          set_input("AfterTimestamp", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) The number of results to return, up to 500.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (required, string) The ID associated with the venue you want to retrieve details for.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the HereNow Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class HereNowResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class HereNow



    ##############################################################################
    #
    # Like
    #
    # Allows the authenticated user to like or unlike a venue.
    #
    ##############################################################################

    class Like < Choreography

      ####
      #  Create a new instance of the Like Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Venues/Like")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LikeInputSet
      ####
      def new_input_set()
        return LikeInputSet.new()
      end

      def make_result_set()
        return LikeResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LikeResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Like
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LikeInputSet < Choreography::InputSet

        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Set input for this Choreo. 
        # 
        # @param Boolean - (optional, boolean) Set to 1 (the default) to like this checkin. Set to 0 to undo a previous like.
        ###

        def set_Set(value)
          set_input("Set", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the venue to like or unlike.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Like Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LikeResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Like



    ##############################################################################
    #
    # Likes
    #
    # Returns friends and a total count of users who have liked a venue.
    #
    ##############################################################################

    class Likes < Choreography

      ####
      #  Create a new instance of the Likes Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Venues/Likes")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return LikesInputSet
      ####
      def new_input_set()
        return LikesInputSet.new()
      end

      def make_result_set()
        return LikesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = LikesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Likes
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class LikesInputSet < Choreography::InputSet

        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string. Required unless specifying the ClientID and ClientSecret.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (required, string) The ID of the venue to retrieve likes for.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Likes Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class LikesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Likes



    ##############################################################################
    #
    # SearchVenues
    #
    # Obtain a list of venues near the current location. 
    #
    ##############################################################################

    class SearchVenues < Choreography

      ####
      #  Create a new instance of the SearchVenues Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Venues/SearchVenues")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SearchVenuesInputSet
      ####
      def new_input_set()
        return SearchVenuesInputSet.new()
      end

      def make_result_set()
        return SearchVenuesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SearchVenuesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the SearchVenues
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SearchVenuesInputSet < Choreography::InputSet

        #### 
        # Set the value of the AccuracyOfCoordinates input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Accuracy of latitude and longitude, in meters. Currently, this parameter   does not affect search results.
        ###

        def set_AccuracyOfCoordinates(value)
          set_input("AccuracyOfCoordinates", value)
        end
        #### 
        # Set the value of the AltitudeAccuracy input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Accuracy of the user's altitude, in meters. Currently, this parameter does not affect search results.
        ###

        def set_AltitudeAccuracy(value)
          set_input("AltitudeAccuracy", value)
        end
        #### 
        # Set the value of the Altitude input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Altitude of the user's location, in meters. Currently, this parameter does not affect search results.
        ###

        def set_Altitude(value)
          set_input("Altitude", value)
        end
        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Intent input for this Choreo. 
        # 
        # @param String - (optional, string) Indicates your intent when performing the search.  Enter: checkin (default), match (requires Query and Latitude/Longitude to be provided).
        ###

        def set_Intent(value)
          set_input("Intent", value)
        end
        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude point of the user's location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to retun, up to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude point of the user's location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Foursquare API Oauth token string. Required unless specifying the ClientID and ClientSecret.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Query input for this Choreo. 
        # 
        # @param String - (optional, string) Your search string.
        ###

        def set_Query(value)
          set_input("Query", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the SearchVenues Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SearchVenuesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class SearchVenues



    ##############################################################################
    #
    # Similar
    #
    # Returns a list of venues similar to the specified venue.
    #
    ##############################################################################

    class Similar < Choreography

      ####
      #  Create a new instance of the Similar Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Venues/Similar")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return SimilarInputSet
      ####
      def new_input_set()
        return SimilarInputSet.new()
      end

      def make_result_set()
        return SimilarResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = SimilarResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the Similar
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class SimilarInputSet < Choreography::InputSet

        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (required, string) The id for the venue you want similar venues for.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the Similar Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class SimilarResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class Similar



    ##############################################################################
    #
    # TipsFromVenue
    #
    # This choreo returns tips for a particular venue written by other Foursquare users.
    #
    ##############################################################################

    class TipsFromVenue < Choreography

      ####
      #  Create a new instance of the TipsFromVenue Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Venues/TipsFromVenue")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TipsFromVenueInputSet
      ####
      def new_input_set()
        return TipsFromVenueInputSet.new()
      end

      def make_result_set()
        return TipsFromVenueResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = TipsFromVenueResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TipsFromVenue
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TipsFromVenueInputSet < Choreography::InputSet

        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to retun, up to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Foursquare API OAuth token string. Required unless specifying the ClientID and ClientSecret.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Offset input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Used to page through results.
        ###

        def set_Offset(value)
          set_input("Offset", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the Sort input for this Choreo. 
        # 
        # @param String - (optional, string) Enter: recent or popular.
        ###

        def set_Sort(value)
          set_input("Sort", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (required, string) The venue you want tips for.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TipsFromVenue Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TipsFromVenueResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TipsFromVenue



    ##############################################################################
    #
    # TrendingVenues
    #
    # Returns a list of venues near the current location with the most people currently checked in.
    #
    ##############################################################################

    class TrendingVenues < Choreography

      ####
      #  Create a new instance of the TrendingVenues Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Venues/TrendingVenues")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return TrendingVenuesInputSet
      ####
      def new_input_set()
        return TrendingVenuesInputSet.new()
      end

      def make_result_set()
        return TrendingVenuesResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = TrendingVenuesResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the TrendingVenues
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class TrendingVenuesInputSet < Choreography::InputSet

        #### 
        # Set the value of the Latitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The latitude point of the user's location.
        ###

        def set_Latitude(value)
          set_input("Latitude", value)
        end
        #### 
        # Set the value of the Limit input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Number of results to retun, up to 50.
        ###

        def set_Limit(value)
          set_input("Limit", value)
        end
        #### 
        # Set the value of the Longitude input for this Choreo. 
        # 
        # @param BigDecimal - (required, decimal) The longitude point of the user's location.
        ###

        def set_Longitude(value)
          set_input("Longitude", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the Radius input for this Choreo. 
        # 
        # @param Integer - (optional, integer) Radius in meters, up to approximately 2000 meters.
        ###

        def set_Radius(value)
          set_input("Radius", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the TrendingVenues Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class TrendingVenuesResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class TrendingVenues



    ##############################################################################
    #
    # VenueDetail
    #
    # Obtain details about venues, including location, mayorship, tags, tips, specials and category.  Users who have authenticated via their oauth_token credential, also receive information about who is at the location being queried.
    #
    ##############################################################################

    class VenueDetail < Choreography

      ####
      #  Create a new instance of the VenueDetail Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Venues/VenueDetail")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VenueDetailInputSet
      ####
      def new_input_set()
        return VenueDetailInputSet.new()
      end

      def make_result_set()
        return VenueDetailResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = VenueDetailResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VenueDetail
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VenueDetailInputSet < Choreography::InputSet

        #### 
        # Set the value of the ClientID input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client ID, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientID(value)
          set_input("ClientID", value)
        end
        #### 
        # Set the value of the ClientSecret input for this Choreo. 
        # 
        # @param String - (conditional, string) Your Foursquare client secret, obtained after registering at Foursquare. Required unless using the OauthToken input.
        ###

        def set_ClientSecret(value)
          set_input("ClientSecret", value)
        end
        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (conditional, string) The Foursquare API Oauth token string. Required unless specifying the ClientID and ClientSecret.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (required, string) The ID associated with the venue you want to retrieve details for.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VenueDetail Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VenueDetailResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class VenueDetail



    ##############################################################################
    #
    # VenueEvents
    #
    # Allows you to access information about the current events at a place.
    #
    ##############################################################################

    class VenueEvents < Choreography

      ####
      #  Create a new instance of the VenueEvents Choreo. A TembooSession object, containing a valid
      #  set of Temboo credentials, must be supplied.
      ####
      def initialize(session)
        super(session, "/Library/Foursquare/Venues/VenueEvents")
      end

      #### 
      # Obtain an InputSet object, used to define inputs for an execution of this Choreo.
      #
      # @return VenueEventsInputSet
      ####
      def new_input_set()
        return VenueEventsInputSet.new()
      end

      def make_result_set()
        return VenueEventsResultSet.new()
      end

      ####
      # Execute the Choreo using the specified InputSet as parameters, wait for the Choreo to complete 
      # and return a ResultSet containing the execution results.
      # @param choreoInputs
      # @return
      # @throws TembooException
      ####
      def execute(input_set = nil)
        resp = super(input_set)
        results = VenueEventsResultSet.new(resp)
        return results
      end

      ####
      # An InputSet with methods appropriate for specifying the inputs to the VenueEvents
      # Choreo. The InputSet object is used to specify input parameters when executing this Choreo.
      ####
      class VenueEventsInputSet < Choreography::InputSet

        #### 
        # Set the value of the OauthToken input for this Choreo. 
        # 
        # @param String - (required, string) The Foursquare API OAuth token string.
        ###

        def set_OauthToken(value)
          set_input("OauthToken", value)
        end
        #### 
        # Set the value of the ResponseFormat input for this Choreo. 
        # 
        # @param String - (optional, string) The format that response should be in. Can be set to xml or json. Defaults to json.
        ###

        def set_ResponseFormat(value)
          set_input("ResponseFormat", value)
        end
        #### 
        # Set the value of the VenueID input for this Choreo. 
        # 
        # @param String - (required, string) The ID associated with the venue you want to retrieve details for.
        ###

        def set_VenueID(value)
          set_input("VenueID", value)
        end

      end

      ####
      # A ResultSet with methods tailored to the values returned by the VenueEvents Choreo.
      # The ResultSet object is used to retrieve the results of a Choreo execution.
      ####
      class VenueEventsResultSet < Choreography::ResultSet
      	####
      	# Retrieve the value for the "Response" output from this Choreo execution
      	#
      	# @return String - The response from Foursquare. Corresponds to the ResponseFormat input. Defaults to JSON.
      	####
      	def get_Response()
      	  return @outputs["Response"]
      	end
      end

    end # class VenueEvents




  end # module Venues

end # module Foursquare